-- ==========================================
-- COURSE AND ENROLLMENT JOIN TESTS
-- ==========================================


-- TEST 1: Check Course table

SELECT
    CASE
        WHEN COUNT(*) = 3 THEN 'PASS'
        ELSE 'FAIL'
    END AS CourseTableTest
FROM Course;


-- TEST 2: Check Enrollment table

SELECT
    CASE
        WHEN COUNT(*) = 4 THEN 'PASS'
        ELSE 'FAIL'
    END AS EnrollmentTableTest
FROM Enrollment;


-- TEST 3: Check LEFT JOIN

SELECT
    CASE
        WHEN COUNT(*) = 4 THEN 'PASS'
        ELSE 'FAIL'
    END AS LeftJoinTest
FROM Course
LEFT JOIN Enrollment
    ON Course.CourseID = Enrollment.CourseID;


-- TEST 4: Check RIGHT JOIN

SELECT
    CASE
        WHEN COUNT(*) = 4 THEN 'PASS'
        ELSE 'FAIL'
    END AS RightJoinTest
FROM Course
RIGHT JOIN Enrollment
    ON Course.CourseID = Enrollment.CourseID;


-- TEST 5: Check Database Systems enrollments

SELECT
    CASE
        WHEN COUNT(*) = 2 THEN 'PASS'
        ELSE 'FAIL'
    END AS DatabaseSystemsTest
FROM Course
LEFT JOIN Enrollment
    ON Course.CourseID = Enrollment.CourseID
WHERE Course.CourseID = 201;


-- TEST 6: Check Data Structures enrollment

SELECT
    CASE
        WHEN COUNT(*) = 1 THEN 'PASS'
        ELSE 'FAIL'
    END AS DataStructuresTest
FROM Course
LEFT JOIN Enrollment
    ON Course.CourseID = Enrollment.CourseID
WHERE Course.CourseID = 202;


-- TEST 7: Check Mathematics enrollment

SELECT
    CASE
        WHEN COUNT(*) = 1 THEN 'PASS'
        ELSE 'FAIL'
    END AS MathematicsTest
FROM Course
LEFT JOIN Enrollment
    ON Course.CourseID = Enrollment.CourseID
WHERE Course.CourseID = 203;
