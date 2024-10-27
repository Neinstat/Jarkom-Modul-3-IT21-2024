echo '
INTERFACESv4="eth0"
INTERFACESv6=""
' > /etc/default/isc-dhcp-server

echo '
subnet 10.74.1.0 netmask 255.255.255.0 {
	range 10.74.1.5 10.74.1.25;
	range 10.74.1.50 10.74.1.100;
	option routers 10.74.1.1;
	option broadcast-address 10.74.1.255;
	option domain-name-servers 10.74.4.2;
	default-lease-time 360;
	max-lease-time 5220;
}

subnet 10.74.2.0 netmask 255.255.255.0 {
	range 10.74.2.9 10.74.2.27;
	range 10.74.2.81 10.74.2.243;
	option routers 10.74.2.1;
	option broadcast-address 10.74.1.255;
	option domain-name-servers 10.74.4.2;
	default-lease-time 1800;
	max-lease-time 5220;
}

subnet 10.74.3.0 netmask 255.255.255.0 {
	option routers 10.74.3.1;
}

subnet 10.74.4.0 netmask 255.255.255.0 {
	option routers 10.74.4.1;
}

host Zeke {
    hardware ethernet 5a:41:9c:fe:54:9a;
    fixed-address 10.74.1.77;
}
' > /etc/dhcp/dhcpd.conf

service isc-dhcp-server restart