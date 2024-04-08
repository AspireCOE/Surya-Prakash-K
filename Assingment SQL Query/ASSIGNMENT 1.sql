CREATE DATABASE ASSIGNMENT;
USE ASSIGNMENT;
CREATE TABLE Programmer (
    name VARCHAR(8) NOT NULL,
    dob DATE NOT NULL,
    doj DATE NOT NULL,
    sex VARCHAR(1) NOT NULL,
    prof1 VARCHAR(8),
    prof2 VARCHAR(8),
    salary INT NOT NULL
);

INSERT INTO Programmer (name, dob, doj, sex, prof1, prof2, salary)
VALUES ('RAM', '1999-04-21', '2022-04-04', 'M', 'pascal', 'basic', 2500);


CREATE TABLE Software (
    name VARCHAR(8) NOT NULL,
    title VARCHAR(20) NOT NULL,
    dev_in VARCHAR(8) NOT NULL,
    scost int,
    dcost INT,
    sold INT
);

INSERT INTO Software (name, title, dev_in, scost, dcost, sold)
VALUES ('somdutt', 'parachutes', 'basic', 399.95, 6000, 43);

CREATE TABLE Studies (
    name VARCHAR(8) NOT NULL,
    splace VARCHAR(9) NOT NULL,
    course VARCHAR(5) NOT NULL,
    ccost VARCHAR(5) NOT NULL
);

INSERT INTO Studies (name, splace, course, ccost)
VALUES ('somdutt', 'sabhari', 'pgdca', '4500'),
       ('devdutt', 'bdps', 'dcs', '5000');
       
SELECT AVG(scost) AS average_selling_cost
FROM Software
WHERE dev_in = 'pascal';

SELECT name, 
       extract(YEAR FROM CURRENT_DATE()) - extract(YEAR FROM DOB) as age
FROM Programmer;

SELECT MAX(sold) AS max_copies_sold
FROM Software;

SELECT name, dob
FROM Programmer
WHERE EXTRACT(MONTH FROM dob) = 1;

SELECT MIN(ccost) AS lowest_course_fee
FROM Studies;

SELECT COUNT(*)
FROM Studies
WHERE course = 'pgdca';

SELECT SUM(scost * sold) AS revenue
FROM Software
WHERE dev_in = 'c';

SELECT *
FROM Software
WHERE name = 'ramesh';

SELECT COUNT(*)
FROM Studies
WHERE splace = 'sabhari';

SELECT *
FROM Software
WHERE sold > 20000;

SELECT title, CEIL(dcost / scost) AS copies_to_recover_cost
FROM Software;

SELECT MAX(scost) AS costliest_software_price
FROM Software
WHERE dev_in = 'basic';

SELECT name, title, dev_in, scost, dcost, sold
FROM Software
WHERE sold * scost >= dcost;

SELECT COUNT(*)
FROM Software
WHERE dev_in = 'dbase';

SELECT COUNT(*)
FROM Studies
WHERE splace = 'paragathi';

SELECT COUNT(*)
FROM Studies
WHERE ccost BETWEEN '5000' AND '10000';

SELECT AVG(ccost) AS average_course_fee
FROM Studies;

SELECT *
FROM Programmer
WHERE prof1 = 'c' OR prof2 = 'c';

SELECT COUNT(*)
FROM Programmer
WHERE prof1 IN ('cobol', 'pascal') OR prof2 IN ('cobol', 'pascal');

SELECT COUNT(*)
FROM Programmer
WHERE prof1 NOT IN ('pascal', 'c') AND prof2 NOT IN ('pascal', 'c');

SELECT MAX(EXTRACT(YEAR FROM CURRENT_DATE()) - EXTRACT(YEAR FROM dob)) AS oldest_male_age
FROM Programmer
WHERE sex = 'm';

SELECT MAX(YEAR(CURRENT_DATE) - YEAR(dob)) AS oldest_male_age
FROM Programmer
WHERE sex = 'm';

SELECT AVG(YEAR(CURRENT_DATE) - YEAR(dob)) AS average_female_age
FROM Programmer
WHERE sex = 'female';

SELECT name, 
       extract(YEAR FROM CURRENT_DATE) - YEAR(DOJ) AS experience_in_years
FROM Programmer
ORDER BY experience_in_years DESC;

SELECT name, dob
FROM Programmer
WHERE MONTH(dob) = MONTH(CURDATE());

SELECT COUNT(*)
FROM Programmer
WHERE sex = 'female';

SELECT DISTINCT prof1 AS language
FROM Programmer
WHERE sex = 'm'
UNION
SELECT DISTINCT prof2
FROM Programmer
WHERE sex = 'm';

SELECT AVG(salary) AS average_salary
FROM Programmer;

SELECT COUNT(*)
FROM Programmer
WHERE salary BETWEEN 2000 AND 4000;

SELECT *
FROM Programmer
WHERE prof1 NOT IN ('clipper', 'cobol', 'pascal')
  AND prof2 NOT IN ('clipper', 'cobol', 'pascal');

SELECT COUNT(*)
FROM Programmer
WHERE sex = 'F'
AND (prof1 = 'c' OR prof2 = 'c')
AND (extract(YEAR FROM CURRENT_DATE) - extract(YEAR FROM DOB)) > 24;

SELECT *
FROM Programmer
WHERE extract(YEAR FROM CURRENT_DATE) - extract(YEAR FROM DOJ)< 1;

SELECT *
FROM Programmer
WHERE extract(YEAR FROM CURRENT_DATE) - extract(YEAR FROM DOJ) = 2;

SELECT name, (dcost - (scost * sold)) AS amount_to_be_recovered
FROM Software
WHERE dcost > (scost * sold);

SELECT *
FROM Software
WHERE sold = 0;

SELECT scost
FROM Software
WHERE name = 'mary';

SELECT DISTINCT splace
FROM Studies;

SELECT COUNT(DISTINCT course) AS number_of_courses
FROM Studies;

SELECT name
FROM Programmer
WHERE LENGTH(name) - LENGTH(REPLACE(name, 'a', '')) = 2;

SELECT name
FROM Programmer
WHERE LENGTH(name) <= 5;

SELECT COUNT(*)
FROM Programmer
WHERE sex = 'female'
AND (prof1 = 'cobol' OR prof2 = 'cobol')
AND TIMESTAMPDIFF(YEAR, doj, CURDATE()) > 2;

SELECT MIN(LENGTH(name)) AS shortest_name_length
FROM Programmer;

SELECT AVG(dcost) AS average_development_cost
FROM Software
WHERE dev_in = 'cobol';

SELECT name, sex, dob, doj
FROM Programmer
WHERE DAY(LAST_DAY(dob)) = DAY(dob);

SELECT SUM(salary) AS total_salary_paid
FROM Programmer
WHERE sex = 'male' AND (prof1 != 'cobol' AND prof2 != 'cobol');

SELECT title, scost, dcost, (scost - dcost) AS cost_difference
FROM Software
ORDER BY cost_difference DESC;

SELECT name, dob, doj
FROM Programmer
WHERE MONTH(dob) = MONTH(doj);

