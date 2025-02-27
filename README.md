# README - Base de Donnees Tifosi

## Description
La base de donnees **Tifosi** est un schema de gestion de menus de focaccia, de boissons et d'ingredients. Elle comprend des relations entre les clients, les achats, les boissons et les marques, ainsi que les compositions des focaccias et des menus.

---

## Structure de la Base de Donnees

### 1. **schema_bdd_tifosi.sql**
Ce fichier contient :
- La creation de la base de donnees `tifosi`.
- La creation des tables et des relations.
- La definition des cles primaires et etrangeres.
- La creation de l'utilisateur `tifosi` avec ses privileges.

### Tables Principales :
- **Focaccia** : Liste des focaccias avec leur nom et prix.
- **Ingredient** : Liste des ingredients disponibles.
- **Boisson** : Liste des boissons avec leur marque.
- **Marque** : Liste des marques de boissons.
- **Menu** : Liste des menus proposes.
- **Client** : Informations sur les clients.
- **Achete** : Historique des achats des clients.
- **Comprend** : Association entre les focaccias et leurs ingredients.
- **Contient** : Association entre les menus et les boissons.
- **Est_Constitue** : Association entre les menus et les focaccias.
- **Appartient** : Association entre les boissons et les marques.

---

### 2. **donnees_tifosi.sql**
Ce fichier contient :
- Les donnees d'initialisation pour les tables (ingredients, boissons, focaccias, marques, etc.).
- Les relations entre les tables (composition des focaccias, menus, etc.).

Exemple :
```sql
INSERT INTO `marque` (`id_marque`, `nom`) VALUES
(1, 'Coca-cola'),
(2, 'Cristalline'),
(3, 'Monster'),
(4, 'Pepsico');
```

---

### 3. **requetes_test.sql**
Ce fichier permet de verifier l'integrite et la pertinence de la base de donnees en executant plusieurs requetes de test.

#### Liste des requetes de test :
1. Lister les noms des focaccias par ordre alphabetique.
2. Compter le nombre total d'ingredients.
3. Calculer le prix moyen des focaccias.
4. Lister les boissons avec leur marque, triees par nom.
5. Lister les ingredients de la focaccia "Raclaccia".
6. Afficher le nombre d'ingredients par focaccia, trie par ordre decroissant.
7. Afficher la focaccia avec le plus d'ingredients.
8. Lister les focaccias contenant de l'ail.
9. Lister les ingredients inutilises.
10. Lister les focaccias sans champignons.


---

## Comment utiliser ces fichiers ?

### 1 **Importer la structure de la base de donnees**
Exécuter `schema_bdd_tifosi.sql` dans phpMyAdmin ou via MySQL :
```sh
mysql -u root -p < schema_bdd_tifosi.sql
```

### 2 **Importer les donnees**
```sh
mysql -u root -p tifosi < donnees_tifosi.sql
```

### 3 **Executer les requetes de test**
```sh
mysql -u root -p tifosi < requetes_test.sql
```
Ou directement dans phpMyAdmin.

---

### **Conclusion**
Ce projet permet la gestion et l'analyse des focaccias, ingredients et boissons pour un restaurant fictif. Les fichiers sont structures pour assurer une bonne organisation des donnees et leur verification.

 **Contact** : Pour toute question, vous pouvez me contacter.

 **Bonne utilisation de la base Tifosi !**


