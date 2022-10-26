INSERT INTO Patients (idPatients, fullName, age, gender, numPass)
VALUES (1, 'Женя Водносков', 20, 'Муж', '322228');

INSERT INTO Patients (idPatients, fullName, age, gender, numPass)
VALUES (2, 'Петя Козюлькин', 16, 'Муж', '123456');

INSERT INTO Patients (idPatients, fullName, age, gender, numPass)
VALUES (3, 'Алина Ватрушкина', 15, 'Жен', '543215');

INSERT INTO Patients (fullName, age, gender, numPass)
VALUES ('Федор Фет', 33, 'Муж', '135790');

INSERT INTO Patients (fullName, age, gender, numPass)
VALUES ('Руслан Закиров', 23, 'Муж', '231673');

INSERT INTO Patients (fullName, age, gender, numPass)
VALUES ('Софья Киселева', 21, 'Жен', '531684');

INSERT INTO Patients (fullName, age, gender, numPass)
VALUES ('Дарья Лебедева', 25, 'Жен', '425261');

INSERT INTO Patients (fullName, age, gender, numPass)
VALUES ('Аким Пак', 12, 'Муж', '228322');

INSERT INTO Patients (fullName, age, gender, numPass)
VALUES ('Казимир Белозеров', 18, 'Муж', '241684');

INSERT INTO Patients (fullName, age, gender, numPass)
VALUES ('Татьяна Иванова', 24, 'Жен', '415726');

INSERT INTO DoctorSpeciality (Speciality)
VALUES ('Лор ');

INSERT INTO DoctorSpeciality (Speciality)
VALUES ('Окулист');

INSERT INTO DoctorSpeciality (Speciality)
VALUES ('Терапевт');

INSERT INTO DoctorSpeciality (Speciality)
VALUES ('Хирург');

INSERT INTO DoctorSpeciality (Speciality)
VALUES ('Эндокринолог');

INSERT INTO DoctorSpeciality (Speciality)
VALUES ('Уролог');

INSERT INTO DoctorSpeciality (Speciality)
VALUES ('Психолог');

INSERT INTO DoctorSpeciality (Speciality)
VALUES ('Нарколог');

INSERT INTO DoctorSpeciality (Speciality)
VALUES ('Стоматолог');

INSERT INTO DoctorSpeciality (Speciality)
VALUES ('Косметолог');


INSERT INTO Doctors (idDoctorSpeciality, fullDocName)
VALUES (1, 'Cаша');

INSERT INTO Doctors (idDoctorSpeciality, fullDocName)
VALUES (2, 'Паша');

UPDATE Doctors
SET fullDocName = 'Паша Техник'
WHERE idDoctor = 2;

UPDATE Doctors
SET fullDocName = 'Cаша Белозеров'
WHERE idDoctor = 1;

INSERT INTO Doctors (idDoctorSpeciality, fullDocName)
VALUES (3, 'Андрей Копийко');

INSERT INTO Doctors (idDoctorSpeciality, fullDocName)
VALUES (4, 'Анатолий Васерман');

INSERT INTO Doctors (idDoctorSpeciality, fullDocName)
VALUES (5, 'Дмитрий Волков');

INSERT INTO Doctors (idDoctorSpeciality, fullDocName)
VALUES (6, 'Евгений Воронин');

INSERT INTO Doctors (idDoctorSpeciality, fullDocName)
VALUES (7, 'Артем Петров');

INSERT INTO Doctors (idDoctorSpeciality, fullDocName)
VALUES (8, 'Василий Уткин');

INSERT INTO Doctors (idDoctorSpeciality, fullDocName)
VALUES (9, 'Виктор Пелевин');

INSERT INTO Doctors (idDoctorSpeciality, fullDocName)
VALUES (10, 'Алекасндр Васильев');

INSERT INTO Doctors (idDoctorSpeciality, fullDocName)
VALUES (4, 'Василий Агафонов');

INSERT INTO Doctors (idDoctorSpeciality, fullDocName)
VALUES (4, 'Арнольд Климов');

INSERT INTO Doctors (idDoctorSpeciality, fullDocName)
VALUES (2, 'Федор Фетов');

INSERT INTO Doctors (idDoctorSpeciality, fullDocName)
VALUES (2, 'Сослан Асбаров');




INSERT INTO DoctorSchedule (idDoctor, VisitDate, VisitBeginning, VisitEnding)
VALUES (1, '2022-10-06', '12:00', '14:00');

INSERT INTO DoctorSchedule (idDoctor, VisitDate, VisitBeginning, VisitEnding)
VALUES (2, '2022-10-08', '14:00', '15:00');

INSERT INTO DoctorSchedule (idDoctor, VisitDate, VisitBeginning, VisitEnding)
VALUES (3, '2022-10-09', '13:00', '14:00');

INSERT INTO DoctorSchedule (idDoctor, VisitDate, VisitBeginning, VisitEnding)
VALUES (4, '2022-10-07', '16:00', '17:00');

INSERT INTO DoctorSchedule (idDoctor, VisitDate, VisitBeginning, VisitEnding)
VALUES (5, '2022-10-14', '15:00', '16:00');

INSERT INTO DoctorSchedule (idDoctor, VisitDate, VisitBeginning, VisitEnding)
VALUES (6, '2022-10-13', '14:00', '15:00');

INSERT INTO DoctorSchedule (idDoctor, VisitDate, VisitBeginning, VisitEnding)
VALUES (7, '2022-10-08', '17:00', '18:00');

INSERT INTO DoctorSchedule (idDoctor, VisitDate, VisitBeginning, VisitEnding)
VALUES (8, '2022-10-23', '9:00', '10:00');

INSERT INTO DoctorSchedule (idDoctor, VisitDate, VisitBeginning, VisitEnding)
VALUES (9, '2022-10-06', '14:00', '15:00');

INSERT INTO DoctorSchedule (idDoctor, VisitDate, VisitBeginning, VisitEnding)
VALUES (10, '2022-10-13', '16:00', '18:00');

INSERT INTO DoctorSchedule (idDoctor, VisitDate, VisitBeginning, VisitEnding)
VALUES (5, '2022-10-25', '13:00', '18:00');

UPDATE DoctorSchedule
SET VisitEnding = '18:00'
WHERE idDoctorSchedule = 9;

INSERT INTO DoctorSchedule (idDoctor, idDoctorSchedule, VisitDate, VisitBeginning, VisitEnding)
VALUES (8, 12, '2022-10-14', '12:00', '16:00');

INSERT INTO DoctorSchedule (idDoctor, idDoctorSchedule, VisitDate, VisitBeginning, VisitEnding)
VALUES (9, 13, '2022-10-15', '15:00', '18:00');

INSERT INTO DoctorSchedule (idDoctor, VisitDate, VisitBeginning, VisitEnding)
VALUES (4, '2022-10-09', '14:00', '17:00');

INSERT INTO DoctorSchedule (idDoctor, VisitDate, VisitBeginning, VisitEnding)
VALUES (4, '2022-10-23', '14:00', '17:00');



INSERT INTO Hours (numb)
VALUES (0);

INSERT INTO Hours (numb)
VALUES (1);

INSERT INTO Hours (numb)
VALUES (2);

INSERT INTO Hours (numb)
VALUES (3);

INSERT INTO Hours (numb)
VALUES (4);

INSERT INTO Hours (numb)
VALUES (5);

INSERT INTO Hours (numb)
VALUES (6);

INSERT INTO Hours (numb)
VALUES (7);

INSERT INTO Hours (numb)
VALUES (8);

INSERT INTO Hours (numb)
VALUES (9);

INSERT INTO Hours (numb)
VALUES (10);

INSERT INTO Attends (idDoctorSchedule, AttendDate, AttendTime)
select schedule,date,hour from timing;









