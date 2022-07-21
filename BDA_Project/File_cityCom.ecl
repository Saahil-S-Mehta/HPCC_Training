EXPORT File_cityCom:= MODULE
EXPORT Layout := RECORD
    STRING20    City;
    DECIMAL5_2  NO2;
    DECIMAL5_2  NH3;
    DECIMAL5_2  CO;
    DECIMAL5_2  SO2;
END;

EXPORT File := DATASET('~CLASS::SSM::poll::citycom.csv', Layout, CSV);
END;