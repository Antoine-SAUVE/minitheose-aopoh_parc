-- Deploy oparc:create_acl to pg

BEGIN;

-- vue entre attraction et visitor 
CREATE VIEW booking_for_visitor AS (
    SELECT 
    visitor.id AS visitorId, ticket_number, start_validity, end_validity, 
    booking.id AS bookingId, booked_quantity, booked_date, 
    attraction.id AS attractionId, name, capacity, open_time, close_time, duration, open FROM booking
    JOIN visitor ON booking.visitor_id = visitor.id
    JOIN attraction ON attraction.id = booking.attraction_id
);

-- un grant sur oparc_visitor pour donner accès à certaines requêtes
GRANT SELECT, INSERT, UPDATE ON booking_for_visitor TO oparc_visitor;

-- vue entre attraction et incident
CREATE VIEW attraction_with_incident AS (
    SELECT 
    attraction.id AS attractionId, name, capacity, open_time, close_time, duration, open,
    incident.id AS incidentId, description, technician, incident_date, resolved_date FROM attraction
    JOIN incident ON incident.attraction_id = attraction.id
);

-- un grant sur opar_maintenance pour donner gérer les incidences
GRANT SELECT, INSERT, UPDATE ON attraction_with_incident TO oparc_maintenance; 

COMMIT;
