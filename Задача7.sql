/*1.�������� ������������� ������� �� ���������� ����������:
������, ������, �������, ������� � ��� �������. ��������� ���
�������������, �������� ������ �������: ������, �������
�������.
*/

CREATE VIEW dogs(Nick, Breed, Age, Dog_owner_last_name, Dog_owner_first_name) AS
SELECT pet.Nick, pet.Breed, pet.Age, pn.Last_Name, pn.First_Name
	FROM Pet pet, Person pn, Owner o,Pet_Type p_t
	WHERE p_t.Pet_Type_ID = pet.Pet_Type_ID
	AND pet.Owner_ID = o.Owner_ID 
	AND o.Person_ID = pn.Person_ID
	AND p_t.Name = 'DOG';

 SELECT Nick, Dog_owner_last_name 
	FROM dogs
	WHERE Breed = 'poodle';

/*2.�������� ������������� �������� �����������: �������, ���,
���������� ����������� �������, ������� ���� (�� ������).
��������� ��� �������������, �������� ������� � ����������� ��
�������� �����.
*/
CREATE VIEW employee_rating(Last_Name, First_Name, Number_of_completed_orders, Average_mark) AS
SELECT pn.Last_Name, pn.First_Name, COUNT(o1.Is_Done), AVG(CONVERT(FLOAT, o1.Mark))
	FROM order1 o1, Employee e, Person pn
	WHERE o1.Employee_ID = e.Employee_ID
	AND e.Person_ID = pn.Person_ID
	GROUP BY  o1.Is_Done,  pn.Last_Name, pn.First_Name
	HAVING o1.Is_Done = 1;

SELECT * FROM employee_rating
	ORDER BY  Average_mark DESC;
 
/*3.�������� ������������� ����������: �������, ���, �������,
�����. ��������� ��� �������������, �������� ��������, �����
���������� �������� � ���� ���������� ��� ������ � ��� ����
��������� �������������� ����.
(����������� ���-���� ����� �������������� ����� �� ���������
������� :))
*/

CREATE VIEW client(Last_name, First_name, Phone, Address) AS
SELECT pn.Last_Name, pn.First_Name, pn.Phone, pn.Address
	FROM Owner o, Person pn
	WHERE o.Person_ID = pn.Person_ID

UPDATE client SET Address = '?'
	WHERE Address = '' OR Address IS NULL	
	


