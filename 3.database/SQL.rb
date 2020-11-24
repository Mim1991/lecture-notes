https://kitt.lewagon.com/camps/473/lectures/03-AR-Database%2F01-DB-Design-and-SQL

# All patient names
SELECT first_name, last_name FROM patients

# Everything from patients
SELECT * FROM patients

# all docs where specialty is
SELECT * FROM doctors WHERE specialty = 'Cardiac Surgery'

# all surgery doctors
SELECT * FROM doctors WHERE specialty LIKE '%Surgery'

# all surgery docs named steve
SELECT * FROM doctors
WHERE specialty = 'Cardiac Surgery'
AND first_name = 'Steve'

# all patients ordered ASC/DESC
SELECT * FROM patients ORDER BY age ASC

# Count cardiac surgery docs
SELECT COUNT(*) FROM doctors WHERE specialty = 'Cardiac Surgery'

# Count all doctors per specialty, order by specialty
# You need to rename result column, with AS
SELECT COUNT(*) AS c, specialty
FROM doctors
GROUP BY specialty
ORDER BY c DESC

# For two tables
SELECT * FROM inhabitants
JOIN cities ON cities.id = inhabitants.city_id
WHERE inhabitants.age >= 18
AND cities.name = 'Paris'

# For 2 tables with a join table
SELECT c.created_at, p.first_name, p.last_name, d.first_name, d.last_name
FROM consultations c
JOIN patients p ON c.patient_id = p.id
JOIN doctors d ON c.doctor_id = d.id;
