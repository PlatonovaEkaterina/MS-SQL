/*3.�������� � ���� ����� ������� ��� �������� ������ � ���������� ���.
��� (��� � ����� ���������). ��� �������� ����� �� ��� � �������
PERSON ������� �������� ����������� ��������.*/
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

DELETE FROM Person WHERE Last_Name = 'Makedonskiy';
SELECT Person_ID,Type_of_document,Document_number	
FROM Document
