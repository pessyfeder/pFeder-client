
-- 1) For the staff, show me a list of all clients still in the center, presented as: Full Name, Gender, Date of Birth, Emergency Contact 1, Emergency Contact 2, BCBA, Para.
-- Format the emergency contacts as follows: Contact Name, Relationship: Number
select concat(FirstName, ' ', LastName) as FullName, c.Gender, c.DateOfBirth,
     concat(c.EmergencyContact1, ', ', c.Contact1Relationship, ': ', c.Contact1Phone) as Contact1,
    concat(c.EmergencyContact2, ', ', c.Contact2Relationship, ': ', c.Contact2Phone) as Contact2,
     c.BCBA, c.Para
from Clients c 
where c.DateDischarged is null


-- 2) Track each the progress of each discharged child by comparing the behavioral performance level at admittance and discharge. 
-- Calculate the difference in level at discharge and admittance, and then record it as follows: 
-- 0 - no progress
-- 1 - minimal progress
-- 2 - some progress 
-- 3 - major progress
-- negative - regression
-- Record the text description of the progress level based on the number.
-- Also show the text description of each child's behavioral performance level at admittance and at discharge, as well as how many days they were in the center.

select concat(c.FirstName, ' ', c.LastName) as FullName, 
    case c.BehavioralLevelAdmittance
        when 1 then 'extremely disregulated'
        when 2 then 'disregulated'
        else 'moderately disregulated' end as PerformanceLevelAdmittance,
    case c.BehavioralLevelDischarge
        when 1 then 'extremely disregulated'
        else 'regulated' end as PerformanceLevelDischarge,
    case c.BehavioralLevelDischarge - c.BehavioralLevelAdmittance
when 0 then 'no progress'
when 1 then 'minimal progress'
when 2 then 'some progress'
when 3 then 'major progress'
else 'regression' end as Progress,
datediff(day, c.DateAdmitted, c.DateDischarged) as DaysInCenter
from Clients c
where c.DateDischarged is not null 

-- 3) For clients who have already been discharged, show the average, minimum, and max progress made per days in the center.
select datediff(day, c.DateAdmitted, c.DateDischarged) as DaysInCenter,
    avg(c.BehavioralLevelDischarge - c.BehavioralLevelAdmittance) as AverageProgress, 
    min(c.BehavioralLevelDischarge - c.BehavioralLevelAdmittance) as MinProgress, 
    max(c.BehavioralLevelDischarge - c.BehavioralLevelAdmittance) as MaxProgress
from Clients c
where c.DateDischarged is not null
group by datediff(day, c.DateAdmitted, c.DateDischarged)




