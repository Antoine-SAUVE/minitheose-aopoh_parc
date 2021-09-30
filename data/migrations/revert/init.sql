-- Revert oparc:init from pg

BEGIN;

DROP TABLE IF EXISTS booking, incident, attraction, visitor;
DROP DOMAIN IF EXISTS pint;

COMMIT;