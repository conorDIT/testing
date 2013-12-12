;
; BIND data file for local loopback interface
;
$TTL	604800
@	IN	SOA	server.conor.com. admin.conor.com (
			      2		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL
;


conor.com.	IN NS server.conor.com.
conor.com.	IN A	192.168.1.5
;@	IN	A	127.0.0.1
;@	IN	AAAA	::1
server	IN	A 192.168.1.5
gateway IN	A	192.168.1.1
client	IN	A	192.168.1.12
www	IN	CNAME conor.com.
