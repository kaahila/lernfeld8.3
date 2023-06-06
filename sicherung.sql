-- Insert into Auto table
INSERT INTO autos (id, kennzeichen, hersteller, typ, baujahr, ps, ccm, farbe, kraftstoff, sitzplaetze, versicherungsnummer, tuev, asu, preisgruppe_id)
VALUES
(2, 'KS R666', 'Renault', 'Megane', '2002-01-01', 100, 1596, 'weiß', 'Diesel', 5, '3497856', '2005-05-01', '2005-05-01', 2),
(3, 'KS JV417', 'Lancia', 'Thema', '2004-01-01', 145, 1999, 'schwarz', 'Normal', 5, '3584,247', '2007-08-01', '2007-08-01', 4),
(4, 'KS JS811', 'VW', 'Golf', '2003-01-01', 55, 1263, 'weiß', 'Normal', 5, '655/060455-Q', '2005-11-01', '2005-11-01', 2),
(5, 'KS TP14', 'Honda', 'CRX', '2006-01-01', 124, 1994, 'rot', 'Super', 2, '2,5428414', '2007-06-01', '2007-06-01', 4),
(6, 'KS K2863', 'Ford', 'Focus', '2006-01-01', 90, 1590, 'blau', 'Super', 5, '384+90+6467947', '2007-10-01', '2007-10-01', 3),
(7, 'KS T1010', 'VW', 'Polo', '2001-01-01', 45, 1035, 'tornadorot', 'Normal', 5, '9874684947', '2005-06-01', '2005-06-01', 1),
(8, 'KS KV23', 'Ford', 'Focus', '2006-01-01', 54, 1597, 'matschschwarz', 'Diesel', 5, '654684354', '2007-09-01', '2007-09-01', 2),
(9, 'KS MB220', 'Mercedes Benz', '220 S', '2006-01-01', 123, 2156, 'silbergrau', 'Super', 5, '65846454', '2007-04-01', '2007-04-01', 5),
(10, 'KS CE221', 'VW', 'Golf', '2007-01-01', 75, 1596, 'rot', 'Normal', 5, '55514-B1124', '2004-05-01', '2004-05-01', 4);

-- Insert into Extras table
INSERT INTO extras (bezeichnung)
VALUES
('Radio'),
('Alufelgen');



-- Insert into Zubehoer table
INSERT INTO zubehoer (bezeichnung)
VALUES
('Hupe'),
('el. Fensterheber'),
('Schiebedach'),
('defektes Schiebedach'),
('Halbschalensitze'),
('Navi'),
('Zentralverriegelung');




-- Insert into AutoExtra table
INSERT INTO auto_extra (extra_id, auto_id)
VALUES
(1, 2),
(1, 3),
(1, 4),
(2, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 7),
(1, 8),
(3, 8),
(1, 9),
(1, 10);

-- Insert into AutoZubehoer table
INSERT INTO auto_zubehoer (zubehoer_id, auto_id)
VALUES
(1, 3),
(2, 3),
(3, 4),
(5, 4),
(6, 5),
(4, 5),
(6, 6),
(7, 6),
(7, 8),
(6, 9);

INSERT INTO laender (id, bezeichnung)
VALUES
(1, 'Deutschland'),
(2, 'Finnland'),
(3, 'Niederlande'),
(4, 'Österreich');

INSERT INTO Adressen (strasse, nummer, ort_id, land_id)
VALUES
('Großkopf', '4', 1, 1),
('Fürsterstrasse', '56', 1, 1),
('Westendstrasse', '92', 3, 1),
('Bonner Strasse', '76', 3, 1),
('Schützenweg', '12', 5, 1),
('Lincoln Allee', '511', 6, 1),
('Rheinaue', '13', 7, 1),
('Patersonstrasse', '14', 8, 1),
('Bauernpfad', '4', 'Brilon', 1),
('Küsterstrasse', '12', 10, 1),
('Steinweg', '42', 11, 1),
('Kentelerstrasse', '99', 12, 1),
('Allerheiligenstrasse', '81', 13, 1),
('Königstrasse', '210', 14, 1),
('Postgasse', '77', 15, 1),
('Pieschener Allee', '23', 16, 1),
('Niehler Kirchweg', '65', 17, 1),
('Hemingway Strasse', '280', 18, 1),
('Müllerweg', '78', 18, 1),
('Blaubergstrasse', '89', 19, 1),
('Breinhölzer Allee', '210', 20, 1),
('Frühlingsweg', '30', 21, 1),
('Herrmannstrasse', '12', 22, 1),
('Heubnerstrasse', '5', 22, 1),
('Kirchstrasse', '70', 23, 1),
('Seestrasse', '144', 24, 1),
('Schönsteinstrasse', '18', 25, 1),
('Königsallee', '111', 26, 1),
('Mühlengraben', '12', 27, 1),
('Dover Platz', '14', 28, 1),
('Nordstrasse', '8', 29, 1),
('Elmshornerstr.', '125', 30, 1),
('Hauptstrasse', '82', 31, 1),
('Schweizer Allee', '452', 32, 1),
('Am Krongut', '12', 33, 1),
('Am Moosfenn', '43', 33, 1),
('Talstrasse', '18', 34, 1),
('Henry-Ford-Strasse', '1', 35, 1),
('Obere Berstrasse', '193', 36, 1),
('Merlistrasse', '41', 37, 1),
('Heiligendamm', '13', 38, 1),
('Große Sandkaul', '72', 39, 1),
('Kleinstrasse', '11', 40, 1),
('Hauptstrasse', '87', 41, 1),
('Oyi Keilasatama', '21', 42, 2),
('Tapulikuja', '56', 43, 2),
('John Stenbergin Ranta', '112', 44, 2),
('P.O. Box', '113', 44, 2),
('Koneenkatu', '76', 45, 2),
('Kiviharjuntie', '198', 46, 2),
('P.O. Box', '416', '47', 2),
('Spoordreef', '87', 48, 3),
('Noordgeest', '21', 49, 3),
('Vlamingstraat', '3', 50, 3),
('Nieuwe Kade', '18', 51, 3),
('Slachtedijk', '71', 52, 3),
('Bedafseweg', '108', 53, 3),
('Kaldenkerkweg', '56', 54, 3),
('Hengelder Straat', '6', 55, 3),
('Murielstrasse', '47', 56, 4),
('Bischofstrasse', '139', 57, 4),
('Seestrasse', '59', 66, 4),
('Walstrasse', '124', 66, 4),
('König-Edward-Platz', '3', 16, 4),
('Kirchplatz', '36', 16, 4),
('Annenstrasse', '63', 62, 4),
('Hellbrunner Allee', '11', 62, 4),
('Kartnerstrasse', '28', 65, 4),
('Stephansplatz', '9', 66, 4);

INSERT INTO orte (id, plz, ort) VALUES (1, 59823, 'Arnsberg');
INSERT INTO orte (id, plz, ort) VALUES (3, 12557, 'Berlin');
INSERT INTO orte (id, plz, ort) VALUES (5, 59909, 'Bestwig');
INSERT INTO orte (id, plz, ort) VALUES (6, 53117, 'Bonn');
INSERT INTO orte (id, plz, ort) VALUES (7, 56154, 'Boppard');
INSERT INTO orte (id, plz, ort) VALUES (8, 38100, 'Braunschweig');
INSERT INTO orte (id, plz, ort) VALUES (9, 59929, 'Brilon');
INSERT INTO orte (id, plz, ort) VALUES (10, 49661, 'Cloppenburg');
INSERT INTO orte (id, plz, ort) VALUES (11, 27476, 'Cuxhaven');
INSERT INTO orte (id, plz, ort) VALUES (12, 89407, 'Dillingen');
INSERT INTO orte (id, plz, ort) VALUES (13, 46537, 'Dinslaken');
INSERT INTO orte (id, plz, ort) VALUES (14, 46282, 'Dorsten');
INSERT INTO orte (id, plz, ort) VALUES (15, 44319, 'Dortmund');
INSERT INTO orte (id, plz, ort) VALUES (16, 1067, 'Dresden');
INSERT INTO orte (id, plz, ort) VALUES (17, 47138, 'Duisburg');
INSERT INTO orte (id, plz, ort) VALUES (18, 40221, 'Düsseldorf');
INSERT INTO orte (id, plz, ort) VALUES (19, 60599, 'Frankfurt');
INSERT INTO orte (id, plz, ort) VALUES (20, 83395, 'Freilassing');
INSERT INTO orte (id, plz, ort) VALUES (21, 37085, 'Göttingen');
INSERT INTO orte (id, plz, ort) VALUES (22, 34117, 'Kassel');
INSERT INTO orte (id, plz, ort) VALUES (23, 50670, 'Köln');
INSERT INTO orte (id, plz, ort) VALUES (24, 76829, 'Landau');
INSERT INTO orte (id, plz, ort) VALUES (25, 23569, 'Lübeck');
INSERT INTO orte (id, plz, ort) VALUES (26, 45770, 'Marl');
INSERT INTO orte (id, plz, ort) VALUES (27, 59872, 'Meschede');
INSERT INTO orte (id, plz, ort) VALUES (28, 47447, 'Moers');
INSERT INTO orte (id, plz, ort) VALUES (29, 41236, 'Mönchengladbach');
INSERT INTO orte (id, plz, ort) VALUES (30, 41469, 'Neuss');
INSERT INTO orte (id, plz, ort) VALUES (31, 89231, 'Neu-Ulm');
INSERT INTO orte (id, plz, ort) VALUES (32, 87561, 'Oberstorf');
INSERT INTO orte (id, plz, ort) VALUES (33, 14469, 'Potsdam');
INSERT INTO orte (id, plz, ort) VALUES (34, 14478, 'Potsdam');
INSERT INTO orte (id, plz, ort) VALUES (35, 40885, 'Ratingen');
INSERT INTO orte (id, plz, ort) VALUES (36, 72770, 'Reutlingen');
INSERT INTO orte (id, plz, ort) VALUES (37, 29614, 'Soltau');
INSERT INTO orte (id, plz, ort) VALUES (38, 70567, 'Stuttgart');
INSERT INTO orte (id, plz, ort) VALUES (39, 54295, 'Trier');
INSERT INTO orte (id, plz, ort) VALUES (40, 53842, 'Troisdorf');
INSERT INTO orte (id, plz, ort) VALUES (41, 59955, 'Winterberg');
INSERT INTO orte (id, plz, ort) VALUES (42, 38424, 'Wolfsburg');
INSERT INTO orte (id, plz, ort) VALUES (43, 2150, 'Espoo');
INSERT INTO orte (id, plz, ort) VALUES (44, 30100, 'Forssa');
INSERT INTO orte (id, plz, ort) VALUES (45, 530, 'Helsinki');
INSERT INTO orte (id, plz, ort) VALUES (46, 531, 'Helsinki');
INSERT INTO orte (id, plz, ort) VALUES (47, 5801, 'Hyvinkä');
INSERT INTO orte (id, plz, ort) VALUES (48, 90220, 'Oulu');
INSERT INTO orte (id, plz, ort) VALUES (49, 65101, 'Vaasa');
INSERT INTO orte (id, plz, ort) VALUES (50, 1315, 'Almere');
INSERT INTO orte (id, plz, ort) VALUES (51, 4600, 'Bergen op Zoom');
INSERT INTO orte (id, plz, ort) VALUES (52, 2611, 'Delft');
INSERT INTO orte (id, plz, ort) VALUES (53, 9001, 'Grou');
INSERT INTO orte (id, plz, ort) VALUES (54, 8501, 'Joure');
INSERT INTO orte (id, plz, ort) VALUES (55, 5406, 'Uden');
INSERT INTO orte (id, plz, ort) VALUES (56, 5913, 'Venlo');
INSERT INTO orte (id, plz, ort) VALUES (57, 6900, 'Zevenaar');
INSERT INTO orte (id, plz, ort) VALUES (58, 9020, 'Klagenfurt');
INSERT INTO orte (id, plz, ort) VALUES (59, 9900, 'Lienz');
INSERT INTO orte (id, plz, ort) VALUES (60, 6020, 'Innsbruck');
INSERT INTO orte (id, plz, ort) VALUES (61, 4020, 'Linz');
INSERT INTO orte (id, plz, ort) VALUES (62, 5020, 'Salzburg');
INSERT INTO orte (id, plz, ort) VALUES (63, 9500, 'Villach');
INSERT INTO orte (id, plz, ort) VALUES (64, 1020, 'Wien');




INSERT INTO kunden (nachname, vorname, geburtsdatum, adresse_id)
VALUES
 ('Blotzek', 'Ulrich', '1965-02-12', 1),
 ('Schatter', 'Peter', '1987-12-01', 2),
 ('Wojack', 'Albert', '1964-05-04', 3),
 ('Virtanen', 'Veera', NULL, 4),
 ('Hämäläinen', 'Ahvo', NULL, 5),
 ('Huisman', 'Fenna', NULL, 6),
 ('Prins', 'Lieke', NULL, 7),
 ('David', 'Paula', NULL, 8),
 ('Hardiff', 'Joseph', NULL, 9),
 ('Petri', 'Laura', NULL, 10),
 ('Jakob', 'Volker', NULL, 11),
 ('Jederman', 'Anna', NULL, 12),
 ('Simonsen', 'Elisbeth', NULL, 13),
 ('Valerien', 'Nina', NULL, 14),
 ('Bartos', 'Jürgen', NULL, 15),
 ('Karter', 'Wilhelm', NULL, 16),
 ('Kaut', 'Klara', NULL, 17),
 ('Schmitt', 'Rosa', NULL, 18),
 ('Goldberg', 'Jan', NULL, 19),
 ('Melone', 'Enrico', NULL, 20),
 ('Niemann', 'Roberta', NULL, 21),
 ('Konzack', 'Jens', NULL, 22),
 ('Bennstock', 'Moritz', NULL, 23),
 ('Hauken', 'Bert', NULL, 24),
 ('Leber', 'Brigitte', NULL, 25),
 ('Linn', 'Elizabeth', NULL, 26),
 ('Schmidt', 'Rebecca', NULL, 27),
 ('Estes', 'Rita', NULL, 28),
 ('Margelt', 'Stephan', NULL, 29),
 ('Sennhart', 'Isabel', NULL, 30),
 ('Oberein', 'Sepp', NULL, 31),
 ('Harrmann', 'Axel', NULL, 32),
 ('Falter', 'Walter', NULL, 33),
 ('Suleiman', 'Said', NULL, 34),
 ('Wilnsdorf', 'Rudolf', NULL, 35),
 ('Sott', 'Martin', NULL, 36),
 ('Goldmann', 'Frank', NULL, 37),
 ('Kahn', 'Robert', NULL, 38),
 ('Moran', 'Herbert', NULL, 39),
 ('Seifferd', 'Konrad', NULL, 40),
 ('Schulz', 'Heike', NULL, 41),
 ('Fischer', 'Maximilian', NULL, 42),
 ('Massi', 'Andrea', NULL, 43),
 ('Ochsenknecht', 'Ludwig', NULL, 44),
 ('Hicks', 'Richard', '21.06.1991', 45),
 ('Thomas', 'Erika', '30.03.1974', 46),
 ('Müller', 'Paul', NULL, 47),
 ('Pisa', 'Terri', NULL, 48),
 ('Schnettler', 'Susanne', NULL, 49),
 ('Sieper', 'Herbert', NULL, 50),
 ('Nieminen', 'Lilja', NULL, 51),
 ('Mäkinen', 'Viivi', '17.08.1971', 52),
 ('Koskinen', 'Jari', '08.05.1987', 53),
 ('Laine', 'Jalo', NULL, 54),
 ('Mäkelä', 'Elsa', NULL, 55),
 ('Smits', 'Isa', NULL, 56),
 ('Koster', 'Sanne', NULL, 57),
 ('Driessen', 'Jayden', NULL, 58),
 ('de Graaf', 'Levi', NULL, 59),
 ('Hoekstra', 'Ruben', '21.01.1970', 60),
 ('Molenaar', 'Thijs', '09.08.1962', 61),
 ('Carthers', 'Thilo', NULL, 62),
 ('Mittelmann', 'Cornelia', NULL, 63),
 ('Hansmair', 'Rita', NULL, 64),
 ('Linden', 'Bert', NULL, 65),
 ('Gant', 'Eugen', NULL, 66),
 ('Langl', 'Alois', NULL, 67),
 ('Fiocchi', 'Belinda', NULL, 68),
 ('Dunker', 'Johannes', NULL, 69),
 ('Fescher', 'Robert', NULL, 70),
 ('Müller', 'Thomas', NULL, 71),
 ('Hart', 'Amanda', NULL, 72),
 ('Haffermann', 'Karl', NULL, 73),
 ('Günzl', 'Regin', NULL, 74),
 ('Orr', 'Andreas', NULL, 75);

INSERT INTO preisgruppen (id, eur_tag, eur_km, eur_stunde) VALUES (2, 100, 1000, 10000);

INSERT INTO verleihdaten (id, ausleihdatum, rueckgabedatum, start_km, end_km, auto_id, personal_id, kunde_id) VALUES (1, '1964-05-05', '1964-01-04', 23, 123, 2, 1, 2);

