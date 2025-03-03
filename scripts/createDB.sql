CREATE DATABASE ExpressGarage
GO

USE ExpressGarage
GO

CREATE TABLE clients (
	client_id INT PRIMARY KEY IDENTITY(1, 1),
	lastname NVARCHAR(50),
	firstname NVARCHAR(50),
	phone_number NVARCHAR(10),
	email NVARCHAR(50)
)

CREATE TABLE vehicules (
	vehicule_id INT PRIMARY KEY IDENTITY(1, 1),
	immatriculation NVARCHAR(10),
	marque NVARCHAR(50),
	modele NVARCHAR(50),
	annee DATE,
	client_id INT FOREIGN KEY REFERENCES clients(client_id),
)

CREATE TABLE types_interventions (
	type_id INT PRIMARY KEY IDENTITY(1, 1),
	nom NVARCHAR(50),
	prix_base FLOAT
)

CREATE TABLE interventions (
	intervention_id INT PRIMARY KEY IDENTITY(1, 1),
	date_intervention DATE,
	statut NVARCHAR(50),
	prix FLOAT,
	description NVARCHAR(255),
	vehicule_id INT FOREIGN KEY REFERENCES vehicules(vehicule_id),
	type_id INT FOREIGN KEY REFERENCES types_interventions(type_id)
)
