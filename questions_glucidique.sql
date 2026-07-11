-- ============================================================
-- QUESTIONS : Exploration du métabolisme des glucides
-- Module : Biochimie clinique
-- Cours  : Métabolisme glucidique
-- ============================================================

-- Helper : lettres → indices (A=0, B=1, C=2, D=3, E=4)
-- Ex: 'CE' → '[2,4]', 'BDE' → '[1,3,4]'

-- ==================== CONCOURS RÉSIDANAT ====================

-- 1) Résidanat 2025
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'Les marqueurs biochimiques de la réaction inflammatoire à cinétique rapide sont :',
    '["La transferrine","La ferritine","La procalcitonine","L''orosomucoïde","La protéine C réactive"]',
    '[2,4]',
    'La procalcitonine (PCT) et la CRP sont des marqueurs précoces de l''inflammation. La transferrine et la ferritine sont des marqueurs tardifs.',
    'RESIDANAT', 2025, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 2) Résidanat 2025
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'L''hémoglobine glyquée HbA1c :',
    '["Est le produit de la glycosylation enzymatique de l''hémoglobine A","Est le reflet de l''équilibre glycémique des 3 mois précédant son dosage","Est mesurée sur sérum prélèvement sur EDTA","Est normale entre 4% et 6%","Perd sa valeur en cas d''hémoglobinopathie"]',
    '[1,3,4]',
    'L''HbA1c reflète la glycémie des 3 derniers mois (durée de vie des globules rouges). Elle est normale entre 4 et 6%. Les hémoglobinopathies faussent le dosage.',
    'RESIDANAT', 2025, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 3) Résidanat 2025
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'Le glucagon active les enzymes suivantes :',
    '["La glycogène synthase","La glycogène phosphorylase","La triglycéride lipase","La 1-phosphofructo-kinase","La fructose-1,6-biphosphatase"]',
    '[1,2,4]',
    'Le glucagon active la glycogène phosphorylase (glycogénolyse), la triglycéride lipase (lipolyse) et la fructose-1,6-biphosphatase (néoglucogenèse).',
    'RESIDANAT', 2025, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 4) Résidanat 2024
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'Les fructosamines sont sous-estimées dans les situations suivantes :',
    '["Dénutrition","Diabète gestationnel","Hémoglobinopathies","Insuffisance hépatocellulaire","Syndrome néphrotique"]',
    '[0,3,4]',
    'La dénutrition, l''insuffisance hépatocellulaire et le syndrome néphrotique diminuent l''albuminémie, ce qui sous-estime le dosage des fructosamines.',
    'RESIDANAT', 2024, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 5) Résidanat 2024
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'Concernant la régulation de la glycémie :',
    '["L''absorption intestinale du glucose se fait par transport actif","Le glucagon stimule la glycogénolyse","L''insulinémie augmente en période de jeûne","Le cortisol est une hormone à action hyperglycémiante","Le transporteur insulino-dépendant du glucose dans le muscle est appelé GLUT4"]',
    '[1,3,4]',
    'Le glucagon stimule la glycogénolyse hépatique. Le cortisol est hyperglycémiant. GLUT4 est le transporteur insulino-dépendant du muscle et du tissu adipeux.',
    'RESIDANAT', 2024, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 6) Résidanat 2024
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'A propos du peptide C :',
    '["Il est co-sécrété en quantité équimolaire avec l''insuline mature","Il est métaboliquement inerte","Il est utile pour le diagnostic différentiel de l''hypoglycémie","Sa concentration plasmatique devient importante suite à des injections d''insuline","Il relie les deux chaînes A et B de l''insuline"]',
    '[0,1,2,4]',
    'Le peptide C est co-sécrété avec l''insuline, métaboliquement inerte, utile dans le diagnostic des hypoglycémies, et relie les chaînes A et B de la pro-insuline.',
    'RESIDANAT', 2024, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 7) Résidanat 2024
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'Concernant le diabète de type 1 :',
    '["C''est une maladie auto-immune","Il survient le plus souvent après l''âge de 20 ans","C''est une maladie à prédisposition génétique","C''est le diabète des sujets obèses","Il est à début brutal"]',
    '[0,2,4]',
    'Le DT1 est une maladie auto-immune à prédisposition génétique, débutant brutalement, le plus souvent chez l''enfant et l''adulte jeune.',
    'RESIDANAT', 2024, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 8) Résidanat 2021
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'La galactosémie congénitale est une maladie héréditaire rare, secondaire à un déficit enzymatique sur la voie du métabolisme du galactose, quelles sont les bonnes réponses ?',
    '["Le déficit enzymatique concerne l''UDP glucuronyl transférase","C''est une maladie à transmission autosomique dominante","Elle est associée à des hypoglycémies et à la présence de sucres réducteurs dans les urines","Non diagnostiquée à temps, elle évolue vers l''insuffisance hépato-cellulaire","Elle est caractérisée cliniquement par des vomissements, une hépatomégalie et un ictère"]',
    '[2,3,4]',
    'La galactosémie congénitale (déficit en galactose-1-phosphate uridylyl transférase) se manifeste par hypoglycémie, sucres réducteurs urinaires, vomissements, hépatomégalie, ictère et peut évoluer vers l''insuffisance hépatique.',
    'RESIDANAT', 2021, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 9) Résidanat 2021
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'Concernant l''hémoglobine glyquée :',
    '["C''est l''hémoglobine qui fixe le glucose par réaction non enzymatique réversible","Son dosage est remplacé par le dosage de la fructosamine en cas de thalassémie","Elle représente 4 à 6% de l''hémoglobine totale","Elle est dosée par méthode chromatographique","C''est la fraction d''hémoglobine HbA1b"]',
    '[1,2,3]',
    'En cas de thalassémie, la fructosamine remplace l''HbA1c. L''HbA1c normale est de 4-6% et est dosée par chromatographie. La glycation est non enzymatique et irréversible.',
    'RESIDANAT', 2021, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 10) Résidanat 2019
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'Dans la méthode à l''hexokinase, l''étape finale aboutit à la formation de :',
    '["L''acide D-gluconique","Gluconolactone","Chromogène oxyde","NADPH2","6-phosphogluconate"]',
    '[3,4]',
    'La méthode à l''hexokinase produit du NADPH (absorbance à 340 nm) et du 6-phosphogluconate. C''est la méthode de référence pour le dosage du glucose.',
    'RESIDANAT', 2019, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 11) Résidanat 2019
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'Laquelle de ces glycogénoses est associée à un déficit en phosphorylase kinase ?',
    '["Glycogénose de type I (Von Gierke)","Glycogénose de type III","Glycogénose de type VI","Glycogénose de type IX","Glycogénose de type IV"]',
    '[3]',
    'La glycogénose de type IX est due à un déficit en phosphorylase kinase, liée à l''X, touchant essentiellement les sujets de sexe masculin.',
    'RESIDANAT', 2019, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 12) Résidanat 2019
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'Concernant les fructosamines :',
    '["Elles regroupent les protéines glyquées de façon non enzymatique","Elles représentent un reflet de l''équilibre glycémique de 2 à 3 semaines","Leur détermination est utile lorsque le dosage de l''HbA1c est en défaut","Leur dosage est réalisé le plus souvent sur sang total","Elles représentent le marqueur biologique majeur du suivi de l''équilibre glycémique des patients diabétiques"]',
    '[0,1,2]',
    'Les fructosamines sont des protéines glyquées refletant la glycémie sur 2-3 semaines. Utiles quand l''HbA1c n''est pas fiable. Dosées sur sérum/plasma.',
    'RESIDANAT', 2019, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 13) Résidanat 2019
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'Parmi les transporteurs de glucose suivants, lequel est dépendant de l''insuline ?',
    '["GLUT1","GLUT2","GLUT3","GLUT4","GLUT5"]',
    '[3]',
    'GLUT4 est le seul transporteur de glucose insulino-dépendant. Il est exprimé dans le muscle strié, le tissu adipeux et le cœur.',
    'RESIDANAT', 2019, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 14) Résidanat 2018
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'Dans la méthode à la glucose oxydase, l''étape initiale aboutit à la formation :',
    '["D''acide D-gluconique","De gluconolactone","De glucose-6-phosphate","De fructose-6-phosphate","De polyéthylèneglycol"]',
    '[0]',
    'La glucose oxydase catalyse l''oxydation du glucose en acide D-gluconique avec production de H2O2.',
    'RESIDANAT', 2018, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 15) Résidanat 2018
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'Parmi les pathologies qui interfèrent dans l''interprétation de l''HbA1c, on retrouve :',
    '["Les hémoglobinopathies","Les carences martiales","L''insuffisance rénale chronique","Le syndrome néphrotique","La cirrose hépatique"]',
    '[0,1,2]',
    'Les hémoglobinopathies, carences martiales et insuffisance rénale chronique modifient la durée de vie des globules rouges ou la structure de l''hémoglobine, faussant l''HbA1c.',
    'RESIDANAT', 2018, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 16) Résidanat 2018
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'Parmi les pathologies suivantes, lesquelles peuvent être responsables d''une hypoglycémie ?',
    '["L''hyperthyroïdie","L''insulinome","L''insuffisance surrénalienne","Les glycogénoses","L''hypoparathyroïdie"]',
    '[1,2,3]',
    'L''insulinome (sécrétion excessive d''insuline), l''insuffisance surrénalienne (déficit en cortisol) et les glycogénoses (défaut de libération du glucose) provoquent des hypoglycémies.',
    'RESIDANAT', 2018, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 17) Résidanat 2016
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'Chacune des hormones suivantes agit sur la glycémie sauf une, laquelle ?',
    '["Hormone de croissance","Glucagon","Estradiol","Cortisol","ACTH"]',
    '[2]',
    'L''estradiol n''a pas d''effet direct significatif sur la glycémie. L''hormone de croissance, le glucagon, le cortisol et l''ACTH sont hyperglycémiants.',
    'RESIDANAT', 2016, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 18) Résidanat 2016
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'L''insuline stimule la transcription des gènes des enzymes suivantes sauf une, laquelle ?',
    '["Glucokinase","Phosphoénolcarboxykinase","Pyruvate kinase","Lipoprotéine lipase","Acide gras synthase"]',
    '[1]',
    'L''insuline stimule la glucokinase, la pyruvate kinase, la lipoprotéine lipase et l''acide gras synthase. Elle inhibe la phosphoénolcarboxykinase (enzyme clé de la néoglucogenèse).',
    'RESIDANAT', 2016, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 19) Résidanat 2016
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'Parmi les composés suivants, quels sont ceux utilisés pour le dosage de la glycémie par la méthode à l''hexokinase ?',
    '["NAD","NADP","ADP","ATP","La 6-phosphogluconate déshydrogénase"]',
    '[1,3]',
    'La méthode à l''hexokinase utilise le NADP comme coenzyme et l''ATP comme substrat. L''hexokinase phosphoryle le glucose en G6P qui est ensuite oxydé par la G6PD.',
    'RESIDANAT', 2016, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 20) Résidanat 2016
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'A propos de l''hémoglobine glyquée :',
    '["La liaison entre le glucose et l''hémoglobine se fait grâce à une réaction enzymatique","L''hémoglobine A1 est composée uniquement d''hémoglobine glyquée","L''hémoglobine glyquée est le fruit de la réaction entre le glucose et l''histidine de l''une ou des deux chaînes B de l''hémoglobine","L''hémoglobine A1c est la fraction la plus stable","Lors du réarrangement d''Amadori, la cétoamine formée est irréversible"]',
    '[1,3,4]',
    'L''HbA1c est la plus stable des fractions glyquées. Le réarrangement d''Amadori transforme l''aldimine (réversible) en cétoamine (irréversible).',
    'RESIDANAT', 2016, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 21) Résidanat 2015
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'L''adrénaline stimule tous les processus métaboliques suivants, sauf un, lequel ?',
    '["Glycolyse","Lipolyse","Néoglucogenèse","Glycogénolyse","Cétogenèse"]',
    '[4]',
    'L''adrénaline stimule la glycolyse, la lipolyse, la néoglucogenèse et la glycogénolyse mais pas la cétogenèse.',
    'RESIDANAT', 2015, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 22) Résidanat 2015
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'Parmi les affirmations suivantes concernant le peptide C, quelle est celle qui est fausse ?',
    '["Sa sécrétion est équimolaire à la sécrétion insulinique","Le dosage du peptide C peut être réalisé dans le sérum ou les urines","Le peptide C est constitutif de la pro-insuline","Il possède une activité biologique propre via des récepteurs des cellules-cibles","Dans le diabète insulinodépendant, le taux du peptide C est fortement abaissé"]',
    '[3]',
    'Le peptide C n''a pas d''activité biologique propre significative. Il est métaboliquement inerte et sert uniquement de marqueur de sécrétion insulinique.',
    'RESIDANAT', 2015, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 23) Résidanat 2015
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'Quels métabolites toxiques sont observés au cours de la galactosémie congénitale ?',
    '["Galactose-1-phosphate","UDP-galactose","UDP-glucose","Galactitol","Xylulose"]',
    '[0,3]',
    'Le galactose-1-phosphate (GAL-1-P) et le galactitol sont deux métabolites toxiques qui s''accumulent dans la galactosémie congénitale.',
    'RESIDANAT', 2015, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 24) Résidanat 2014 (format combinaison)
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'La microalbuminurie, marqueur privilégié des complications cardiovasculaires chez le diabétique :',
    '["Est détectée par bandelette urinaire","Est dosée dans les urines des 24h","Témoigne d''une néphropathie débutante","Est interprétée en fonction de la glycémie","Fait partie du bilan annuel du diabète non compliqué"]',
    '[1,2,4]',
    'La microalbuminurie se dose sur urines de 24h, témoigne d''une néphropathie débutante et fait partie du bilan annuel. Elle n''est pas détectable par bandelette.',
    'RESIDANAT', 2014, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 25) Résidanat 2014 (format combinaison)
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'Le diabète de type 2, caractérisé par une insulino-résistance, a pour conséquences une augmentation de :',
    '["La lipolyse","La synthèse des VLDL","L''utilisation du glucose","La clearance des triglycérides","La production du glucose"]',
    '[0,1,4]',
    'L''insulino-résistance du DT2 augmente la lipolyse, la synthèse des VLDL et la production hépatique de glucose.',
    'RESIDANAT', 2014, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 26) Résidanat 2014 (format combinaison)
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'L''hémoglobine glyquée, élément de surveillance de l''équilibre glycémique est :',
    '["Exprimée en g/L","Corrélée aux glycémies des 2 derniers mois","Dosée uniquement par colorimétrie","D''autant plus élevée que les périodes d''hyperglycémies sont plus fréquentes","Influencée par une carence martiale"]',
    '[1,3,4]',
    'L''HbA1c est corrélée aux glycémies des 2-3 derniers mois, augmente avec les hyperglycémies et est influencée par les carences martiales et les hémoglobinopathies.',
    'RESIDANAT', 2014, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 27) Résidanat 2013
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'Chez un sujet diabétique, indiquez le signe qui caractérise précocement l''atteinte glomérulaire :',
    '["Diminution de la clairance de la créatinine","Présence de germes dans les urines","Hématurie","Microalbuminurie positive","Altération du métabolisme phospho-calcique"]',
    '[3]',
    'La microalbuminurie positive est le premier signe biologique de néphropathie diabétique débutante, avant toute baisse de la clairance.',
    'RESIDANAT', 2013, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 28) Résidanat 2013 (format combinaison)
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'Au cours de l''insuffisance hépatocellulaire grave, on observe :',
    '["Hypoalbuminémie","Hyperammoniémie","Hypoglycémie","Hyperuricémie","Hypertransferrinémie"]',
    '[0,1,2]',
    'L''insuffisance hépatocellulaire grave entraîne hypoalbuminémie, hyperammoniémie et hypoglycémie par défaut de néoglucogenèse.',
    'RESIDANAT', 2013, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 29) Résidanat 2012
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'L''insuline possède les effets suivants sauf un, lequel ?',
    '["Augmente la synthèse du glycogène","Augmente la pénétration cellulaire du glucose","Inhibe l''hydrolyse du glycogène hépatique","Diminue la synthèse des lipides","Diminue la glycémie"]',
    '[3]',
    'L''insuline est une hormone anabolisante qui augmente la synthèse des lipides (lipogenèse), pas l''inverse.',
    'RESIDANAT', 2012, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 30) Résidanat 2012
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'Le glucagon possède sur le métabolisme lequel des effets suivants ?',
    '["Diminue la lipolyse","Augmente la lipolyse dans le tissu adipeux","Augmente la glycolyse","Augmente la néoglucogenèse","Augmente la glycémie"]',
    '[1,3,4]',
    'Le glucagon augmente la lipolyse, la néoglucogenèse et la glycémie. C''est une hormone hyperglycémiante.',
    'RESIDANAT', 2012, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 31) Résidanat 2012
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'Un sujet est diabétique si sa glycémie à jeun est supérieure à :',
    '["1,06 g/L","1,15 g/L","2,16 g/L","1,26 g/L","2 g/L"]',
    '[3]',
    'Selon l''OMS, le diagnostic de diabète est posé si la glycémie à jeun est ≥ 1,26 g/L (7 mmol/L) à deux reprises.',
    'RESIDANAT', 2012, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 32) Résidanat 2012 (format combinaison spécial)
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'L''insuline : 1) Est un polypeptide de 200 acides aminés. 2) Permet la captation du glucose depuis le compartiment sanguin. 3) Est sécrétée par les cellules β des îlots de Langerhans du pancréas endocrine. 4) Contrôle également la glycolyse et la néoglucogenèse. 5) Est sécrétée directement sous sa forme terminale, sans aucune transformation.',
    '["1,3,4","2,4","2,4,5","3,4,5","3,4"]',
    '[1]',
    'L''insuline (51 AA, pas 200) permet la captation du glucose et contrôle la glycolyse/néoglucogenèse. Elle est issue du clivage de la pro-insuline.',
    'RESIDANAT', 2012, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 33) Résidanat 2012 (format combinaison spécial)
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'Concernant la régulation hormonale du métabolisme du glycogène : 1) L''insuline est sécrétée en réponse à un bas niveau de glucose. 2) L''insuline augmente la capacité des muscles à synthétiser le glycogène. 3) Le glucagon stimule la dégradation du glycogène (surtout dans le foie). 4) Le glucagon et l''adrénaline ont des effets opposés sur le métabolisme du glycogène. 5) Les effets des trois hormones sont amplifiés par l''AMP cyclique.',
    '["1,4,5","2,3,4","2,3","2,3,5","3,4"]',
    '[2]',
    'L''insuline est sécrétée en réponse à une hyperglycémie (pas hypoglycémie). Elle stimule la glycogénogenèse. Le glucagon stimule la glycogénolyse hépatique.',
    'RESIDANAT', 2012, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 34) Résidanat 2011 (format combinaison)
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'Lors de l''interprétation de la courbe d''hyperglycémie provoquée par voie orale, quels sont les paramètres à prendre en considération ?',
    '["Élévation de la glycémie","Le temps de retour à la normale","L''hypoglycémie réactionnelle","La glycémie de base","La glycémie de fin d''épreuve"]',
    '[0,1]',
    'Les paramètres clés de l''HGPO sont l''élévation de la glycémie et le temps de retour à la normale.',
    'RESIDANAT', 2011, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- ==================== EMD 2025 ====================

-- 35) EMD 2025
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'Concernant la régulation de la glycémie, le foie est le seul organe capable de délivrer le glucose au sang car il est :',
    '["Le seul organe qui stocke le glucose sous forme de glycogène","Le seul organe à assurer une néoglucogenèse à partir de dérivés non glucidiques","Hautement sensible à l''action de l''insuline grâce au transporteur GLUT4","L''unique organe doté de l''enzyme glucose-6-phosphatase","Le seul site d''action des hormones hyperglycémiantes"]',
    '[3]',
    'La glucose-6-phosphatase, nécessaire à la libération du glucose sanguin, n''est présente que dans le foie.', 'EMD', 2025, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 36) EMD 2025
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'Parmi les facteurs stimulant la sécrétion d''insuline on retrouve :',
    '["Les acides aminés tels que la leucine et l''arginine","La baisse du potassium et l''augmentation du calcium intracellulaires","Le glucagon-like peptide-1 (GLP-1)","Le glucagon","Les catécholamines"]',
    '[0,2]',
    'Les acides aminés (leucine, arginine) et le GLP-1 stimulent la sécrétion d''insuline. Les catécholamines sont inhibitrices.',
    'EMD', 2025, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 37) EMD 2025
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'Parmi ces propositions concernant la méthode à l''hexokinase, lesquelles sont exactes ?',
    '["L''étape initiale est la formation du glucose-6-phosphate","L''hexokinase catalyse la transformation du glucose en acide gluconique et H2O2","L''action de l''hexokinase nécessite l''ATP et le Mg²+","La mesure de l''absorbance du NADPH se fait à 525 nm","Il n''y a pas d''interférences médicamenteuses et/ou analytiques"]',
    '[0,2,4]',
    'L''hexokinase phosphoryle le glucose en G6P en présence d''ATP et Mg²+. C''est la méthode de référence, sans interférences. Le NADPH est mesuré à 340 nm.',
    'EMD', 2025, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 38) EMD 2025
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'Parmi ces propositions concernant l''hémoglobine glyquée A1c, lesquelles sont exactes ?',
    '["La glycation a lieu entre une molécule de glucose et la valine terminale de l''une ou des deux chaînes β de l''hémoglobine","La glycation a lieu en deux étapes : une étape rapide et réversible (aldimine) et une étape lente et covalente (céto-amine)","Son dosage requiert un prélèvement sanguin sur fluorure d''oxalate","L''étape pré-analytique nécessite une hémolyse douce à pH acide","Sa durée de vie est de 3 semaines"]',
    '[0,1,3]',
    'La glycation de l''HbA1c se fait sur la valine N-terminale des chaînes β, en deux étapes (aldimine réversible → céto-amine irréversible). L''hémolyse se fait à pH acide.',
    'EMD', 2025, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 39) EMD 2025
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'Concernant le diabète LADA (Latent Autoimmune Diabetes in Adults) :',
    '["Il est consécutif à une mutation génétique à transmission autosomique dominante","Il est défini comme similaire au diabète de type 2 avec présence d''auto-anticorps caractéristiques du diabète de type 1","Il s''accompagne d''une destruction massive et brutale des îlots de Langerhans","Il est obligatoirement insulinodépendant","Son typage est basé sur la recherche d''anticorps anti glutamate décarboxylase (anti-GAD)"]',
    '[1,4]',
    'Le LADA est un diabète auto-immun lent, avec présence d''anticorps anti-GAD, initialement non insulinodépendant.',
    'EMD', 2025, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 40) EMD 2025
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'Parmi ces propositions concernant l''acidocétose du diabétique, une seule réponse est fausse. Laquelle ?',
    '["La carence insulinique majeure conduit à une augmentation de la concentration en glucose intracellulaire","Il y a une mobilisation des acides gras qui seront catabolisés en acétyl CoA","Les acétyl CoA ne peuvent pas être utilisés par le cycle de Krebs, ils seront transformés en corps cétoniques","La carence insulinique stimule la sécrétion du glucagon ce qui aggrave l''hyperglycémie","L''acidose métabolique est la résultante de l''hypercétonémie et de la déshydratation causée par la polyurie"]',
    '[0]',
    'La carence insulinique diminue le transport du glucose dans les cellules, donc le glucose intracellulaire n''augmente pas.',
    'EMD', 2025, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 41) EMD 2025
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'Concernant la galactosémie congénitale :',
    '["Il s''agit d''un déficit de l''enzyme uridylyl transférase, empêchant la conversion du galactose en glucose","Elle est caractérisée par l''accumulation du galactitol","L''anorexie, les vomissements et l''ictère physiologique prolongé apparaissent vers l''âge de deux ans","L''hypoglycémie est sévère et engage le pronostic vital","Le diagnostic est apporté par la mise en évidence de sucres réducteurs dans les urines après les repas"]',
    '[0,1,4]',
    'La galactosémie est due à un déficit en galactose-1-phosphate uridylyl transférase, avec accumulation de galactitol et présence de sucres réducteurs urinaires.',
    'EMD', 2025, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 42) EMD 2025
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'Une hypoglycémie persistante associée à une sécrétion d''insuline et de peptide C élevés est retrouvée au cours de :',
    '["L''hyperinsulinisme congénital du nouveau-né","L''insulinome","Tumeurs extra-pancréatiques à insulin-like","Un hyperinsulinisme d''origine iatrogène","Une résistance à l''action de l''insuline"]',
    '[0,1]',
    'L''hyperinsulinisme congénital et l''insulinome sécrètent de l''insuline de façon inappropriée, avec élévation du peptide C et hypoglycémie.',
    'EMD', 2025, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- ==================== RATT 2024 ====================

-- 43) RATT 2024
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'A propos du diabète de type 1 :',
    '["Il est la conséquence d''une insulino-résistance","Caractérisé par une augmentation de la translocation des récepteurs GLUT4","Le facteur de risque génétique touche dans 85% des cas la région HLA","Evolue rapidement vers l''acido-cétose","Peut se manifester à tout âge"]',
    '[2,3,4]',
    'Le DT1 est auto-immun avec prédisposition HLA, évolue vers l''acidocétose et peut survenir à tout âge.',
    'RATT', 2024, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 44) RATT 2024
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'Chez un sujet diabétique, indiquer le paramètre qui caractérise précocement l''atteinte glomérulaire :',
    '["HbA1c","Microalbuminurie","Cétonurie","Fructosamine","Glycosurie"]',
    '[1]',
    'La microalbuminurie est le premier marqueur de néphropathie diabétique débutante.',
    'RATT', 2024, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 45) RATT 2024
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'Un patient présente une hypoglycémie, peptide C normal et un taux d''IGFII élevé. Quel est le diagnostic le plus probable ?',
    '["Insulinome","Surdosage en insuline thérapeutique","Tumeur extra-pancréatique","Hyperinsulinisme congénital","Surdosage en antidiabétiques oraux de type biguanides"]',
    '[2]',
    'Les tumeurs extra-pancréatiques peuvent sécréter de l''IGFII (insulin-like growth factor II) à l''origine d''hypoglycémies avec peptide C normal.',
    'RATT', 2024, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- ==================== EMD 2024 ====================

-- 46) EMD 2024
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'Concernant l''insuline :',
    '["Son précurseur direct est la pro-insuline","Elle facilite la translocation des récepteurs GLUT4","Elle active la néoglucogenèse hépatique en augmentant le taux du F-2,6-BP","Elle augmente la libération des acides gras en activant la triacylglycérol lipase","Le zinc contenu dans la cellule favorise la formation d''hexamères d''insuline"]',
    '[0,1,4]',
    'L''insuline est issue de la pro-insuline, facilite la translocation de GLUT4 et le zinc favorise la formation d''hexamères.',
    'EMD', 2024, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 47) EMD 2024
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'Parmi ces propositions, quelle(s) est(sont) la(les) réponse(s) juste(s) ? Le dosage de la glycémie :',
    '["Requiert un tube contenant un antiglycolytique","La méthode à l''hexokinase est considérée comme méthode de référence car il n''y a pas d''interférences médicamenteuses ou analytiques","Le peptide C permet d''évaluer la sécrétion résiduelle d''insuline chez tout diabétique avant d''être traité","Le dosage des auto-anticorps anti-composants des îlots de Langerhans permet le typage du diabète de type 1","Le dosage de l''HbA1c se fait par chromatographie sur phase gazeuse"]',
    '[1,3]',
    'La méthode à l''hexokinase est la référence. Les auto-anticorps permettent le typage du DT1. L''HbA1c se dose par chromatographie liquide (HPLC), pas gazeuse.',
    'EMD', 2024, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 48) EMD 2024
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'Concernant le diabète gestationnel :',
    '["Il s''agit d''une hyperglycémie transitoire ou d''un diabète vrai permanent déclenché par la grossesse","Les glycémies à jeun et en postprandial sont plus basses par rapport à celles d''une femme non enceinte","Un état d''insulino-résistance se développe progressivement à partir de la 2ème semaine de la gestation","Le diagnostic est généralement effectué entre la 24ème et la 28ème semaine d''aménorrhée","Le test de dépistage d''O''Sullivan est réalisé avec une HGPO de 75 à 100 g de glucose, sans jeûne préalable"]',
    '[0,1,3]',
    'Le diabète gestationnel est dépisté entre 24-28 SA. La grossesse induit une insulinorésistance physiologique. L''O''Sullivan se fait sans jeûne.',
    'EMD', 2024, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 49) EMD 2024
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'Les auto-anticorps anti glutamate décarboxylase (anti-GAD) peuvent être retrouvés dans les diabètes :',
    '["De type 1","De type 2","LADA","Monogéniques","Gestationnels"]',
    '[0,2]',
    'Les anti-GAD sont caractéristiques du DT1 et du LADA (Latent Autoimmune Diabetes in Adults).',
    'EMD', 2024, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 50) EMD 2024
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'Concernant l''intolérance héréditaire au fructose :',
    '["Elle est liée à un déficit héréditaire en fructose-1-phosphate aldolase","Elle conduit à l''accumulation du produit toxique le fructose-1,6-BP","Elle entraîne un trouble sévère de la néoglucogenèse","Elle est à l''origine d''accès hypoglycémiques avec acidose lactique après un jeûne prolongé","La fructosémie et la fructosurie sont élevées à jeun"]',
    '[0,2,3]',
    'L''intolérance au fructose est due à un déficit en fructose-1-P aldolase, avec accumulation de F-1-P, bloquant la néoglucogenèse et provoquant hypoglycémie et acidose lactique.',
    'EMD', 2024, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- ==================== RATT 2023 ====================

-- 51) RATT 2023
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'Les facteurs stimulant la sécrétion d''insuline sont :',
    '["L''hyperglycémie","Les acides gras","La diminution du potassium extracellulaire","Les hormones gastroduodénales (GLP-1, GIP)","Les sulfamides"]',
    '[0,3,4]',
    'L''hyperglycémie, les hormones incrétines (GLP-1, GIP) et les sulfamides hypoglycémiants stimulent la sécrétion d''insuline.',
    'RATT', 2023, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 52) RATT 2023
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'Parmi les effets biologiques du glucagon on retrouve :',
    '["Augmentation de la glycogénolyse hépatique par activation de la glycogène phosphorylase","Activation de la néoglucogenèse par diminution du fructose 2,6-bisphosphate","Mobilisation des acides gras du tissu adipeux par stimulation de la triacylglycérol lipase","Augmentation de la synthèse des protéines à partir des acides aminés","Activation de l''entrée du potassium dans les cellules musculaires"]',
    '[0,1,2]',
    'Le glucagon active la glycogénolyse, la néoglucogenèse et la lipolyse. Il n''active pas la synthèse protéique ni l''entrée du potassium.',
    'RATT', 2023, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 53) RATT 2023
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'Parmi ces propositions, quelles sont celles exactes ?',
    '["La méthode de dosage du glucose à la glucose oxydase est la méthode de référence","La méthode à la glucose déshydrogénase est basée sur la cinétique d''apparition du NADH","La méthode à l''hexokinase requiert la présence d''ATP et de magnésium","Le dosage de l''insulinémie n''est pas contre-indiqué sur un sérum hémolysé","Le dosage du peptide C urinaire ne nécessite pas une dilution préalable"]',
    '[1,2]',
    'La méthode de référence est l''hexokinase, pas la glucose oxydase. La glucose déshydrogénase utilise le NADH. L''hémolyse interfère avec le dosage de l''insuline.',
    'RATT', 2023, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 54) RATT 2023
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'Concernant l''hémoglobine glyquée HbA1c :',
    '["Sa glycation est issue de la réaction entre le glucose et la valine terminale des chaînes β de l''hémoglobine","Son taux augmente proportionnellement au degré d''hyperglycémie","Son dosage a lieu sur un prélèvement de sang recueilli sur héparine","Elle est plus stable et plus spécifique que les autres fractions (A1a et A1b)","Elle reflète l''équilibre glycémique des 3 semaines précédant le prélèvement"]',
    '[0,1,3]',
    'L''HbA1c est la fraction la plus stable, dosée sur EDTA (pas héparine), reflète la glycémie sur 3 mois (pas 3 semaines).',
    'RATT', 2023, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 55) RATT 2023
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'Les critères diagnostiques du diabète sucré sont :',
    '["Glycémie à jeun > 1,10 g/L et glycémie 2h après repas ≥ 2 g/L","Glycémie à jeun > 1,26 g/L et glycémie 2h après repas ≥ 1,40 g/L","Glycémie à jeun entre 1,10-1,26 g/L et glycémie 2h après repas entre 1,40-2 g/L","Glycémie à jeun ≥ 1,26 g/L et glycémie 2h après repas ≥ 2 g/L","Glycémie à jeun ≥ 1,40 g/L et glycémie 2h après repas ≥ 2 g/L"]',
    '[3]',
    'Les critères OMS : glycémie à jeun ≥ 1,26 g/L (7 mmol/L) et/ou glycémie 2h après HGPO ≥ 2 g/L (11,1 mmol/L).',
    'RATT', 2023, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 56) RATT 2023
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'Le diabète de type 2 est caractérisé par :',
    '["Une insulino-résistance associée à une carence relative en insuline","Une fréquence estimée à environ 90% des cas de diabète sucré","Un pic d''incidence situé entre 40 et 65 ans","Une destruction auto-immune des cellules β des îlots de Langerhans","Une installation assez brutale avec amaigrissement et polyurie"]',
    '[0,1,2]',
    'Le DT2 représente 90% des diabètes, avec insulino-résistance et carence relative en insuline, survenant après 40 ans. L''installation est progressive.',
    'RATT', 2023, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 57) RATT 2023
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'L''étiologie de la glycogénose de type I (maladie de Von Gierke) est un déficit en :',
    '["Glucose-6-phosphatase (G6Pase), à transmission récessive","Enzyme débranchante, affectant le foie et les muscles","Enzyme branchante hépatique, à transmission autosomique récessive","Phosphorylase hépatique, à transmission récessive","Phosphorylase-b-kinase hépatique, à transmission liée à l''X"]',
    '[0]',
    'La maladie de Von Gierke (glycogénose type I) est due à un déficit en glucose-6-phosphatase, à transmission autosomique récessive.',
    'RATT', 2023, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 58) EMD 2023
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'A propos de l''insuline :',
    '["C''est une protéine de 51 AA avec chaîne A (21 AA), chaîne B (30 AA) et chaîne C (10 AA), reliées par deux ponts disulfures","Son précurseur, la pro-insuline, est constitué d''une seule chaîne formée de trois régions A, B et C","Sa sécrétion est stimulée par un taux élevé de potassium extracellulaire","Les hormones gastroduodénales sont des inhibiteurs de l''insulino-sécrétion","Son action intracellulaire est médiée par l''AMPc, le GMPc et le Ca²⁺"]',
    '[1,2,4]',
    'La pro-insuline est une chaîne unique A-B-C. Le K+ extracellulaire élevé stimule la sécrétion. L''action insulinique implique seconds messagers et phosphorylations.',
    'EMD', 2023, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 59) EMD 2023
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'Concernant la fructosamine :',
    '["Elle représente les céto-amines produits par glycation entre le glucose et les protéines plasmatiques (80% albumine)","Son dosage repose sur la réduction d''un sel de tétrazolium par ses fonctions céto-amines","Elle reflète l''équilibre glycémique des 3 à 5 semaines précédant le prélèvement","Son dosage a un intérêt dans la surveillance du diabète gestationnel","Son dosage est contre-indiqué en cas de dyslipidémies"]',
    '[0,1,2,3]',
    'La fructosamine (protéines glyquées dont 80% albumine) reflète la glycémie sur 3-5 semaines. Utile dans le diabète gestationnel. Dyslipidémies non contre-indiquées.',
    'EMD', 2023, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 60) EMD 2023
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'Parmi ces propositions relatives au diabète sucré, une seule est fausse, laquelle ?',
    '["L''obésité > 25% du poids idéal est un facteur de risque","Une carence insulinique majeure conduit à déshydratation, acidose et cachexie","L''HGPO est indiquée si glycémie à jeun entre 1,10-1,26 g/L","Les diabètes monogéniques sont à transmission autosomique dominante avec défaut primaire de sécrétion d''insuline sans cétose","L''activation de la voie des hexosamines conduit au sorbitol impliqué dans les complications neurologiques"]',
    '[4]',
    'Le sorbitol est produit par la voie des polyols (aldose réductase), pas par la voie des hexosamines.',
    'EMD', 2023, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- ==================== RATT 2022 ====================

-- 62) RATT 2022
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'Parmi les effets du glucagon on retrouve :',
    '["Augmentation de la glycogénolyse hépatique par inhibition de la glycogène phosphorylase","Inhibition de la glycogénosynthèse hépatique par inhibition de la glycogène synthase","Activation de la néoglucogenèse par diminution du fructose 2,6-bisphosphate","Inhibition de la glycolyse par activation de la pyruvate kinase","Augmentation de la mobilisation des acides gras par activation de la triacylglycérol lipase"]',
    '[1,2,4]',
    'Le glucagon inhibe la glycogène synthase, active la néoglucogenèse (en diminuant le F-2,6-BP) et active la lipase du tissu adipeux.',
    'RATT', 2022, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 63) RATT 2022
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'Parmi ces propositions concernant le dosage de la glycémie, une seule est fausse, laquelle ?',
    '["Le dosage se fait à jeun (~10h) ou en postprandial (2h après repas)","Le prélèvement se fait sur tube avec oxalate de K+ et fluorure de Na+","La méthode à la glucose oxydase est une méthode cinétique basée sur l''absorption du NADH à 340 nm","La méthode à l''hexokinase est la plus spécifique, méthode de référence","Chez l''enfant, le nouveau-né et la femme enceinte, la glycémie est plus basse"]',
    '[2]',
    'La glucose oxydase est une méthode colorimétrique (pas cinétique, pas de NADH). Elle produit H2O2 qui réagit avec un chromogène.',
    'RATT', 2022, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 64) RATT 2022
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'Parmi les indications du dosage de la fructosamine dans la surveillance du diabète, on retrouve :',
    '["Diabète de type 1 récent pour adapter la dose d''insuline","Diabète de type 1 stable bien contrôlé pour surveillance de routine","Diabète gestationnel","Diabète LADA","Diabétique avec hémoglobinopathie ou anémie hémolytique ou récemment transfusé"]',
    '[0,2,4]',
    'La fructosamine est indiquée quand l''HbA1c n''est pas fiable (hémoglobinopathies, hémol yse, transfusions) ou pour le diabète gestationnel.',
    'RATT', 2022, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 65) RATT 2022
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'Parmi ces propositions concernant les diabètes monogéniques, une seule est fausse, laquelle ?',
    '["Très rares (1 à 2% des cas)","À transmission autosomique dominante (contexte familial)","Consécutifs à des mutations génétiques altérant la fonction β-pancréatique","Caractérisés par un défaut primaire de sécrétion d''insuline avec cétose sévère","Apparaissent au très jeune âge (avant 25 ans)"]',
    '[3]',
    'Les diabètes monogéniques (MODY) sont sans cétose sévère car la sécrétion résiduelle d''insuline est suffisante pour éviter la lipolyse excessive.',
    'RATT', 2022, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- ==================== EMD 2022 ====================

-- 66) EMD 2022
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'Parmi ces transporteurs de glucose, lequel(lesquels) a(ont) une forte affinité pour le glucose indépendamment de l''action de l''insuline ?',
    '["GLUT1","GLUT2","GLUT3","GLUT4","GLUT5"]',
    '[0,2]',
    'GLUT1 et GLUT3 ont une forte affinité pour le glucose et sont insulino-indépendants. GLUT2 a une faible affinité. GLUT4 est insulino-dépendant.',
    'EMD', 2022, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 67) EMD 2022 (cas clinique)
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'Patiente 38 ans, poids normal, glycémie à jeun 1,19 g/L et 2h après HGPO 1,74 g/L. Quel(s) diagnostic(s) le(s) plus probable(s) ?',
    '["Diabète de type 2","Diabète de type 1","Diabète LADA","Intolérance au glucose","Diabète MODY"]',
    '[3]',
    'Glycémie à jeun entre 1,10-1,26 et glycémie 2h entre 1,40-2,00 = intolérance au glucose (prédiabète).',
    'EMD', 2022, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 68) EMD 2022
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'Chez cette patiente, quel test ou paramètre devrait permettre de poser le diagnostic de certitude ?',
    '["O''Sullivan","HbA1c","Auto-anticorps","Cétonurie","Fructosamine"]',
    '[2]',
    'La recherche d''auto-anticorps (anti-GAD, ICA) permet de distinguer un diabète auto-immun (LADA) d''un MODY ou d''une intolérance au glucose.',
    'EMD', 2022, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 69) EMD 2022
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'Concernant l''hémoglobine HbA1, quelles sont les propositions justes ?',
    '["Elle représente plus de 90% de l''hémoglobine totale","Ses trois fractions A1a, A1b, A1c sont glyquées","La glycation implique le groupement aldéhyde du glucose et aminé de l''hémoglobine","Sa fraction A1c est moins stable et moins spécifique","Son dosage est recommandé chaque trimestre chez un diabétique de type 2"]',
    '[0,1,4]',
    'HbA1 représente >90% de l''hémoglobine totale. Ses fractions A1a, A1b, A1c sont glyquées. HbA1c est la plus stable et spécifique. Dosage trimestriel recommandé.',
    'EMD', 2022, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 70) EMD 2022
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'Concernant l''intolérance héréditaire au fructose, quelle est la proposition fausse ?',
    '["Liée à un déficit en fructose-1-phosphate aldolase","À l''origine d''accès hypoglycémiques sans acidose lactique après jeûne prolongé","L''accumulation du F-1-P entraîne des lésions hépatiques, intestinales et rénales","La fructosémie est élevée et la fructosurie positive en période postprandiale","Évolution favorable sous régime sans fructose, sorbitol et sucre de table"]',
    '[1]',
    'L''intolérance héréditaire au fructose provoque des accès hypoglycémiques AVEC acidose lactique (contrairement à la galactosémie).',
    'EMD', 2022, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 71) EMD 2022
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'Nourrisson 6 mois : hépatomégalie importante, hypoglycémie à jeun sévère, hyperlactacidémie, cholestérol et TG élevés. Diagnostic le plus probable ?',
    '["Galactosémie congénitale","Déficit en fructose-1,6-diphosphatase","Intolérance héréditaire au fructose","Glycogénose de type I (maladie de Von Gierke)","Hyperinsulinisme congénital"]',
    '[3]',
    'La maladie de Von Gierke (glycogénose type I, déficit en G6Pase) associe hépatomégalie, hypoglycémie sévère à jeun, hyperlactacidémie et hyperlipidémie.',
    'EMD', 2022, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- ==================== EMD 2021 ====================

-- 72) EMD 2021
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'Concernant le prélèvement sanguin pour le dosage de la glycémie, quelles sont les propositions justes ?',
    '["Un jeûne de plus de 12h est impératif","Tube contenant oxalate de K+ et fluorure de Na+","Le prélèvement doit être à l''abri de la lumière","Le prélèvement pour glycémie postprandiale est réalisé 2h après le repas","Dès prélèvement, le tube est placé dans la glace"]',
    '[1,3]',
    'Le tube contient un anticoagulant (oxalate de K) et un antiglycolytique (fluorure de Na). La glycémie postprandiale se fait 2h après le repas.',
    'EMD', 2021, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 73) EMD 2021
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'Lors du dosage du glucose par la technique à la glucose oxydase, la 2ème réaction est catalysée par :',
    '["La glucose déshydrogénase","L''hexokinase","La peroxydase","La glucose-6-phosphate déshydrogénase","La glucose-6-phosphatase"]',
    '[2]',
    'La glucose oxydase produit H2O2 qui est ensuite détecté par une réaction chromogène catalysée par la peroxydase (POD).',
    'EMD', 2021, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 74) EMD 2021
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'Concernant le peptide C, une seule proposition est fausse, laquelle ?',
    '["Libéré en quantité équimolaire avec l''insuline après clivage de la proinsuline","Son dosage permet d''évaluer la sécrétion résiduelle d''insuline","Dosé sur sang et sur urines des 24h","Lors de l''analyse, le peptide C est moins stable que l''insuline","Dosage par méthodes immunochimiques"]',
    '[3]',
    'Le peptide C est PLUS stable que l''insuline (demi-vie plus longue), ce qui facilite son dosage.',
    'EMD', 2021, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 75) EMD 2021
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'Les critères diagnostiques du diabète sucré selon l''OMS sont :',
    '["Glycémie à jeun > 1,26 g/L et glycémie postprandiale > 2 g/L","Glycémie à jeun > 1,26 g/L et glycémie postprandiale > 1,40 g/L","Glycémie à jeun ≥ 1,26 g/L et glycémie postprandiale ≥ 2 g/L","Glycémie à jeun > 1,40 g/L et glycémie postprandiale < 2 g/L","Glycémie à jeun > 1,10 g/L et glycémie postprandiale ≥ 1,40 g/L"]',
    '[2]',
    'Critères OMS : glycémie à jeun ≥ 1,26 g/L (7 mmol/L) et/ou glycémie 2h post-HGPO ≥ 2 g/L (11,1 mmol/L).',
    'EMD', 2021, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 76) EMD 2021
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'A propos de l''acidocétose du diabète sucré, quelles sont les propositions exactes ?',
    '["C''est une complication majeure du diabète de type 1","La carence insulinique est modérée","Le glucose intracellulaire augmente ce qui augmente l''acétyl CoA","Les corps cétoniques sont l''acide acétoacétique et l''acide β-hydroxybutyrique","Au stade avancé, polypnée de Kussmaul"]',
    '[0,3,4]',
    'L''acidocétose est une complication du DT1 avec carence insulinique sévère, production de corps cétoniques (acétoacétate, β-hydroxybutyrate), et polypnée de Kussmaul.',
    'EMD', 2021, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 77) EMD 2021
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'L''insulinome est :',
    '["Une maladie génétique à transmission autosomique récessive","Une tumeur des cellules β du pancréas","Caractérisé par une sécrétion anormale d''IGFII","La cause la plus fréquente d''hypoglycémie chez le nouveau-né","Caractérisé par hypoglycémie avec insuline et peptide C élevés"]',
    '[1,4]',
    'L''insulinome est une tumeur des cellules β sécrétant de l''insuline de façon inappropriée, responsable d''hypoglycémies avec peptide C élevé.',
    'EMD', 2021, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 78) EMD 2021
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'La galactosémie congénitale est :',
    '["Une maladie à transmission autosomique récessive et/ou dominante","Liée à une malabsorption congénitale du galactose","À l''origine d''une augmentation du GAL-1-P toxique pour le foie, l''intestin et le rein","À l''origine d''une augmentation du galactitol toxique pour l''œil et le cerveau","Diagnostiquée par hypergalactosémie et galactosurie positive à jeun"]',
    '[2,3]',
    'La galactosémie congénitale entraîne accumulation de GAL-1-P (toxique hépatique) et galactitol (toxique oculaire et cérébral).',
    'EMD', 2021, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- ==================== EMD 2021 (glycogénoses) ====================

-- 61) EMD 2023 (numérotation originale)
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'Parmi ces glycogénoses, laquelle ou lesquelles est(sont) caractérisée(s) par une hypoglycémie associée à une hyperlactacidémie ?',
    '["Glycogénose I (Von Gierke)","Glycogénose III","Glycogénose IV","Glycogénose VI","Glycogénose IX"]',
    '[0]',
    'La glycogénose de type I (déficit en G6Pase) associe hypoglycémie sévère et hyperlactacidémie par accumulation de glucose-6-phosphate.',
    'EMD', 2023, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- ==================== EMD 2019 ====================

-- 79) EMD 2021 (autre numérotation)
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'La glycogénose de type VI (maladie de Hers) est :',
    '["Due à un déficit en phosphorylase hépatique","Caractérisée par l''accumulation de glycogène de structure anormale (amylopectine)","Compliquée d''un trouble du métabolisme du glycogène et de la néoglucogenèse","À l''origine d''une hypoglycémie sévère avec hyperlactacidémie","Une maladie d''évolution bénigne"]',
    '[0,4]',
    'La glycogénose de type VI (déficit en phosphorylase hépatique) est une maladie bénigne avec hépatomégalie et hypoglycémie modérée.',
    'EMD', 2021, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 80) EMD 2019
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'Quelle est la proposition fausse ? La sécrétion du glucagon est :',
    '["Assurée par les cellules alpha des îlots de Langerhans du pancréas","Stimulée par une baisse de la glycémie","Activée par l''hormone de croissance","Activée par le système sympathique","Inhibée par une faible concentration en acides gras"]',
    '[4]',
    'Une faible concentration en acides gras stimule la sécrétion du glucagon (elle ne l''inhibe pas).',
    'EMD', 2019, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 81) EMD 2019
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'Concernant l''hormone de croissance :',
    '["A une action hyperglycémiante rapide","Inhibe la glucokinase","Active la néoglucogenèse","Active la lipolyse","Active la glycogénolyse"]',
    '[0,2,3]',
    'L''hormone de croissance est hyperglycémiante (anti-insulinique), active la néoglucogenèse et la lipolyse.',
    'EMD', 2019, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 82) EMD 2019
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'A propos du peptide C :',
    '["Dosé exclusivement sur urines des 24h","La méthode de dosage est colorimétrique","Son taux évalue la sécrétion résiduelle d''insuline chez les DT1","Recommandé dans l''exploration des patients traités par insuline","Techniquement plus difficile à doser que l''insuline"]',
    '[2]',
    'Le peptide C évalue la sécrétion résiduelle d''insuline, utile chez les patients sous insuline exogène. Dosage par méthodes immunologiques (pas colorimétriques).',
    'EMD', 2019, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 83) EMD 2019
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'Quelle est la proposition fausse concernant la galactosémie congénitale ?',
    '["Liée à un déficit en uridylyl transférase","Le galactose-1-P est un inhibiteur de la phosphoglucomutase","Le galactitol est un métabolite hautement hépatotoxique","L''hypoglycémie observée est modérée","Traitement : suppression du lait et produits laitiers"]',
    '[2]',
    'Le galactitol est toxique pour le cristallin (cataracte) et le système nerveux, pas hépatotoxique (le GAL-1-P l''est).',
    'EMD', 2019, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 84) EMD 2019
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'Au cours de quelles glycogénoses retrouve-t-on un glycogène de structure normale ?',
    '["Glycogénose de type 0","Glycogénose de type I","Glycogénose de type III","Glycogénose de type IV","Glycogénose de type VI"]',
    '[0,1,4]',
    'Les glycogénoses de type 0 (déficit en glycogène synthase), I (G6Pase) et VI (phosphorylase) ont un glycogène de structure normale.',
    'EMD', 2019, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- ==================== EMD 2018 ====================

-- 85) EMD 2018
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'L''absorption intestinale du glucose :',
    '["Est réalisée contre le gradient de concentration","Est inhibée par le galactose","Utilise un transport similaire à celui du tubule rénal","Est bloquée par une augmentation de la glycémie","Est réalisée par le même transport que le fructose"]',
    '[0,2]',
    'L''absorption du glucose se fait par transport actif via SGLT1 (contre gradient couplé au Na+), similaire à la réabsorption tubulaire rénale.',
    'EMD', 2018, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 86) EMD 2018
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'Concernant l''hémoglobine glyquée :',
    '["Fraction de l''hémoglobine ayant fixé du glucose par réaction non enzymatique","Mémoire des variations glycémiques des 20 jours précédant l''examen","Représente normalement 6% de l''hémoglobine totale","Comporte plusieurs fractions dont la plus importante est la fructosamine","Comportement chromatographique différent de l''hémoglobine non glyquée"]',
    '[0,2,4]',
    'L''Hb glyquée est le fruit d''une réaction non enzymatique, représente 4-6% de l''Hb totale, et est séparable par chromatographie. La fructosamine est différente.',
    'EMD', 2018, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 87) EMD 2018
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'Chez un sujet diabétique, le paramètre qui caractérise précocement l''atteinte glomérulaire rénale est :',
    '["HbA1c","Microalbuminurie","Cétonurie","Fructosamine","Glycosurie"]',
    '[1]',
    'La microalbuminurie est le plus précoce des marqueurs de néphropathie diabétique.',
    'EMD', 2018, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 88) EMD 2018
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'Parmi les propositions suivantes, laquelle ou lesquelles caractérise(nt) le diabète insulino-dépendant ?',
    '["Insulinémie normale ou élevée","Tendance à la cétose","Apparition le plus souvent chez le sujet jeune","Surcharge pondérale fréquente","Association à certains gènes d''histocompatibilité"]',
    '[1,2,4]',
    'Le DT1 (insulino-dépendant) survient chez le sujet jeune, avec tendance à la cétose et association HLA.',
    'EMD', 2018, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 89) EMD 2018
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'Mécanismes physiopathologiques impliqués dans les effets dégénératifs chroniques du diabète sucré : un seul est faux, lequel ?',
    '["Activation de la protéine kinase C","Formation des produits de Maillard","Installation d''une acidose métabolique","Activation de la voie des polyols","Activation de la voie des hexosamines"]',
    '[2]',
    'L''acidose métabolique est une complication aiguë (acidocétose), pas un mécanisme dégénératif chronique.',
    'EMD', 2018, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 90) EMD 2018
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'A propos de la galactosémie congénitale :',
    '["Liée à un déficit en phosphoglucomutase","Caractérisée par l''accumulation d''UDP-galactose","S''accompagne d''un ictère physiologique du nouveau-né prolongé","Evolue vers l''insuffisance hépatocellulaire","Galactosurie et hypergalactosémie"]',
    '[2,3,4]',
    'La galactosémie congénitale se manifeste par un ictère prolongé, une évolution vers l''insuffisance hépatique, une galactosurie et une hypergalactosémie.',
    'EMD', 2018, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 91) EMD 2018
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'Concernant les glycogénoses :',
    '["Le déficit en G6Pase (type I) est exclusivement hépatique","L''hyperlactacidémie est commune aux types I et III","Le glycogène accumulé est de structure anormale dans les types I et VI","La glycogénose de type IX touche surtout les sujets masculins","L''hypoglycémie postprandiale est caractéristique du type 0"]',
    '[0,3]',
    'La G6Pase est exclusivement hépatique. La glycogénose de type IX (déficit en phosphorylase kinase) est liée à l''X, touchant les hommes.',
    'EMD', 2018, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- ==================== RATT 2017 ====================

-- 92) RATT 2017
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'L''insuline est inhibée par :',
    '["La somatostatine","Les hormones gastro-intestinales","L''adrénaline","Les corps cétoniques","Les sulfamides hypoglycémiants"]',
    '[0,2]',
    'La somatostatine et l''adrénaline sont des inhibiteurs de la sécrétion d''insuline.',
    'RATT', 2017, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 93) RATT 2017
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'Quelles sont les actions de l''insuline ?',
    '["Activation de la glycogénolyse","Stimulation du stockage des triglycérides","Activation de la protéolyse","Activation de la pyruvate kinase","Action hypokaliémiante"]',
    '[1,3,4]',
    'L''insuline active la lipogenèse (stockage des TG), la pyruvate kinase (glycolyse), et a un effet hypokaliémiant (entrée du K+ dans les cellules).',
    'RATT', 2017, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 94) RATT 2017
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'Le coma acidocétosique est :',
    '["Caractéristique du diabète de type 1","Caractéristique du sujet âgé","Lié à une accumulation d''acétyl CoA","Lié à un surdosage en biguanides","Une acidose métabolique avec polypnée"]',
    '[0,2,4]',
    'Le coma acidocétosique complique le DT1, résulte de l''accumulation d''acétyl CoA transformé en corps cétoniques, avec acidose métabolique et polypnée de Kussmaul.',
    'RATT', 2017, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 95) RATT 2017
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'Le dosage de la fructosamine est indiqué :',
    '["Dans le diabète de type 2 mal équilibré","À l''instauration du traitement du diabète de type 1","Dans la surveillance du diabète gestationnel","Dans les hémoglobinopathies","Dans les dysprotéinémies"]',
    '[1,2,3]',
    'La fructosamine est utile à l''instauration du traitement du DT1, dans le diabète gestationnel et quand l''HbA1c n''est pas fiable (hémoglobinopathies).',
    'RATT', 2017, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 96) RATT 2017
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'L''intolérance héréditaire au fructose est caractérisée biologiquement par :',
    '["Hyperfructosémie et fructosurie","Hyperglycémie à jeun","Acidose lactique","Aminoacidurie avec glycosurie","Hyperuricémie"]',
    '[0,2]',
    'L''intolérance au fructose se caractérise par une hyperfructosémie avec fructosurie et une acidose lactique.',
    'RATT', 2017, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- ==================== EMD 2017 ====================

-- 97) EMD 2017
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'Concernant l''absorption intestinale des glucides :',
    '["Le glucose entre dans l''entérocyte via SGLT1 (co-transporteur Na+/glucose)","Le galactose est capté et relargué dans le sang par GLUT2","Le fructose est absorbé par transport actif via GLUT5","Le glucose passe dans le sang par diffusion facilitée via GLUT2","Le temps d''absorption est ralenti par les lipides alimentaires"]',
    '[0,1,4]',
    'Le glucose est absorbé par SGLT1 puis sort par GLUT2. Le galactose suit la même voie. Les lipides ralentissent la vidange gastrique et l''absorption.',
    'EMD', 2017, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 98) EMD 2017
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'Classer les transporteurs GLUT par ordre d''affinité décroissante pour le glucose :',
    '["GLUT1 > GLUT3 > GLUT2 > GLUT4 > GLUT5","GLUT4 > GLUT2 > GLUT5 > GLUT1 > GLUT3","GLUT1 > GLUT3 > GLUT4 > GLUT2 > GLUT5","GLUT4 > GLUT1 > GLUT3 > GLUT2 > GLUT5","GLUT4 > GLUT3 > GLUT2 > GLUT1 > GLUT5"]',
    '[2]',
    'L''ordre d''affinité décroissante : GLUT1 > GLUT3 > GLUT4 > GLUT2 > GLUT5 (GLUT1 et 3 : forte affinité, GLUT2 : faible affinité).',
    'EMD', 2017, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 99) EMD 2017
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'A propos du diabète de type 1 :',
    '["Il est la conséquence d''une insulino-résistance","Caractérisé par une augmentation de la translocation des GLUT4","Le facteur de risque génétique touche dans 85% des cas la région HLA","Evolue rapidement vers l''acidocétose","Peut se manifester à tout âge"]',
    '[2,3,4]',
    'Le DT1 est auto-immun avec prédisposition HLA, évolue vers l''acidocétose et peut survenir à tout âge.',
    'EMD', 2017, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 100) EMD 2017
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'La surveillance biologique du traitement du diabète de type 2 comprend le dosage :',
    '["De l''hémoglobine glyquée A1c","De la fructosamine","Des corps cétoniques","Du peptide C","De la microalbuminurie"]',
    '[0,4]',
    'La surveillance du DT2 repose sur l''HbA1c (tous les 3 mois) et la microalbuminurie annuelle (dépistage néphropathie).',
    'EMD', 2017, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 101) EMD 2017
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'Concernant le test de O''Sullivan :',
    '["Pratiqué chez la femme enceinte au 1er trimestre","Indiqué chez la femme enceinte avec facteurs de risque de diabète","Consiste à administrer 75g de glucose dans 250 mL d''eau","Recommandé en cas d''état prédiabétique","Positif si glycémie après 2h > 1,40 g/L"]',
    '[1]',
    'Le test de O''Sullivan est un test de dépistage du diabète gestationnel (50g de glucose, 1h, sans jeûne). Le test diagnostique est l''HGPO 75g ou 100g.',
    'EMD', 2017, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- ==================== EMD 2016 ====================

-- 102) EMD 2016
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'L''absorption du glucose au niveau de l''intestin :',
    '["Se fait de façon active","Dépend du sodium","Se fait grâce au SGLT2","L''entrée dans l''entérocyte se fait de façon active","La Na+/K+ ATPase explique la qualification de transport actif"]',
    '[0,1,4]',
    'L''absorption intestinale du glucose est un transport actif secondaire via SGLT1, dépendant du Na+ et du gradient créé par la Na+/K+ ATPase.',
    'EMD', 2016, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 103) EMD 2016
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'Concernant la pénétration du glucose dans les cellules :',
    '["Se fait de façon active","GLUT2 est hépatique et dépendant de l''insuline","GLUT4 se trouve dans les adipocytes et muscles et dépend de l''insuline","GLUT1 et GLUT3 ont une forte affinité et dépendent de l''insuline","Pour GLUT2 le glucose peut aller dans les deux sens"]',
    '[2,4]',
    'GLUT4 est insulino-dépendant (muscle, adipocyte). GLUT2 (foie, pancréas) est bidirectionnel et insulino-indépendant.',
    'EMD', 2016, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 104) EMD 2016
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'Concernant l''insuline :',
    '["La molécule contient 2 ponts disulfures formés dans le réticulum endoplasmique","La pré-pro-insuline est stockée dans l''appareil de Golgi jusqu''à la sécrétion","L''insuline et le peptide C sont déversés en quantité égale dans le sang","La sécrétion d''insuline est stimulée par l''élévation de la glycémie","La sécrétion d''insuline est inhibée par l''élévation des AG, AA et corps cétoniques"]',
    '[2,3]',
    'L''insuline a 3 ponts disulfures (2 inter-chaînes, 1 intra-chaîne). Insuline et peptide C sont co-sécrétés. L''hyperglycémie stimule, les AG/AA/corps cétoniques stimulent aussi.',
    'EMD', 2016, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 105) EMD 2016
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'Le rôle de l''insuline :',
    '["Augmente la capture du glucose dans toutes les cellules","Active la glycolyse","Active la glycogénosynthèse et la néoglucogenèse","Stimule la lipogenèse et inhibe la lipolyse","Stimule la synthèse des protéines et inhibe la protéolyse"]',
    '[1,3,4]',
    'L''insuline active la glycolyse, stimule la lipogenèse, inhibe la lipolyse, stimule la synthèse protéique et inhibe la protéolyse. Elle inhibe la néoglucogenèse.',
    'EMD', 2016, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 106) EMD 2016
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'Concernant la régulation hormonale de la glycémie :',
    '["Le glucagon stimule la glycogénolyse et la néoglucogenèse","Le glucagon inhibe la sécrétion d''insuline","L''adrénaline inhibe la glycogénolyse et active la néoglucogenèse","Les glucocorticoïdes ont un effet hyperglycémiant","L''hormone de croissance a un effet hypoglycémiant"]',
    '[0,3]',
    'Le glucagon stimule glycogénolyse et néoglucogenèse. Les glucocorticoïdes sont hyperglycémiants. L''hormone de croissance est aussi hyperglycémiante.',
    'EMD', 2016, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 107) EMD 2016
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'Concernant l''exploration du métabolisme du glucose :',
    '["Le fluorure de Na+ est un inhibiteur de la glycolyse","Les méthodes enzymatiques ne sont pas utilisées pour doser le glucose urinaire","La glycémie postprandiale renseigne sur l''adaptation à l''apport glucidique","L''HbA1c reflète l''équilibre glycémique des mois précédents","La microalbuminurie des 24h identifie les sujets à risque d''insuffisance rénale"]',
    '[0,2,3,4]',
    'Le fluorure inhibe la glycolyse. La glycémie postprandiale évalue la tolérance glucidique. HbA1c reflète 2-3 mois. La microalbuminurie dépiste la néphropathie.',
    'EMD', 2016, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- 108) EMD 2016 (variations pathologiques)
INSERT INTO questions (q, options, correct, explanation, source, year, course, module) VALUES
(
    'Concernant les variations pathologiques du métabolisme du glucose :',
    '["Les risques à long terme du diabète sont le coma acidocétosique, coma hypoglycémique, coma hyperosmolaire","Le diabète type 2 est caractérisé par une destruction complète du pancréas endocrine","Le diabète type 2 est associé le plus souvent à une obésité","L''adénome Langerhansien donne une hypoglycémie","La mélitür ie peut survenir sans diabète sucré"]',
    '[2,3,4]',
    'Le DT2 est associé à l''obésité. L''insulinome (adénome Langerhansien) donne des hypoglycémies. La glycosurie peut exister sans diabète (tubulopathie).',
    'EMD', 2016, 'Métabolisme glucidique', 'Biochimie clinique'
);

-- ==================== FIN ====================
