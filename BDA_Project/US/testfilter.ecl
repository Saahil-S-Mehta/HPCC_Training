import $;


r := RECORD
    $.File_USaqi.File.Date;
    INTEGER avg := COUNT(GROUP);
END;

OUTPUT(TABLE($.File_USaqi.File,r,Date));

//EXPORT testfilter := TABLE($.File_USaqi.File,r,Date);
