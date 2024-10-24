# Jarkom-Modul-3-IT21-2024

|Nama  | NRP |
|--|--|
| Nathan Kho Pancras | 5027221002 |
| Muhammad Andrean Rizq Prasetio | 5027221052 |

**Deskripsi** - Pulau Paradis dan Marley, sama-sama menghadapi ancaman besar dari satu sama lain. Keduanya membangun infrastruktur pertahanan yang kuat untuk melindungi sistem vital mereka. Dengan strategi yang matang, mereka bersiap menghadapi serangan dan mempertahankan wilayah masing-masing.

## Daftar Isi

- [Jarkom-Modul-3-IT21-2024](#jarkom-modul-3-it21-2024)
	- [Daftar Isi](#daftar-isi)
- [Prerequisites](#prerequisites)
	- [Topologi](#topologi)
	- [Konfigurasi](#konfigurasi)
	- [Set .bashrc](#set-bashrc)
- [Soal](#soal)
	- [No 0](#no-0)
		- [Penyelesaian](#penyelesaian)
	- [No 1](#no-1)
	- [No 2-5](#no-2-5)
	- [Penyelesaian](#penyelesaian-1)
	- [No 6-12](#no-6-12)
		- [No 6](#no-6)
		- [Penyelesaian](#penyelesaian-2)
		- [No 7](#no-7)
		- [Penyelesaian](#penyelesaian-3)
		- [No 8](#no-8)
		- [Penyelesaian](#penyelesaian-4)
		- [No 9](#no-9)
		- [Penyelesaian](#penyelesaian-5)
		- [No 10](#no-10)
		- [Penyelesaian](#penyelesaian-6)
		- [No 11](#no-11)
		- [Penyelesaian](#penyelesaian-7)
		- [No 12](#no-12)
		- [Penyelesaian](#penyelesaian-8)
	- [No 13-20](#no-13-20)
		- [No 13](#no-13)
		- [Penyelesaian](#penyelesaian-9)
		- [No 14](#no-14)
		- [Penyelesaian](#penyelesaian-10)
		- [No 15](#no-15)
		- [Penyelesaian](#penyelesaian-11)
		- [No 16](#no-16)
		- [Penyelesaian](#penyelesaian-12)
		- [No 17](#no-17)
		- [Penyelesaian](#penyelesaian-13)
		- [No 18](#no-18)
		- [Penyelesaian](#penyelesaian-14)
		- [No 19](#no-19)
		- [Penyelesaian](#penyelesaian-15)
		- [No 20](#no-20)
		- [Penyelesaian](#penyelesaian-16)

# Prerequisites

## Topologi

![alt text](assets/topologi.png)

## Konfigurasi

| **Name**      | **Interface** | **Address**   | **Netmask**        | **Gateway**   | **Configuration Type** |
|---------------|---------------|---------------|--------------------|--------------|------------------------|
| **Paradis**   | eth0          | -             | -                  | -            | DHCP                   |
|               | eth1          | 10.74.1.1     | 255.255.255.0      | -            | Static                 |
|               | eth2          | 10.74.2.1     | 255.255.255.0      | -            | Static                 |
|               | eth3          | 10.74.3.1     | 255.255.255.0      | -            | Static                 |
|               | eth4          | 10.74.4.1     | 255.255.255.0      | -            | Static                 |
| **Annie**     | eth0          | 10.74.1.2     | 255.255.255.0      | 10.74.1.1    | Static                 |
| **Berthold**  | eth0          | 10.74.1.3     | 255.255.255.0      | 10.74.1.1    | Static                 |
| **Reiner**    | eth0          | 10.74.1.4     | 255.255.255.0      | 10.74.1.1    | Static                 |
| **Armin**     | eth0          | 10.74.2.2     | 255.255.255.0      | 10.74.2.1    | Static                 |
| **Eren**      | eth0          | 10.74.2.3     | 255.255.255.0      | 10.74.2.1    | Static                 |
| **Mikasa**    | eth0          | 10.74.2.4     | 255.255.255.0      | 10.74.2.1    | Static                 |
| **Beast**     | eth0          | 10.74.3.2     | 255.255.255.0      | 10.74.3.1    | Static                 |
| **Colossal**  | eth0          | 10.74.3.3     | 255.255.255.0      | 10.74.3.1    | Static                 |
| **Warhammer** | eth0          | 10.74.3.4     | 255.255.255.0      | 10.74.3.1    | Static                 |
| **Fritz**     | eth0          | 10.74.4.2     | 255.255.255.0      | 10.74.4.1    | Static                 |
| **Tybur**     | eth0          | 10.74.4.3     | 255.255.255.0      | 10.74.4.1    | Static                 |
| **Zeke & Erwin** | eth0       | -             | -                  | -            | DHCP                   |

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
	gateway 10.74.1.1
```

**Berthold**
```
auto eth0
iface eth0 inet static
	address 10.74.1.3
	netmask 255.255.255.0
	gateway 10.74.1.1
```

**Reiner**
```
auto eth0
iface eth0 inet static
	address 10.74.1.4
	netmask 255.255.255.0
	gateway 10.74.1.1
```

**Armin**
```
auto eth0
iface eth0 inet static
	address 10.74.2.2
	netmask 255.255.255.0
	gateway 10.74.2.1
```

**Eren**
```
auto eth0
iface eth0 inet static
	address 10.74.2.3
	netmask 255.255.255.0
	gateway 10.74.2.1
```

**Mikasa**
```
auto eth0
iface eth0 inet static
	address 10.74.2.4
	netmask 255.255.255.0
	gateway 10.74.2.1
```

**Beast**
```
auto eth0
iface eth0 inet static
	address 10.74.3.2
	netmask 255.255.255.0
	gateway 10.74.3.1
```

**Colossal**
```
auto eth0
iface eth0 inet static
	address 10.74.3.3
	netmask 255.255.255.0
	gateway 10.74.3.1
```

**Warhammer**
```
auto eth0
iface eth0 inet static
	address 10.74.3.4
	netmask 255.255.255.0
	gateway 10.74.3.1
```

**Fritz**
```
auto eth0
iface eth0 inet static
	address 10.74.4.2
	netmask 255.255.255.0
	gateway 10.74.4.1
```

**Tybur**
```
auto eth0
iface eth0 inet static
	address 10.74.4.3
	netmask 255.255.255.0
	gateway 10.74.4.1
```

**Zeke & Erwin**
```
auto eth0
iface eth0 inet dhcp
```

## Set .bashrc

Paradis (DHCP Relay)
```
iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE -s 10.74.0.0/16
apt-get update
apt-get install isc-dhcp-relay -y
service isc-dhcp-relay start
```

Tybur (DHCP Server)
```
echo 'nameserver 10.74.4.2' > /etc/resolv.conf
apt-get update
apt-get install isc-dhcp-server -y
service isc-dhcp-server restart
service isc-dhcp-server status
```

Fritz (DNS Server)
```
echo 'nameserver 192.168.122.1' > /etc/resolv.conf
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
echo 'nameserver 10.74.4.2' > /etc/resolv.conf
apt-get update
apt-get install bind9 apache2-utils nginx -y

service nginx start
```

Annie, Bertholdt, Reiner (Laravel Worker)
``` 
-
```

Armin, Eren, Mikasa (PHP Worker)
```
echo 'nameserver 10.74.4.2' > /etc/resolv.conf
apt-get update
apt-get install lynx wget unzip nginx software-properties-common php7.3 php7.3-fpm -y
```

Zeke & Erwin (Client)
```
apt-get update
apt-get install lynx htop apache2-utils jq -y
```

# Soal

## No 0

Pulau Paradis dan Marley, sama-sama menghadapi ancaman besar dari satu sama lain. Keduanya membangun infrastruktur pertahanan yang kuat untuk melindungi sistem vital mereka. Dengan strategi yang matang, mereka bersiap menghadapi serangan dan mempertahankan wilayah masing-masing.
Bangsa Marley, dipimpin oleh Zeke, telah mempersiapkan Annie, Bertholdt, dan Reiner untuk menyerang menggunakan Laravel Worker. Di sisi lain, Klan Eldia dari Paradis telah mempersiapkan Armin, Eren, dan Mikasa sebagai PHP Worker untuk mempertahankan pulau tersebut. Warhammer bertindak sebagai Database Server, sementara Beast dan Colossal sebagai Load Balancer. 

Pulau Paradis telah menjadi tempat yang damai selama 1000 tahun, namun kedamaian tersebut tidak bertahan selamanya. Perang antara kaum Marley dan Eldia telah mencapai puncak. Kaum Marley yang dipimpin oleh Zeke, me-register domain name marley.yyy.com untuk worker Laravel mengarah pada Annie. Namun ternyata tidak hanya kaum Marley saja yang berinisiasi, kaum Eldia ternyata sudah mendaftarkan domain name eldia.yyy.com untuk worker PHP (0) mengarah pada Armin.

### Penyelesaian

**Script DNS Server - dnsserv.sh (Fritz)**

```bash
echo 'zone "marley.it21.com" { 
        type master; 
        file "/etc/bind/sites/marley.it21.com";
};

zone "eldia.it21.com" {
        type master;
        file "/etc/bind/sites/eldia.it21.com";
}; ' >> /etc/bind/named.conf.local

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
@       IN      A       10.74.2.2     ; IP Armin
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
```

## No 1

Lakukan konfigurasi sesuai dengan peta yang sudah diberikan. (1)

- [Topologi](#topologi)
- [Konfigurasi](#konfigurasi)
- [Set .bashrc](#set-bashrc)

## No 2-5

Jauh sebelum perang dimulai, ternyata para keluarga bangsawan, Tybur dan Fritz, telah membuat kesepakatan sebagai berikut:
1. Semua Client harus menggunakan konfigurasi ip address dari keluarga Tybur (dhcp). 
2. Client yang melalui bangsa marley mendapatkan range IP dari [prefix IP].1.05 - [prefix IP].1.25 dan [prefix IP].1.50 - [prefix IP].1.100 (2)
3. Client yang melalui bangsa eldia mendapatkan range IP dari [prefix IP].2.09 - [prefix IP].2.27 dan [prefix IP].2 .81 - [prefix IP].2.243 (3)
4. Client mendapatkan DNS dari keluarga Fritz dan dapat terhubung dengan internet melalui DNS tersebut (4)
5. Dikarenakan keluarga Tybur tidak menyukai kaum eldia, maka mereka hanya meminjamkan ip address ke kaum eldia selama 6 menit. Namun untuk kaum marley, keluarga Tybur meminjamkan ip address selama 30 menit. Waktu maksimal dialokasikan untuk peminjaman alamat IP selama 87 menit. (5)

Seiring berjalannya waktu kondisi semakin memanas, untuk bersiap perang. Kaum Eldia melakukan deployment sebagai berikut
|Image |
|--|
|danielcristh0/debian-buster:1.1|

## Penyelesaian

**Script DHCP Server - dhcpserv.sh (Tybur)**

```bash
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
	option domain-name-servers 10.74.4.3;
	default-lease-time 360;
	max-lease-time 5220;
}

subnet 10.74.2.0 netmask 255.255.255.0 {
	range 10.74.2.9 10.74.2.27;
	range 10.74.2.81 10.74.2.243;
	option routers 10.74.2.1;
	option broadcast-address 10.74.1.255;
	option domain-name-servers 10.74.4.3;
	default-lease-time 1800;
	max-lease-time 5220;
}

subnet 10.74.3.0 netmask 255.255.255.0 {
	option routers 10.74.3.1;
}

subnet 10.74.4.0 netmask 255.255.255.0 {
	option routers 10.74.4.1;
}
' > /etc/dhcp/dhcpd.conf

service isc-dhcp-server restart
```

**Script DHCP Relay - dhcpserv.sh (Tybur)**

```bash
echo '
SERVERS="10.74.4.2"
INTERFACES="eth1 eth2 eth3 eth4"
OPTIONS=""
' > /etc/default/isc-dhcp-relay

echo '
net.ipv4.ip_forward=1
' > /etc/sysctl.conf

service isc-dhcp-relay restart
```

## No 6-12

### No 6

1. Armin berinisiasi untuk memerintahkan setiap worker PHP untuk melakukan konfigurasi virtual host untuk website berikut https://intip.in/BangsaEldia dengan menggunakan php 7.3 (6)

### Penyelesaian

```bash
```

### No 7

2. Dikarenakan Armin sudah mendapatkan kekuatan titan colossal, maka bantulah kaum eldia menggunakan colossal agar dapat bekerja sama dengan baik. Kemudian lakukan testing dengan 6000 request dan 200 request/second. (7)

### Penyelesaian

```bash
```

### No 8

3. Karena Erwin meminta “laporan kerja Armin”, maka dari itu buatlah analisis hasil testing dengan 1000 request dan 75 request/second untuk masing-masing algoritma Load Balancer dengan ketentuan sebagai berikut:
- Nama Algoritma Load Balancer
- Report hasil testing pada Apache Benchmark
- Grafik request per second untuk masing masing algoritma. 
- Analisis (8)

### Penyelesaian

```bash
```

### No 9

4. Dengan menggunakan algoritma Least-Connection, lakukan testing dengan menggunakan 3 worker, 2 worker, dan 1 worker sebanyak 1000 request dengan 10 request/second, kemudian tambahkan grafiknya pada “laporan kerja Armin”. (9)

### Penyelesaian

```bash
```

### No 10

5. Selanjutnya coba tambahkan keamanan dengan konfigurasi autentikasi di Colossal dengan dengan kombinasi username: “arminannie” dan password: “jrkmyyy”, dengan yyy merupakan kode kelompok. Terakhir simpan file “htpasswd” nya di /etc/nginx/supersecret/ (10)

### Penyelesaian

```bash
```

### No 11

6. Lalu buat untuk setiap request yang mengandung /titan akan di proxy passing menuju halaman https://attackontitan.fandom.com/wiki/Attack_on_Titan_Wiki (11) 
hint: (proxy_pass)

### Penyelesaian

```bash
```

### No 12

7. Selanjutnya Colossal ini hanya boleh diakse s oleh client dengan IP [Prefix IP].1.77, [Prefix IP].1.88, [Prefix IP].2.144, dan [Prefix IP].2.156. (12) 
hint: (fixed in dulu clientnya)


### Penyelesaian

```bash
```

## No 13-20

### No 13

Melihat perlawanan yang sengit dari kaum eldia, kaum marley pun memutar otak dan mengatur para worker di marley.
1. Karena mengetahui bahwa ada keturunan marley yang mewarisi kekuatan titan, Zeke pun berinisiatif untuk menyimpan data data penting di Warhammer, dan semua data tersebut harus dapat diakses oleh anak buah kesayangannya, Annie, Reiner, dan Berthold. (13)

### Penyelesaian

```
```

### No 14

2. Annie, Reiner, dan Berthold memiliki Marley Channel sesuai dengan quest guide berikut. Jangan lupa melakukan instalasi PHP 8.0 dan Composer (14)

### Penyelesaian

```
```

### No 15

3. Marley Channel memiliki beberapa endpoint yang harus ditesting sebanyak 120 request dengan 10 request/second. Annie diminta oleh Zeke untuk membuat laporan testing tersebut, namun karena satu dan dua hal, Annie berhasil diculik oleh SurveyCorps dan diinterogasi oleh Armin. Armin kemudian menambahkan hasil response dan hasil testing pada “laporan kerja Armin”.
- POST /auth/register (15)

### Penyelesaian

```
```

### No 16

- POST /auth/login (16)

### Penyelesaian

```
```

### No 17

- GET /me (17)

### Penyelesaian

```
```

### No 18

4. Setelah Annie berhasil kabur dari SurveyCorps, Annie kembali ke Reiner dan Bertholdt. Untuk memastikan ketiganya bekerja sama secara baik untuk mengatur Marley Channel maka implementasikan Proxy Bind pada Beast untuk mengaitkan IP dari Annie, Reiner, dan Berthold. (18)

### Penyelesaian

```
```

### No 19

5. Untuk meningkatkan performa dari Worker, coba implementasikan PHP-FPM pada Annie, Reiner, dan Berthold. Untuk testing kinerja naikkan 
- pm.max_children
- pm.start_servers
- pm.min_spare_servers
- pm.max_spare_servers
sebanyak tiga percobaan dan lakukan testing sebanyak 150 request dengan 15 request/second kemudian berikan hasil analisisnya pada “laporan kerja Armin”.(19)

### Penyelesaian

```
```

### No 20

6. Nampaknya hanya menggunakan PHP-FPM tidak cukup untuk meningkatkan performa dari worker maka Zeke mengimplementasikan Least-Conn pada Beast. Untuk testing kinerja dari worker tersebut dilakukan sebanyak 200 request dengan 25 request/second. (20)

PS:
“laporan kerja Armin” dikumpulkan dalam bentuk PDF dengan format: yyy_LaporanArmin.pdf
yyy merupakan kode kelompok

### Penyelesaian

```
```