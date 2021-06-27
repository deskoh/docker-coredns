$ORIGIN io.
$TTL 86400

@     IN  SOA     sns.dns.icann.org. noc.dns.icann.org. (
          2017042745 ; serial
          7200       ; refresh (2 hours)
          3600       ; retry (1 hour)
          1209600    ; expire (2 weeks)
          3600       ; minimum (1 hour)
)


$TTL 3600

file  IN A   1.2.3.4

cr    IN A   1.2.3.5

m.cr  IN A   1.2.3.7

p.cr  IN A   1.2.3.8
