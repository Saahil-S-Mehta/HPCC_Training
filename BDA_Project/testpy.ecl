IMPORT Python3;

 

INTEGER pyTest(integer a) := embed(Python3)

    import matplotlib

endembed;

 

output(pyTest(5));