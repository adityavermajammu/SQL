select * from staff

select * from staff_salary


--inner join

select * from staff
inner join staff_salary on staff.staff_id = staff_salary.staff_id

-- to get staff id from staff table,first name from staff table,staff id from staff salary and salary from staff salary table
select staff.staff_id,staff.first_name,staff_salary.staff_id,staff_salary.salary from staff
inner join staff_salary on staff.staff_id = staff_salary.staff_id

--left join
select staff.staff_id,staff.first_name,staff_salary.staff_id,staff_salary.salary from staff
left join staff_salary on staff.staff_id = staff_salary.staff_id

--right join
select staff.staff_id,staff.first_name,staff_salary.staff_id,staff_salary.salary from staff
right join staff_salary on staff.staff_id = staff_salary.staff_id

--full join
select staff.staff_id,staff.first_name,staff_salary.staff_id,staff_salary.salary from staff
full join staff_salary on staff.staff_id = staff_salary.staff_id


--for staff with more than 10000 salary
select staff.staff_id,staff.first_name,staff_salary.staff_id,staff_salary.salary from staff
full join staff_salary on staff.staff_id = staff_salary.staff_id where staff_salary.salary>10000
limit 1



--for parents address 
select parents.id,parents.first_name,address.city,address.state,address.street,address.country from parents 
full join address on parents.address_id= address.address_id 


--i want to print student name and address


select * from parents

select students.first_name,students.last_name,address.address_id ,address.city,address.street,address.country from students
inner join student_parent on students.id=student_parent.student_id
inner join parents on parents.id = student_parent.parent_id
inner join address on parents.address_id=address.address_id 


