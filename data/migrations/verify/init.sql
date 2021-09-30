-- Verify oparc:init on pg

BEGIN;
SELECT id, name, capacity, open_time, close_time, duration 
FROM attraction WHERE false;


SELECT id, ticket_number, start_validity,end_validity 
FROM visitor WHERE false;

SELECT id, attraction_id, visitor_id, booked_quantity, booked_date 
FROM booking WHERE false;

SELECT id, description, technician, resolved_date 
FROM incident WHERE false;

ROLLBACK;
