USE Cluedo;

INSERT INTO Role (nom_role) VALUES
('Maître du jeu'),
('Utilisateur'),
('Observateur');


INSERT INTO Piece (nom_piece) VALUES
('Salon'),
('Cuisine'),
('Salle à manger'),
('Bibliothèque'),
('Bureau'),
('Salle de billard'),
('Hall'),
('Jardin'),
('Chambre');


INSERT INTO Objet (nom_objet, id_piece) VALUES
('Couteau', 1), 
('Poêle', 2),   
('Révolver', 3), 
('Chandelier', 4), 
('Clé', 5);


INSERT INTO Personnage (nom_personnage, couleur_personnage) VALUES
('Colonel Moutarde', 'Jaune'),
('Mlle Rose', 'Rose'),
('Professeur Violet', 'Violet'),
('Mme Leblanc', 'Blanc'),
('M. Green', 'Vert'),
('Mme Peacock', 'Bleu');


INSERT INTO Joueur (nom_joueur, prenom_joueur, id_role, id_personnage) VALUES
('Dupont', 'Jean', 2, 1), 
('Martin', 'Claire', 2, 2),
('Master', 'Jack', 1, 3),
('Doe', 'John', 2, 4),
('Viewer', 'Jane', 3, NULL);
