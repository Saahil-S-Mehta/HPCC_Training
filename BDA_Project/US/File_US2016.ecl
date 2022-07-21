//EXPORT File_US2016 := MODULE
//EXPORT Layout := RECORD
import visualizer;

Layout := RECORD
    STRING    State;
    INTEGER4   weight;
    END;

Aqi := DATASET('~CLASS::SSM::air::usAvg2016.csv', Layout, CSV);

OUTPUT(Aqi);

//END;

test := OUTPUT(Aqi,NAMED('choro__usStates'));
test;
viz_usState := Visualizer.Choropleth.USStates('usStates',,'choro__usStates');
viz_usState;