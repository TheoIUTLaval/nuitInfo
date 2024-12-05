CREATE DATABASE IF NOT EXISTS cookieClicker;
USE cookieClicker;

-- Table Users
CREATE TABLE IF NOT EXISTS Users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL
);

-- Table Scoring
CREATE TABLE IF NOT EXISTS Scoring (
    id INT AUTO_INCREMENT PRIMARY KEY,
    score INT NOT NULL,
    id_user INT NOT NULL,
    timeMAJ TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT fk_id_user FOREIGN KEY (id_user) REFERENCES Users(id)
);

-- Table Poisson
CREATE TABLE IF NOT EXISTS Poisson (
    id INT AUTO_INCREMENT PRIMARY KEY,
    prix INT NOT NULL,
    multiplicateurPrix INT NOT NULL,
    nom VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    image VARCHAR(255) NOT NULL,
    scoreGiver INT NOT NULL,
    multiplicateurScore INT NOT NULL,
    degat INT NOT NULL,
    recolte INT NOT NULL
);

-- Table PoissonUsers
CREATE TABLE IF NOT EXISTS PoissonUsers (
    id_user INT NOT NULL,
    id_poisson INT NOT NULL,
    timeMAJ TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    quantite INT NOT NULL,
    PRIMARY KEY (id_user, id_poisson),
    CONSTRAINT fk_id_user_poisson FOREIGN KEY (id_user) REFERENCES Users(id),
    CONSTRAINT fk_id_poisson FOREIGN KEY (id_poisson) REFERENCES Poisson(id)
);

-- Table Upgrades
CREATE TABLE IF NOT EXISTS Upgrades (
    id INT AUTO_INCREMENT PRIMARY KEY,
    prix INT NOT NULL,
    scoreMultplier INT NOT NULL,
    nom VARCHAR(255) NOT NULL,
    image VARCHAR(255) NOT NULL
);

-- Table UpgradesUsers
CREATE TABLE IF NOT EXISTS UpgradesUsers (
    id_upgrade INT NOT NULL,
    id_user INT NOT NULL,
    timeMAJ TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    quantite INT NOT NULL,
    PRIMARY KEY (id_upgrade, id_user),
    CONSTRAINT fk_id_upgrade FOREIGN KEY (id_upgrade) REFERENCES Upgrades(id),
    CONSTRAINT fk_id_user_upgrade FOREIGN KEY (id_user) REFERENCES Users(id)
);

-- Table Bateau
CREATE TABLE IF NOT EXISTS Bateau (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    image VARCHAR(255) NOT NULL,
    scoreGiver INT NOT NULL,
    mutliplicateurScore INT NOT NULL,
    pointDeVie INT NOT NULL
);
