Layout_stu := RECORD
   STRING20 usn;
   STRING10 name;
   UNSIGNED5 cgpa;
 END;
 
 Student_data := DATASET([{'1RV20CS416','Raj',7.2},
                          {'1RV20CS416','Raj',7.2},
                          {'1RV20CS416','Raj',7.2},
                          {'1RV20CS416','Raj',7.2},
                          {'1RV20CS416','Raj',7.2}],Layout_stu);
                          
OUTPUT(Student_data);