INSERT INTO Bateau (nom, description, image, scoreGiver, pointDeVie)
VALUES
    ('Barque', 'Petit bateau à rames, utilisé pour la pêche côtière ou sur des lacs.', 'barque.png', 1, 1),
    ('Chaloupe', ' Bateau de pêche motorisé, souvent utilisé pour les petites expéditions.', 'chaloupe.png', 2, 5),
    ('Petit bateau de pêche', 'Bateau motorisé conçu pour la pêche commerciale à petite échelle.', 'bateauPeche.png', 4, 20),
    ('Chalutier', 'Utilisé pour la pêche en haute mer à moyenne échelle.', 'chalutier.png', 12, 50),
    ('Grand chalutier', 'Bateau de pêche industrielle, conçu pour de longues expéditions.', 'grandChalutier.png', 36, 100),
    ('Navire-usine', 'Immense bateau équipé pour pêcher, transformer et congeler le poisson directement à bord.', 'navireUsine.png', 100, 1000);

INSERT INTO Poisson (prix, multiplicateurPrix, nom, description, image, degat, recolte )
VALUES
    (1, 1.05, 'Plancton', 'nourriture pour poisson', 'plancton.png',0 ,1 ),
    (2, 1.1, 'Sardine ', 'Petit poisson argenté, vivant en bancs gigantesques.', 'sardine.png', 1, 1),
    (5, 1.2, 'Calamar', "Mollusque marin à tentacules doté d'une intelligence surprenante et de capacités de camouflage.", 'calamar.png', 1, 1),
    (10, 1.25, 'Thon ', 'Puissant poisson migrateur, apprécié pour sa vitesse et son endurance.', 'thon.png', 2, 2),
    (25, 1.30, 'Requin mako', "L’un des requins les plus rapides, connu pour sa silhouette fuselée et ses dents acérées.", 'requinMako.png',4, 2),
    (50, 1.40, 'Requin blanc', ' Prédateur emblématique des océans, imposant par sa taille et sa force.', 'requinBlanc.png', 5, 3),
    (100, 1.50, 'Requin marteau', 'Reconnaissable par sa tête en forme de marteau, utilisée pour repérer ses proies sur le fond marin.', 'requinMarteau.png', 7, 3),
    (250, 1.60, 'Requin baleine', "Le plus grand poisson du monde, mais totalement inoffensif pour l'homme. Il se nourrit de plancton et de petits poissons.", 'requinBaleine.png', 5, 6),
    (500, 1.75, 'Baleine bleu', 'Plus grand animal vivant sur Terre, mesurant jusqu’à 30 mètres de long.', 'baleineBleu.png',4, 10),
    (1000, 1.85, 'Crevette pistolet', "Petite crevette équipée d'une pince spéciale qui produit un bruit assourdissant pour assommer ses proies", 'crevettePistolet.png', 12, 1),
    (2000, 2, 'Mégalodon', "Requin préhistorique gigantesque ayant dominé les océans il y a des millions d'années.", 'megalodon.png', 20, 20),
    (5000, 2.5, 'Lockness', 'Créature légendaire des eaux profondes, parfois décrite comme un reptile marin géant.', 'lockness.png', 30, 30);

INSERT INTO Upgrades ( prix, scoreMultiplier, nom, image)
VALUES
    ( 1, 3, 'Amélioration Plancton', 'planctonUp.png'),
    ( 1, 3, 'Amélioration Sardine', 'sardineUp.png'),
    ( 1, 3, 'Amélioration Calamar', 'calamarUp.png'),
    ( 1, 3, 'Amélioration Thon', 'thonUp.png'),
    ( 1, 3, 'Amélioration Requin mako', 'requinMakoUp.png'),
    ( 1, 3, 'Amélioration Requin blanc', 'requinBlancUp.png'),
    ( 1, 3, 'Amélioration Requin marteau', 'requinMarteauUp.png'),
    ( 1, 3, 'Amélioration Requin baleine', 'requinBaleineUp.png'),
    ( 1, 3, 'Amélioration Baleine bleu', 'baleineBleuUp.png'),
    ( 1, 3, 'Amélioration Crevette pistolet', 'crevettePistoletUp.png'),
    ( 1, 3, 'Amélioration Mégalodon', 'megalodonUp.png'),
    ( 1, 3, 'Amélioration Lockness', 'locknessUp.png');