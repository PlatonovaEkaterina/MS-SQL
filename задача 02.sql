--1. ������ ���������
SELECT * FROM Pet WHERE Nick = 'Partizan'

--2. ������ � ������ ���� �������� � ����������� �� ��������
SELECT Age, Nick, Breed FROM Pet ORDER BY Age
--������� �������

--3. �������, ������� ���� �����-������ ��������
SELECT * FROM Pet WHERE (Breed Description!= NULL OR Age Description!= NULL OR Description!= NULL)

--4. ������� ������� �������
SELECT AVG(Age) FROM Pet WHERE Breed = 'poodle'

--5. ���������� ����������
SELECT COUNT(DISTINCT Owner_ID) FROM Pet