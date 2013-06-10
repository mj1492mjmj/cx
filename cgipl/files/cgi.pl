#!/usr/bin/perl -w
use strict;
use CGI;
use CGI qw(:standard);  			# Include standard HTML and CGI functions
use CGI::Carp qw(fatalsToBrowser);      	# Send error messages to browse


print "Content-Type: text/html\n\n";
# Note there is a newline between 
# this header and Data

# Simple HTML code follows


my $srv = `hostname`;
my $upt = `uptime`;
my $res = `who -r`;
my $mnt = `mount`;
my $rlv = `cat /etc/inittab | grep id | tail -1 | cut -c 4`;
my $ifaddr = `ifconfig`;

print "<html> <head>\n";
print "<title>Server: $srv</title>";
print "</head>\n";
print "<body>\n";
print "<HR><PRE>";
print "Server Name:      ", $ENV{'SERVER_NAME'}, "<BR>", "\n";
print "Server Software:  ", $ENV{'SERVER_SOFTWARE'}, "<BR>", "\n";
print "Server Protocol:  ", $ENV{'SERVER_PROTOCOL'}, "<BR>", "\n";
print "CGI Revision:     ", $ENV{'GATEWAY_INTERFACE'}, "<BR>", "\n";
print "Client Browser:     ", $ENV{'HTTP_USER_AGENT'}, "<BR>", "\n";
print "Uptime:  ", "<BR>", $upt , "<BR>", "\n";
print "Svazky:  ", "<BR>", $mnt , "<BR>", "\n";
print "Run Level:  ", $rlv , "<BR>", "\n";
print "Sítě:  ", "<BR>", $ifaddr , "<BR>", "\n";
print "<HR></PRE>", "\n";
print "<p></p>\n";
print "</body> </html>\n"
