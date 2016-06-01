

CREATE TABLE c9.acolytes
    (`id` int NOT NULL auto_increment, `firstname` varchar(255), `lastname` varchar(255), PRIMARY KEY(id))
;
    
INSERT INTO c9.acolytes
    (`id`, `firstname`, `lastname`)
VALUES
    (1, 'Jo', 'Eil'),
    (2, 'Jo', 'Bos'),
    (3, 'Jo', 'Pal'),
    (4, 'Ni', 'Jerg'),
    (5, 'Sa', 'Mich'),
    (6, 'Ya', 'Stof'),
    (7, 'Flo', 'Beck')
;

CREATE TABLE c9.timeslots
  (`id` int NOT NULL auto_increment, `start_time` TIME NOT NULL, `end_time` TIME NOT NULL, PRIMARY KEY(id))
;
INSERT INTO c9.timeslots
 (`id`, `start_time`, `end_time`)
VALUES
 (1, '16:30:00', '17:30:00'),
 (2, '11:30:00', '12:30:00')
;
CREATE TABLE c9.masses
    (`id` int NOT NULL auto_increment, `massdate` date NOT NULL, `timeslot_id` int NOT NULL, PRIMARY KEY(id), FOREIGN KEY(`timeslot_id`) references c9.timeslots(id))
;
    
INSERT INTO c9.masses
    (`id`, `massdate`, `timeslot_id`)
VALUES
    (1, '2016-04-30', 1),
    (2, '2016-05-01', 2),
    (3, '2016-05-07', 1),
    (4, '2016-05-08', 2),
    (5, '2016-05-14', 1),
    (6, '2016-05-15', 2),
    (7, '2016-05-21', 1),
    (8, '2016-05-22', 2),
    (9, '2016-05-28', 1),
    (10, '2016-05-29',2)
;
