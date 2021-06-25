-- gestion des utilisateurs, privilège et rôles

-- Administrateurs

CREATE ROLE admin;
GRANT all privilege 
ON LA_MAISONNEE 
TO admin;
CREATE USER 'mugen' IDENTIFIED BY '220409';
CREATE USER 'thomas' IDENTIFIED BY '147852';
CREATE USER 'lucas' IDENTIFIED BY '963258';
GRANT admin 
TO 'mugen'@'localhost','lucas'@'localhost','thomas'@'localhost';

-----------------------

-- Utilisateurs employés

CREATE ROLE Utilisateur;
GRANT select 
ON LA MAISONNEE 
TO utilisateur;
CREATE USER 'utilisateur' IDENTIFIED BY '123456';
GRANT utilisateur 
TO 'mugen'@'localhost';

-----------------------
