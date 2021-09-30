-- Revert oparc:init from pg

BEGIN;

DROP VIEW IF EXISTS booking_for_visitor, attraction_with_incident;

DROP TABLE IF EXISTS booking, incident, attraction, visitor;
DROP DOMAIN IF EXISTS pint;

COMMIT;