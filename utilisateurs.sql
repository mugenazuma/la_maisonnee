-- gestion des utilisateurs, privilège et rôles

-- Administrateurs

CREATE ROLE IF NOT EXISTS 'r_la_maisonnee_admin'@'localhost';                              -- creation du rôle
GRANT all                                                                                  -- creation des privilèges
ON la_maisonnee.*
TO 'r_la_maisonnee_admin'@'localhost';
CREATE USER 'mugen'@'localhost' IDENTIFIED BY '220409';                                    -- création des utilistateurs
CREATE USER 'thomas'@'localhost' IDENTIFIED BY '147852';
CREATE USER 'lucas'@'localhost' IDENTIFIED BY '963258';
GRANT r_la_maisonnee_admin 
TO 'mugen'@'localhost','lucas'@'localhost','thomas'@'localhost';
-----------------------

-- Utilisateurs employés

CREATE ROLE IF NOT EXISTS 'r_la_maisonnee_utilisateur'@'localhost'; 
GRANT select 
ON la_maisonnee.*  
TO 'r_la_maisonnee_utilisateur'@'localhost';
CREATE USER if NOT EXISTS 'charles'@'localhost' IDENTIFIED BY '123456';
GRANT 'r_la_maisonnee_utilisateur'@'localhost'
TO 'charles'@'localhost';

-----------------------
