USE alumni;
-- 3
Desc college_a_hs;
Desc college_a_se;
Desc college_a_sj;
Desc college_b_hs;
Desc college_b_se;
Desc college_b_sj;
-- 4 in python
-- 5 in excel
-- 6
CREATE OR REPLACE VIEW college_a_hs_v AS SELECT * FROM college_a_hs WHERE RollNo IS NOT NULL AND 
LastUpdate IS NOT NULL AND Name IS NOT NULL AND 
FatherName IS NOT NULL AND MotherName IS NOT NULL AND
 Batch IS NOT NULL AND Degree IS NOT NULL AND PresentStatus IS NOT NULL AND 
 HSDegree IS NOT NULL AND EntranceExam IS NOT NULL AND Institute IS NOT NULL AND Location IS NOT NULL;
 SELECT * FROM college_a_hs_v;
 -- 7
 CREATE OR REPLACE VIEW college_a_se_v AS SELECT * FROM college_a_se WHERE RollNo IS NOT NULL AND 
LastUpdate IS NOT NULL AND Name IS NOT NULL AND 
FatherName IS NOT NULL AND MotherName IS NOT NULL AND
 Batch IS NOT NULL AND Degree IS NOT NULL AND PresentStatus IS NOT NULL AND 
 Organization IS NOT NULL AND Location IS NOT NULL;
 SELECT * FROM college_a_se_v;
 -- 8
 CREATE OR REPLACE VIEW college_a_sj_v AS SELECT * FROM college_a_sj WHERE RollNo IS NOT NULL AND 
LastUpdate IS NOT NULL AND Name IS NOT NULL AND 
FatherName IS NOT NULL AND MotherName IS NOT NULL AND
 Batch IS NOT NULL AND Degree IS NOT NULL AND PresentStatus IS NOT NULL AND 
 Organization IS NOT NULL AND Designation IS NOT NULL AND Location IS NOT NULL;
 SELECT * FROM college_a_sj_v;
 -- 9
 CREATE OR REPLACE VIEW college_b_hs_v AS SELECT * FROM college_b_hs WHERE RollNo IS NOT NULL AND 
LastUpdate IS NOT NULL AND Name IS NOT NULL AND 
FatherName IS NOT NULL AND MotherName IS NOT NULL AND Branch IS NOT NULL AND
 Batch IS NOT NULL AND Degree IS NOT NULL AND PresentStatus IS NOT NULL AND 
 HSDegree IS NOT NULL AND EntranceExam IS NOT NULL AND Institute IS NOT NULL AND Location IS NOT NULL;
 SELECT * FROM college_b_hs_v;
 -- 10
 CREATE OR REPLACE VIEW college_b_se_v AS SELECT * FROM college_b_se WHERE RollNo IS NOT NULL AND 
LastUpdate IS NOT NULL AND Name IS NOT NULL AND 
FatherName IS NOT NULL AND MotherName IS NOT NULL AND Branch IS NOT NULL AND
 Batch IS NOT NULL AND Degree IS NOT NULL AND PresentStatus IS NOT NULL AND 
 Organization IS NOT NULL AND Location IS NOT NULL;
 SELECT * FROM college_b_se_v;
 -- 11
 CREATE OR REPLACE VIEW college_b_sj_v AS SELECT * FROM college_b_sj WHERE RollNo IS NOT NULL AND 
LastUpdate IS NOT NULL AND Name IS NOT NULL AND 
FatherName IS NOT NULL AND MotherName IS NOT NULL AND Branch IS NOT NULL AND
 Batch IS NOT NULL AND Degree IS NOT NULL AND PresentStatus IS NOT NULL AND 
 Organization IS NOT NULL AND Designation IS NOT NULL AND Location IS NOT NULL;
 SELECT * FROM college_b_sj_v;
 -- 12
 CALL new_procedure;
 -- 13 Excel ss attached
 -- 14
 SET @Name="";
 CALL get_name_collegeA(@Name);
 SELECT @Name Name;
 -- 15
 SET @Name="";
 CALL get_name_collegeB(@Name);
 SELECT @Name Name;
 -- 16
SELECT 
    'Higher Studies',
    (SELECT 
            COUNT(*)
        FROM
            college_a_hs) / ((SELECT 
            COUNT(*)
        FROM
            college_a_hs) + (SELECT 
            COUNT(*)
        FROM
            college_a_se) + (SELECT 
            COUNT(*)
        FROM
            college_a_sj)) * 100 College_A_Percentage,
    (SELECT 
            COUNT(*)
        FROM
            college_b_hs) / ((SELECT 
            COUNT(*)
        FROM
            college_b_hs) + (SELECT 
            COUNT(*)
        FROM
            college_b_se) + (SELECT 
            COUNT(*)
        FROM
            college_b_sj)) * 100 College_B_Percentage

UNION SELECT 
    'Self Employed',
    (SELECT 
            COUNT(*)
        FROM
            college_a_se) / ((SELECT 
            COUNT(*)
        FROM
            college_a_se) + (SELECT 
            COUNT(*)
        FROM
            college_a_hs) + (SELECT 
            COUNT(*)
        FROM
            college_a_sj)) * 100 College_A_Percentage,
    (SELECT 
            COUNT(*)
        FROM
            college_b_se) / ((SELECT 
            COUNT(*)
        FROM
            college_b_hs) + (SELECT 
            COUNT(*)
        FROM
            college_b_se) + (SELECT 
            COUNT(*)
        FROM
            college_b_sj)) * 100 College_B_Percentage

UNION SELECT 
    'Service Job',
    (SELECT 
            COUNT(*)
        FROM
            college_a_sj) / ((SELECT 
            COUNT(*)
        FROM
            college_a_hs) + (SELECT 
            COUNT(*)
        FROM
            college_a_se) + (SELECT 
            COUNT(*)
        FROM
            college_a_sj)) * 100 College_A_Percentage,
    (SELECT 
            COUNT(*)
        FROM
            college_b_sj) / ((SELECT 
            COUNT(*)
        FROM
            college_b_hs) + (SELECT 
            COUNT(*)
        FROM
            college_b_se) + (SELECT 
            COUNT(*)
        FROM
            college_b_sj)) * 100 College_B_Percentage;

 
 
 

 
 
 

