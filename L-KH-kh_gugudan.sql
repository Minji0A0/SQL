CREATE OR REPLACE PROCEDURE KH_GUGUDAN AS
BEGIN
  FOR i IN 2..9 LOOP
    FOR j IN 1..9 LOOP
      DBMS_OUTPUT.PUT_LINE(i || ' * ' || j || ' = ' || i*j);
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('---------------------');
  END LOOP;
END;
/
BEGIN
  KH_GUGUDAN;
END;
/
