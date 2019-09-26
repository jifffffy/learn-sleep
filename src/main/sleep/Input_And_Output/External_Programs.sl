$handle = exec("./printargs apple boy charlie");
printAll(readAll($handle));
closef($handle);

# Arg 0 is: ./printargs
# Arg 1 is: apple
# Arg 2 is: boy
# Arg 3 is: charlie

$handle = exec(@("./printargs", "Hello world", "I have spaces"));
printAll(readAll($handle));
closef($handle);

# Arg 0 is: ./printargs
# Arg 1 is: Hello world
# Arg 2 is: I have spaces