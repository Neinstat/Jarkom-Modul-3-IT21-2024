echo 'zone "marley.it21.com" { 
        type master; 
        file "/etc/bind/sites/marley.it21.com";
};

zone "eldia.it21.com" {
        type master;
        file "/etc/bind/sites/eldia.it21.com";
}; ' > /etc/bind/named.conf.local

mkdir -p /etc/bind/sites
cp /etc/bind/db.local /etc/bind/sites/marley.it21.com
cp /etc/bind/db.local /etc/bind/sites/eldia.it21.com

echo ';
; BIND data file for local loopback interface
;
$TTL    604800
@       IN      SOA     marley.it21.com. root.marley.it21.com. (
                              2         ; Serial
                         604800         ; Refresh
                          86400         ; Retry
                        2419200         ; Expire
                         604800 )       ; Negative Cache TTL
;
@       IN      NS      marley.it21.com.
@       IN      A       10.74.1.2     ; IP Annie
www     IN      CNAME   marley.it21.com.' > /etc/bind/sites/marley.it21.com

echo ';
; BIND data file for local loopback interface
;
$TTL    604800
@       IN      SOA     eldia.it21.com. root.eldia.it21.com. (
                              2         ; Serial
                         604800         ; Refresh
                          86400         ; Retry
                        2419200         ; Expire
                         604800 )       ; Negative Cache TTL
;
@       IN      NS      eldia.it21.com.
@       IN      A       10.74.3.3     ; IP Colossal
www     IN      CNAME   eldia.it21.com.' > /etc/bind/sites/eldia.it21.com

echo 'options {
        directory "/var/cache/bind";

        forwarders {
                192.168.122.1;
        };

        // dnssec-validation auto;
        allow-query{any;};
        auth-nxdomain no;
        listen-on-v6 { any; };
}; ' > /etc/bind/named.conf.options

service bind9 restart