SELECT o1.Mark
	FROM Order1 o1,
		 Employee e
	WHERE o1.Employee_ID = e.Employee_ID 
	AND e.Spec In (SELECT Spec 
						FROM Employee
						WHERE Spec = 'student' AND o1.Mark!=0)