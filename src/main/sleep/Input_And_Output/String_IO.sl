# encoded output
$handle_a = openf(">a.txt");
println($handle_a, "apple");
closef($handle_a);
println("Encoded output: " . lof("a.txt") . " bytes");
# UTF-16 output
$handle_b = openf(">b.txt");
bwrite($handle_b, "u", "apple");
closef($handle_b);
println("UTF-16 output: " . lof("b.txt") . " bytes");

# Encoded output: 6 bytes
# UTF-16 output: 12 bytes