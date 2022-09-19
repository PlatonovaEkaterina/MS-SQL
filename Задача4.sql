--1.Сколько имеется питомцев в возрасте 1 год, 2 года, и т.д.
SELECT p.age, count(*) AS pet_count
	FROM Pet p, Pet_Type pt 
	WHERE p.Pet_Type_ID =  pt.Pet_Type_ID
	GROUP BY  p.Age

--2. Сколько имеется котов, собак и т.д. в возрасте 1 год, 2 года, и т.д.
SELECT pt.Name, p.age, count(*) AS count
	FROM Pet p, Pet_Type pt 
	WHERE p.Pet_Type_ID =  pt.Pet_Type_ID
	GROUP BY pt.Name, p.Age

--3. Виды питомцев, средний возраст которых меньше шести лет:
SELECT pt.Name, AVG( p.Age)
	FROM Pet p, Pet_Type pt
	WHERE p.Pet_Type_ID = pt.Pet_Type_ID
	GROUP BY pt.Name
	HAVING AVG( p.Age) < 6

--4. Фамилии сотрудников, выполнивших болеепяти заказов.
SELECT p.Last_Name
	FROM order1 o1, Employee e, Person p
	WHERE o1.Employee_ID = e.Employee_ID AND e.Person_ID = p.Person_ID
	GROUP BY o1.Is_Done, p.Last_Name
	HAVING SUM(o1.Is_Done) > 5

--5. 
SELECT YEAR (o1.time_order) 
	FROM order1 o1
--6. 
SELECT DAY (o1.time_order) 
	FROM order1 o1
