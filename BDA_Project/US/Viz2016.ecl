import visualizer;
import $;

/*r := RECORD
    $.File_US2016.File.CityID;
    INTEGER avg := AVE($.File_US2016.File.AQI);
END;*/

Aqi := $.File_US2016.File;

test := OUTPUT(Aqi,NAMED('choro__usStates'));
test;
viz_usState := Visualizer.Choropleth.USStates('usStates',,'choro__usStates');
viz_usState;