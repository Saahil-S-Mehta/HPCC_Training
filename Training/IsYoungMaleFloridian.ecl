IMPORT $;
Persons := $.File_Persons.File;

IsFloridian := Persons.State = 'FL';
IsMale      := Persons.Gender = 'M';
IsBorn80    := Persons.BirthDate[..4] > '1979';

EXPORT IsYoungMaleFloridian :=  IsFloridian AND
                                IsMale AND
                                IsBorn80;