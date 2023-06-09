INSERT  INTO CUSTOMER VALUES (101,'KASHISH','DELHI',76,301),
(102,'ZIKRIYA','MUMBAI',76,302),
(103,'HARSHAD','PUNE',77,303),
(104,'SUBHAN','ONGOLE',78,304),
(105,'SHAMEEM','NANDYAL',79,305),
(106,'SONIYA','CHENNAI',80,306),
(107,'SABIYA','KOLKATA',81,307),
(108,'SAMRIN','GUJARAT',82,308),
(109,'MUSTAKHEEM','HYD',83,309),
(110,'MYFAMILY','INDIA',84,310);

SELECT * FROM CUSTOMER;

-- WRITE A SQL QUERY TO FIND OUT THE DETAILS OF CUSTOMER WHOSE GRADE ARE ABOVE 80
SELECT * FROM CUSTOMER WHERE GRADE>80;

-- WRITE A SQL QUERY TO FIND OUT THE DETAILS OF CUSTOMER WHOSE GRADE ARE ABOVE 80 AND EQUAL TO 80
SELECT * FROM CUSTOMER WHERE GRADE>=80;

-- WRITE A SQL QUERY TO FIND OUT THE DETAILS OF CUSTOMER WHOSE GRADE ARE ABOVE 80 AND EQUAL TO 80 IN ASCENDING ORDER
SELECT * FROM CUSTOMER WHERE GRADE>=80 ORDER BY GRADE;
SELECT * FROM CUSTOMER WHERE GRADE>=80 ORDER BY GRADE ASC; -- ASCENDING

-- WRITE AN SQL QUERY TO FIND DEATAILS WHO ARE LIVING IN HYD CITY AND GRADE <=100
SELECT * FROM CUSTOMER WHERE GRADE<=100 AND CITY='HYD';

-- WRITE AN SQL QUERY TO FIND DEATAILS WHO ARE LIVING IN HYD CITY AND GRADE >100
SELECT *FROM CUSTOMER WHERE GRADE>100 AND CITY='HYD';

-- WRITE AN SQL QUERY TO FIND DEATAILS WHO ARE FROM HYD CITY OR ABOVE GRADE ABOVE THAN 80
SELECT * FROM CUSTOMER WHERE CITY='HYD' OR GRADE>80;

-- WRITE AN SQL QUERY TO FIND DEATAILS WHO ARE EITHER FROM GUJARAT OR WHO DO NOT HAVE GRADE MORE THAN 80
SELECT * FROM CUSTOMER WHERE CITY='GUJARAT' OR NOT GRADE>80;

-- WRITE AN SQL QUERY TO FIND DEATAILS WHO DO NOT BELONG TO MUMBAI CITY OR HAVE A GRADE >75
SELECT * FROM CUSTOMER WHERE NOT CITY='MUMBAI' OR  GRADE>75;

-- FIND THE ORDER DETAILS EXCLUDING THE DATA 30-04-2023 AND SALESMAN ID MORE THAN 
CREATE TABLE ORDERS(
ORDER_NAME INT,PURCHASE_AMOUNT INT,ORDER_DATE DATE,CUSTOMER_ID INT,SALESMAN_ID INT
);
INSERT INTO ORDERS VALUES(2002,1000,'2023-04-23',100,200),
(2003,2000,'2023-04-26',101,202),
(2002,1000,'2023-04-23',100,200);
SELECT * FROM ORDERS;

-- FIND ORDER EXCLUDING DATE 26-04-2023 AND SALESMAN ID >202 OR PURCHASE AMOUNT >1000
SELECT * FROM ORDERS WHERE NOT ORDER_DATE='2023-04-26' AND SALESMAN_ID>202 OR PURCHASE_AMOUNT>1000;


CREATE TABLE SALESMAN(
SALESMAN_ID INT PRIMARY KEY,NAME VARCHAR(30),CITY VARCHAR(30), COMISSION FLOAT
);
SELECT * FROM SALESMAN;
INSERT INTO SALESMAN VALUES(200,'PRASA','KURNOOL',0.45),
(202,'KEERU','NANDYAL',0.87),
(203,'PURI','BANDI',0.34);

-- TO FIND THE SALESMAN DETAILS WHOSE COMISSIONS ARE WITHIN THE RANGE 0.23 TO 0.43
SELECT * FROM SALESMAN WHERE COMISSION BETWEEN 0.23 AND 0.43;

-- FIND THE SALESMAN DETAILS WHERE STARTSWITH K LETTER
SELECT *FROM SALESMAN WHERE NAME LIKE 'K%';

-- CREATE A NEW COLUMN ADRESS,INSERT SOME DATA IN THE ADRESS COLUM AND DISPKAY ALL THOSE ADRESS AS "SALESMAN ADRESS"
ALTER TABLE SALESMAN ADD ADRESS VARCHAR(30);
UPDATE SALESMAN SET ADRESS='HYD' WHERE NAME='PRASA';
UPDATE SALESMAN SET ADRESS='MUMBAI' WHERE NAME='KEERU';
UPDATE SALESMAN SET ADRESS='KERALA' WHERE NAME='PURI';
SELECT ADRESS AS SALESMANS_ADRESS FROM SALESMAN ORDER BY ADRESS ;
