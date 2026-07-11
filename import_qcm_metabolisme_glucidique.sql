-- Import complet des questions Métabolisme glucidique
-- Format: options en tableau simple, correct en indices (0-based)

INSERT INTO public.questions (q, options, correct, source, year, course, module) VALUES
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

('La galactosémie congénitale est une maladie héréditaire rare, secondaire à un déficit enzymatique sur la voie du métabolisme du galactose, quelles sont les bonnes réponses?',
 '["Le déficit enzymatique concerne l''UDP glucuronyl transférase", "C''est une maladie à transmission autosomique dominante", "Elle est associée à des hypoglycémies et à la présence de sucres réducteurs dans les urines", "Non diagnostiquée à temps; elle évolue vers l''insuffisance hépato-cellulaire", "Elle est caractérisée cliniquement par des vomissements, une hépatomégalie et un ictère"]',
 '[2,3,4]',
 'RESIDANAT', 2021, 'Métabolisme glucidique', 'Biochimie clinique'),

('Concernant l''hémoglobine glyquée:',
 '["C''est l''hémoglobine qui fixe le glucose par réaction non enzymatique réversible", "Son dosage est remplacé par le dosage de la fructosamine en cas de thalassémie", "Elle représente 4 à 6% de l''hémoglobine totale", "Elle est dosée par méthode chromatographique", "C''est la fraction d''hémoglobine HbA1b"]',
 '[1,2,3]',
 'RESIDANAT', 2021, 'Métabolisme glucidique', 'Biochimie clinique'),

('Dans la méthode à l''hexokinase; l''étape finale aboutit à la formation de:',
 '["l''acide D-gluconique", "gluconolactone", "chromogène oxyde", "NADPH2", "6-phosphogluconate"]',
 '[3,4]',
 'RESIDANAT', 2019, 'Métabolisme glucidique', 'Biochimie clinique'),

('Laquelle de ces glycogénoses est associée à un déficit en phosphorylase hépatique ?',
 '["Glycogénose de type II", "Glycogénose de type III", "Glycogénose de type IV", "Glycogénose de type V", "Glycogénose de type VI"]',
 '[4]',
 'EMD', 2021, 'Métabolisme glucidique', 'Biochimie clinique'),

('Quelles sont les propositions justes concernant les fructosamines ?',
 '["Elles représentent les protéines glycosylées circulantes formées par réaction de glycation non enzymatique", "Leur détermination est utile lorsque le dosage de l''HbA1c est pris en défaut", "Le peptide C représente le marqueur biologique avant d''être titré", "Elles représentent le marqueur biologique majeur du suivi de l''équilibre glycémique des patients diabétiques", "Le dosage de l''HbA1c ne se fait par chromatographie par phase gazeuse"]',
 '[0,1,4]',
 'EMD', 2024, 'Métabolisme glucidique', 'Biochimie clinique'),

('Parmis les transporteurs de glucose suivant, lequel est dépendant de l''insuline?',
 '["GLUT-1", "GLUT-2", "GLUT-3", "GLUT-4", "GLUT-5"]',
 '[3]',
 'EMD', 2024, 'Métabolisme glucidique', 'Biochimie clinique'),

('Dans la méthode à la glucose oxydase; l''étape initiale aboutit à la formation:',
 '["acide gluconique", "gluconolactone", "de glucose-6-phosphate", "de fructose-6-phosphate", "de poly-hexylmethylglucoyl"]',
 '[1]',
 'EMD', 2018, 'Métabolisme glucidique', 'Biochimie clinique'),

('Parmis les pathologies suivantes, lesquelles peuvent être responsables d''une hypoglycémie ?',
 '["L''hyperthyroïdie", "L''insulinome", "Les glycogénoses", "L''hypothyroïdie", "-"]',
 '[1,2,3]',
 'EMD', 2018, 'Métabolisme glucidique', 'Biochimie clinique'),

('L''adrénaline stimule tous les processus métaboliques suivants sauf un, lequel?',
 '["Glycolyse", "Néoglucogenèse", "Lipolyse", "Glycogénolyse", "Cétogenèse"]',
 '[0]',
 'RESIDANAT', 2015, 'Métabolisme glucidique', 'Biochimie clinique'),

('Parmis les affirmations suivantes concernant le peptide C, quelle est celle qui est fausse?',
 '["La production endogène de peptide C est évaluée dans le sang", "Le dosage du peptide C est réalisé dans le sérum ou les urines", "Le peptide C est constitutif de la pro-insuline, il est fixé sur les sites récepteurs des cellules insulino-dépendant, le taux du peptide C est fortement abaissé", "-", "-"]',
 '[2]',
 'RESIDANAT', 2015, 'Métabolisme glucidique', 'Biochimie clinique'),

('Quels métabolites toxiques sont observés au cours de la galactosémie congénitale?',
 '["Galactose-1-phosphate", "UDP-galactose", "UDP-glucose", "Galactiol", "Xylulose"]',
 '[0,1]',
 'RESIDANAT', 2013, 'Métabolisme glucidique', 'Biochimie clinique'),

('A propos de l''hémoglobine glyquée HbA1c :',
 '["Sa glycation est issue entre l''une ou des deux chaînes β de l''hémoglobine", "La glycation a lieu en deux étapes : Une étape rapide et réversible (formation d''une aldimine ou base de Schiff) et une étape lente et covalente", "L''étape pré-analytique nécessite une hémolyse douce à pH acide", "Sa durée de vie est de 03 semaines", "-"]',
 '[0,1,3]',
 'EMD', 2022, 'Métabolisme glucidique', 'Biochimie clinique'),

('Concernant le diabète LADA (Latent Autoimmune Diabetes in Adults) :',
 '["Il est consécutif à une mutation génétique à transmission autosomique dominante", "Il est défini comme similaire au diabète de type 2 avec présence d''auto-anticorps caractéristiques du diabète de type 1", "Il s''accompagne d''auto-anticorps caractéristiques d''une destruction massive et brutale des îlots de Langerhans", "Il est obligatoirement insulinodépendant", "Il est obligatoirement décarboxylase (anti-GAD)"]',
 '[1,4]',
 'EMD', 2025, 'Métabolisme glucidique', 'Biochimie clinique'),

('Parmis ces propositions relatives au diabète sucré, quelles sont fausses, laquelle ?',
 '["La carence insulinique est modérée", "La carence insulinique majeure conduit à une destruction massive des cellules β du pancréas", "L''acidocétose est caractérisée par une augmentation de la concentration en glucose intracellulaire", "Il y a une mobilisation des acides gras qui seront catabolisés en acétyl COA", "Les acétyl CoA ne peuvent pas être utilisés par le cycle de Krebs, ils seront transformés en corps cétoniques"]',
 '[0,1,2]',
 'EMD', 2025, 'Métabolisme glucidique', 'Biochimie clinique'),

('Une hypoglycémie persistante associée à une sécrétion d''insuline et du peptide C est retrouvée au cours de :',
 '["L''hyperinsulinisme consécutifs à Insuline-like Growth Factor 2", "Tumeurs extra pancréatiques à Insuline-like Growth Factor 2", "D''une résistance à l''insuline", "D''une résistance à l''action de l''insuline", "-"]',
 '[0,1]',
 'EMD', 2025, 'Métabolisme glucidique', 'Biochimie clinique'),

('A propos du diabète de type 1: il est la conséquence d''une : Caractérisé par une augmentation de la résistance des récepteurs GLUT4',
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

('Parmis les facteurs stimulant la sécrétion d''insuline on retrouve :',
 '["L''hyperglycémie", "Les acide gras", "La diminution de la concentration en potassium extracellulaire", "Les médicaments gastroduodénales (GLP-1, GIP)", "Les sulfamides"]',
 '[0,3,4]',
 'EMD', 2024, 'Métabolisme glucidique', 'Biochimie clinique'),

('Parmis les effets biologiques du glucagon on retrouve :',
 '["L''augmentation de la glycogénolyse hépatique par l''activation de la néoglucogenèse hépatique par la phosphorylation de la fructose 2,6 bi phosphate", "L''augmentation de la concentration en potassium par stimulation de l''enzyme triacylglycérol lipase", "L''augmentation de la synthèse des protéines à partir des acide aminés", "L''activation des enzymes hépatiques par stimulation de la Na+/K+-ATPase", "-"]',
 '[1,3]',
 'EMD', 2024, 'Métabolisme glucidique', 'Biochimie clinique'),

('Parmis ces propositions concernant l''insuline, quelles sont celles exactes?',
 '["Activation de la glycogène synthase", "Activation de la glycogénèse", "Inhibition de la glycogénolyse et active la néoglucogenèse", "Les glucocorticoïdes ont un effet hyperglycémiant", "Stimule la synthèse des protéines et inhibe la protéolyse"]',
 '[0,1,2]',
 'EMD', 2024, 'Métabolisme glucidique', 'Biochimie clinique'),

('Parmis ces propositions concernant la méthode à l''hexokinase, lesquelles sont exactes ?',
 '["L''étape initiale est la formation du glucose-6-phosphate", "L''hexokinase catalyse la transformation du glucose en acide gluconique et H2O2", "L''action de l''hexokinase nécessite l''ATP et le Mg2+", "La mesure de l''absorbance du NADPH se fait à 325nm", "Les mesures d''interférences médicamenteuses et/ou analytiques"]',
 '[0,2]',
 'EMD', 2024, 'Métabolisme glucidique', 'Biochimie clinique'),

('Lors de l''interprétation de la courbe d''hyperglycémie provoquée par voie orale, Mettre à prendre en considération:',
 '["Elévation de la glycémie", "Le temps de retour à la normale", "L''hypoglycémie réactionnelle", "La néoglucogenèse", "Comme élément de fin d''épreuve"]',
 '[0]',
 'RESIDANAT', 2012, 'Métabolisme glucidique', 'Biochimie clinique'),

('Concernant la régulation de la glycémie, le foie est le seul organe qui peut délivrer le glucose dans le sang car il est :',
 '["Le seul organe qui stocke le glycogène", "Le seul organe à assurer une néoglucogenèse à partir de dérivés non glucidiques", "Le seul organe sensible à l''action de l''insuline grâce au transporteur GLUT4", "Hautement sensible à l''action de l''enzyme glucose-6-phosphatase", "Le seul site d''action des hormones hyperglycémiantes"]',
 '[3]',
 'EMD', 2025, 'Métabolisme glucidique', 'Biochimie clinique'),

('Parmis les facteurs stimulant la sécrétion d''insuline on retrouve :',
 '["Les acide aminés tels que la leucine et l''arginine", "La baisse du potassium et l''augmentation du calcium intracellulaires", "Le glucagon", "Les catécholamines", "-"]',
 '[0,1,2]',
 'EMD', 2025, 'Métabolisme glucidique', 'Biochimie clinique'),

('Concernant la régulation hormonale de la glycémie :',
 '["Le glucagon stimule la sécrétion de l''insuline", "L''adrénaline inhibe la sécrétion de l''insuline", "L''adrénaline inhibe la glycogénolyse et active la néoglucogenèse", "Les glucocorticoïdes ont un effet hyperglycémiant", "L''hormone de croissance conduit à une hypoglycémie"]',
 '[1,3]',
 'EMD', 2026, 'Métabolisme glucidique', 'Biochimie clinique'),

('Concernant l''exploration du métabolisme du glucose :',
 '["Le fluorure de Na+ est utilisé comme un inhibiteur de la glycolyse", "Les méthodes enzymatiques ne sont pas utilisées pour doser le glucose dans les urines", "L''hémoglobine glyquée reflète l''équilibre glycémique des mois précédant le prélèvement", "L''hémoglobine glyquée à jeun est un paramètre adapté à l''organisme à rapport glucide", "Identifier les sujets à risque élevé d''insuffisance rénale"]',
 '[0,2,4]',
 'EMD', 2026, 'Métabolisme glucidique', 'Biochimie clinique'),

('Chez un sujet diabétique, indiquer la proposition caractérisée(nt) le diabète insulino-dépendant :',
 '["HbA1c", "Microalbuminurie", "Protéinurie", "Calciurie", "Glycosurie"]',
 '[1,2]',
 'EMD', 2023, 'Métabolisme glucidique', 'Biochimie clinique'),

('Concernant la fructosamine :',
 '["Elle représente l''ensemble des céto-amines produits par réaction de glycation entre le glucose et les protéines plasmatiques dont 80% d''albumine", "Son dosage repose sur un prélèvement sanguin sur tube sec", "Son dosage a un intérêt dans la surveillance du diabète gestationnel", "Son dosage est contre-indiqué en cas de dyslipidémies", "-"]',
 '[0,1,2]',
 'EMD', 2023, 'Métabolisme glucidique', 'Biochimie clinique'),

('Les critères diagnostiques du diabète sucré sont :',
 '["Glycémie à jeun > 1,10 g/L et glycémie 2h après un repas ≥2 g/l", "Glycémie à jeun > 1,26 g/L et glycémie 2h après un repas ≤ 1,40 g/l", "Glycémie à jeun ≥ 1,26 g/L et glycémie 2h après un repas entre 1,40 et 2 g/l", "Glycémie à jeun ≥ 1,26 g/l et glycémie 2h après un repas ≥ 2 g/L", "-"]',
 '[3]',
 'EMD', 2023, 'Métabolisme glucidique', 'Biochimie clinique'),

('Le diabète de type 2 est caractérisé par :',
 '["Une insulino-résistance associée à une déficience en insuline", "Une insulino-résistance estimée à environ 80% des cas de diabète sévère", "Un pic d''incidence situé entre 40 et 65 ans", "Une destruction auto-immune des cellules β des îlots de Langerhans du pancréas", "polyphagie, polyurie et asthénie"]',
 '[0,2,4]',
 'EMD', 2023, 'Métabolisme glucidique', 'Biochimie clinique'),

('Etiologie de la glycogénose de type 1 (maladie de von Lewis) est un déficit en :',
 '["Glucose-6-phosphatase (G6Pase), à transmission récessive", "Enzyme débranchante hépatique, à transmission récessive", "Phosphorylase-b-kinase hépatique, à transmission liée à IX", "-", "-"]',
 '[0,1,2]',
 'EMD', 2023, 'Métabolisme glucidique', 'Biochimie clinique'),

('A propos de l''insuline:',
 '["C''est une protéine de 51 AA composée de deux chaînes C (10 AA), reliées par deux ponts disulfures", "Son précurseur, la pro-insuline, est constituée d''une seule chaîne polypeptidique", "-", "-", "-"]',
 '[4]',
 'EMD', 2023, 'Métabolisme glucidique', 'Biochimie clinique'),

('Parmis ces propositions relatives à l''insuline, lesquelles sont inhibées par :',
 '["la somatostatine", "les corps cétoniques", "l''adrénaline", "les sulfamides hypoglycémiants", "-"]',
 '[0,3]',
 'EMD', 2022, 'Métabolisme glucidique', 'Biochimie clinique'),

('Quelles sont les actions de l''insuline?',
 '["Activation de la glycogénolyse", "Inhibition de la glycolyse", "Activation de la néoglucogenèse", "Activation de la pyruvate kinase", "Action hypokaliémique"]',
 '[3,4]',
 'EMD', 2022, 'Métabolisme glucidique', 'Biochimie clinique'),

('Parmis les propositions suivantes relatives à l''insuline, laquelle est vraie?',
 '["Elle stimule la néoglucogenèse et la néoglucogenèse", "Elle stimule la sécrétion de la lipo-protéine lipase", "Elle active la glycogénèse et inhibe la lipolyse", "Elle stimule la synthèse des protéines et par stimulation de la Na+/K+-ATPase", "-"]',
 '[1,2]',
 'EMD', 2024, 'Métabolisme glucidique', 'Biochimie clinique'),

('Parmis les propositions suivantes concernant l''Hémoglobine glyquée, indiquer celle(s) COM EXACTE(S):',
 '["Il s''agit d''une fraction comme une mémoire des variations de la glycémie ayant fixé du glucose par une réaction non enzymatique", "Elle est utilisée comme une mémoire des variations de la glycémie portant sur les 20 jours précédant le prélèvement", "Elle représente normalement environ 6% de l''hémoglobine totale", "Elle comporte plusieurs fractions dont la plus importante est la fructosamine", "Son dosage est différent de celui de l''hémoglobine non glyquée"]',
 '[1,2]',
 'EMD', 2018, 'Métabolisme glucidique', 'Biochimie clinique'),

('A propos de l''hémoglobine glyquée:',
 '["La liaison entre le glucose et l''hémoglobine se fait grâce à une réaction enzymatique", "L''hémoglobine A1 est composée uniquement d''hémoglobine glyquée", "L''hémoglobine glyquée est le fruit de la réaction entre le glucose et l''histidine de l''une ou des deux chaînes β de l''hémoglobine", "L''hémoglobine A1c est la fraction la plus stable", "La glycation implique le groupement aldéhyde du glucose et amine de l''hémoglobine formée est irréversible"]',
 '[2,3,4]',
 'RESIDANAT', 2016, 'Métabolisme glucidique', 'Biochimie clinique'),

('L''insuline stimule la transcription des gènes des enzymes suivant une, laquelle?',
 '["Glucokinase", "Phosphoénolpyruvate carboxykinase", "Pyruvate Kinase", "Lipoprotéine lipase", "Acide gras synthase"]',
 '[1]',
 'RESIDANAT', 2016, 'Métabolisme glucidique', 'Biochimie clinique'),

('Parmis les composés suivants, quels sont ceux utilisés pour le dosage de la glycémie par la méthode à l''hexokinase?',
 '["NAD", "NADP", "ADP", "ATP", "La 6-phosphogluconate déshydrogénase"]',
 '[1,3]',
 'RESIDANAT', 2016, 'Métabolisme glucidique', 'Biochimie clinique'),

('Chacune des hormones suivantes agit sur la glycémie par une de ces voies, laquelle?',
 '["Hormone de croissance", "Glucagon", "Estradiol", "Cortisol", "ACTH"]',
 '[1,3]',
 'RESIDANAT', 2016, 'Métabolisme glucidique', 'Biochimie clinique'),

('L''absorption intestinale du glucose:',
 '["Se fait de façon active", "Se fait de façon passive", "L''entrée du glucose dans l''érythrocyte se fait de façon passive", "L''entrée du glucose dans l''entérocyte se fait via le Na+/K+ ATPase dans l''érythrocyte", "-"]',
 '[0,2]',
 'EMD', 2013, 'Métabolisme glucidique', 'Biochimie clinique'),

('Concernant la pénétration du glucose dans les cellules :',
 '["Le GLUT 2 est hépatique et dépendant de l''insuline", "GLUT se trouve dans les adipocytes et les cellules musculaires et dépendants de l''insuline", "Le GLUT 1 et le GLUT 3 ont une forte affinité pour le glucose et l''insuline", "Le GLUT1, le GLUT2 le glucose peut aller dans les 02 sens", "-"]',
 '[2]',
 'EMD', 2016, 'Métabolisme glucidique', 'Biochimie clinique'),

('Parmis les indications du traitement du diabète de type 2 :',
 '["La surveillance biologique du traitement du diabète de type 2 Consiste à doser du peptide C", "de l''hémoglobine glyquée Atc", "du peptide C", "de la microalbuminurie", "-"]',
 '[0,1,4]',
 'EMD', 2016, 'Métabolisme glucidique', 'Biochimie clinique'),

('A propos du diabète de type 1 :',
 '["Il est la conséquence d''une résistance d''une insulino-résistance", "Le facteur de risque génétique touche dans 85% des cas la région HLA", "Evolue rapidement vers l''acido-cétose", "Peut se manifester à tout âge", "-"]',
 '[1,2,3,4]',
 'EMD', 2017, 'Métabolisme glucidique', 'Biochimie clinique'),

('La surveillance biologique du traitement du diabète de type 2 :',
 '["de l''hémoglobine glyquée Atc", "de la fructosamine", "du peptide C", "-", "-"]',
 '[0,1]',
 'EMD', 2017, 'Métabolisme glucidique', 'Biochimie clinique'),

('Concernant les variations pathologiques du métabolisme du glucose:',
 '["Les risques à long terme du diabète type 2 sont caractérisés par une hyperosmolarité, le coma hypoglycémique", "destruction complète du pancréas endocrine", "Le diabète type 2 est associé le plus souvent à une rétinopathie", "Le syndrome Langerhansien donne une hypoglycémie et peut survenir sans l''existence d''un diabète sucré", "-"]',
 '[2,3,4]',
 'EMD', 2016, 'Métabolisme glucidique', 'Biochimie clinique'),

('Parmis les propositions suivantes concernant les mécanismes physiopathologiques impliqués dans l''apparition du diabète sucré dégénératif chronique, laquelle est fausse?',
 '["Activation de la protéine kinase C", "Formation des produits de Maillard", "Installation d''une acidose métabolique", "Activation de la voie des polyols", "Activation de la voie des hexosamines"]',
 '[2]',
 'EMD', 2019, 'Métabolisme glucidique', 'Biochimie clinique'),

('A propos de la galactosémie congénitale:',
 '["Elle est liée à un déficit en fructose-1,6-diphosphatase", "Elle est caractérisée par l''accumulation de l''UDP-galactose", "Elle évolue vers l''insuffisance hépatocellulaire et s''accompagne d''un ictère physiologique et de triglycérides augmentées", "-", "-"]',
 '[1,3]',
 'EMD', 2022, 'Métabolisme glucidique', 'Biochimie clinique'),

('Parmis les propositions suivantes concernant les glycogénoses, indiquer celle(s) qui sont exactes?',
 '["Le déficit en fructose-1,6-diphosphatase", "Glycogénose de type I (Maladie de Von Gierke)", "La glycogénose de type IX est observée essentiellement chez les sujets de sexe masculin", "La glycogénose de type 0 est caractéristique de la glycogénose de type 0", "-"]',
 '[2,3,4]',
 'EMD', 2018, 'Métabolisme glucidique', 'Biochimie clinique'),

('Concernant le prélèvement sanguin pour le dosage de la glycémie, quelles sont les propositions justes?',
 '["Un jeune de plus de 12 heures est impératif", "Le prélèvement sanguin doit être à l''abri de la lumière", "Le prélèvement sanguin est indiqué pour glycémie postprandiale", "Le prélèvement sanguin placé dans de la glace immédiatement", "Dés maintenant, le fluorure de sodium"]',
 '[0,3]',
 'EMD', 2021, 'Métabolisme glucidique', 'Biochimie clinique'),

('Lors du dosage du glucose par la technique à la glucose oxydase par la 2ème réaction est catalysée par:',
 '["la glucose déshydrogénase", "l''hexokinase", "la glucose-6-phosphate déshydrogénase", "la peroxydase", "-"]',
 '[3]',
 'EMD', 2021, 'Métabolisme glucidique', 'Biochimie clinique'),

('Concernant le peptide C, une seule proposition est fausse; laquelle ?',
 '["Le peptide C est libéré en quantité équimolaire à l''insuline, après clivage de la proinsuline", "Le dosage du peptide C permet d''évaluer la sécrétion résiduelle de l''insuline", "-", "-", "-"]',
 '[2]',
 'EMD', 2021, 'Métabolisme glucidique', 'Biochimie clinique'),

('Parmis ces propositions concernant l''hémoglobine HbA1, quelles sont les propositions justes ?',
 '["Elle représente plus de 80% de l''hémoglobine totale chez l''adulte sain", "La glycation de l''hémoglobine HbA1 est moins spécifique que la glycation chaque trimaine à l''insuline chez un diabétique de type 2", "La glycation implique le groupement aldéhyde du glucose et amine de l''hémoglobine", "Sa fraction Al est moins stable et moins spécifique", "-"]',
 '[0,2]',
 'EMD', 2022, 'Métabolisme glucidique', 'Biochimie clinique'),

('Parmis les glycogénoses, laquelle est (sont) caractérisée(s) par une hypoglycémie?',
 '["Glycogénose I", "Glycogénose III", "Glycogénose IV", "Glycogénose VI", "Glycogénose IX"]',
 '[0]',
 'EMD', 2023, 'Métabolisme glucidique', 'Biochimie clinique'),

('Parmis les effets du glucagon sur la glycémie, lesquels sont faux?',
 '["Augmentation de la glycogénolyse hépatique", "Inhibition de la glycogène phosphorylase", "Augmentation de la néoglycogenèse", "Activation de la concentration en fructose 2,6 bi phosphate par activation de la kinase 2", "Inhibition de la concentration en fructose par activation de la kinase 2"]',
 '[1,2,4]',
 'EMD', 2022, 'Métabolisme glucidique', 'Biochimie clinique'),

('Parmis ces propositions concernant le dosage de la glycémie, une seule est fausse:',
 '["Le prélèvement sanguin se fait strictement à jeun (2h après les repas)", "Le prélèvement sanguin (2h après les repas) en glycémie entre 1,10 et 4,26 g/l", "La méthode cinétique basée sur l''absorption du glucose oxydase est une méthode de référence", "La méthode à l''Hexokinase est la méthode la plus spécifique, considérée comme méthode de référence", "Chez l''enfant, le nouveau-né et la femme enceinte, la glycémie est plus basse que les valeurs usuelles"]',
 '[0]',
 'EMD', 2022, 'Métabolisme glucidique', 'Biochimie clinique'),

('Parmis ces propositions concernant le dosage de la glycémie, quel(s) diabète(s) peut-on diagnostiquer?',
 '["Le diabète de type 1", "Le diabète de type 2", "L''intolérance au glucose", "Le diabète LADA", "Diabète MODY"]',
 '[0,1,3]',
 'EMD', 2022, 'Métabolisme glucidique', 'Biochimie clinique'),

('Parmis ces propositions concernant les anticorps anti glutamate décarboxylase (anti-GAD) peuvent être retrouve s dans les diabètes :',
 '["De type 1", "De type 2", "LADA", "Gestationnel", "-"]',
 '[0,2]',
 'RESIDANAT', 2022, 'Métabolisme glucidique', 'Biochimie clinique'),

('Parmis ces propositions concernant les transporteurs de glucose, (lesquels) a (ont) une forte affinité au glucose indépendamment de l''action de l''insuline:',
 '["GLUT-1", "GLUT-2", "GLUT-3", "GLUT-4", "GLUT-5"]',
 '[0,2]',
 'EMD', 2022, 'Métabolisme glucidique', 'Biochimie clinique'),

('Concernant le diabète gestationnel:',
 '["Il s''agit d''une hyperglycémie déclenchée par la grossesse", "Les glycémies à jeun sont plus basses par rapport à celles d''une femme non enceinte", "Un état d''insulinorésistance se développe progressivement à partir de la 2ème semaine de la gestation", "-", "Est positif si la glycémie après 2h est > 1,40g/l"]',
 '[0,1,2]',
 'RESIDANAT', 2013, 'Métabolisme glucidique', 'Biochimie clinique'),

('Concernant l''intolérance héréditaire au fructose, quelle est la proposition fausse ?',
 '["Elle est liée à un déficit héréditaire en fructose-1-phosphate aldolase", "Est à l''origine de mutations génétiques altérant la sécrétion de l''insuline", "Elle conduit à l''accumulation du produit toxique le fructose-1-phosphate", "Elle augmente à la libération des acides gras en néoglucogenèse", "Le zinc contenu dans la cellule favorise la formation d''une acidose lactique après un jeûne prolongé"]',
 '[0,1,4]',
 'EMD', 2024, 'Métabolisme glucidique', 'Biochimie clinique'),

('Concernant la glycogénose de type VI (maladie de HERS) est:',
 '["liée à un déficit en phosphorylase hépatique", "caractérisée par l''accumulation du glycogène de structure anormale", "détresse par l''accumulation du glycogène de structure anormale", "à l''origine d''une hypoglycémie sévère et de la néoglucogenèse", "une maladie d''évolution bénigne"]',
 '[0,4]',
 'EMD', 2021, 'Métabolisme glucidique', 'Biochimie clinique'),

('Concernant l''hormone de croissance:',
 '["A une action hyperglycogéniante", "Active le néoglucogenèse", "Inhibe la glycolyse", "Active le glycolyse", "Active la glycogénolyse"]',
 '[0,4]',
 'RESIDANAT', 2012, 'Métabolisme glucidique', 'Biochimie clinique'),

('L''insuline possède les effets suivants sauf un, lequel?',
 '["Augmente la synthèse du glycogène", "Augmente la pénétration cellulaire du glucose", "Augmente la néoglucogenèse hépatique", "Diminue la synthèse des acid gras à partir du glucose dans les adipocytes", "Diminue la glycémie"]',
 '[2]',
 'RESIDANAT', 2012, 'Métabolisme glucidique', 'Biochimie clinique'),

('L''hémoglobine glyquée, élément de surveillance de l''équilibre glycémique est:',
 '["Exprimée en g/l", "Utilisée pour la surveillance du diabète, dont la mesure est utile lors des périodes d''autant plus élevées que les périodes d''hyperglycémies sont plus fréquentes", "Influencée par une anémie hémolytique ou une anémie mégaloblastique", "-", "-"]',
 '[0]',
 'RESIDANAT', 2014, 'Métabolisme glucidique', 'Biochimie clinique'),

('Le diabète type 2, caractérisé par une insulino-résistance, a pour conséquences une augmentation de:',
 '["La lipolyse", "1,2,5", "La clearance des triglycérides", "La production du glucose", "-"]',
 '[0,3]',
 'RESIDANAT', 2013, 'Métabolisme glucidique', 'Biochimie clinique'),

('Concernant l''absorption intestinale des glucides:',
 '["Le glucose entre dans l''entérocyte à travers le transporteur SGLT2", "Le glucose entre dans l''entérocyte et est relargué dans le sang par un transporteur GLUT2", "Le fructose est absorbé par un transport actif via le récepteur GLUTS", "Le glucose passe dans le sang par diffusion facilitée en présence de sodium", "Le temps d''absorption des glucides est ralenti par la présence des lipides alimentaires"]',
 '[1,4]',
 'EMD', 2018, 'Métabolisme glucidique', 'Biochimie clinique'),

('Le coma acidocétosique est:',
 '["fréquent dans le diabète de type 1", "lié à une accumulation de l''acétylCoA", "lié à une accumulation de triglycérides", "lié à une accumulation avec polynine", "une acidose métabolique avec polynine"]',
 '[0,2,3]',
 'RESIDANAT', 2017, 'Métabolisme glucidique', 'Biochimie clinique'),

('Le dosage de la fructosamine est indiqué dans:',
 '["l''instabilité du traitement du diabète de type 1, la surveillance d''un diabète gestationnel", "les hémoglobinopathies", "Dosée uniquement", "la surveillance d''un diabète de type 2 mal équilibré", "-"]',
 '[0,1,2,3]',
 'RESIDANAT', 2017, 'Métabolisme glucidique', 'Biochimie clinique'),

('L''intolérance héréditaire au fructose Caractérisée biologiquement par:',
 '["hyperFructosurie et fructose à jeun", "aminoacidurie sans célose", "acidose lactique", "aminoacidose", "-"]',
 '[0,2,3]',
 'RESIDANAT', 2017, 'Métabolisme glucidique', 'Biochimie clinique'),

('Concernant l''absorption intestinale du glucose:',
 '["Est freinée contre le gradient de concentration", "Est bloquée par la galactose", "Est bloquée par le même mode de transport que le fructose", "Est utilisé par le tubule rénal", "Est bloquée par une augmentation de la glycémie par le même mode de transport que le fructose"]',
 '[0,1,2]',
 'EMD', 2018, 'Métabolisme glucidique', 'Biochimie clinique'),

('Parmis ces propositions concernant la galactosémie congénitale:',
 '["Liée à un déficit de l''enzyme uridyl transférase qui empêche la conversion du galactose en glucose", "Le galactitol est un métabolite à jeun hépatotoxique", "L''hypoglycémie observée est modérée", "Le traitement a lieu par suppression du lait et des produits laitiers", "-"]',
 '[0,2]',
 'RESIDANAT', 2019, 'Métabolisme glucidique', 'Biochimie clinique'),

('Concernant l''insuline:',
 '["La pré-pro insuline est stockées dans l''appareil de golgi jusqu''au moment de la sécrétion", "Au moment de la sécrétion le peptide C est libéré dans la circulation en quantité égale dans la circulation", "La sécrétion de l''insuline est stimulée essentiellement par l''élévation de la glycémie", "La sécrétion de l''insuline est maximale lors de l''augmentation de la concentration des acid gras, acid aminés, corps cétoniques", "-"]',
 '[2,3]',
 'EMD', 2016, 'Métabolisme glucidique', 'Biochimie clinique'),

('Le rôle de l''insuline :',
 '["Augmente la capture du glucose dans toutes les cellules de l''organisme", "Active la glycogénèse", "Active la lipolyse", "Inhibe la néoglucogenèse", "Stimule la synthèse des protéines et inhibe la protéolyse"]',
 '[0,3,4]',
 'EMD', 2016, 'Métabolisme glucidique', 'Biochimie clinique'),

('Concernant la régulation hormonale de la glycémie :',
 '["Le glucagon stimule la sécrétion de l''insuline", "L''adrénaline inhibe la sécrétion de l''insuline et active la néoglucogenèse", "L''adrénaline inhibe la glycogénolyse et active la néoglucogenèse", "Les glucocorticoïdes ont un effet hyperglycémiant", "L''hormone de croissance conduit à une hypoglycémie"]',
 '[1,3]',
 'EMD', 2017, 'Métabolisme glucidique', 'Biochimie clinique')
ON CONFLICT DO NOTHING;