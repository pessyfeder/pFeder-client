use AppliedBehavioralDB
go
drop table if exists Clients
go
create table dbo.Clients (
    ClientsId int identity primary key,
    FirstName varchar(50) not null constraint ck_Clients_First_Name_cannot_be_blank check(FirstName > ''),
    LastName varchar(500) not null constraint ck_Clients_Last_Name_cannot_be_blank check(LastName > ''),
    Gender char(1) not null check (gender in ('m', 'f')),
    DateOfBirth date not null constraint ck_Clients_DOB_cannot_be_in_future check (DateOfBirth <= convert(date,getdate())),
    DateAdmitted date not null constraint ck_Clients_DateAdmitted_cannot_be_in_before_opening_or_in_future check (DateAdmitted between '2023-09-07' and convert(date,getdate())),
    DateDischarged date null,
    BehavioralLevelAdmittance int not null constraint ck_Clients_BehavioralLevelAdmittance_cannot_be_4 check (BehavioralLevelAdmittance between 1 and 3),
    BehavioralLevelDischarge int constraint ck_Clients_BehavioralLevelDischarge_cannot_be_2_or_3 check (BehavioralLevelDischarge in(1,4)),
    AccompanyingDisorderDesc varchar(255) null constraint ck_Clients_AccompanyingDisorderDesc_cannot_be_blank check(AccompanyingDisorderDesc > ''),
    EmergencyContact1 varchar(100) not null constraint ck_Clients_EmergencyContact1_cannot_be_blank check(EmergencyContact1 > ''),
    Contact1Relationship varchar(50) not null constraint ck_Clients_Contact1Relationship_cannot_be_blank check(Contact1Relationship > ''),
    Contact1Phone varchar(12) not null constraint ck_Clients_Contact1Phone_needs_at_least_9_num check(Contact1Phone like '[1-9][1-9][1-9][-][1-9][1-9][1-9][-][1-9][1-9][1-9]'),
    EmergencyContact2 varchar(100) not null constraint ck_Clients_EmergencyContact2_cannot_be_blank check(EmergencyContact2 > ''),
    Contact2Relationship varchar(50) not null constraint ck_Clients_Contact2Relationship_cannot_be_blank check(Contact2Relationship > ''),
    Contact2Phone varchar(12) not null constraint ck_Clients_Contact2Phone_needs_at_least_9_num check(Contact2Phone like '[1-9][1-9][1-9][-][1-9][1-9][1-9][-][1-9][1-9][1-9]'),
    Para varchar(100) not null constraint ck_Clients_Para_cannot_be_blank check(Para > '')  constraint u_Clients_Para_must_be_unique unique,
    BCBA varchar(100) not null constraint ck_Clients_BCBA_cannot_be_blank check(BCBA > ''),
    --Constraint date admitted after dob, date discharged after date admitted before future
    constraint ck_DateAdmitted_must_be_after_DOB check(DateAdmitted >= DateOfBirth),
    constraint ck_DateDischarged_must_be_between_date_admitted_and_current_date check(DateDischarged between DateAdmitted and convert(date,getdate()))
);
