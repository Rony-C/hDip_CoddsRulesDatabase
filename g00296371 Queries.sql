-- Basic SELECT statement. Proves Codds Rule 1 - Information Rule - Everything is stored in table format 
-- 1) Querying the animals table
SELECT name, breed
FROM animals 
ORDER BY owner_id ASC;

-- 2) Getting first name, address line 1 and the city 
-- from addresses where counties are not Galway or Sligo
SELECT first_name, address_1, city FROM addresses
WHERE county 
NOT IN ('Galway', 'Sligo');

-- 3) Get all active vets
SELECT full_name AS 'Name', email AS 'Email' FROM staff
WHERE role = 'vet'
AND is_active = 1
ORDER BY full_name DESC;

-- Basic INSERT statement, Proves Codds Rule 5 - Comprehensive Data Sub-Language Rule. Language supports Data definition and data manipulation. 
-- 4) An example of data manipulation is shown
-- Inserting an address.
INSERT INTO `addresses` (`first_name`, `last_name`, `address_1`, `address_2`, `city`, `county`, `country`, `eircode`) 
VALUES ('SQL', 'Master', 'Main Street', 'Column Avenue', 'Datbase Road', 'Schema', 'Ireland', 'xxxx 0987');

-- 5) Adding an appointment
INSERT INTO appointments (dateTime, isCancelled, animalName, withVet, reasonForAppointment, animalID, ownerName, isPaid, followUp, paymentID, createdAt)
VALUES ('2023-05-09 11:55:00', '0', 'Abigail', '7', 'Call out. Not lambing.', '4', 'Kenneth F', '0', '0', '', NOW());

-- UPDATE statement. Proves Codds Rule 6 - View Updating Rule. Updating view updates the tables contents. 
-- 6) Update the appointments table to change the status of the gig
UPDATE appointments
SET is_cancelled = 0
WHERE id = 1;

-- 7) Access the view. See how the contents differ to selecting all from the appointments table
SELECT * FROM appointments;

SELECT * FROM open_appointments_today;

-- 8) Update the view to cancel an appointment.
UPDATE open_appointments_today 
SET is_cancelled = 1
WHERE id = 1;

-- 9) Update the email address of an owner
UPDATE owners
SET email = 'ken.feeks@email.com'
WHERE id = 2;

-- ALTER statement, Codds Rule 5 - DDL query example
-- 10) Added a potentially useful column to the animals table after it was created. Using slightly different formatting that is also an accepted query in my DB
ALTER TABLE `ddd_project_vet`.`animals` 
ADD COLUMN `age` INT NULL AFTER `breed`;

-- DELETE, Codds Rule 9 - Logical Data - Altering the tables does not affect performance
-- 11) Delete a column using name as reference will cause an error. Safe update mode requires Key column to be used.
DELETE FROM treatment_guide
WHERE name = 'call out';

-- 12) Delete using the id value will work instead
DELETE FROM treatment_guide
WHERE id = 4;

-- 13) Dropping a column doesn't affect the table or the database.
ALTER TABLE `ddd_project_vet`.`animals` 
DROP COLUMN `age`;

-- Codds Rule 10 - Integrity Independence - A Primary Key can’t have null values. Every row in a table has a primary key and each Foreign Key relates to a Primary Key.
-- 14) null values have a specific purposes, null is an absense of data not zero or nothing.
-- Nothing returned from this query.
SELECT id 
FROM appointments 
WHERE id IS null;

-- JOIN, Codds Rule 10 
-- 15) Using Primary and Foreign Keys to join tables and order the data. 
SELECT t1.id, t1.name, t2.id, t2.full_name
FROM animals t1
INNER JOIN owners t2 ON t1.owner_id = t2.id
ORDER BY t1.name ASC;

-- 16) Linking payment line items to the appointment they were created from
-- Renaming columns makes it easier to read the returned results.
SELECT t1.id as 'Line Item ID', t2.id AS 'Payment ID', t2.created_at AS 'Payment Created', t1.cost AS 'Cost', t3.id AS 'Appointment ID', t3.date_time AS 'Appointment Date', t3.is_paid AS 'Paid?'
FROM payment_line_items t1
LEFT JOIN payments t2 on t1.payment_id = t2.id
RIGHT JOIN appointments t3 on t2.appointment_id = t3.id
WHERE t2.id IS NOT NULL;


-- Describe table data, Codds Rule 4 - Active online catalog. 
-- 17) The Schemas Data Dictionary, meta data for the payment table.
DESC payments;

-- 18) Describing the animals table.
DESCRIBE animals;

-- Create or update views
-- Creating views with different parameters to show different information. 
-- Also shows an example of JOINing tables.
-- These queries will also work for updating the views if needed. 
-- 20) Create or update the "today" view.
CREATE OR REPLACE VIEW today AS
SELECT t1.id AS "ID", t1.dateTime AS "Time", t1.isCancelled, t2.firstName AS "Vet", t3.name AS "Animal", t1.reasonForAppointment AS "Reason"
FROM appointments AS t1
INNER JOIN staff AS t2 ON t1.withVet = t2.idstaff
INNER JOIN animals AS t3 ON t1.animalID = t3.id
WHERE t1.isCancelled = 0;

-- 21) Create or update the "open_appointments_today" view
CREATE OR REPLACE VIEW open_appointments_today 
AS
    SELECT 
        `t1`.`id` AS `ID`,
        `t1`.`date_time` AS `Time`,
        `t1`.`is_cancelled` AS `isCancelled`,
        `t2`.`first_name` AS `Vet`,
        `t3`.`name` AS `Animal`,
        `t1`.`reason_for_appointment` AS `Reason`
    FROM
        ((`appointments` `t1`
        JOIN `staff` `t2` ON ((`t1`.`with_vet` = `t2`.`id`)))
        JOIN `animals` `t3` ON ((`t1`.`animal_id` = `t3`.`id`)))
	WHERE
		`t1`.`date_time` LIKE '2023-04%'
	AND 
		`t1`.`is_cancelled` = 0;