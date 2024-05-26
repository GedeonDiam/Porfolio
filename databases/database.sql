-- Drop and create database
DROP DATABASE IF EXISTS portfolio;
CREATE DATABASE portfolio;

USE portfolio;

-- Create tables
CREATE TABLE utilisateur (
    id_utilisateur INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(255) NOT NULL,
    prenom VARCHAR(255) NOT NULL,
    date_naissance DATE NOT NULL,
    email VARCHAR(255) NOT NULL,
    mot_de_passe VARCHAR(255) NOT NULL
);

CREATE TABLE projet (
    id_projet INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    lien_github VARCHAR(255),
    lien_projet VARCHAR(255),
    date_debut DATE,
    date_fin DATE,
    id_utilisateur INT NOT NULL,
    FOREIGN KEY (id_utilisateur) REFERENCES utilisateur(id_utilisateur)
);

CREATE TABLE ecole (
    id_ecole INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(255) NOT NULL,
    date_debut DATE NOT NULL,
    date_fin DATE NOT NULL,
    lieu VARCHAR(255),
    description TEXT,
    id_utilisateur INT NOT NULL,
    FOREIGN KEY (id_utilisateur) REFERENCES utilisateur(id_utilisateur)
);

CREATE TABLE formation (
    id_formation INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(255) NOT NULL,
    date_debut DATE NOT NULL,
    date_fin DATE NOT NULL,
    lieu VARCHAR(255),
    description TEXT,
    id_utilisateur INT NOT NULL,
    id_ecole INT NOT NULL,
    FOREIGN KEY (id_utilisateur) REFERENCES utilisateur(id_utilisateur),
    FOREIGN KEY (id_ecole) REFERENCES ecole(id_ecole)
);

CREATE TABLE competence (
    id_competence INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(255) NOT NULL,
    niveau INT NOT NULL,
    logo VARCHAR(255),
    description TEXT,
    id_utilisateur INT NOT NULL,
    id_formation INT NOT NULL,
    id_ecole INT NOT NULL,
    FOREIGN KEY (id_utilisateur) REFERENCES utilisateur(id_utilisateur),
    FOREIGN KEY (id_formation) REFERENCES formation(id_formation),
    FOREIGN KEY (id_ecole) REFERENCES ecole(id_ecole)
);

CREATE TABLE experience (
    id_experience INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(255) NOT NULL,
    date_debut DATE NOT NULL,
    date_fin DATE NOT NULL,
    lieu VARCHAR(255),
    description TEXT,
    id_utilisateur INT NOT NULL,
    FOREIGN KEY (id_utilisateur) REFERENCES utilisateur(id_utilisateur)
);

-- Insert data into tables
INSERT INTO utilisateur (nom, prenom, date_naissance, email, mot_de_passe) VALUES
('Dupont', 'Jean', '1990-01-15', 'jean.dupont@example.com', 'password123'),
('Martin', 'Sophie', '1985-07-30', 'sophie.martin@example.com', 'password456');

INSERT INTO ecole (nom, date_debut, date_fin, lieu, description, id_utilisateur) VALUES
('Université Paris', '2008-09-01', '2011-06-30', 'Paris', 'Licence en Informatique', 1),
('Université Lyon', '2005-09-01', '2008-06-30', 'Lyon', 'Licence en Mathématiques', 2);

INSERT INTO formation (nom, date_debut, date_fin, lieu, description, id_utilisateur, id_ecole) VALUES
('Formation en développement web', '2009-09-01', '2011-06-30', 'Paris', 'Apprentissage du développement web', 1, 1),
('Formation en analyse de données', '2006-09-01', '2008-06-30', 'Lyon', 'Apprentissage de l\'analyse de données', 2, 2);

INSERT INTO projet (nom, description, lien_github, lien_projet, date_debut, date_fin, id_utilisateur) VALUES
('Site web personnel', 'Développement d\'un site web personnel', 'https://github.com/jeandupont/site-web', 'https://jeandupont.com', '2012-01-01', '2012-06-01', 1),
('Analyse de données', 'Projet d\'analyse de données pour une entreprise', 'https://github.com/sophiemartin/analyse-donnees', NULL, '2009-03-01', '2009-08-01', 2);

INSERT INTO competence (nom, niveau, logo, description, id_utilisateur, id_formation, id_ecole) VALUES
('HTML', 5, 'html_logo.png', 'Maîtrise du langage HTML', 1, 1, 1),
('Python', 4, 'python_logo.png', 'Maîtrise du langage Python', 2, 2, 2);

INSERT INTO experience (nom, date_debut, date_fin, lieu, description, id_utilisateur) VALUES
('Développeur Web', '2011-07-01', '2014-12-31', 'Paris', 'Travail en tant que développeur web pour une start-up', 1),
('Analyste de Données', '2008-09-01', '2010-12-31', 'Lyon', 'Travail en tant qu\'analyste de données pour une entreprise', 2);
