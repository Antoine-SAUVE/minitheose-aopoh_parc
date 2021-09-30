-- Revert oparc:init from pg

BEGIN;

DROP TABLE IF EXISTS attraction_booked_visitor, incident, attraction, visitor;
DROP DOMAIN IF EXISTS pint;

COMMIT;
