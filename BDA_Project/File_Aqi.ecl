EXPORT File_Aqi := MODULE
EXPORT Layout := RECORD
    STRING20    City;
    STRING      Date;
    DECIMAL5_2  PM2;
    DECIMAL5_2  PM10;
    DECIMAL5_2  NO;
    DECIMAL5_2  NO2;
    DECIMAL5_2  NOx;
    DECIMAL5_2  NH3;
    DECIMAL5_2  CO;
    DECIMAL5_2  SO2;
    DECIMAL5_2  O3;
    DECIMAL5_2  Benzene;
    DECIMAL5_2  Toluene;
    DECIMAL5_2  Xylene;
    UNSIGNED2   AQI;
    STRING20    AQI_Bucket;
END;

EXPORT File := DATASET('~CLASS::SSM::poll::aqi.csv', Layout, CSV);
END;