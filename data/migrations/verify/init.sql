-- Verify oparc:init on pg

BEGIN;
SELECT id, name, capacity, author, open_time, close_time, duration 
FROM attraction WHERE false;


SELECT id, ticket_number, start_validity,end_validity 
FROM visitor WHERE false;

SELECT id, attraction_id, visitor_id 
FROM attraction_booked_visitor WHERE false;

SELECT id, description, technician, resolved_date 
FROM incident WHERE false;

ROLLBACK;
