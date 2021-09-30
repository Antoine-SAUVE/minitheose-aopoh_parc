DROP DATABASE IF EXISTS oparc;

DROP ROLE IF EXISTS oparc_maintenance;
DROP ROLE IF EXISTS oparc_visitor;
DROP ROLE IF EXISTS oparc;

-- Création des roles de notre BDD
CREATE ROLE oparc WITH LOGIN ENCRYPTED PASSWORD 'oparc';
CREATE ROLE oparc_maintenance WITH LOGIN ENCRYPTED PASSWORD 'maintenance';
CREATE ROLE oparc_visitor WITH LOGIN ENCRYPTED PASSWORD 'visitor';

-- Création de la BDD
CREATE DATABASE oparc WITH OWNER oparc;