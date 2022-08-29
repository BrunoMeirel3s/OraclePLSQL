
ALTER SESSION SET CONTAINER = XEPDB1;

/*
    remove a conta do usuário e remove todos os objetos criados pelo mesmo em cascata
*/
DROP USER HR CASCADE;

/*
    Criação do usuário HR identified by hr (Senha)
*/
CREATE USER HR
IDENTIFIED BY hr
DEFAULT TABLESPACE users
TEMPORARY TABLESPACE TEMP
QUOTA unlimited ON users
QUOTA 0 ON system;

/*
    GRANTS necessários para realizar o desenvolvimento no banco
*/
GRANT CONNECT, RESOURCE TO HR;
GRANT CREATE SESSION, CREATE VIEW, CREATE TABLE, ALTER SESSION, CREATE SEQUENCE, CREATE PROCEDURE, CREATE TRIGGER TO HR;
GRANT CREATE SYNONYM, CREATE DATABASE LINK, UNLIMITED TABLESPACE TO HR;