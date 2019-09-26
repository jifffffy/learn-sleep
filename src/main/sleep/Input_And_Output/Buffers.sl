# read the file in
$input = openf(@ARGV[0]);
$data = readb($input, -1);
closef($input);
# encrypt the contents of the file...
$buffer = allocate(strlen($data));
for ($x = 0; $x < strlen($data); $x++)
{
writeb($buffer, chr(byteAt($data, $x) ^ 0x34));
}
closef($buffer); # buffer is readable now..
$data = readb($buffer, strlen($data));
# write the file out
$output = openf(">" . @ARGV[0]);
writeb($output, $data);
closef($output);