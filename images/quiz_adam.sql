-- 1
select employee_id, first_name,last_name,salary,extract(year from age(now(),hire_date)) masa_kerja,
case when extract(year from age(now(),hire_date)) >= 20
then salary * 5
else salary * 3
end bonus
from employees

-- 2
SELECT extract(year from age(now(),hire_date)) masa_kerja,
sum(case when extract(year from age(now(),hire_date)) >= 20
then salary * 5
ELSE salary * 3
end) bonus
from employees
group by masa_kerja
order by masa_kerja

-- 3
select extract(year from age(now(),hire_date)) masa_kerja, count(e.employee_id) as jumlah_pegawai
from employees e
group by masa_kerja
order by masa_kerja desc;

-- 4
select d.department_name, extract(year from age(now(),e.hire_date)) masa_kerja, count(e.employee_id) as jumlah_pegawai
from departments d
join employees e on d.department_id = e.department_id
GROUP by d.department_name, masa_kerja
order by d.department_name asc;
