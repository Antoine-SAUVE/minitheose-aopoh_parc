-- Deploy oparc:init to pg

BEGIN;

-- on crèe un domaine pint, qui implique la nécessité que la VALUE soit supérieure à 0
CREATE DOMAIN pint AS int CHECK(VALUE > 0);

-- on crèe nos tables
CREATE TABLE attraction (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name TEXT NOT NULL UNIQUE,
    capacity pint NOT NULL,
    author TEXT NOT NULL,
    open_time timestamptz NOT NULL,
    close_time timestamptz NOT NULL,
    duration pint NOT NULL, -- en minutes
    CHECK (open_time < close_time)
);

CREATE TABLE visitor (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    ticket_number pint NOT NULL UNIQUE,
    start_validity timestamptz NOT NULL,
    end_validity timestamptz NOT NULL,
    CHECK (start_validity < end_validity)
);

CREATE TABLE attraction_booked_visitor (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    attraction_id INTEGER NOT NULL REFERENCES attraction(id) ON DELETE CASCADE,
    visitor_id INTEGER NOT NULL REFERENCES visitor(id) ON DELETE CASCADE
);

CREATE TABLE incident (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    description text NOT NULL,
    technician text NOT NULL,
    resolved_date timestamptz NOT NULL,
    attraction_id INTEGER NOT NULL REFERENCES attraction(id) ON DELETE CASCADE
);

COMMIT;
