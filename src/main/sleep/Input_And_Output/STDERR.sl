$handle = exec("./printargs");
sub processStderr
{
$source = [$handle getSource]; # java.lang.Process
$stream = [$source getErrorStream]; # java.io.InputStream
$stderr = [SleepUtils getIOHandle: $stream, $null];
while $error (readln($stderr))
{
println("[stderr] $error");
}
}
# process stderr in a new thread
fork(&processStderr, \$handle);
printAll(readAll($handle));

# [stderr] No additional arguments specified.
# Arg 0 is: ./printargs