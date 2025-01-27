Pour info, lors de la crétaion de la bdd j'ai décidé de ne pas mettre de prénom au personnage. C'est pourquoi la colonne prénom_personnage n'est pas présente dans la bdd malgré sa présence dans les MCD,MLD, MPD.

# TP-Cluedo

## Requêtes

### Lister tous les personnages du jeu

```sql
SELECT * FROM Personnage;
```
### Lister chaque joueur et son personnage associé

```sql
SELECT j.nom_joueur, j.prenom_joueur, p.nom_personnage
FROM Joueur j
INNER JOIN Personnage p ON j.id_personnage = p.id_personnage;
```

### Afficher la liste des personnages présents dans la cuisine entre 08:00 et 09:00

```sql
SELECT p.nom_personnage
FROM Visite v
JOIN Personnage p ON v.id_personnage = p.id_personnage
JOIN Piece pi ON v.id_piece = pi.id_piece
WHERE pi.nom_piece = 'Cuisine'
  AND v.heure_entree >= '08:00:00'
  AND v.heure_sortie <= '09:00:00';
```

### Afficher les pièces où aucun personnage n'est allé

```sql
SELECT pi.nom_piece
FROM Piece pi
LEFT JOIN Visite v ON pi.id_piece = v.id_piece
WHERE v.id_piece IS NULL;
```

### Compter le nombre d'objets par pièce

```sql
SELECT pi.nom_piece, COUNT(o.id_objet) AS nombre_objets
FROM Piece pi
LEFT JOIN Objet o ON pi.id_piece = o.id_piece
GROUP BY pi.id_piece;
````

### Ajouter une pièce

```sql
INSERT INTO Piece (nom_piece)
VALUES ('Salle de bain');
```

### Modifier un objet

```sql
UPDATE Objet
SET nom_objet = 'Poignard'
WHERE id_objet = '1';
```

### Supprimer une pièce

```sql
DELETE FROM Piece
WHERE nom_piece = 'Salle de bain';
```
