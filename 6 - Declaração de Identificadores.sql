--Declarando uma vari�vel tipo Number
SET SERVEROUTPUT ON
DECLARE
    vNumero NUMBER(11,2) := 1200.50;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Numero = ' ||vNumero);
END;


--Declarando vari�veis do tipo CHAR e VARCHAR2
SET SERVEROUTPUT ON
DECLARE
    vCaracterTamFixo CHAR(2) := 'RS';
    vCaracterTamVariavel VARCHAR2(100) := 'Porto Alegre, RS';
BEGIN
    DBMS_OUTPUT.PUT_LINE('String Caracteres Tam Fixo = ' || vCaracterTamFixo);
    DBMS_OUTPUT.PUT_LINE('String Caracteres Tam Vari�vel = ' ||vCaracterTamVariavel);
END;




--Declarando vari�veis do tipo DATE
SET SERVEROUTPUT ON
DECLARE
    vData1 DATE := '29/04/20';
    vData2 DATE := '29/04/2020';
BEGIN
    DBMS_OUTPUT.PUT_LINE('Data1 = ' || vData1);
    DBMS_OUTPUT.PUT_LINE('Data2 = ' || vData2);
END;
