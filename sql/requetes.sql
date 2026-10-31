Huile d'olive 1 L	18.5	24	1	2026-10-01T09:00:00	1
Couscous moyen 1 kg	2.3	40	1	2026-10-01T09:05:00	1
Eau minérale 1,5 L	0.85	120	1	2026-10-02T10:00:00	2
Jus d'orange 1 L	3.2	0	0	2026-10-02T10:10:00	2
Savon de Marseille	2.9	15	1	2026-10-03T11:00:00	3
Cahier 96 pages	1.6	60	1	2026-10-04T08:30:00	4
Huile d'olive 1 L	18.5	24	1	2026-10-01T09:00:00	1
Couscous moyen 1 kg	2.3	40	1	2026-10-01T09:05:00	1
Eau minérale 1,5 L	0.85	120	1	2026-10-02T10:00:00	2
Jus d'orange 1 L	3.2	0	0	2026-10-02T10:10:00	2
Savon de Marseille	2.9	15	1	2026-10-03T11:00:00	3
Cahier 96 pages	1.6	60	1	2026-10-04T08:30:00	4
4	Jus d'orange 1 L	3.2	0	0	2026-10-02T10:10:00	2
10	Jus d'orange 1 L	3.2	0	0	2026-10-02T10:10:00	2
1	Huile d'olive 1 L	18.5	24	1	2026-10-01T09:00:00	1
7	Huile d'olive 1 L	18.5	24	1	2026-10-01T09:00:00	1
4	Jus d'orange 1 L	3.2	0	0	2026-10-02T10:10:00	2
10	Jus d'orange 1 L	3.2	0	0	2026-10-02T10:10:00	2
5	Savon de Marseille	2.9	15	1	2026-10-03T11:00:00	3
11	Savon de Marseille	2.9	15	1	2026-10-03T11:00:00	3
2	Couscous moyen 1 kg	2.3	40	1	2026-10-01T09:05:00	1
8	Couscous moyen 1 kg	2.3	40	1	2026-10-01T09:05:00	1
6	Cahier 96 pages	1.6	60	1	2026-10-04T08:30:00	4
12	Cahier 96 pages	1.6	60	1	2026-10-04T08:30:00	4
3	Eau minérale 1,5 L	0.85	120	1	2026-10-02T10:00:00	2
9	Eau minérale 1,5 L	0.85	120	1	2026-10-02T10:00:00	2
////1.4 Execution finished with errors.
Result: no such column: produits.id_categorie
At line 1:
SELECT 
    produits.nom AS nom_produit,
    categories.nom AS nom_categorie
FROM produits////
///1.5Execution finished with errors.
Result: no such column: produits.id_categorie
At line 1:
SELECT 
    categories.nom AS categorie,
    COUNT(produits.id) AS nombre_produits
FROM categories
INNER JOIN produits
ON categories.id = produits.id_categorie
GROUP BY categories.id, categories.nom;////
1555.0 valeur totale du stock


//// 1.6Execution finished with errors.
Result: CHECK constraint failed: prix >= 0
At line 1:
INSERT INTO produits (nom, prix, quantite, date_ajout, categorie_id)
VALUES ('Test prix', -5, 1, '2026-10-05T08:00:00', 1);///