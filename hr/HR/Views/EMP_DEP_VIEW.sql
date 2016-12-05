CREATE OR REPLACE FORCE VIEW hr.emp_dep_view (employee_id,first_name,last_name,email,phone_number,hire_date,manager_id_emp,manager_name_emp,job_id,job_title,salary,commission_pct,department_id,department_name,location_id,manager_id_dep,manager_name_dep) AS
select e.employee_id,
          e.first_name,
          e.last_name,
          e.email,
          e.phone_number,
          e.hire_date,
          e.manager_id,
          e2.first_name||' '||e2.last_name,
          e.job_id,
          j.job_title,
          e.salary,
          e.commission_pct,
          e.department_id,
          d.department_name,
          d.location_id,
          d.manager_id       manager_id_dep,
          e3.first_name||' '||e3.last_name
     from employees e
     left join employees e2 on e2.employee_id = e.manager_id
     left join departments d on d.department_id = e.department_id
     left join employees e3 on e3.employee_id = d.manager_id
     join jobs j on j.job_id = e.job_id;