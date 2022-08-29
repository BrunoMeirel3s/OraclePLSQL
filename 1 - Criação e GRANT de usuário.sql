
ALTER SESSION SET CONTAINER = XEPDB1;

/*
    remove a conta do usu�rio e remove todos os objetos criados pelo mesmo em cascata
*/
DROP USER HR CASCADE;

/*
    Cria��o do usu�rio HR identified by hr (Senha)
*/
CREATE USER HR
IDENTIFIED BY hr
DEFAULT TABLESPACE users
TEMPORARY TABLESPACE TEMP
QUOTA unlimited ON users
QUOTA 0 ON system;

/*
    GRANTS necess�rios para realizar o desenvolvimento no banco
*/
GRANT CONNECT, RESOURCE TO HR;
GRANT CREATE SESSION, CREATE VIEW, CREATE TABLE, ALTER SESSION, CREATE SEQUENCE, CREATE PROCEDURE, CREATE TRIGGER TO HR;
GRANT CREATE SYNONYM, CREATE DATABASE LINK, UNLIMITED TABLESPACE TO HR;