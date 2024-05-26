-- Active: 1684419091484@@127.0.0.1@3306

DROP DATABASE IF EXISTS portfolio;
CREATE DATABASE  portfolio;

USE portfolio;

CREATE TABLE utilisateur (
    nom VARCHAR(255) NOT NULL,
    prenom VARCHAR(255) NOT NULL,
    date_naissance Date NOT NULL,
    email VARCHAR(255) NOT NULL,
    mot_de_passe VARCHAR(255) NOT NULL
); 

CREATE TABLE  projet (
    nom VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    lien_github VARCHAR(255),
    lien_projet VARCHAR(255),
    date_debut Date ,
    date_fin Date ,
    utilisateur_id INT NOT NULL,
    FOREIGN KEY (utilisateur_id) REFERENCES utilisateur(id)
);

CREATE TABLE ecole (
    nom VARCHAR(255) NOT NULL,
    date_debut Date NOT NULL,
    date_fin Date NOT NULL,
    lieu VARCHAR(255),
    description TEXT,
    utilisateur_id INT NOT NULL,
    FOREIGN KEY (utilisateur_id) REFERENCES utilisateur(id)
);


CREATE TABLE  formation (
    nom VARCHAR(255) NOT NULL,
    date_debut Date NOT NULL,
    date_fin Date NOT NULL,
    lieu VARCHAR(255),
    description TEXT,
    utilisateur_id INT NOT NULL,
    ecole_id INT NOT NULL,
    FOREIGN KEY (utilisateur_id) REFERENCES utilisateur(id),
    FOREIGN KEY (ecole_id) REFERENCES ecole(id)
);


CREATE TABLE  competence (
    nom VARCHAR(255) NOT NULL,
    niveau INT NOT NULL,
    logo VARCHAR(255),
    description TEXT,
    utilisateur_id INT NOT NULL,
    formation_id INT NOT NULL,
    ecole_id INT NOT NULL,
    FOREIGN KEY (utilisateur_id) REFERENCES utilisateur(id),
    FOREIGN KEY (formation_id) REFERENCES formation(id),
    FOREIGN KEY (ecole_id) REFERENCES ecole(id)
);

CREATE TABLE  experience (
    nom VARCHAR(255) NOT NULL,
    date_debut Date NOT NULL,
    date_fin Date NOT NULL,
    lieu VARCHAR(255),
    description TEXT,
    utilisateur_id INT NOT NULL,
    FOREIGN KEY (utilisateur_id) REFERENCES utilisateur(id)
);
