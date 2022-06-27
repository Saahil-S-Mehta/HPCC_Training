Layout := RECORD
	STRING10 Name;
	INTEGER  Age;
	INTEGER  YOE;
END;

EMP_Records := DATASET([{'Rama',50, 10},
                        {'John',45, 5},
                        {'Joseph',30, 2},
                        {'Friday', 25, 15},
                        {'John', 40, 10},
                        {'Friday', 60, 12},
                        {'Raj',50, 10},
                        {'Jos',45, 5},
                        {'Jai',30, 2},
                        {'Farhan', 25, 15},
                        {'Jojo', 40, 10},
                        {'Rahul', 60, 12},
                        {'Rama',50, 10},
                        {'John',45, 5},
                        {'Mark',30, 2},
                        {'Steve', 25, 15},
                        {'Roger', 40, 10},
                        {'Friday', 60, 12},
                        {'Ram',50, 10},
                        {'Jake',45, 5},
                        {'Jain',30, 2},
                        {'Farhad', 25, 15},
                        {'Jon', 40, 10},
                        {'Rohit', 60, 12}],
                        Layout);

COUNT(EMP_Records);

EMP_AVG:= SUM(EMP_Records,EMP_Records.YOE)/COUNT(EMP_Records);
OUTPUT(EMP_AVG);

EMP_Min := MIN(EMP_Records,EMP_Records.Age);
OUTPUT(EMP_Min);

EMP_Max := MAX(EMP_Records,EMP_Records.Age);
OUTPUT(EMP_Max);

My_File := EMP_Records[..3];
t := TABLE(EMP_Records[..3]);
t;