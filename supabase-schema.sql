-- SCHEMA SUPABASE AURA (idempotent)
-- 1. PROFILES (prolonge auth.users)
CREATE TABLE IF NOT EXISTS public.profiles (
   id UUID PRIMARY KEY REFERENCES auth.users(id) ON DELETE CASCADE,
   full_name TEXT NOT NULL,
   email TEXT,
   level TEXT NOT NULL DEFAULT '3' CHECK (level IN ('1','2','3','4','5','residanat')),
   role TEXT NOT NULL DEFAULT 'student' CHECK (role IN ('student','admin')),
   is_validated BOOLEAN NOT NULL DEFAULT false,
   subscription_status TEXT NOT NULL DEFAULT 'blocked' CHECK (subscription_status IN ('blocked','trial','full')),
   avatar_url TEXT,
   created_at TIMESTAMPTZ NOT NULL DEFAULT now()
);
ALTER TABLE public.profiles ENABLE ROW LEVEL SECURITY;

-- Auto-creation du profil lors de l'inscription avec is_validated = false
CREATE OR REPLACE FUNCTION public.handle_new_user()
RETURNS TRIGGER AS $$
BEGIN
   INSERT INTO public.profiles (id, full_name, email, level, role, is_validated, subscription_status)
   VALUES (NEW.id, COALESCE(NEW.raw_user_meta_data->>'name', NEW.email), NEW.email, COALESCE(NEW.raw_user_meta_data->>'level', '3'), 'student', false, 'blocked');
   RETURN NEW;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

DROP TRIGGER IF EXISTS on_auth_user_created ON auth.users;
CREATE TRIGGER on_auth_user_created
   AFTER INSERT ON auth.users
   FOR EACH ROW EXECUTE FUNCTION public.handle_new_user();

-- Function to check if the current user is an admin
CREATE OR REPLACE FUNCTION public.is_admin()
RETURNS BOOLEAN AS $$
BEGIN
   RETURN EXISTS (SELECT 1 FROM public.profiles WHERE id = auth.uid() AND role = 'admin');
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

-- RLS profiles
DROP POLICY IF EXISTS "Les utilisateurs peuvent creer leur propre profil" ON public.profiles;
CREATE POLICY "Les utilisateurs peuvent creer leur propre profil"
   ON public.profiles FOR INSERT
   WITH CHECK (auth.uid() = id);

DROP POLICY IF EXISTS "Les utilisateurs voient leur propre profil" ON public.profiles;
CREATE POLICY "Les utilisateurs voient leur propre profil"
   ON public.profiles FOR SELECT
   USING (auth.uid() = id);

DROP POLICY IF EXISTS "Les utilisateurs modifient leur propre profil" ON public.profiles;
CREATE POLICY "Les utilisateurs modifient leur propre profil"
   ON public.profiles FOR UPDATE
   USING (auth.uid() = id);

DROP POLICY IF EXISTS "Les admins voient tous les profils" ON public.profiles;
CREATE POLICY "Les admins voient tous les profils"
   ON public.profiles FOR SELECT
   USING (public.is_admin());

DROP POLICY IF EXISTS "Les admins modifient tous les profils" ON public.profiles;
CREATE POLICY "Les admins modifient tous les profils"
   ON public.profiles FOR UPDATE
   USING (public.is_admin())
   WITH CHECK (public.is_admin());

DROP POLICY IF EXISTS "Admins voient profils non valides" ON public.profiles;
CREATE POLICY "Admins voient profils non valides"
   ON public.profiles FOR SELECT
   USING (public.is_admin());

-- 2. QUESTIONS
CREATE TABLE IF NOT EXISTS public.questions (
   id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
   q TEXT NOT NULL,
   options JSONB NOT NULL,
   correct JSONB NOT NULL,
   explanation TEXT,
   source TEXT NOT NULL CHECK (source IN ('EMD','RESIDANAT','RATT')),
   year INT NOT NULL,
   course TEXT NOT NULL,
   module TEXT,
   image TEXT,
   created_at TIMESTAMPTZ NOT NULL DEFAULT now()
);
ALTER TABLE public.questions ENABLE ROW LEVEL SECURITY;

CREATE INDEX IF NOT EXISTS idx_questions_source ON public.questions(source);
CREATE INDEX IF NOT EXISTS idx_questions_course ON public.questions(course);
CREATE INDEX IF NOT EXISTS idx_questions_year  ON public.questions(year);
CREATE INDEX IF NOT EXISTS idx_questions_module ON public.questions(module);
CREATE INDEX IF NOT EXISTS idx_questions_course_year ON public.questions(course, year);
CREATE INDEX IF NOT EXISTS idx_questions_source_year ON public.questions(source, year);

-- RLS questions : lecture seulement si profil valide ou admin
DROP POLICY IF EXISTS "Lecture questions : profil valide ou admin" ON public.questions;
CREATE POLICY "Lecture questions : profil valide ou admin"
   ON public.questions FOR SELECT
   USING (
     auth.role() = 'authenticated'
     AND (
       EXISTS (SELECT 1 FROM public.profiles WHERE id = auth.uid() AND (role = 'admin' OR is_validated = true OR subscription_status = 'trial'))
     )
   );

DROP POLICY IF EXISTS "Seuls les admins peuvent inserer" ON public.questions;
CREATE POLICY "Seuls les admins peuvent inserer"
   ON public.questions FOR INSERT
   WITH CHECK (public.is_admin());

DROP POLICY IF EXISTS "Seuls les admins peuvent modifier" ON public.questions;
CREATE POLICY "Seuls les admins peuvent modifier"
   ON public.questions FOR UPDATE
   USING (public.is_admin());

DROP POLICY IF EXISTS "Seuls les admins peuvent supprimer" ON public.questions;
CREATE POLICY "Seuls les admins peuvent supprimer"
   ON public.questions FOR DELETE
   USING (public.is_admin());

-- 3. PAIEMENTS
CREATE TABLE IF NOT EXISTS public.payments (
   id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
   student_id UUID NOT NULL REFERENCES public.profiles(id) ON DELETE CASCADE,
   amount INT NOT NULL CHECK (amount > 0),
   status TEXT NOT NULL DEFAULT 'pending' CHECK (status IN ('pending','validated','rejected')),
   receipt_url TEXT,
   payment_date DATE NOT NULL DEFAULT CURRENT_DATE,
   validated_at TIMESTAMPTZ,
   created_at TIMESTAMPTZ NOT NULL DEFAULT now()
);
ALTER TABLE public.payments ENABLE ROW LEVEL SECURITY;

CREATE INDEX IF NOT EXISTS idx_payments_student ON public.payments(student_id);
CREATE INDEX IF NOT EXISTS idx_payments_status  ON public.payments(status);

DROP POLICY IF EXISTS "Les etudiants voient leurs propres paiements" ON public.payments;
CREATE POLICY "Les etudiants voient leurs propres paiements"
   ON public.payments FOR SELECT
   USING (student_id = auth.uid());

DROP POLICY IF EXISTS "Les admins voient tous les paiements" ON public.payments;
CREATE POLICY "Les admins voient tous les paiements"
   ON public.payments FOR SELECT
   USING (public.is_admin());

DROP POLICY IF EXISTS "Les admins modifient les paiements" ON public.payments;
CREATE POLICY "Les admins modifient les paiements"
   ON public.payments FOR UPDATE
   USING (public.is_admin());

DROP POLICY IF EXISTS "Les admins inserent des paiements" ON public.payments;
CREATE POLICY "Les admins inserent des paiements"
   ON public.payments FOR INSERT
   WITH CHECK (public.is_admin());

DROP POLICY IF EXISTS "Les etudiants peuvent inserer leur propre paiement" ON public.payments;
CREATE POLICY "Les etudiants peuvent inserer leur propre paiement"
   ON public.payments FOR INSERT
   WITH CHECK (auth.uid() = student_id);

DROP POLICY IF EXISTS "Les etudiants peuvent modifier leur propre paiement" ON public.payments;
CREATE POLICY "Les etudiants peuvent modifier leur propre paiement"
   ON public.payments FOR UPDATE
   USING (student_id = auth.uid());

-- 4. SESSIONS DE REVISION / QUIZ
CREATE TABLE IF NOT EXISTS public.quiz_sessions (
   id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
   student_id UUID NOT NULL REFERENCES public.profiles(id) ON DELETE CASCADE,
   mode TEXT NOT NULL CHECK (mode IN ('training','simulation')),
   simulation_branch TEXT CHECK (simulation_branch IN ('emd','residanat')),
   scoring_mode TEXT NOT NULL DEFAULT 'all' CHECK (scoring_mode IN ('all','partial')),
   questions JSONB NOT NULL,
   answers JSONB,
   score NUMERIC DEFAULT 0,
   total_questions INT NOT NULL DEFAULT 0,
   module_class TEXT,
   course TEXT,
   started_at TIMESTAMPTZ NOT NULL DEFAULT now(),
   finished_at TIMESTAMPTZ,
   duration INT DEFAULT 0
);
ALTER TABLE public.quiz_sessions ENABLE ROW LEVEL SECURITY;

CREATE INDEX IF NOT EXISTS idx_quiz_sessions_student ON public.quiz_sessions(student_id);
CREATE INDEX IF NOT EXISTS idx_quiz_sessions_mode     ON public.quiz_sessions(mode);

DROP POLICY IF EXISTS "Les etudiants voient leurs propres sessions" ON public.quiz_sessions;
CREATE POLICY "Les etudiants voient leurs propres sessions"
   ON public.quiz_sessions FOR SELECT
   USING (student_id = auth.uid());

DROP POLICY IF EXISTS "Les admins voient toutes les sessions" ON public.quiz_sessions;
CREATE POLICY "Les admins voient toutes les sessions"
   ON public.quiz_sessions FOR SELECT
   USING (public.is_admin());

DROP POLICY IF EXISTS "Les etudiants inserent leurs sessions" ON public.quiz_sessions;
CREATE POLICY "Les etudiants inserent leurs sessions"
   ON public.quiz_sessions FOR INSERT
   WITH CHECK (student_id = auth.uid());

-- 5. COMMENTAIRES / DISCUSSION
CREATE TABLE IF NOT EXISTS public.comments (
   id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
   question_id BIGINT NOT NULL REFERENCES public.questions(id) ON DELETE CASCADE,
   user_id UUID REFERENCES public.profiles(id) ON DELETE SET NULL,
   author TEXT NOT NULL,
   role TEXT DEFAULT 'student',
   text TEXT NOT NULL,
   created_at TIMESTAMPTZ NOT NULL DEFAULT now()
);
ALTER TABLE public.comments ENABLE ROW LEVEL SECURITY;

CREATE INDEX IF NOT EXISTS idx_comments_question ON public.comments(question_id);

DROP POLICY IF EXISTS "Tout le monde peut lire les commentaires" ON public.comments;
CREATE POLICY "Tout le monde peut lire les commentaires"
   ON public.comments FOR SELECT
   USING (auth.role() = 'authenticated');

DROP POLICY IF EXISTS "Les etudiants peuvent poster" ON public.comments;
CREATE POLICY "Les etudiants peuvent poster"
   ON public.comments FOR INSERT
   WITH CHECK (auth.uid() = user_id);

-- 6. FONCTIONS UTILES

-- Recuperer les questions filtrees
CREATE OR REPLACE FUNCTION public.get_filtered_questions(
   p_courses TEXT[] DEFAULT NULL,
   p_years INT[] DEFAULT NULL,
   p_source TEXT DEFAULT NULL
)
RETURNS SETOF public.questions AS $$
BEGIN
   RETURN QUERY SELECT *
   FROM public.questions q
   WHERE (p_courses IS NULL OR q.course = ANY(p_courses))
     AND (p_years IS NULL OR q.year = ANY(p_years))
     AND (p_source IS NULL OR q.source = p_source)
   ORDER BY q.id;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

-- 7. BUCKET STORAGE pour les recus
INSERT INTO storage.buckets (id, name, public) VALUES ('receipts', 'receipts', true)
ON CONFLICT (id) DO NOTHING;

DROP POLICY IF EXISTS "Tout le monde peut lire les recus" ON storage.objects;
CREATE POLICY "Tout le monde peut lire les recus"
   ON storage.objects FOR SELECT
   USING (bucket_id = 'receipts');

DROP POLICY IF EXISTS "Les admins peuvent uploader des recus" ON storage.objects;
CREATE POLICY "Les admins peuvent uploader des recus"
   ON storage.objects FOR INSERT
   WITH CHECK (
     bucket_id = 'receipts'
     AND public.is_admin()
   );

DROP POLICY IF EXISTS "Les admins peuvent supprimer des recus" ON storage.objects;
CREATE POLICY "Les admins peuvent supprimer des recus"
   ON storage.objects FOR DELETE
   USING (
     bucket_id = 'receipts'
     AND public.is_admin()
   );

-- 8. RPC : creation du profil + paiement (SECURITY DEFINER)
DROP FUNCTION IF EXISTS public.complete_registration(uuid,text,text,text,int);
CREATE OR REPLACE FUNCTION public.complete_registration(
   p_user_id UUID, p_full_name TEXT, p_email TEXT, p_level TEXT, p_amount INT
)
RETURNS void AS $$
BEGIN
   UPDATE public.profiles
   SET full_name = p_full_name, email = p_email, level = p_level,
       subscription_status = 'trial'
   WHERE id = p_user_id;
   INSERT INTO public.payments (student_id, amount, status)
   VALUES (p_user_id, p_amount, 'pending');
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

-- 9. RPC : mise a jour du recu de paiement
DROP FUNCTION IF EXISTS public.update_payment_receipt(uuid,text);
CREATE OR REPLACE FUNCTION public.update_payment_receipt(
   p_user_id UUID, p_receipt_url TEXT
)
RETURNS void AS $$
BEGIN
   UPDATE public.payments
   SET receipt_url = p_receipt_url
   WHERE id = (SELECT id FROM public.payments WHERE student_id = p_user_id ORDER BY id DESC LIMIT 1);
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

-- 10. SEED : Questions Résidanat
INSERT INTO public.questions (q, options, correct, explanation, source, year, course, module) VALUES
-- MODULE BIOLOGIQUE → Biochimie clinique
(
   'Le dosage de la glycémie à jeun est un paramètre clé pour le diagnostic de :',
   '["Diabète de type 1","Diabète de type 2","Hyperthyroïdie","Insuffisance rénale","Anémie"]',
   '[0,1]',
   'La glycémie à jeun > 1,26 g/L à jeun confirme le diagnostic de diabète (type 1 ou 2).',
   'RESIDANAT', 2024, 'Métabolisme glucidique', 'Biochimie clinique'
),
(
   'L''hémoglobine glycosylée (HbA1c) reflète :',
   '["La glycémie des 3 derniers mois","La glycémie du jour","Le taux de fer sérique","Le nombre de globules rouges","L''hématocrite"]',
   '[0]',
   'L''HbA1c reflète la moyenne de la glycémie sur environ 3 mois.',
   'RESIDANAT', 2023, 'Métabolisme glucidique', 'Biochimie clinique'
),

-- MODULE BIOLOGIQUE → Hémobiologie
(
   'Le bilan d''hémostase comprend :',
   '["TP","TCA","Fibrinogène","Numération plaquettaire","VS"]',
   '[0,1,2,3]',
   'Le bilan d''hémostase standard comprend TP, TCA, fibrinogène et numération plaquettaire.',
   'RESIDANAT', 2024, 'Syndromes hémorragiques', 'Hémobiologie'
),
(
   'L''électrophorèse de l''hémoglobine permet de diagnostiquer :',
   '["Drépanocytose","Thalassémie","Anémie ferriprive","Hémophilie","Maladie de Willebrand"]',
   '[0,1]',
   'L''électrophorèse de l''hémoglobine sépare les fractions d''hémoglobine pour diagnostiquer drépanocytose (HbS) et thalassémies.',
   'RESIDANAT', 2022, 'Anémies', 'Hémobiologie'
),

-- MODULE BIOLOGIQUE → Hémobiologie → Hémophilie
(
   'L''hémophilie A est due à un déficit en :',
   '["Facteur VIII","Facteur IX","Facteur XI","Facteur VII","Facteur V"]',
   '[0]',
   'L''hémophilie A (classique) est due à un déficit en facteur VIII de la coagulation, lié au chromosome X.',
   'RESIDANAT', 2023, 'Hémophilie', 'Hémobiologie'
),
(
   'Le traitement de l''hémophilie A sévère repose sur :',
   '["Facteur VIII recombinant","Desmopressine","Facteur IX concentré","Cryoprécipité","Plasma frais congelé"]',
   '[0,3]',
   'Le traitement repose sur le facteur VIII recombinant ou le cryoprécipité. La desmopressine est utile dans les formes modérées.',
   'RESIDANAT', 2024, 'Hémophilie', 'Hémobiologie'
),
(
   'Quels examens sont perturbés dans l''hémophilie A non traitée ?',
   '["TCA","TP","Temps de saignement","Fibrinogène","Numération plaquettaire"]',
   '[0]',
   'Seul le TCA est allongé dans l''hémophilie. TP, temps de saignement, fibrinogène et plaquettes sont normaux.',
   'RESIDANAT', 2025, 'Hémophilie', 'Hémobiologie'
),

-- MODULE BIOLOGIQUE → Microbiologie
(
   'Quels antibiotiques sont actifs contre les bactéries à Gram négatif ?',
   '["Aminosides","Céphalosporines de 3ème génération","Fluoroquinolones","Vancomycine","Macrolides"]',
   '[0,1,2]',
   'Aminosides, C3G et fluoroquinolones sont actifs contre les Gram négatif. La vancomycine cible les Gram positif.',
   'RESIDANAT', 2025, 'Bactériologie', 'Microbiologie'
),

-- MODULE BIOLOGIQUE → Parasitologie
(
   'L''examen parasitologique des selles permet de diagnostiquer :',
   '["Amibiase","Giardiase","Ankylostomiase","Paludisme","Toxoplasmose"]',
   '[0,1,2]',
   'L''EPS met en évidence les parasites intestinaux : amibes, giardia, ankylostomes.',
   'RESIDANAT', 2024, 'Parasitoses digestives', 'Parasitologie'
),

-- MODULE PHARMACEUTIQUE → Pharmacologie
(
   'Quelle est la voie d''administration avec le plus grand effet de premier passage hépatique ?',
   '["Sublinguale","Orale","Rectale","Transdermique","Intramusculaire"]',
   '[1]',
   'La voie orale a le plus grand effet de premier passage hépatique car le médicament passe directement par le foie via la veine porte.',
   'RESIDANAT', 2022, 'Voies d''administration', 'Pharmacologie'
),
(
   'La demi-vie d''élimination (t½) est définie comme :',
   '["Temps pour éliminer 50% de la dose administrée","Temps pour atteindre Cmax/2","Temps pour réduire la concentration plasmatique de moitié","Temps entre deux prises","Temps pour éliminer 90% de la dose"]',
   '[2]',
   't½ est le temps nécessaire pour que la concentration plasmatique diminue de moitié.',
   'RESIDANAT', 2023, 'Pharmacocinétique', 'Pharmacologie'
),
(
   'Un antagoniste compétitif :',
   '["Augmente l''efficacité maximale","Diminue la puissance","Déplace la courbe dose-réponse vers la droite","Augmente l''affinité","Diminue l''efficacité maximale"]',
   '[1,2]',
   'L''antagoniste compétitif déplace la courbe dose-réponse vers la droite sans changer l''efficacité maximale.',
   'RESIDANAT', 2024, 'Pharmacodynamique', 'Pharmacologie'
),

-- MODULE PHARMACEUTIQUE → Toxicologie
(
   'Le paracétamol en surdose provoque une hépatotoxicité par :',
   '["Déplétion en glutathion","Formation de NAPQI","Inhibition de la COX","Activation du CYP2E1","Nécrose tubulaire"]',
   '[0,1,3]',
   'En surdose, le paracétamol est métabolisé par le CYP2E1 en NAPQI qui déplète le glutathion hépatique.',
   'RESIDANAT', 2021, 'Toxicologie médicamenteuse', 'Toxicologie'
),

-- MODULE PHARMACEUTIQUE → Pharmacie clinique
(
   'Un bilan médicamenteux complet comprend :',
   '["Liste des médicaments","Posologies","Interactions potentielles","Observance thérapeutique","Groupe sanguin"]',
   '[0,1,2,3]',
   'Le bilan médicamenteux évalue traitements, posologies, interactions et observance.',
   'RESIDANAT', 2024, 'Bilan médicamenteux', 'Pharmacie clinique'
),

-- MODULE PHARMACEUTIQUE → Galénique
(
   'Une forme à libération prolongée se caractérise par :',
   '["Un seul pic plasmatique","Des concentrations stables","Une prise quotidienne unique","Un effet de premier passage réduit","Une biodisponibilité de 100%"]',
   '[0,1,2]',
   'Les formes LP libèrent le PA lentement : un seul pic, concentrations stables, prise unique possible.',
   'RESIDANAT', 2023, 'Formes à libération modifiée', 'Galénique'
),

-- MODULE PHARMACEUTIQUE → Analytique
(
   'La chromatographie HPLC est utilisée pour :',
   '["Séparer des composés","Identifier des substances","Quantifier des analytes","Déterminer la structure 3D","Mesurer la pression osmotique"]',
   '[0,1,2]',
   'La HPLC sépare, identifie et quantifie les composés d''un mélange.',
   'RESIDANAT', 2024, 'Méthodes chromatographiques', 'Analytique'
),

-- MODULE PHARMACEUTIQUE → Pharmacognosie
(
   'La morphine est un alcaloïde dérivé de :',
   '["Pavot somnifère","Belladone","Quinquina","Ipeca","Digitale"]',
   '[0]',
   'La morphine est le principal alcaloïde du pavot somnifère (Papaver somniferum).',
   'RESIDANAT', 2022, 'Plantes médicinales', 'Pharmacognosie'
),

-- MODULE FONDAMENTAL → Biophysique
(
   'La pression osmotique d''une solution dépend de :',
   '["La concentration en soluté","La température","La nature du solvant","La masse molaire du soluté","La pression atmosphérique"]',
   '[0,1,2]',
   'La pression osmotique dépend de la concentration, de la température et de la nature du solvant (loi de Van''t Hoff).',
   'RESIDANAT', 2023, 'Biophysique des membranes', 'Biophysique'
),

-- MODULE FONDAMENTAL → Génétique
(
   'Une mutation ponctuelle non-sens entraîne :',
   '["Un codon stop prématuré","Une protéine tronquée","Aucun changement d''acide aminé","Une protéine allongée","Un changement de cadre de lecture"]',
   '[0,1]',
   'Une mutation non-sens remplace un codon codant par un codon stop, donnant une protéine tronquée.',
   'RESIDANAT', 2024, 'ADN et mutations', 'Génétique'
)
ON CONFLICT DO NOTHING;

-- 11. Ajout colonnes module_class et course si manquantes (migration)
ALTER TABLE public.quiz_sessions ADD COLUMN IF NOT EXISTS module_class TEXT;
ALTER TABLE public.quiz_sessions ADD COLUMN IF NOT EXISTS course TEXT;

-- FIN DU SCHEMA