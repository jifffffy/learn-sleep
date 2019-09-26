$ java -jar sleep.jar
>> Welcome to the Sleep scripting language
> interact
>> Welcome to interactive mode.
Type your code and then '.' on a line by itself to execute the code.
Type Ctrl+D or 'done' on a line by itself to leave interactive mode.
$bytes = pack("I", 3232235777L);
@bytes = unpack("B4", $bytes);
println(@bytes);
.
@(192, 168, 1, 1)
println(formatNumber( 3232235777L, 10, 2));
.
11000000101010000000000100000001