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
VALUES ('somdutt', '1966-04-21', '1992-04-21', 'm', 'pascal', 'basic', 3200);


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
       FLOOR(DATEDIFF('2024-01-01', dob) / 365.25) AS age
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

SELECT name, title, dev_in, scost, dcost, sold
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

SELECT MAX(EXTRACT(YEAR FROM SYSDATE) - EXTRACT(YEAR FROM dob)) AS oldest_male_age
FROM Programmer
WHERE sex = 'm';

SELECT MAX(YEAR(CURRENT_DATE) - YEAR(dob)) AS oldest_male_age
FROM Programmer
WHERE sex = 'm';

SELECT AVG(YEAR(CURRENT_DATE) - YEAR(dob)) AS average_female_age
FROM Programmer
WHERE sex = 'female';

SELECT name, 
       TIMESTAMPDIFF(YEAR, doj, CURDATE()) AS experience_in_years
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
WHERE sex = 'male'
UNION
SELECT DISTINCT prof2
FROM Programmer
WHERE sex = 'male';

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
WHERE sex = 'female'
AND (prof1 = 'c' OR prof2 = 'c')
AND TIMESTAMPDIFF(YEAR, dob, CURDATE()) > 24;

SELECT *
FROM Programmer
WHERE TIMESTAMPDIFF(YEAR, doj, CURDATE()) < 1;

SELECT *
FROM Programmer
WHERE TIMESTAMPDIFF(YEAR, doj, CURDATE()) = 2;

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

SELECT dev_in AS language, COUNT(dev_in) AS number_of_packages
FROM Software
GROUP BY dev_in;

SELECT name, COUNT(name) AS number_of_packages
FROM Software
GROUP BY name;

SELECT sex , count(SEX) AS NUMBER_GENDER
FROM PROGRAMMER
group by SEX;

SELECT dev_in AS language, 
    MAX(scost) AS costliest_package, 
    MAX(sold) AS highest_selling
FROM Software
GROUP BY dev_in;

SELECT YEAR(DOB) AS BIRTH_YEAR, count(YEAR(DOB))
FROM PROGRAMMER
group by DOB;

SELECT YEAR(DOJ) AS BIRTH_YEAR, count(YEAR(DOJ))
FROM PROGRAMMER
group by DOJ;

SELECT MONTH(DOB) AS BIRTH_YEAR, count(MONTH(DOB))
FROM PROGRAMMER
group by MONTH(DOB);

SELECT MONTH(doj) AS join_month, COUNT(*) AS number_of_people_joined
FROM Programmer
GROUP BY MONTH(doj);

SELECT prof1 AS language, COUNT(*) AS count_prof1
FROM Programmer
GROUP BY prof1;

SELECT prof2 AS language, COUNT(*) AS count_prof2
FROM Programmer
GROUP BY prof2;

SELECT FLOOR(salary) AS salary_group, COUNT(*) AS number_of_people
FROM Programmer
GROUP BY salary_group;

SELECT splace AS institute, COUNT(*) AS number_of_people
FROM Studies
GROUP BY splace;

SELECT course, COUNT(*) AS number_of_people
FROM Studies
GROUP BY course;

SELECT dev_in AS language, SUM(dcost) AS total_development_cost
FROM Software
GROUP BY language;

SELECT dev_in AS language, SUM(scost) AS total_selling_cost
FROM Software
GROUP BY language;

SELECT name, SUM(dcost) AS total_development_cost
FROM Software
GROUP BY name;

SELECT name, SUM(scost * sold) AS total_sales_value
FROM Software
GROUP BY name;

SELECT name, COUNT(*) AS number_of_packages_developed
FROM Software
GROUP BY name;

SELECT name, dev_in AS language, SUM(scost * sold) AS total_sales_cost
FROM Software
GROUP BY name, language;

SELECT 
    name, 
    MAX(scost) AS costliest_package, 
    MIN(scost) AS cheapest_package
FROM Software
GROUP BY name;

SELECT 
    dev_in AS language, 
    AVG(dcost) AS average_development_cost,
    AVG(scost) AS average_cost,
    AVG(sold) AS average_selling_cost,
    AVG(scost / sold) AS average_price_per_copy
FROM Software
GROUP BY language;

SELECT 
    splace AS institute_name, 
    COUNT(DISTINCT course) AS number_of_courses,
    AVG(ccost) AS average_cost_per_course
FROM Studies
GROUP BY institute_name;

SELECT 
    splace AS institute_name, 
    COUNT(*) AS number_of_students
FROM Studies
GROUP BY institute_name;

SELECT name, sex
FROM Programmer;

SELECT s.name AS programmer_name, p.name AS package_name
FROM Programmer s
JOIN Software p ON s.name = p.name;

SELECT dev_in AS language, COUNT(*) AS number_of_packages
FROM Software
GROUP BY language;

SELECT dev_in AS language, COUNT(*) AS number_of_packages
FROM Software
WHERE dcost < 1000
GROUP BY language;

SELECT dev_in AS language, AVG(scost - dcost) AS average_difference
FROM Software
GROUP BY language;

SELECT 
    name,
    SUM(scost) AS total_selling_cost,
    SUM(dcost) AS total_development_cost,
    SUM(scost) - SUM(dcost) AS amount_to_be_recovered
FROM Software
GROUP BY name
HAVING SUM(scost) > SUM(dcost);

SELECT 
    MAX(salary) AS highest_salary,
    MIN(salary) AS lowest_salary,
    AVG(salary) AS average_salary
FROM Programmer
WHERE salary > 2000;

SELECT name
FROM Programmer
WHERE prof1 = 'C'
ORDER BY salary DESC
LIMIT 1;

SELECT name
FROM Programmer
WHERE sex = 'female' AND prof1 = 'cobol'
ORDER BY salary DESC
LIMIT 1;

SELECT prof1 AS language, name
FROM Programmer
GROUP BY language
HAVING MAX(salary);

SELECT name
FROM Programmer
ORDER BY doj
LIMIT 1;

SELECT name
FROM Programmer
ORDER BY doj DESC
LIMIT 1;

SELECT prof1 AS language
FROM Programmer
GROUP BY language
HAVING COUNT(*) = 1;

SELECT name
FROM Programmer
WHERE prof1 = 'dbase'
ORDER BY dob
LIMIT 1;

SELECT splace AS institute_name, COUNT(*) AS number_of_students
FROM Studies
GROUP BY institute_name
ORDER BY number_of_students DESC
LIMIT 1;

SELECT name
FROM Programmer
WHERE prof1 = 'dbase'
ORDER BY dob
LIMIT 1;

SELECT name
FROM Programmer
WHERE sex = 'female' AND salary > 3000
AND prof1 NOT IN ('C', 'C++', 'Oracle', 'Dbase')
AND prof2 NOT IN ('C', 'C++', 'Oracle', 'Dbase');

SELECT course
FROM Studies
ORDER BY ccost DESC
LIMIT 1;

SELECT course
FROM Studies
GROUP BY course
ORDER BY COUNT(*) DESC
LIMIT 1;

SELECT splace AS institute_name, course
FROM Studies
GROUP BY institute_name, course
HAVING AVG(ccost) < (SELECT AVG(ccost) FROM Studies);

SELECT splace AS institute_name
FROM Studies
GROUP BY institute_name
HAVING MAX(ccost) = (SELECT MAX(ccost) FROM Studies);

SELECT course
FROM Studies
GROUP BY course
HAVING COUNT(*) < (SELECT AVG(COUNT(*)) FROM Studies GROUP BY course);

SELECT splace AS institute_name
FROM Studies
WHERE course IN (
    SELECT course
    FROM Studies
    GROUP BY course
    HAVING COUNT(*) < (SELECT AVG(COUNT(*)) FROM Studies GROUP BY course)
);

SELECT course
FROM Studies
GROUP BY course
HAVING ABS(AVG(ccost) - (SELECT AVG(ccost) FROM Studies)) <= 1000;

SELECT name
FROM Software
ORDER BY dcost DESC
LIMIT 1;

SELECT name
FROM Software
ORDER BY scost ASC
LIMIT 1;

SELECT name
FROM Software
ORDER BY sold ASC
LIMIT 1;

SELECT dev_in AS language
FROM Software
ORDER BY (scost * sold) DESC
LIMIT 1;

SELECT sold
FROM Software
ORDER BY (scost - dcost) ASC
LIMIT 1;

SELECT name
FROM Software
WHERE dev_in = 'PASCAL'
ORDER BY scost DESC
LIMIT 1;

SELECT dev_in AS language
FROM Software
GROUP BY language
ORDER BY COUNT(*) DESC
LIMIT 1;

SELECT name
FROM Software
GROUP BY name
ORDER BY COUNT(*) DESC
LIMIT 1;

SELECT name
FROM Software
ORDER BY scost DESC
LIMIT 1;

SELECT name
FROM Software
GROUP BY name
HAVING SUM(sold) < (SELECT AVG(sold) FROM Software);

SELECT p.name
FROM Programmer p
JOIN (
    SELECT MAX(salary) AS max_salary_male
    FROM Programmer
    WHERE sex = 'male'
) AS max_salary_male
ON p.sex = 'female' AND p.salary > max_salary_male;

SELECT prof1 AS language
FROM Programmer
GROUP BY language
ORDER BY COUNT(*) DESC
LIMIT 1;

SELECT name
FROM Software
GROUP BY name
HAVING SUM(scost) > (2 * SUM(dcost));

SELECT p.name AS programmer_name, s.language, MIN(s.scost) AS cheapest_package_cost
FROM Programmer p
JOIN Software s ON p.name = s.name
GROUP BY p.name, s.language;

SELECT name
FROM Programmer
WHERE sex = 'male' AND dob = (SELECT MIN(dob) FROM Programmer WHERE sex = 'male' AND YEAR(dob) = 1965);

SELECT name, MAX(dev_in) AS highest_selling_language, MIN(dev_in) AS lowest_selling_language
FROM Software
GROUP BY name;

SELECT name
FROM Programmer
WHERE sex = 'female' AND YEAR(doj) = 1992
ORDER BY dob ASC
LIMIT 1;


SELECT YEAR(dob) AS birth_year
FROM Programmer
GROUP BY birth_year
ORDER BY COUNT(*) DESC
LIMIT 1;

SELECT MONTH(doj) AS join_month
FROM Programmer
GROUP BY join_month
ORDER BY COUNT(*) DESC
LIMIT 1;

SELECT prof1 AS language
FROM Programmer
GROUP BY language
ORDER BY COUNT(*) DESC
LIMIT 1;

SELECT name
FROM Programmer
WHERE sex = 'male'
AND salary < (SELECT AVG(salary) FROM Programmer WHERE sex = 'female');

SELECT *
FROM Programmer
WHERE salary IN (
    SELECT salary
    FROM Programmer
    GROUP BY salary
    HAVING COUNT(*) > 1
);

SELECT *
FROM Software
WHERE name IN (
    SELECT name
    FROM Programmer
    WHERE sex = 'male' AND salary > 3000
);

SELECT *
FROM Software
WHERE dev_in = 'PASCAL' AND name IN (
    SELECT name
    FROM Programmer
    WHERE sex = 'female'
);

SELECT *
FROM Programmer
WHERE YEAR(doj) < 1990;

SELECT *
FROM Software
WHERE dev_in = 'C' AND name IN (
    SELECT name
    FROM Programmer
    WHERE sex = 'female' AND splace = 'PRAGATHI'
);

SELECT p.name AS programmer_name, s.splace AS institute, COUNT(*) AS number_of_packages, SUM(s.sold) AS total_copies_sold, SUM(s.sold * s.scost) AS total_sales_value
FROM Programmer p
JOIN Software s ON p.name = s.name
GROUP BY p.name, s.splace;

SELECT *
FROM Software
WHERE dev_in = 'DBASE' AND name IN (
    SELECT name
    FROM Programmer
    WHERE sex = 'male' AND splace = (
        SELECT splace
        FROM Studies
        GROUP BY splace
        ORDER BY COUNT(*) DESC
        LIMIT 1
    )
);

SELECT *
FROM Software
WHERE name IN (
    SELECT name
    FROM Programmer
    WHERE (sex = 'male' AND YEAR(dob) < 1965) OR (sex = 'female' AND YEAR(dob) > 1975)
);

SELECT *
FROM Software
WHERE dev_in NOT IN (
    SELECT prof1
    FROM Programmer
    UNION
    SELECT prof2
    FROM Programmer
);

SELECT *
FROM Software
WHERE dev_in NOT IN (
    SELECT prof1
    FROM Programmer
    UNION
    SELECT prof2
    FROM Programmer
);

SELECT *
FROM Software
WHERE name IN (
    SELECT name
    FROM Programmer
    WHERE sex = 'male' AND splace = 'SABHARI'
);

SELECT name
FROM Programmer
WHERE name NOT IN (
    SELECT DISTINCT name
    FROM Software
);

SELECT SUM(dcost) AS total_cost
FROM Software
WHERE name IN (
    SELECT name
    FROM Programmer
    WHERE splace = 'APPLE'
);

SELECT name
FROM Programmer
GROUP BY doj
HAVING COUNT(*) > 1;

SELECT name
FROM Programmer
GROUP BY prof2
HAVING COUNT(*) > 1;

SELECT splace AS institute, SUM(sold * scost) AS total_sales_value
FROM Software
GROUP BY institute;

SELECT splace AS institute
FROM Studies
WHERE name IN (
    SELECT name
    FROM Software
    ORDER BY scost DESC
    LIMIT 1
);

SELECT language
FROM (
    SELECT prof1 AS language FROM Programmer
    UNION
    SELECT prof2 FROM Programmer
) AS languages
WHERE language NOT IN (
    SELECT dev_in
    FROM Software
);

SELECT p.name AS programmer_name, p.salary, s.course
FROM Programmer p
JOIN Software s ON p.name = s.name
WHERE s.sold = (
    SELECT MAX(sold)
    FROM Software
);

SELECT p.name AS programmer_name, s.ccost / p.salary AS months_to_recover_cost
FROM Programmer p
JOIN Studies s ON p.name = s.name;

SELECT *
FROM Software
WHERE name IN (
    SELECT name
    FROM Programmer
    WHERE YEAR(CURDATE()) - YEAR(doj) < 3
);

SELECT AVG(p.salary) AS average_salary
FROM Programmer p
JOIN Software s ON p.name = s.name
GROUP BY p.name
HAVING SUM(s.sold * s.scost) > 50000;

SELECT COUNT(*)
FROM Software
WHERE name IN (
    SELECT name
    FROM Studies
    WHERE ccost = (
        SELECT MIN(ccost)
        FROM Studies
    )
);

SELECT COUNT(*)
FROM Software
WHERE name = (
    SELECT name
    FROM Software
    ORDER BY scost ASC
    LIMIT 1
);

SELECT s.splace AS institute
FROM Studies s
JOIN Software sw ON s.name = sw.name
WHERE sw.name = (
    SELECT name
    FROM Software
    ORDER BY scost ASC
    LIMIT 1
);

SELECT COUNT(*)
FROM Software
WHERE name IN (
    SELECT name
    FROM Programmer
    WHERE sex = 'female' AND salary > (
        SELECT MAX(salary)
        FROM Programmer
        WHERE sex = 'male'
    )
);

SELECT COUNT(*)
FROM Software
WHERE name IN (
    SELECT name
    FROM Programmer
    WHERE splace = 'BDPS'
    ORDER BY TIMESTAMPDIFF(YEAR, doj, CURDATE()) DESC
    LIMIT 1
);

SELECT s.name AS programmer_name, st.splace AS institute
FROM Studies st
LEFT JOIN Software s ON st.name = s.name
UNION
SELECT p.name AS programmer_name, st.splace AS institute
FROM Programmer p
LEFT JOIN Studies st ON p.name = st.name
WHERE p.name NOT IN (
    SELECT name
    FROM Software
);

SELECT prof1 AS proficiency, COUNT(*) AS number_of_programmers, (
    SELECT COUNT(*)
    FROM Software
    WHERE dev_in = prof1
) AS number_of_packages_developed
FROM Programmer
GROUP BY prof1;

SELECT name, COUNT(*) AS number_of_packages_developed
FROM Software
GROUP BY name;

SELECT p.*
FROM Programmer p
JOIN Studies s ON p.name = s.name
WHERE s.splace = 'S.S.I.L';
