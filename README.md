# Jarkom-Modul-3-IT21-2024

|Nama  | NRP |
|--|--|
| Nathan Kho Pancras | 5027221002 |
| Muhammad Andrean Rizq Prasetio | 5027221052 |

**Deskripsi** - Pulau Paradis dan Marley, sama-sama menghadapi ancaman besar dari satu sama lain. Keduanya membangun infrastruktur pertahanan yang kuat untuk melindungi sistem vital mereka. Dengan strategi yang matang, mereka bersiap menghadapi serangan dan mempertahankan wilayah masing-masing.

# Prerequisites

## Topologi

![alt text](assets/topologi.png)

## Konfigurasi

**Paradis**
```
# DHCP config for eth0
auto eth0
iface eth0 inet dhcp

auto eth1
iface eth1 inet static
	address 10.74.1.1
	netmask 255.255.255.0

auto eth2
iface eth2 inet static
	address 10.74.2.1
	netmask 255.255.255.0

auto eth3
iface eth3 inet static
	address 10.74.3.1
	netmask 255.255.255.0

auto eth4
iface eth4 inet static
	address 10.74.4.1
	netmask 255.255.255.0
```

**Annie**
```
auto eth0
iface eth0 inet static
	address 10.74.1.2
	netmask 255.255.255.0
	gateway 10.74.1.0
```

**Berthold**
```
auto eth0
iface eth0 inet static
	address 10.74.1.3
	netmask 255.255.255.0
	gateway 10.74.1.0
```

**Reiner**
```
auto eth0
iface eth0 inet static
	address 10.74.1.4
	netmask 255.255.255.0
	gateway 10.74.1.0
```

**Armin**
```
auto eth0
iface eth0 inet static
	address 10.74.2.2
	netmask 255.255.255.0
	gateway 10.74.2.0
```

**Eren**
```
auto eth0
iface eth0 inet static
	address 10.74.2.3
	netmask 255.255.255.0
	gateway 10.74.2.0
```

Mikasa
```
auto eth0
iface eth0 inet static
	address 10.74.2.4
	netmask 255.255.255.0
	gateway 10.74.2.0
```

Beast
```
auto eth0
iface eth0 inet static
	address 10.74.3.2
	netmask 255.255.255.0
	gateway 10.74.3.0
```

Colossal
```
auto eth0
iface eth0 inet static
	address 10.74.3.3
	netmask 255.255.255.0
	gateway 10.74.3.0
```

Warhammer
```
auto eth0
iface eth0 inet static
	address 10.74.3.4
	netmask 255.255.255.0
	gateway 10.74.3.0
```

Fritz
```
auto eth0
iface eth0 inet static
	address 10.74.4.2
	netmask 255.255.255.0
	gateway 10.74.4.0
```

Tybur
```
auto eth0
iface eth0 inet static
	address 10.74.4.3
	netmask 255.255.255.0
	gateway 10.74.4.0
```

Zeke & Erwin
```
auto eth0
iface eth0 inet dhcp
```

## Instalasi Dependensi

Paradis (DHCP Relay)
```
apt-get update
apt-get install isc-dhcp-relay -y
service isc-dhcp-relay start
```

Tybur (DHCP Server)
```
apt-get update
apt-get install isc-dhcp-server -y
service isc-dhcp-server restart
service isc-dhcp-server status
```

Fritz (DNS Server)
```
apt-get update
apt-get install bind9 -y
```

Warhammer (Database Server)
```
apt-get update
apt-get install mariadb-server -y
```

Beast & Colossal (Load Balancer)
```
apt-get update
apt-get install apache2-utils -y
apt-get install nginx -y
apt-get install lynx -y
```

Annie, Bertholdt, Reiner (Larevel Worker)
```
-
```

Armin, Eren, Mikasa (PHP Worker)
```
-
```

Zeke & Erwin (Client)
```
apt-get update
apt-get install lynx -y
apt-get install htop -y
apt-get install apache2-utils -y
apt-get install jq -y
```
