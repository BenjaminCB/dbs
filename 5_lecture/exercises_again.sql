SELECT p.Pname
FROM PROF as p, DEPT as d
WHERE p.Dname = d.Dname AND d.Numphds < 50;

SELECT s.Sid, s.Sname, m.Dname
FROM STUDENT as s, MAJOR as m, ENROLL as e, COURSE as c
WHERE s.Sid = m.Sid
  AND s.Sid = e.Sid
  AND e.Cno = c.Cno
  AND c.Cname = "Database System";

SELECT c.Cno
FROM COURSE as c
WHERE c.Dname = "Civil Engineering";

SELECT s.Sid, s.Sname, s.GPA
FROM STUDENT AS s
WHERE s in (
    SELECT e.Sid
    FROM ENROLL AS e, COURSE AS c
    WHERE e.Cno = c.Cno AND c.Dname =
);

SELECT A.issueID, A.articleID
FROM Article A
WHERE
    EXISTS (
        SELECT WordIs.wordText
        FROM WordAppears, WordIs
        WHERE WordIs.wordText = "politician"
          AND WordAppears.issueID = A.issueID
          AND WordAppears.issueID = A.issueID
          AND WordAppears.wordID = WordIs.wordID
    )

    AND

    EXISTS (
        SELECT WordIs.wordText
        FROM WordAppears, WordIs
        WHERE WordIs.wordText = "corruption"
          AND WordAppears.issueID = A.issueID
          AND WordAppears.issueID = A.issueID
          AND WordAppears.wordID = WordIs.wordID
    );

find values for A and B in the tuples where C is greater than the value for D in the tuple where C=3

SELECT R.A, S.D
FROM R, S
WHERE R.C = S.C

SELECT Sname
FROM STUDENT
WHERE GPA = (
    SELECT MIN(GPA)
    FROM STUDENT
);

SELECT C1.CategoryName
FROM Category C1
WHERE NOT EXISTS (
    SELECT C2.CategoryName
    FROM Category C2
    WHERE C2.BelongsTo = C1.CategoryName
);

SELECT DISTINCT C.ISBN
FROM Copy C
WHERE NOT EXISTS (
    SELECT L.ISBN
    FROM Loan L
    WHERE C.ISBN = L.ISBN AND C.CopyNumber = L.Copy
);

SELECT ISBN
FROM BOOK
WHERE NoPages >= 2 (
    SELECT AVG(NoPages)
    FROM BOOK
);

SELECT DISTINCT Surname
FROM Reader
WHERE City = "New York";

SELECT e.employee-name
FROM employee e, works w
WHERE e.employee-name = w.employee-name
  AND w.salary > (
    SELECT AVG(ws.salary)
    FROM works ws
    WHERE w.company-name = ws.company-name
);

SELECT eid
FROM EMPLOYEES
WHERE salary = (
    SELECT MAX(salary)
    FROM EMPLOYEES
    WHERE salary != (SELECT MAX(salary) FROM EMPLOYEES)
);
