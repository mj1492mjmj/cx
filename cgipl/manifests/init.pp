class cgipl { 

notify {"zacina se instalovat":}

  package { 'cgipl':
		name   => 'httpd',
		ensure => installed,

	}

	service  { 'cgipl':
        name   	=> 'httpd',
	ensure	=> running,
	enable 	=> true,
	subscribe => File['httpd.conf'],
	}



	file { "/var/www/cgi-bin/cgi.pl":
		owner  => root,
		group  => root,
		mode   => 755,
		source => "puppet:///modules/cgipl/cgi.pl",
		}

        file { 'httpd.conf':
                path   => '/etc/httpd/conf/httpd.conf',
		owner  => root,
                group  => root,
                mode   => 644,
                source => "puppet:///modules/cgipl/httpd.conf",
                }
# jde to i jinak. Jde to i do podadresare
# demonstracni soubor minimalni delky test.txt je v: /etc/puppetlabs/puppet/modules/cgipl/files/test


       file { "/tmp/cgi.plxxxxxx":
                owner  => root,
                group  => root,
                mode   => 644,
                source => "puppet:///modules/cgipl/test/test.txt",
                }

}
