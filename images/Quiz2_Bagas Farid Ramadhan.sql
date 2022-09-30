select employee_id, first_name,last_name,salary,extract(year from age(now(),hire_date)) masa_kerja,
case when extract(year from age(now(),hire_date)) >= 15
then salary * 2
else salary
end bonus
from employees

select j.job_id,j.job_title, 
case when j.job_id = 'IT_PROG' then count(e.employee_id) end job_satu,
case when j.job_id = 'FI_ACCOUNT' then count(e.employee_id) end job_dua
from employees e join jobs j on e.job_id = j.job_id
group by j.job_id,j.job_title


--- 1. Tampilkan employees yang mendapatkan bonus akhir tahun, jika masa kerja 
--- employees >= 20 tahun akan mendapatkan bonus 5x salary, jika kurang akan 
--- mendapatkan 3x salary. Hint : gunakan extract(year from age(now(),hire_date))

select employee_id, concat(first_name, ' ', last_name) as full_name, salary,extract(year from age(now(), hire_date)) masa_kerja,
case when extract (year from age(now(), hire_date)) >= 20
then salary * 5
else salary * 3
end bonus
from employees

--- 2. Tampilkan bonus tiap masa kerja.
select extract(year from age(now(), hire_date)) masa_kerja,
case when extract(year from age(now(), hire_date)) >= 20
then salary * 5
else salary * 3
end yearly_bonus
from employees
order by masa_kerja

--- 3. Tampilkan jumlah pegawai berdasarkan masa kerja nya.
select extract(year from age(now(), hire_date)) masa_kerja,
case when extract(year from age(now(), hire_date)) = extract(year from age(now(), hire_date))
then count(employees.employee_id)
end jumlah_pegawai
from employees
group by masa_kerja
order by masa_kerja desc

--- 4. Buat tampilan jumlah pegawai berdasarkan masa kerja di tiap department.
select extract(year from age(now(), hire_date)) masa_kerja,
case when extract(year from age(now(), hire_date)) = extract(year from age(now(), hire_date))
then count(employees.department_id)
end jumlah_pegawai
from employees 
group by masa_kerja
order by masa_kerja desc
