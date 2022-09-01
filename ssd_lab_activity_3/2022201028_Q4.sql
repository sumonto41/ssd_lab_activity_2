select DEPT_LOCATIONS.Dnumber, Dname, count(Dlocation) as Number_of_location from DEPARTMENT join DEPT_LOCATIONS on DEPARTMENT.Dnumber=DEPT_LOCATIONS.Dnumber join (select Mgr_ssn, count(*) as cnt from DEPARTMENT join DEPENDENT on DEPARTMENT.Mgr_ssn=DEPENDENT.Essn and DEPENDENT.Sex="F" group by Mgr_ssn) SUB on DEPARTMENT.Mgr_ssn=SUB.Mgr_ssn and cnt>=2 group by DEPT_LOCATIONS.Dnumber;