-- Q1) 1+2)

declare
TODAY date := sysdate;

TOMORROW TODAY%type;


BEGIN  

TOMORROW := today +1;

    DBMS_OUTPUT.PUT_LINE('Hello World');  
    DBMS_OUTPUT.PUT_LINE('Today: ' || TODAY );  
    DBMS_OUTPUT.PUT_LINE('Tomorrow: ' || TOMORROW );  

END; 


-- Q1)  3+4

DECLARE

    my_date DATE := sysdate;
    v_last_day DATE;
    v_future_date DATE;
    v_months_difference NUMBER;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Today: ' || TO_CHAR(my_date, 'Month DD, YYYY'));

    v_last_day := LAST_DAY(my_date);

    DBMS_OUTPUT.PUT_LINE('Last Day of the Month: ' || v_last_day);

    v_future_date := my_date + 45;

    v_months_difference := MONTHS_BETWEEN(v_future_date, my_date);

    DBMS_OUTPUT.PUT_LINE('Number of Months Difference: ' || v_months_difference);
END;




-- Q2) 

CREATE TABLE countries (
    country_name VARCHAR2(50),
    median_age NUMBER(6, 2)
);

 Insert some records
INSERT INTO countries (country_name, median_age) VALUES ('Japan', 48.2);
INSERT INTO countries (country_name, median_age) VALUES ('USA', 38.7);
INSERT INTO countries (country_name, median_age) VALUES ('Germany', 44.5);




DECLARE
    country_name countries.country_name%TYPE;
    median_age countries.median_age%TYPE;
BEGIN
    SELECT country_name, median_age INTO country_name, median_age
    FROM countries
    WHERE country_name = 'Japan';

    DBMS_OUTPUT.PUT_LINE('The median age in ' || country_name || ' is ' || median_age || '.');
END;

