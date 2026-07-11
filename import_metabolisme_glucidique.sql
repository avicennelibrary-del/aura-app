-- Questions Métabolisme glucidique - Biochimie clinique
-- Import depuis qcm_metabolisme_glucidique.csv

INSERT INTO public.questions (q, options, correct, source, year, course, module) VALUES
-- ====== RESIDANAT 2025 ======
('Les marqueurs biochimiques de la réaction inflammatoire à cinétique rapide sont :',
 '["La transferrine", "La ferritine", "La procalcitonine", "L''orosomucoïde", "La protéine C réactive"]',
 '[2,4]',
 'RESIDANAT', 2025, 'Métabolisme glucidique', 'Biochimie clinique'),

('L''hémoglobine glyquée HbA1c :',
 '["Est le produit de la glycosylation enzymatique de l''hémoglobine A", "Est le reflet de l''équilibre glycémique des 3 mois précédant son dosage", "Est mesurée sur sérum prélèvement sur EDTA", "Est normale entre 4% et 6%", "Perd sa valeur en cas d''hémoglobinopathie"]',
 '[1,3,4]',
 'RESIDANAT', 2025, 'Métabolisme glucidique', 'Biochimie clinique'),

('Le glucagon active les enzymes suivantes :',
 '["La glycogène synthase", "La glycogène phosphorylase", "La triglycéride lipase", "La 1-phosphofructo-kinase", "La fructose-1,6-biphosphatase"]',
 '[1,2,4]',
 'RESIDANAT', 2025, 'Métabolisme glucidique', 'Biochimie clinique'),

-- ====== RESIDANAT 2024 ======
('Les fructosamines sont sous-estimées dans les situations suivantes:',
 '["Dénutrition", "Diabète gestationnel", "Hémoglobinopathies", "Insuffisance hépatocellulaire", "Syndrome néphrotique"]',
 '[0,3,4]',
 'RESIDANAT', 2024, 'Métabolisme glucidique', 'Biochimie clinique'),

('Concernant la régulation de la glycémie:',
 '["L''absorption intestinale du glucose se fait par transport actif", "Le glucagon stimule la glycogénolyse", "L''insulinémie augmente en période de jeûne", "Le cortisol est une hormone à action hyperglycémiante", "Le transporteur insulino-dépendant du glucose dans le muscle est appelé GLUT4"]',
 '[1,3,4]',
 'RESIDANAT', 2024, 'Métabolisme glucidique', 'Biochimie clinique'),

('A propos du peptide C',
 '["Il est co-secrété en quantité équimolaire avec insuline mature", "Il est métaboliquement inerte", "Il est utile pour le diagnostic différentiel de l''hypoglycémie", "Sa concentration plasmatique devient importante suite à des injections d''insuline", "Il relie les deux chaînes A et B de l''insuline"]',
 '[0,1,2,4]',
 'RESIDANAT', 2024, 'Métabolisme glucidique', 'Biochimie clinique'),

('Concernant le diabète type 1:',
 '["C''est une maladie auto-immune", "Il survient le plus souvent après l''âge de 20 ans", "C''est une maladie à prédisposition génétique", "C''est le diabète des sujets obèses", "Il est à début brutal"]',
 '[0,2,4]',
 'RESIDANAT', 2024, 'Métabolisme glucidique', 'Biochimie clinique'),

('Concernant le diabète de type 1: il est la conséquence d''une Caractérisé par une augmentation de la résistance des récepteurs GLUT4',
 '["Caractérisé par une augmentation de la résistance des récepteurs GLUT4", "Le facteur de risque génétique touche dans 85% des cas la région HLA", "translocation des récepteurs GLUT4", "-", "Peut se manifester à tout âge"]',
 '[0,1]',
 'RESIDANAT', 2024, 'Métabolisme glucidique', 'Biochimie clinique'),

('Chez un sujet diabétique, indiquer le marqueur permettant d''évaluer précisément l''atteinte glomérulaire :',
 '["HbA1c", "Microalbuminurie", "Calciurie", "Glycosurie", "-"]',
 '[1]',
 'RESIDANAT', 2024, 'Métabolisme glucidique', 'Biochimie clinique'),

('Un patient présente une hypoglycémie avec un taux d''HbA1c normal et un taux d''IGF II élevé. Quel est le diagnostic le plus probable?',
 '["Insulinome", "Surdosage en Insuline thérapeutique", "Hyperinsulinisme congénital", "Surdosage en antidiabétiques oraux de type biguanides", "-"]',
 '[0]',
 'RESIDANAT', 2024, 'Métabolisme glucidique', 'Biochimie clinique'),

-- ====== RESIDANAT 2021 ======
('La galactosémie congénitale est une maladie héréditaire rare, secondaire à un déficit enzymatique sur la voie du métabolisme du galactose, quelles sont les bonnes réponses?',
 '["Le déficit enzymatique concerne l''UDP glucuronyl transférase", "C''est une maladie à transmission autosomique dominante", "Elle est associée à des hypoglycémies et à la présence de sucres réducteurs dans les urines", "Non diagnostiquée à temps; elle évolue vers l''insuffisance hépato-cellulaire", "Elle est caractérisée cliniquement par des vomissements, une hépatomégalie et un ictère"]',
 '[2,3,4]',
 'RESIDANAT', 2021, 'Métabolisme glucidique', 'Biochimie clinique'),

('Concernant l''hémoglobine glyquée:',
 '["C''est l''hémoglobine qui fixe le glucose par réaction non enzymatique réversible", "Son dosage est remplacé par le dosage de la fructosamine en cas de thalassémie", "Elle représente 4 à 6% de l''hémoglobine totale", "Elle est dosée par méthode chromatographique", "C''est la fraction d''hémoglobine HbA1b"]',
 '[1,2,3]',
 'RESIDANAT', 2021, 'Métabolisme glucidique', 'Biochimie clinique'),

-- ====== RESIDANAT 2019 ======
('Dans la méthode à l''hexokinase; l''étape finale aboutit à la formation de:',
 '["l''acide D-gluconique", "gluconolactone", "chromogène oxyde", "NADPH2", "6-phosphogluconate"]',
 '[3,4]',
 'RESIDANAT', 2019, 'Métabolisme glucidique', 'Biochimie clinique'),

-- ====== RESIDANAT 2016 ======
('Concernant l''hémoglobine glyquée HbA1c :',
 '["La liaison entre le glucose et l''hémoglobine se fait grâce à une réaction enzymatique", "L''hémoglobine A1 est composée uniquement d''hémoglobine glyquée", "L''hémoglobine glyquée est le fruit de la réaction entre le glucose et l''histidine de l''une ou des deux chaînes β de l''hémoglobine", "L''hémoglobine A1c est la fraction la plus stable", "La glycation implique le groupement aldéhyde du glucose et amine de l''hémoglobine formée est irréversible"]',
 '[2,3,4]',
 'RESIDANAT', 2016, 'Métabolisme glucidique', 'Biochimie clinique'),

('L''insuline stimule la transcription des gènes des enzymes suivant une, laquelle?',
 '["Glucokinase", "Phosphoénolpyruvate carboxykinase", "Pyruvate Kinase", "Lipoprotéine lipase", "Acide gras synthase"]',
 '[1]',
 'RESIDANAT', 2016, 'Métabolisme glucidique', 'Biochimie clinique'),

('Parmi les composés suivants, quels sont ceux utilisés pour le dosage de la glycémie par la méthode à l''hexokinase?',
 '["NAD", "NADP", "ADP", "ATP", "La 6-phosphogluconate déshydrogénase"]',
 '[1,3]',
 'RESIDANAT', 2016, 'Métabolisme glucidique', 'Biochimie clinique'),

('Chacune des hormones suivantes agit sur la glycémie par une de ces voies, laquelle?',
 '["Hormone de croissance", "Glucagon", "Estradiol", "Cortisol", "ACTH"]',
 '[1,3]',
 'RESIDANAT', 2016, 'Métabolisme glucidique', 'Biochimie clinique'),

-- ====== RESIDANAT 2012 ======
('Le glucagon passede par le métabolisme glucidique, lequel?',
 '["Augmente la glycogénolyse", "Augmente la lipoglycolyse", "Augmente-la-néoglycogenèse", "Augmente la glycémie", "-"]',
 '[3]',
 'RESIDANAT', 2012, 'Métabolisme glucidique', 'Biochimie clinique'),

('Un sujet est diabétique si sa glycémie à jeun est supérieure à :',
 '["1,05 g/L", "1,15 g/L", "2,16 g/L", "1,26 g/L", "2,g/L"]',
 '[3]',
 'RESIDANAT', 2011, 'Métabolisme glucidique', 'Biochimie clinique'),

('L''insuline:',
 '["Est un polypeptide de 200 acides aminés", "Permet la captation du glucose depuis le compartiment sanguin", "Est sécrétée par les îlots de Langerhans exocrine", "Contrôle également la glycolyse et la néoglucogenèse", "Est sécrétée directement sous sa forme terminale, sans transformation"]',
 '[1,3]',
 'RESIDANAT', 2012, 'Métabolisme glucidique', 'Biochimie clinique'),

('Concernant la régulation de la glycémie, quel est le seul organe qui stocke le glucose sous-forme de glycogène?',
 '["Le seul organe à assurer une néoglucogenèse à partir de dérivés non glucidiques", "Le seul organe sensible à l''action de l''insuline grâce au transporteur GLUT4", "Hautement sensible à l''action de l''enzyme glucose-6-phosphatase", "Le seul site d''action des hormones hyperglycémiantes", "-"]',
 '[2]',
 'RESIDANAT', 2012, 'Métabolisme glucidique', 'Biochimie clinique'),

('Concernant la régulation de la glycémie, le foie est le seul organe qui peut délivrer le glucose dans le sang car il est :',
 '["Le seul organe qui stocke le glycogène", "Le seul organe à assurer une néoglucogenèse à partir de dérivés non glucidiques", "Le seul organe sensible à l''action de l''insuline grâce au transporteur GLUT4", "Hautement sensible à l''action de l''enzyme glucose-6-phosphatase", "Le seul site d''action des hormones hyperglycémiantes"]',
 '[2]',
 'RESIDANAT', 2012, 'Métabolisme glucidique', 'Biochimie clinique'),

-- ====== RESIDANAT 2013 ======
('Concernant l''hormone de croissance:',
 '["A une action hyperglycogéniante", "Active le néoglucogenèse", "Inhibe la glycolyse", "Active le glycolyse", "Active la glycogénolyse"]',
 '[0,4]',
 'RESIDANAT', 2012, 'Métabolisme glucidique', 'Biochimie clinique'),

('L''insuline possède les effets suivants sauf un, lequel?',
 '["Augmente la synthèse du glycogène", "Augmente la pénétration cellulaire du glucose", "Augmente la néoglucogenèse hépatique", "Diminue la synthèse des acide gras à partir du glucose dans les adipocytes", "Diminue la glycémie"]',
 '[2]',
 'RESIDANAT', 2012, 'Métabolisme glucidique', 'Biochimie clinique'),

('L''hémoglobine glyquée, élément de surveillance de l''équilibre glycémique est:',
 '["Exprimée en g/l", "Utilisée pour la surveillance du diabète, dont la mesure est utile lors des périodes d''autant plus élevées que les périodes d''hyperglycémies sont plus fréquentes", "Influencée par une anémie hémolytique ou une anémie mégaloblastique", "-", "-"]',
 '[0]',
 'RESIDANAT', 2014, 'Métabolisme glucidique', 'Biochimie clinique'),

('Chez un sujet diabétique, indiquez le signe qui caractérise précocement l''atteinte glomérulaire:',
 '["Diminution de la clairance de la créatinine", "Protéinurie", "Hématurie", "Microalbuminurie positive", "Altération du métabolisme phospho-calcique"]',
 '[1]',
 'RESIDANAT', 2013, 'Métabolisme glucidique', 'Biochimie clinique'),

('Le diabète type 2, caractérisé par une insulino-résistance, a pour conséquences une augmentation de:',
 '["La lipolyse", "1,2,5", "La clearance des triglycérides", "La production du glucose", "-"]',
 '[0,3]',
 'RESIDANAT', 2013, 'Métabolisme glucidique', 'Biochimie clinique'),

('La microalbuminurie, marqueur cardiovasculaire de diagnostic précoce du diabétique:',
 '["Est détectée par bandelette urinaire", "Est dosée dans les urines des 24h; témoin d''une néphropathie débutante", "Est dosée 3 fois par an au minimum non compliqué, Fait partie du bilan annuel du diabète non compliqué", "-", "-"]',
 '[1,2]',
 'RESIDANAT', 2012, 'Métabolisme glucidique', 'Biochimie clinique'),

-- ====== RESIDANAT 2017 ======
('Le coma acidocétosique est:',
 '["fréquent dans le diabète de type 1", "lié à une accumulation de l''acétylCoA", "lié à une accumulation de triglycérides", "lié à une accumulation avec polynine", "une acidose métabolique avec polynine"]',
 '[0,2,3]',
 'RESIDANAT', 2017, 'Métabolisme glucidique', 'Biochimie clinique'),

('Le dosage de la fructosamine est indiqué dans:',
 '["l''instabilité du traitement du diabète de type 1, la surveillance d''un diabète gestationnel", "les hémoglobinopathies", "Dosée uniquement", "la surveillance d''un diabète de type 2 mal équilibrée", "-"]',
 '[0,1,2,3]',
 'RESIDANAT', 2017, 'Métabolisme glucidique', 'Biochimie clinique'),

('L''intolérance héréditaire au fructose Caractérisée biologiquement par:',
 '["hyperFructosurie et fructose à jeun", "aminoacidurie sans célose", "acidose lactique", "aminoacidose", "-"]',
 '[0,2,3]',
 'RESIDANAT', 2017, 'Métabolisme glucidique', 'Biochimie clinique'),

-- ====== RESIDANAT 2019 ======
('Concernant la galactosémie congénitale:',
 '["Liée à un déficit de l''enzyme uridyl transférase qui empêche la conversion du galactose en glucose", "Le galactitol est un métabolite à jeun hépatotoxique", "L''hypoglycémie observée est modérée", "Le traitement a lieu par suppression du lait et des produits laitiers", "-"]',
 '[0,2]',
 'RESIDANAT', 2019, 'Métabolisme glucidique', 'Biochimie clinique'),

-- ====== EMD 2025 ======
('Concernant la régulation de la glycémie:',
 '["L''absorption intestinale du glucose se fait par transport actif", "Le glucagon stimule la glycogénolyse", "L''insulinémie augmente en période de jeûne", "Le cortisol est une hormone à action hyperglycémiante", "Le transporteur insulino-dépendant du glucose dans le muscle est appelé GLUT4"]',
 '[2]',
 'EMD', 2025, 'Métabolisme glucidique', 'Biochimie clinique'),

('Concernant le diabète LADA (Latent Autoimmune Diabetes in Adults) :',
 '["Il est consécutif à une mutation génétique à transmission autosomique dominante", "Il est défini comme similaire au diabète de type 2 avec présence d''auto-anticorps caractéristiques du diabète de type 1", "Il s''accompagne d''auto-anticorps caractéristiques d''une destruction massive et brutale des îlots de Langerhans", "Il est obligatoirement insulinodépendant", "Il est obligatoirement décarboxylase (anti-GAD)"]',
 '[1,4]',
 'EMD', 2025, 'Métabolisme glucidique', 'Biochimie clinique'),

('Concernant l''absorption intestinale du glucose:',
 '["Le glucose entre dans l''entérocyte à travers le transporteur SGLT2", "Le glucose entre dans l''entérocyte et est relargué dans le sang par un transporteur GLUT2", "Le fructose est absorbé par un transport actif via le récepteur GLUTS", "Le glucose passe dans le sang par diffusion facilitée en présence de sodium", "Le temps d''absorption des glucides est ralenti par la présence des lipides alimentaires"]',
 '[1,4]',
 'EMD', 2018, 'Métabolisme glucidique', 'Biochimie clinique')
ON CONFLICT DO NOTHING;