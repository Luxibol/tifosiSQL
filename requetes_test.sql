-- 1️ Afficher la liste des noms des focaccias par ordre alphabétique croissant
-- Résultat attendu : A,E,G,H,M,P,R,T
SELECT nom FROM Focaccia ORDER BY nom ASC;


-- 2 Afficher le nombre total d'ingrédients
-- Résultat attendu : 25
SELECT COUNT(*) AS total_ingredients FROM Ingredient;


-- 3 Afficher le prix moyen des focaccias
-- Résultat attendu : 10,37
SELECT AVG(prix) AS prix_moyen FROM Focaccia;


-- 4 Afficher la liste des boissons avec leur marque, triée par nom de boisson
-- Résultat attendu : Les boisson par ordre alphabétiques accompagné de leur marque
SELECT b.nom AS nom_boisson, m.nom AS marque
FROM Boisson b
JOIN Marque m ON b.id_marque = m.id_marque
ORDER BY b.nom ASC;


-- 5 Afficher la liste des ingrédients pour une Raclaccia
-- Résultat attendu : A,B,C,C,P,P,R
SELECT i.nom AS ingredient
FROM Comprend c
JOIN Ingredient i ON c.id_ingredient = i.id_ingredient
WHERE c.id_focaccia = (SELECT id_focaccia FROM Focaccia WHERE nom = 'Raclaccia');


-- 6 Afficher le nom et le nombre d'ingrédients pour chaque focaccia
-- Résultat attendu : Nom focaccia contenant le maximum d'ingrédient jusqu'au minimum
SELECT f.nom AS focaccia, COUNT(c.id_ingredient) AS nombre_ingredients
FROM Focaccia f
JOIN Comprend c ON f.id_focaccia = c.id_focaccia
GROUP BY f.nom
ORDER BY nombre_ingredients DESC;


-- 7 Afficher le nom de la focaccia qui a le plus d'ingrédients
-- Résultat attendu : Paysanne
SELECT f.nom AS focaccia
FROM Focaccia f
JOIN Comprend c ON f.id_focaccia = c.id_focaccia
GROUP BY f.nom
ORDER BY COUNT(c.id_ingredient) DESC
LIMIT 1;


-- 8 Afficher la liste des focaccia qui contiennent de l'ail
-- Résultat attendu : M,G,R,P
SELECT DISTINCT f.nom AS focaccia
FROM Focaccia f
JOIN Comprend c ON f.id_focaccia = c.id_focaccia
JOIN Ingredient i ON c.id_ingredient = i.id_ingredient
WHERE i.nom = 'Ail';


-- 9 Afficher la liste des ingrédients inutilisés (non associés à une focaccia)
-- Résultat attendu : S,T-C
SELECT i.nom AS ingredient
FROM Ingredient i
LEFT JOIN Comprend c ON i.id_ingredient = c.id_ingredient
WHERE c.id_focaccia IS NULL;


-- 10 Afficher la liste des focaccia qui n'ont pas de champignons
-- Résultat attendu : A,H
SELECT DISTINCT f.nom AS focaccia
FROM Focaccia f
WHERE f.id_focaccia NOT IN (
    SELECT c.id_focaccia
    FROM Comprend c
    JOIN Ingredient i ON c.id_ingredient = i.id_ingredient
    WHERE i.nom = 'Champignon'
);






