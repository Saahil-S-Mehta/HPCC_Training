IMPORT STD;

Layout := RECORD
	INTEGER  Year;
	STRING10  Brand;
    STRING10  Status;
    INTEGER  Price;
    INTEGER  Remake;
END;




Cars := DATASET([
    {2008,'Ford','Clean',10000,2008},
    {2008,'WX','Mid',12000,2008},
    {2008,'JRP','Mid',10000,2018},
    {2008,'Ford','Dirty',15000,2008},
    {2008,'Ford','Dirty',20000,2018},
    {2009,'Ford','Dirty',10000,2008}],Layout);

OUTPUT(Cars);

Cars_2008 := Cars(Year=2008);
OUTPUT(Cars_2008);

Cars_2008sortedMake := SORT(Cars_2008, Brand);
OUTPUT(Cars_2008sortedMake);

Cars2008_notClean := Cars_2008(Status != 'Clean');
OUTPUT(Cars2008_notClean);

Cars_sortedMake := SORT(Cars2008_notClean, -Brand);
OUTPUT(Cars_sortedMake);

CarsPriced := Cars(Price <= 15000 AND Price >= 10000);
Cars_2018Remake := CarsPriced(Remake >= 2018);
OUTPUT(Cars_2018Remake);