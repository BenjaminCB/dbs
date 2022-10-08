# Exercise 1
## 1.1
```
SELECT Pname
FROM PROF, DEPT
WHERE Numphds < 50;
```

## 1.2
```
SELECT Sname, Dname, Sid
FROM STUDENT, MAJOR
WHERE Sid in (SELECT Sid
              FROM COURSE, ENROLL
              WHERE Cname = 'Database System');
```

## 1.3
```
SELECT Sid, Sname, GPA
FROM STUDENT
WHERE
```

# Exercise 2
```
SELECT A1.issueID, A1.articleID
FROM Article AS A1
WHERE 'politician' IN (SELECT wordText
                       FROM Article as A2, WordAppears, WordIs
                       WHERE A1.issueID = A2.issueID AND A1.articleID = A2.articleID)
      AND
      'corruption' IN (SELECT wordText
                       FROM Article as A2, WordAppears, WordIs
                       WHERE A1.issueID = A2.issueID AND A1.articleID = A2.articleID);
```

# Exercise 3
Get A and B in the rows where C is bigger than D is in the singleton row where C=3

# Exercise 4
## 4.1
```
SELECT *
FROM q

EXCEPT

SELECT *
FROM r;
```

## 4.2
```
SELECT A,C,D
FROM r,s
```

# Exercise 5
```
SELECT Sname
FROM STUDENT
WHERE Sid IN ( SELECT COUNT(PGA)
               FROM STUDENT );
```

# Exercise 6
## 6.1
Do not know how to handle BelongsTo as that is described as having an array value

## 6.2
```
SELECT B.ISBN
FROM Book AS B
WHERE ( SELECT COUNT(*)
        FROM Copy AS C
        WHERE B.ISBN = C.ISBN )
      >
      ( SELECT COUNT(*)
        FROM Loan AS L
        WHERE B.ISBN = L.ISBN );
```

## 6.3
```
SELECT ISBN
FROM Book
WHERE NoPages > 2 * ( SELECT AVG(NoPages)
                      FROM Book );
```

## 6.4
```
SELECT Surname
FROM Reader
WHERE City = 'New York'
```

# Exercise 7
## 7.1
```
SELECT e.employee-name
FROM employee, works AS we
WHERE salary > ( SELECT AVG(salary)
                 FROM works AS wc
                 WHERE we.company-name = wc.company-name );

```

## 7.2
```
SELECT e.employee-name
FROM employee AS e1, manages AS m
WHERE
```
