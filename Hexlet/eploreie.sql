SELECT * FROM dbo.employees;
/*
Select * From employees e Left Join employees rab On e.id = rab.id And rab.manager_id Is Not Null
Left Join employees man On e.id = man.id And man.manager_id Is Null Where rab.salary > man.salary;*/
Select rab.name From employees e Inner Join employees rab On e.id=rab.manager_id WHERE e.salary<rab.salary;
