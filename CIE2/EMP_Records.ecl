EMP_Records := RECORD
    STRING10 Name;
    INTEGER Salary;
    STRING10 Designation; 
END;

EMP_ds := DATASET([{'Rana',10000,'Supervisor'},{'John',12000,'Executive'},{'Joseph',10000,'Supervisor'},{'Friday',20000,'Manager'},{'John',20000,'Manager'},{'Friday',12000,'Executive'}],EMP_Records);

Sorted_EMP := SORT(EMP_ds,Salary);
EMP_Sorted_DD := DEDUP(Sorted_EMP,Salary);
EMP_DD := DEDUP(EMP_ds,Salary);
EMP_DD_Name := DEDUP(Sorted_EMP,Salary,Name);

OUTPUT(Sorted_Emp,NAMED('EmpSorted'));
OUTPUT(EMP_Sorted_DD,NAMED('EmpSortedDedup'));
OUTPUT(EMP_DD,NAMED('EmpDedup'));
OUTPUT(EMP_DD_Name,NAMED('EmpDedupName'));
