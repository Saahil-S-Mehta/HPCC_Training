IMPORT $;

SetDS       := DATASET($.Sets.AllStates,{STRING2 State});
SortedSet   := SORT(SetDS,State);
DedupedSet  := DEDUP(SortedSet,State);

EXPORT Val003   := COUNT(DedupedSet);