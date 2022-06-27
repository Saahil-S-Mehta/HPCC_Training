IMPORT $;

OUTPUT($.Limit_Value(10,5),NAMED('OverValue5'));//5
OUTPUT($.Limit_Value(12,15),NAMED('ValueOK12'));//12

OUTPUT($.ValidInRange(3,1,10),NAMED('InRange'));
OUTPUT($.ValidInRange(20,1,10),NAMED('OutRange'));
OUTPUT($.ValidInRange(3,10,1),NAMED('Reversed'));
OUTPUT($.ValidInRange(3,-1,10),NAMED('Negative'));