IMPORT $;

Persons := $.File_Persons.File;

EXPORT MenInMidwestStatesPersons := Persons(State IN $.Sets.MidwestStates, Gender = 'M');