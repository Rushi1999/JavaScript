---DDL
-- create 
-- modify 
-- alter -- modify -- add -- drop -- rename 
-- drop 
-- truncate

create table student ( student_id number, stud_name varchar2(10), stud_lastname varchar(20), contact number(10) );

insert into student values(1,'Rushi','jankar',1234567890);
insert into student  (student_id,stud_name,stud_lastname,contact) values (2,'Ram','Desai',0987654321);
insert into student  
                 (student_id,stud_name,stud_lastname,contact) 
                  values
              //   (3,'Virat','kohli',5678904321);
                  (4,'Rohit','sharma',0987651234);
--ALTER -- MODFIY                 
ALTER TABLE STUDENT MODIFY CONTACT NUMBER(13);
ALTER TABLE STUDENT MODIFY CONTACT NUMBER(9); // FAIL BZ MODFIY SIZE AS COMPARE TO ORG SIZE
--ALTER -- ADD
ALTER TABLE STUDENT ADD  MARK NUMBER(3);

--ALTER -- RENAME
ALTER TABLE STUDENT RENAME COLUMN MARK TO TOTAL_MAKR;
--ALTER TABLE STUDENT RENAME STUDENT TO STUDENT_INFO;
RENAME STUDENT TO STUDENT_INFO1;

--ALTER -- DROP 
ALTER TABLE STUDENT DROP COLUMN TOTAL_MAKR;
DROP TABLE STUDENT_INFO1;

--TRUNCATE
--ALTER TABLE STUDENT TRUNCATE COLUMN TOTAL_MARK; TRUNCATE WILL NOT WORK WITH ALTER
TRUNCATE TABLE STUDENT;
                  
desc student;
select * from student;

------DML----
--INSET -- INSERT ALL
--UPDATE 
--DELETE

CREATE TABLE EMPLOYE (EMP_ID NUMBER , EMP_NAME VARCHAR(10), EMP_LAST VARCHAR(10),JOIN_DATE DATE,EMP_MOB NUMBER(10));

--INSERT
INSERT INTO EMPLOYE (EMP_ID ,EMP_NAME,EMP_LAST,JOIN_DATE,EMP_MOB) VALUES(1,'RUSHI','JANKAR','10-01-2000',0987654321);
INSERT INTO EMPLOYE (EMP_ID ,EMP_NAME,EMP_LAST,JOIN_DATE,EMP_MOB) VALUES(2,'PRATIKSHA','CHAUDHAR','28-02-1999',NULL);
INSERT INTO EMPLOYE (EMP_ID ,EMP_NAME,EMP_LAST,JOIN_DATE,EMP_MOB) VALUES(3,'SHYAM','DESAI','10-01-2000',09876654321);
INSERT INTO EMPLOYE (EMP_ID ,EMP_NAME,EMP_LAST,JOIN_DATE,EMP_MOB) VALUES(3,'SHYAM','DESAI','10-01-2000','');

--UPDATE

UPDATE  EMPLOYE SET JOIN_DATE = '10-02-1999' WHERE EMP_ID =2;
UPDATE EMPLOYE SET  JOIN_DATE ='02-05-1998' WHERE EMP_ID =1;
UPDATE EMPLOYE SET EMP_NAME = 'RAM' WHERE  EMP_MOB =09876654321;
ALTER TABLE EMPLOYE ADD EMP_SHIFT VARCHAR(10);

--DELETE

DELETE EMPLOYE WHERE EMP_ID =1;
DELETE FROM EMPLOYE WHERE EMP_ID = 2;
DELETE FROM EMPLOYE WHERE EMP_ID IN(2,3,4);

--INSERTALL
INSERT ALL INTO EMPLOYE (EMP_ID ,EMP_NAME,EMP_LAST,JOIN_DATE,EMP_MOB,EMP_SHIFT) VALUES(3,'SHYAM','DESAI','10-01-2000','',NULL)
 INTO EMPLOYE VALUES(1,'RAM','DEMO',NULL,789654123,NULL) SELECT * FROM DUAL;


DESC EMPLOYE;
--SELECT * FROM EMPLOYE;
SELECT EMP_ID FROM EMPLOYE;
SELECT EMP_ID AS MYID FROM EMPLOYE;
SELECT EMP_ID MYID FROM EMPLOYE;


//TCL
//commit 
//rollback 
//savepoint

//COMMIT 

INSERT INTO STUDENT_INFO values (1,'Rushi','Jankar',null,30);
INSERT INTO STUDENT_INFO values (2,'Ram','Desai','2nd',70);
INSERT INTO STUDENT_INFO values (3,'Pratiksha','chaudhar','12th',50);

ALTER TABLE STUDENT_INFO RENAME COLUMN MARK TO STUD_MARK;
INSERT INTO STUDENT_INFO values (4,'Amol','Sharma','11th',40);

rollback;

--- 
UPDATE  STUDENT_INFO SET CLASSNAME = '1ST' WHERE ID =1; //DML
COMMIT; // TCL
ROLLBACK;

DESC STUDENT_INFO;
SELECT * FROM STUDENT_INFO;

---- 
INSERT INTO STUDENT_INFO VALUES(5,'SHYAM','KOHLI','10TH',90);
SAVEPOINT A;
UPDATE  STUDENT_INFO SET STUD_MARK = 99 WHERE ID = 5;
SAVEPOINT B;
DELETE FROM STUDENT_INFO STUD_MARK WHERE ID = 1;
ROLLBACK TO B;
ROLLBACK TO A;
ROLLBACK;

UPDATE  STUDENT_INFO SET STUD_MARK = 99 WHERE ID = 5;
COMMIT;
DELETE FROM STUDENT_INFO WHERE ID = 5;

// DUAL TABLE 

SELECT 2+4 FROM DUAL;
SELECT Sysdate FROM DUAL ;
SELECT USER FROM DUAL ;

//DQL
//SELECT 
SELECT NAME FROM STUDENT_INFO;

SELECT COUNT(ID) FROM STUDENT_INFO;
SELECT SUM(STUD_MARK) FROM student_info;
SELECT MIN(STUD_MARK) FROM STUDENT_INFO;
SELECT MAX(STUD_MARK) FROM STUDENT_INFO;
SELECT AVG(STUD_MARK) FROM STUDENT_INFO;


--IF(NUM >10)
--THEN 
--YES 
--ELSE 
--NO

--ddl dml tcl DCL(GRANT AND ) dql(select)



CREATE TABLE STUD ( ID NUMBER , NAME VARCHAR(10) UNIQUE );

INSERT INTO STUD VALUES(1,'RUSHI');
INSERT INTO STUD VALUES(2,NULL);
INSERT INTO STUD VALUES(3,NULL);


SELECT * FROM STUD;

--

