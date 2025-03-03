-- Insertion des clients
INSERT INTO clients (lastname, firstname, phone_number, email)
VALUES
    ('Dupont', 'Jean', '0123456789', 'jean.dupont@email.com'),
    ('Martin', 'Pierre', '0987654321', 'pierre.martin@email.com'),
    ('Lemoine', 'Claire', '0765432109', 'claire.lemoine@email.com'),
    ('Dubois', 'Marc', '0712345678', 'marc.dubois@email.com'),
    ('Leclerc', 'Sophie', '0632123456', 'sophie.leclerc@email.com'),
    ('Robert', 'Alexandre', '0654321098', 'alexandre.robert@email.com'),
    ('Petit', 'Nicolas', '0723456789', 'nicolas.petit@email.com'),
    ('Moreau', 'Isabelle', '0756789012', 'isabelle.moreau@email.com'),
    ('Roux', 'Luc', '0612345678', 'luc.roux@email.com'),
    ('Blanc', 'Emilie', '0745678901', 'emilie.blanc@email.com');

-- Insertion des véhicules
INSERT INTO vehicules (immatriculation, marque, modele, annee, client_id)
VALUES
    ('1-RSK-458', 'Renault', 'Clio', '2015-05-01', 1),
    ('KAZ-469', 'Peugeot', '308', '2018-07-21', 2),
    ('1-PPM-945', 'BMW', 'X5', '2020-03-15', 3),
    ('1-NBV-785', 'Audi', 'A4', '2017-06-10', 4),
    ('1-MAA-968', 'Mercedes', 'C-Class', '2021-01-30', 5),
    ('1-PMA-744', 'Toyota', 'Corolla', '2016-08-19', 6),
    ('1-HTF-121', 'Volkswagen', 'Golf', '2019-02-25', 7),
    ('1-NJA-102', 'Ford', 'Focus', '2014-11-22', 8),
    ('1-JKE-070', 'Nissan', 'Qashqai', '2019-09-14', 9),
    ('1-WOY-155', 'Honda', 'Civic', '2017-12-05', 10);

-- Insertion des types d'interventions
INSERT INTO types_interventions (nom, prix_base)
VALUES
    ('Changement d''huile', 50.00),
    ('Pneus', 120.00),
    ('Freins', 150.00),
    ('Révision complète', 200.00),
    ('Mise à niveau moteur', 180.00),
    ('Climatisation', 80.00),
    ('Contrôle technique', 90.00),
    ('Vidange', 60.00),
    ('Remplacement batterie', 100.00),
    ('Vitre teintée', 130.00);

INSERT INTO interventions (date_intervention, statut, prix, description, vehicule_id, type_id)
VALUES
    ('2024-02-15', 'Terminée', 50.00, 'Changement d''huile', 1, 1),
    ('2024-03-10', 'En cours', 120.00, 'Remplacement de pneus', 2, 2),
    ('2024-01-28', 'Terminée', 150.00, 'Remplacement des freins', 3, 3),
    ('2024-02-20', 'Terminée', 200.00, 'Révision complète', 4, 4),
    ('2024-03-05', 'Terminée', 180.00, 'Mise à niveau moteur', 5, 5),
    ('2024-02-28', 'Terminée', 80.00, 'Réparation climatisation', 6, 6),
    ('2024-01-10', 'Terminée', 90.00, 'Contrôle technique', 7, 7),
    ('2024-03-02', 'En cours', 60.00, 'Vidange', 8, 8),
    ('2024-02-10', 'Terminée', 100.00, 'Remplacement batterie', 9, 9),
    ('2024-03-01', 'Terminée', 130.00, 'Vitre teintée', 10, 10);
