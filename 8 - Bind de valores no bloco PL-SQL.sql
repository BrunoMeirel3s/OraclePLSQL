--Utilizando variável Bind
SET SERVEROUTPUT ON
VARIABLE gmedia NUMBER --Necessário definir aqui antes do declare os valores que forem bind
DECLARE
    vNumero1 NUMBER(11,2) := 2000;
    vNumero2 NUMBER(11,2) := 5000;
BEGIN
    :gmedia := (vNumero1 + vNumero2) / 2;
    DBMS_OUTPUT.PUT_LINE('Media = ' || TO_CHAR(:gmedia));
    
EXCEPTION
    WHEN OTHERS
    THEN
        DBMS_OUTPUT.PUT_LINE('Erro Oracle: ' || SQLCODE || SQLERRM);
END;