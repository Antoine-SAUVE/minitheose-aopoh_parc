-- Revert oparc:create_acl from pg

BEGIN;

DROP VIEW IF EXISTS booking_for_visitor, attraction_with_incident;

COMMIT;
