-- Punto 1 (Valor de 1.75)

CREATE TYPE number_array AS VARRAY(100) OF INTEGER;

/*
CREATE OR REPLACE FUNCTION divisible_sum_pairs(ar IN number_array, k IN INT) RETURN NUMBER AS

BEGIN

END;
*/

-- Punto 2 (Valor de 1.75)

CREATE OR REPLACE FUNCTION find_digits(n IN NUMBER) RETURN NUMBER AS
    divisor NUMBER := 0;
    dat VARCHAR(32) := TO_CHAR (n);
    actual NUMBER(9,3) := 0;
BEGIN
    FOR indx IN 1..LENGTH(dat) LOOP
        actual := TO_NUMBER( SUBSTR(dat, indx, 1) );
        dbms_output.put_line( 'Numero en la posicion '||indx||': '||actual ); 
        IF actual != 0 THEN
        dbms_output.put_line( 'Resultado el modulo: '|| MOD(n,actual) ); 
            IF MOD(n,actual) = 0 THEN
                divisor := divisor + 1;
            END IF;
        END IF;
    END LOOP;
    
    RETURN divisor;
END;

DECLARE
    nn NUMBER := 10312;
BEGIN 
    dbms_output.put_line('Output: '||find_digits (nn) );
END;

-- Punto 3 (Valor de 0.55)

CREATE TABLE digits (n integer, pairs integer);
















