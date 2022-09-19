--1. Данные Партизана
SELECT * FROM Pet WHERE Nick = 'Partizan'

--2. Клички и породы всех питомцев с сортировкой по возрасту
SELECT Age, Nick, Breed FROM Pet ORDER BY Age
--Добавил возраст

--3. Питомцы, имеющие хоть какое-нибудь описание
SELECT * FROM Pet WHERE (Breed Description!= NULL OR Age Description!= NULL OR Description!= NULL)

--4. Средний возраст пуделей
SELECT AVG(Age) FROM Pet WHERE Breed = 'poodle'

--5. Количество владельцев
SELECT COUNT(DISTINCT Owner_ID) FROM Pet