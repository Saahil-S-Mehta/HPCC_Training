import visualizer;
import $;

Aqi := $.File_cityCom.File;

Aqi2 := Aqi[..25000];

test := OUTPUT(Aqi2,NAMED('MultiD__test'));
test;
viz_bar := Visualizer.MultiD.Column('bar',,'MultiD__test');
viz_bar;
