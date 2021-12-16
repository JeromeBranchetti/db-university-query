USE `db_university`;

-- 1. Selezionare tutti gli studenti nati nel 1990
SELECT * 
FROM students s
WHERE YEAR(date_of_birth) < 2000;

-- 2.Selezionare tutti i corsi che valgono più di 10 crediti
SELECT *
FROM courses c 
WHERE c.cfu > 9;

-- 3. Selezionare tutti gli studenti che hanno più di 30 anni
SELECT *
FROM students s 
WHERE YEAR(date_of_birth) < 1991;

-- 4. Selezionare tutti i corsi di laurea magistrale
SELECT *
FROM `degrees` d 
WHERE d.`level` = 'magistrale';

-- 5. Da quanti dipartimenti è composta l’università?
SELECT COUNT(d.id) 
FROM departments d;

-- 6. Quanti sono gli insegnanti che non hanno un numero di telefono?
SELECT COUNT(t.id) as prof_senza_numero
FROM teachers t 
WHERE t.phone IS NULL;

-- 7. Contare quanti iscritti ci sono stati ogni anno
SELECT YEAR(s.enrolment_date) , COUNT(s.id)
FROM students s 
GROUP BY YEAR(s.enrolment_date)
ORDER BY YEAR(s.enrolment_date);



-- 8. Calcolare la media dei voti di ogni appello d’esame
SELECT es.exam_id,  AVG(es.vote)
FROM exam_student es 
GROUP BY es.exam_id 
ORDER BY es.exam_id;

-- 9. Contare quanti corsi di laurea ci sono per ogni dipartimento
SELECT d.department_id , COUNT(d.id)
FROM `degrees` d 
GROUP BY d.department_id 
ORDER BY d.department_id ;



-- 10. Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia

--        NON TROVO IL CORSO DI LAUREA IN ECONOMIA 

-- 11. Selezionare tutti i Corsi di Laurea Magistrale del Dipartimento di Neuroscienze
SELECT *
FROM `degrees` d 
WHERE d.department_id = 7 AND d.`level` = 'magistrale';

-- 12. Selezionare tutti i corsi in cui insegna Fulvio Amato
SELECT *
FROM course_teacher ct 
WHERE ct.teacher_id = 44;

-- 13. Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il relativo dipartimento, in ordine alfabetico per cognome e nome

-- NON LO SO FARE

