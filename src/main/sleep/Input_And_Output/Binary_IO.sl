# simple file copy program.
# java -jar sleep.jar copy.sl <target> <destination>
($target_f, $dest_f) = @ARGV;
$handle = openf($target_f);
$data = readb($handle, -1);
closef($handle);
$handle = openf("> $+ $dest_f);
writeb($handle, $data);
closef($handle);