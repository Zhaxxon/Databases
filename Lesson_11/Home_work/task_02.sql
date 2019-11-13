/*В базе данных Redis подберите коллекцию для подсчета посещений с определенных IP-адресов.*/

KEYS *
HMSET ip_addr 127.0.0.1 4 192.168.0.2 2
HKEYS ip_addr
HVALS ip_addr
HSET ip_addr 192.168.0.10 1
HGETALL ip_addr