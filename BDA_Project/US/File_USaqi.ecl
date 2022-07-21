EXPORT File_USAqi := MODULE
EXPORT Layout := RECORD
    STRING      Date;
    STRING20    CityID;
    UNSIGNED2   AQI;
    END;

EXPORT File := DATASET('~CLASS::SSM::air::usaqi.csv', Layout, CSV);
END;