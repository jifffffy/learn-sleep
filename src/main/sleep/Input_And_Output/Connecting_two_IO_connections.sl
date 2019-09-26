# &fork can connect two I/O handles together into a virtual pipe. This example implements
# a generic TCP/IP client with this technique:
debug(7);
global('$host $port $socket');
sub handler
{
    local('$text');
    while $text (readln($src))
    {
        println($dst, $text);
    }
    closef($dst);
}
# obtain our host, port from the command line arguments
($host, $port) = @ARGV;
# connect to the desired host:port combination
$socket = connect($host, $port);
# fork the reader for the socket; prints all output to the console
fork(&handler, $src => $socket, $dst => getConsole());
# fork the reader for the console; prints all output to the socket
fork(&handler, $src => getConsole(), $dst => $socket);