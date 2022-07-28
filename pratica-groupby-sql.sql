-- QUESTION 1:

SELECT COUNT("endDate") AS "currentExperiences" FROM experiences;

-- QUESTION 2:

SELECT "userId" AS id, COUNT("courseId") AS educations FROM educations GROUP BY "userId";

-- QUESTION 3:

SELECT users.name AS writer, COUNT(testimonials."writerId") AS "testimonailCount" 
FROM users JOIN (SELECT * FROM testimonials WHERE testimonials."writerId" = 435) testimonials 
ON users.id = testimonials."writerId" GROUP BY users.name;


-- QUESTION 4:

