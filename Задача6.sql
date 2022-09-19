/*1. Напишите оператор, добавляющий в таблицу PERSON новое
физическое лицо с сохранением последовательной нумерации записей*/

INSERT INTO Person (Person_ID, Last_Name, First_Name, Phone, Address)
		VALUES ((SELECT MAX(Person_id) + 1 FROM Person), 'Krutoi', 'Vladimir',  '8-800-200-33-11', 'Pushkina, 3-11')


/*2. Напишите оператор, добавляющий пометку “(s)” в начало комментария
по каждому заказу, исполнитель которого – студент. Выполните этот
оператор.*/
UPDATE order1 SET Comments = '(s)' + Comments
	WHERE Employee_ID IN (SELECT e.Employee_ID 
							FROM Employee e, order1 o1
							WHERE e.Employee_ID = o1.Employee_ID
							AND e.Spec = 'student')


/*3.Создайте в базе новую таблицу для хранения данных о документах физ.
лиц (вид и номер документа). При создании связи от нее к таблице
PERSON укажите свойство каскадности удаления.*/
CREATE TABLE Document(
	Person_ID				INTEGER			NOT NULL,
	Type_of_document		VARCHAR(20)		NOT NULL,
	Document_number			INTEGER			NOT NULL
);

ALTER TABLE Document ADD FOREIGN KEY (Person_ID)
	REFERENCES Person(Person_ID) ON DELETE CASCADE;


-- TESTING TASK 3
 /*
INSERT INTO Person (Person_ID, Last_Name, First_Name, Phone, Address)
		VALUES ((SELECT MAX(Person_id) + 1 FROM Person), 'Krutoi', 'Vladimir',  '8-800-200-33-11', 'Pushkina, 3-11')

INSERT INTO Person (Person_ID, Last_Name, First_Name, Phone, Address)
		VALUES ((SELECT MAX(Person_id) + 1 FROM Person), 'Makedonskiy', 'Aleksandr',  '+389-35-074775', 'Pella')


INSERT INTO Document (Person_ID, Type_of_document, Document_number)
	VALUES(11, 'passport', '567')

INSERT INTO Document (Person_ID, Type_of_document, Document_number)
	VALUES(12, 'cerf_of_dominance', 1641153779)*/
	