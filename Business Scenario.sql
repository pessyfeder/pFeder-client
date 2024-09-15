/*
1) Business description:

	I run a center for autistic children where we help manage their behavioral health using Applied Behavioral Analysis.
	I'd like to keep a general ledger to record client information as they pass through my center.
    
    We need to record the client's first and last name, as well as gender (recorded as "m" for male or "f" from female) and date of birth. 
    
    We also need to keep records of when each client was admitted and, when applicable, discharged.
	
    We would also like to track general behavioral performance level of each child at admittance and at discharge. We use the following ranking system:
        
        1 - extremely disregulated
        2 - disregulated
        3 - moderately disregulated
        4 - regulated

    Obviously, noone is admitted with a ranking of 4. And they are only discharged once they are either completely regulated, or so extremely disregulated that they need a different program.

    Additionally, we need to record if there might be any accompanying disorder, and if so, what it is.
	
	Please also include 2 emergency contacts and their relationship with the child and contact information, as well as the name of the child's para and the BCBA assigned.

2) I'll need the following reports:
		
		1) For the staff, show me a list of all clients still in the center, presented as: Full Name, Gender, Date of Birth, Emergency Contact 1, Emergency Contact 2, BCBA, Para.
        Format the emergency contacts as follows: Contact Name, Relationship: Number

        2) Track each the progress of each discharged child by comparing the behavioral performance level at admittance and discharge. 
		Calculate the difference in level at discharge and admittance, and then record it as follows: 
		0 - no progress
        1 - minimal progress
		2 - some progress 
		3 - major progress
		negative - regression
        Record the text description of the progress level based on the number.
        Also show the text description of each child's behavioral performance level at admittance and at discharge, as well as how many days they were in the center.
		
		3) For clients who have already been discharged, show the average, minimum, and max progress made per days in the center.	

3) Questions and answers:

	Q: Do you ever have more than one para/BCBA working with each child?
	A: No; each child has only one BCBA on top of their case, and one para working directly with them.
	Q: Can you have more than one child per para/BCBA?
	A: Our BCBA's all have multiple cases, but the ratio for paras is always 1:1
	Q: Do you ever set a discharge date for the future?
	A: No; a client is only recorded as discharged once they actually have been discharged.
    Q: When did you open your center and start taking clients?
    A: Our center officially opened on September 7, 2023.

4) Sample Data:

    Chaim, Klein, m, March 14 2015, September 7 2023, march 15 2023, 2, 1, no, not applicable, Mrs. Miriam Klein, Mother, 123-456-789, Mr. Yaakov Klein, Father, 321-654-987, Y. Friedman, L. Abramawitz 
    Shifra, Minsk, f, January 11 2017, November 22 2023, not yet discharged, 4, not applicable, yes, ADHD, Mrs. Esther Minsk, Mother, 147-258-369, Mr. Efraim Minsk, Father, 741-852-963 
    Eli, Jacobowitz, m, April 29 2020, September 15 2023, September 25 2024, 3, 4, no, not applicable, Mrs. Yocheved Jocobowitz, Mother, 142-753-869, Mr. Yisrael Jacobowitz, Father, 986-357-241
    Chezki, Gross, m, May 6 2019, September 7 2023, January 1 2023, 1, 1, yes, OCD, Mrs. Malki Gross, Mother, 789-123-456, Mr. Yitzchak Gross, Father, 125-698-743
    Esther, Katz, f, August 31 2019, August 5 2024, Not yet discharged, 3, not applicable, no, not applicable, Mrs. Shifra Katz, Mother, 741-963-852, Mr. Elchonon Katz, Father, 987-321-465
    Yehudis, Ganz, f, February 11 2017, August 8 2023, December 2 2023, 3, 4, no, not applicable, Mrs. Mindel Ganz, Mother, 454-787-121, Mr. Ahron Ganz, Father, 989-656-321
    Shlomo, Fried, m, September 19 2016, October 12 2024, Not yet discharged, 1, not applicable, yes, ADHD, Mrs. Avigail Fried, Mother, 747-414-858, Mr. Bentzion Fried, Father, 525-858-963

*/