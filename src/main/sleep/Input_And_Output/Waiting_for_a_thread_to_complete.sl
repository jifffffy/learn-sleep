sub factorial
{
    sub calculateFactorial
    {
        return iff($1 == 0, 1, $1 * calculateFactorial($1 - 1));
    }
    $result = calculateFactorial($value);
    println("fact( $+ $value $+ ) is ready");
    return $result;
}
$fact12 = fork(&factorial, $value => 120.0);
$fact11 = fork(&factorial, $value => 110.0);
$fact10 = fork(&factorial, $value => 100.0);
println("fact(120) = " . wait($fact12));

println("fact(110) = " . wait($fact11));
println("fact(100) = " . wait($fact10));

# fact(120.0) is ready
# fact(110.0) is ready
# fact(100.0) is ready
# fact(120) = 6.689502913449124E198
# fact(110) = 1.5882455415227421E178
# fact(100) = 9.33262154439441E157
