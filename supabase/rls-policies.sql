-- ============================================
-- RLS POLICIES SECURISÉES POUR AURA APP
-- Exécuter dans SQL Editor du dashboard Supabase
-- ============================================

-- Helper function: vérifier si l'utilisateur est admin
CREATE OR REPLACE FUNCTION is_admin()
RETURNS BOOLEAN AS $$
BEGIN
  RETURN EXISTS (
    SELECT 1 FROM profiles WHERE id = auth.uid() AND role = 'admin'
  );
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

-- ============================================
-- TABLE: profiles
-- ============================================
ALTER TABLE profiles ENABLE ROW LEVEL SECURITY;

-- Tout le monde peut lire les profils (pour le nom, avatar, etc.)
CREATE POLICY "Profiles: anyone can read" ON profiles
  FOR SELECT USING (true);

-- Chaque utilisateur ne peut modifier que SON profil
CREATE POLICY "Profiles: owner can update" ON profiles
  FOR UPDATE USING (auth.uid() = id);

-- L'inscription crée un profil (via INSERT dans handle_new_user)
CREATE POLICY "Profiles: insert on register" ON profiles
  FOR INSERT WITH CHECK (auth.uid() = id);

-- Admin peut tout modifier
CREATE POLICY "Profiles: admin can update all" ON profiles
  FOR UPDATE USING (is_admin());

-- Admin peut tout lire (déjà couvert par SELECT)
-- Admin peut supprimer si besoin
CREATE POLICY "Profiles: admin can delete" ON profiles
  FOR DELETE USING (is_admin());

-- ============================================
-- TABLE: questions
-- ============================================
ALTER TABLE questions ENABLE ROW LEVEL SECURITY;

-- Tout le monde peut lire les questions (QCM public)
CREATE POLICY "Questions: anyone can read" ON questions
  FOR SELECT USING (true);

-- Seul l'admin peut ajouter/modifier/supprimer
CREATE POLICY "Questions: admin can insert" ON questions
  FOR INSERT WITH CHECK (is_admin());

CREATE POLICY "Questions: admin can update" ON questions
  FOR UPDATE USING (is_admin());

CREATE POLICY "Questions: admin can delete" ON questions
  FOR DELETE USING (is_admin());

-- ============================================
-- TABLE: payments
-- ============================================
ALTER TABLE payments ENABLE ROW LEVEL SECURITY;

-- Chaque étudiant ne voit que SES paiements
CREATE POLICY "Payments: owner can read" ON payments
  FOR SELECT USING (auth.uid() = student_id);

-- L'inscription crée un paiement
CREATE POLICY "Payments: owner can insert" ON payments
  FOR INSERT WITH CHECK (auth.uid() = student_id);

-- L'étudiant peut modifier son reçu
CREATE POLICY "Payments: owner can update receipt" ON payments
  FOR UPDATE USING (auth.uid() = student_id);

-- Admin peut tout voir
CREATE POLICY "Payments: admin can read all" ON payments
  FOR SELECT USING (is_admin());

-- Admin peut tout modifier (valider/rejeter)
CREATE POLICY "Payments: admin can update all" ON payments
  FOR UPDATE USING (is_admin());

-- ============================================
-- TABLE: quiz_sessions
-- ============================================
ALTER TABLE quiz_sessions ENABLE ROW LEVEL SECURITY;

-- Chaque étudiant ne voit que SES sessions
CREATE POLICY "Sessions: owner can read" ON quiz_sessions
  FOR SELECT USING (auth.uid() = student_id);

-- L'étudiant peut créer ses sessions
CREATE POLICY "Sessions: owner can insert" ON quiz_sessions
  FOR INSERT WITH CHECK (auth.uid() = student_id);

-- L'étudiant peut modifier ses sessions (stats)
CREATE POLICY "Sessions: owner can update" ON quiz_sessions
  FOR UPDATE USING (auth.uid() = student_id);

-- Admin peut tout lire (pour les stats)
CREATE POLICY "Sessions: admin can read all" ON quiz_sessions
  FOR SELECT USING (is_admin());

-- ============================================
-- TABLE: comments
-- ============================================
ALTER TABLE comments ENABLE ROW LEVEL SECURITY;

-- Tout le monde peut lire les commentaires
CREATE POLICY "Comments: anyone can read" ON comments
  FOR SELECT USING (true);

-- Les utilisateurs connectés peuvent commenter
CREATE POLICY "Comments: auth can insert" ON comments
  FOR INSERT WITH CHECK (auth.uid() IS NOT NULL);

-- L'auteur peut modifier son commentaire
CREATE POLICY "Comments: owner can update" ON comments
  FOR UPDATE USING (auth.uid() = author_id);

-- L'auteur ou admin peut supprimer
CREATE POLICY "Comments: owner or admin can delete" ON comments
  FOR DELETE USING (auth.uid() = author_id OR is_admin());

-- ============================================
-- TABLE: reports
-- ============================================
ALTER TABLE reports ENABLE ROW LEVEL SECURITY;

-- Supprimer l'ancienne policy permissive
DROP POLICY IF EXISTS "Allow all for anon" ON reports;

-- Les utilisateurs connectés peuvent signaler
CREATE POLICY "Reports: auth can insert" ON reports
  FOR INSERT WITH CHECK (auth.uid() IS NOT NULL);

-- Admin peut tout lire
CREATE POLICY "Reports: admin can read" ON reports
  FOR SELECT USING (is_admin());

-- Admin peut tout supprimer
CREATE POLICY "Reports: admin can delete" ON reports
  FOR DELETE USING (is_admin());
