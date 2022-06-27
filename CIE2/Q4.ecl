IMPORT STD;

Layout := RECORD 
    STRING FirstName;
	STRING LastName;
END;

Names := Dataset([{'Saahil', 'Mehta'}, {'Akshay', 'Shankar'}], Layout);

Layout uppercase(Layout Rec) := TRANSFORM
    SELF.FirstName := STD.Str.ToUpperCase(Rec.FirstName);
	SELF.LastName := STD.Str.ToUpperCase(Rec.LastName);
end;

UC := PROJECT(Names, uppercase(LEFT));
output(UC);

