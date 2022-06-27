IMPORT $;

Accounts        := $.File_Accounts.File;
SumHighCredit   := SUM(Accounts,HighCredit);
SumBalance      := SUM(Accounts,Balance);

EXPORT Val002   := ROUND(SumHighCredit/SumBalance);