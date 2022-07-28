-- QUESTION 1:

SELECT COUNT("endDate") AS "currentExperiences" FROM experiences;

-- QUESTION 2:

SELECT "userId" AS id, COUNT("courseId") AS educations FROM educations GROUP BY "userId";

-- QUESTION 3:

SELECT users.name AS writer, COUNT(testimonials."writerId") AS "testimonailCount" 
FROM users JOIN (SELECT * FROM testimonials WHERE testimonials."writerId" = 435) testimonials 
ON users.id = testimonials."writerId" GROUP BY users.name;


-- QUESTION 4:

SELECT MAX(jobs.salary) AS maximumSalary, roles.name AS role 
FROM jobs JOIN roles ON roles.id = jobs."roleId" 
WHERE jobs.active = true 
GROUP BY roles.name 
ORDER BY maximumSalary;

