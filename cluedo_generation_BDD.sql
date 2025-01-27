CREATE DATABASE IF NOT EXISTS Cluedo;
USE Cluedo;

CREATE TABLE Role (
    id_role INT AUTO_INCREMENT PRIMARY KEY,
    nom_role VARCHAR(50) NOT NULL
);


CREATE TABLE Personnage (
    id_personnage INT AUTO_INCREMENT PRIMARY KEY,
    nom_personnage VARCHAR(50) NOT NULL,
    couleur_personnage VARCHAR(50) NOT NULL
);


CREATE TABLE Piece (
    id_piece INT AUTO_INCREMENT PRIMARY KEY,
    nom_piece VARCHAR(100) NOT NULL
);


CREATE TABLE Objet (
    id_objet INT AUTO_INCREMENT PRIMARY KEY,
    nom_objet VARCHAR(50) NOT NULL,
    id_piece INT NOT NULL,
    FOREIGN KEY (id_piece) REFERENCES Piece(id_piece)
);


CREATE TABLE Joueur (
    id_joueur INT AUTO_INCREMENT PRIMARY KEY,
    nom_joueur VARCHAR(50) NOT NULL,
    prenom_joueur VARCHAR(50) NOT NULL,
    id_role INT NOT NULL, 
    id_personnage INT UNIQUE, 
    FOREIGN KEY (id_role) REFERENCES Role(id_role), 
    FOREIGN KEY (id_personnage) REFERENCES Personnage(id_personnage)
);


CREATE TABLE Visite (
    id_visite INT AUTO_INCREMENT PRIMARY KEY,
    id_personnage INT NOT NULL, 
    id_piece INT NOT NULL, 
    date_visite DATE NOT NULL, 
    heure_entree TIME NOT NULL,
    heure_sortie TIME,
    FOREIGN KEY (id_personnage) REFERENCES Personnage(id_personnage), 
    FOREIGN KEY (id_piece) REFERENCES Piece(id_piece) 
);