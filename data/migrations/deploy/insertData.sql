-- Deploy oparc:insertData to pg

BEGIN;

INSERT INTO public.attraction(
	name, capacity, open_time, close_time, duration)
	VALUES 
    ('Leviathan', 20, '2021-09-30 08:00:00', '2021-09-30 18:30:00', 4),
    ('Fury 325', 30, '2021-09-30 08:00:00', '2021-09-30 18:30:00', 3),
    ('Steel Dragon 2000', 25, '2021-09-30 08:00:00', '2021-09-30 18:30:00', 5),
    ('Millennium Force', 30, '2021-09-30 08:00:00', '2021-09-30 18:30:00', 2);

INSERT INTO public.incident(
	description, technician, incident_date, resolved_date, attraction_id)
	VALUES ('Problème de roulements sur la voiture 2', 'Pierre MARIE', '2021-07-15 19:25:00','2021-03-20 10:35:00', 2),
    ('Défault ceinture sécurité premier wagon', 'Nib HELULE', '2021-08-02 14:25:00','2021-08-03 19:25:00', 3),
    ('Ecrous desserés au niveau du moteur (tout va bien)', 'Sim HOFF', '2021-09-11 11:30:00', '2021-09-11 15:30:00', 3),
    ('Mécanisme de freins à changer en urgence sur tous le manege', 'Nib HELULE', '2021-07-14 11:00:00', '2021-07-14 12:00:00', 4);

INSERT INTO public.visitor(
    ticket_number, start_validity, end_validity)
    VALUES (59, '2021-09-30', '2021-10-01'),
    (126, '2021-10-01', '2021-10-02'),
    (258, '2021-10-02', '2021-10-03'),
    (666, '2021-10-03', '2021-10-04');

INSERT INTO public.booking(
	attraction_id, visitor_id, booked_quantity, booked_date)
	VALUES 
    (1, 1, 2, '2021-12-14 12:00:00'), (1, 2, 1, '2022-01-05 09:00:00'),(1, 3,2, '2021-10-10 15:00:00' ),(1, 4, 2, '2021-10-14 10:00:00'),
    (2, 2, 2, '2021-11-18 17:00:00'),(2, 1, 2, '2021-07-14 12:00:00'),(2, 3, 2,'2021-10-10 15:00:00'),(2, 4, 2,'2021-10-14 10:00:00'),
    (3, 3, 2,'2021-11-18 17:00:00'),(3, 2, 2,'2021-07-14 12:00:00'),(3, 3, 2,'2021-10-10 15:00:00'),(3, 4, 2,'2021-10-14 10:00:00'),
    (4, 4, 2,'2021-11-18 17:00:00'),(4, 2, 2,'2021-07-14 12:00:00'),(4, 3, 2,'2021-10-10 15:00:00'),(4, 4, 2,'2021-10-14 10:00:00');

COMMIT;
