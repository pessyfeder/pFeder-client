use AppliedBehavioralDB
go

delete Clients
go

insert into clients
    (FirstName, LastName, Gender, DateOfBirth, DateAdmitted, DateDischarged, BehavioralLevelAdmittance, BehavioralLevelDischarge, AccompanyingDisorderDesc,
    EmergencyContact1, Contact1Relationship, Contact1Phone, EmergencyContact2, Contact2Relationship, Contact2Phone, Para, BCBA)
values
    ('Chaim', 'Klein', 'm', '2015-03-14', '2023-09-07', '2023-10-15', 2, 1, null, 'Mrs. Miriam Klein', 'Mother', '123-456-789', 'Mr. Yaakov Klein', 'Father', '321-654-987', 'David Levy', 'Sarah Goldstein'),
    ('Shifra', 'Minsk', 'f', '2017-01-11', '2023-11-22', null, 3, null, 'ADHD', 'Mrs. Esther Minsk', 'Mother', '147-258-369', 'Mr. Efraim Minsk', 'Father', '741-852-963', 'Rachel Cohen', 'Samuel Green'),
    ('Eli', 'Jacobowitz', 'm', '2020-04-29', '2023-09-15', '2024-09-10', 3, 4, null, 'Mrs. Yocheved Jocobowitz', 'Mother', '142-753-869', 'Mr. Yisrael Jacobowitz', 'Father', '986-357-241', 'Rebecca Stein', 'Jacob Friedman'),
    ('Chezki', 'Gross', 'm', '2019-05-06', '2023-09-07', '2023-12-01', 1, 1, 'OCD', 'Mrs. Malki Gross', 'Mother', '789-123-456', 'Mr. Yitzchak Gross', 'Father', '125-698-743', 'Daniel Rosen', 'Michael Abrams'),
    ('Esther', 'Katz', 'f', '2019-08-31', '2024-08-05', null, 3, null, null, 'Mrs. Shifra Katz', 'Mother', '741-963-852', 'Mr. Elchonon Katz', 'Father', '987-321-465', 'Hannah Levy', 'Jonathan Davis'),
    ('Yehudis', 'Ganz', 'f', '2017-02-11', '2023-09-08', '2023-12-02', 3, 4, null, 'Mrs. Mindel Ganz', 'Mother', '454-787-121', 'Mr. Ahron Ganz', 'Father', '989-656-321', 'Aaron Katz', 'David Fischer'),
    ('Shlomo', 'Fried', 'm', '2016-09-19', '2024-9-12', null, 1, null, 'ADHD', 'Mrs. Avigail Fried', 'Mother', '747-414-858', 'Mr. Bentzion Fried', 'Father', '525-858-963', 'Emily Cohen', 'Joshua Rosen');


select *
from clients