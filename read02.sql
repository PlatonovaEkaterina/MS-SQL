--1. ������ ���������
SELECT * FROM Pet WHERE Nick = 'Partizan'

--2. ������ � ������ ���� �������� � ����������� �� ��������
SELECT Age, Nick, Breed FROM Pet ORDER BY Age
--������� �������

--3. �������, ������� ���� �����-������ ��������
SELECT * FROM Pet  WHERE Description IS NOT NULL and Description <>''

--4. ������� ������� �������
SELECT AVG(Age) FROM Pet WHERE Breed = 'poodle'

--5. ���������� ����������
SELECT COUNT(DISTINCT Owner_ID) FROM Pet