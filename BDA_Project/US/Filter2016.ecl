import $;


r := RECORD
    $.File_US2016.File.CityID;
    INTEGER avg := AVE($.File_US2016.File.AQI);
END;

EXPORT filter2016 := TABLE($.File_US2016.File,r,CityID);