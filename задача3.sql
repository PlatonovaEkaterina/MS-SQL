--1. Данные на Партизана, включая вид животного.
SELECT *
	FROM Pet p JOIN Pet_Type pt
	ON p.Pet_Type_ID = pt.Pet_Type_ID
	WHERE p.Nick = 'Partizan'
	
--2. Список всех собак с кличками, породой и возрастом.
SELECT p.Nick, p.Breed, p.Age
	FROM Pet p JOIN Pet_Type pt
	ON p.Pet_Type_ID = pt.Pet_Type_ID 
	WHERE pt.Name = 'DOG'
	
--3. Средний возраст кошек.
	SELECT AVG(CONVERT(FLOAT,p.Age))
	FROM Pet p JOIN Pet_Type pt
	ON p.Pet_Type_ID = pt.Pet_Type_ID 
	WHERE pt.Name = 'CAT'

--4. TВремя и исполнители невыполненных заказов.
SELECT o1.Time_Order, p.last_name
	FROM order1 o1, Employee e, Person p
	WHERE e.Employee_ID = o1.Employee_ID AND e.Person_ID = p.Person_ID
	AND o1.Is_Done = 0

--5. LСписок хозяев собак - имя, фамилия, телефон.
SELECT prs.First_Name, prs.Last_Name, prs.Phone 
	FROM Person prs,
		 Pet p,
		 Owner ow,
		 Pet_Type pt
	WHERE prs.Person_ID = ow.Person_ID 
	AND p.Owner_ID = ow.Owner_ID 
	AND pt.Pet_Type_ID = p.Pet_Type_ID
	AND pt.Name = 'DOG'


--6. Все виды питомцев и клички представителей этих видов (внешнее соединение).
SELECT pt.Name, p.Nick
	FROM Pet p RIGHT JOIN Pet_Type pt
	ON p.Pet_Type_ID = pt.Pet_Type_ID  