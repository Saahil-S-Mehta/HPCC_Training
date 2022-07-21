import visualizer;

Aqi := DATASET([
    {'AL', 64},
    {'AL', 22},
    {'AK', 47},
    {'AZ', 1}],
    {STRING State, INTEGER4 weight}
);


test := OUTPUT(Aqi,NAMED('choro__usStates'));
test;
viz_usState := Visualizer.Choropleth.USStates('usStates',,'choro__usStates');
viz_usState;