soubory:

cgi.pl      // nainstaluje se do /var/cgi-bin/ s pravy 755
            // pokud bzchom chteli si hrat na bezpecnost muselo by se to resity jinak
            // napr.: 
            //          <Directory /home/*/public_html/cgi-bin>
            //            Options ExecCGI
            //            SetHandler cgi-script
            //          </Directory>
            // -- v podadresari nejakeho neprivilegovaneho uzivatele
            
httpd.conf  // -- standardni *.conf soubor zadne zmeny. Pridan jen z procesnich duvodu napr.: interni predpisy            
