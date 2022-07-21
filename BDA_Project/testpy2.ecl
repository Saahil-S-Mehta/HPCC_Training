IMPORT Python3 AS Python;

UNSIGNED testModule() := EMBED(Python)
    import tensorflow # or your module name
    return 1
ENDEMBED;

OUTPUT(testModule());