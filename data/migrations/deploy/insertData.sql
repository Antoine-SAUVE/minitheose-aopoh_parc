-- Deploy oparc:insertData to pg

BEGIN;

INSERT INTO public.attraction(
	name, capacity, author, open_time, close_time, duration)
	VALUES 
    ('Leviathan', 20, 'Bolliger & Mabillard', '2021-09-30 08:00:00', '2021-09-30 18:30:00', 4),
    ('Fury 325', 30, 'Bolliger & Mabillard', '2021-09-30 08:00:00', '2021-09-30 18:30:00', 3),
    ('Steel Dragon 2000', 25, 'Steve Okamoto', '2021-09-30 08:00:00', '2021-09-30 18:30:00', 5),
    ('Millennium Force', 30, 'Werner Stengel', '2021-09-30 08:00:00', '2021-09-30 18:30:00', 2);

INSERT INTO public.incident(
	description, technician, resolved_date, attraction_id)
	VALUES ('Problème de roulements sur la voiture 2', 'Pierre MARIE', '2021-03-20', 2),
    ('Défault ceinture sécurité premier wagon', 'Nib HELULE', '2021-08-03', 3),
    ('Ecrous desserés au niveau du moteur (tout va bien)', 'Sim HOFF', '2021-09-11', 3),
    ('Mécanisme de freins à changer en urgence sur tous le manege', 'Nib HELULE', '2021-07-14', 4);

INSERT INTO public.visitor(
    ticket_number, start_validity, end_validity)
    VALUES (59, '2021-09-30', '2021-10-01'),
    (126, '2021-10-01', '2021-10-02'),
    (258, '2021-10-02', '2021-10-03'),
    (666, '2021-10-03', '2021-10-04');

INSERT INTO public.attraction_booked_visitor(
	attraction_id, visitor_id)
	VALUES 
    (1, 1),(1, 2),(1, 3),(1, 4),
    (2, 2),(2, 1),(2, 3),(2, 4),
    (3, 3),(3, 2),(3, 3),(3, 4),
    (4, 4),(4, 2),(4, 3),(4, 4);

COMMIT;
