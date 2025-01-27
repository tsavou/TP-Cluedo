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

INSERT INTO Visite (id_personnage, id_piece, date_visite, heure_entree, heure_sortie)
VALUES
(1, 1, '2025-01-27', '08:00:00', '09:00:00'),  -- Visite de Colonel Moutarde dans le salon
(2, 2, '2025-01-27', '08:00:00', '09:30:00'),
(3, 3, '2025-01-27', '08:30:00', '09:00:00'),
(4, 2, '2025-01-27', '08:15:00', '08:45:00'),
(5, 5, '2025-01-27', '08:45:00', '09:15:00'),
(6, 6, '2025-01-27', '09:00:00', '09:30:00'),
(1, 2, '2025-01-27', '09:30:00', '10:00:00'),
(3, 7, '2025-01-27', '08:00:00', '08:30:00');
