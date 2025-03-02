# HSA13_hw16_ddos_attacks

## ICMP flood

![изображение](https://github.com/user-attachments/assets/86e6b1ce-98c3-45c5-aaef-9728688fa7b2)


# http flood

PS E:\ai\ai_anppr\HSA13_hw16_ddos_attacks> docker exec -it kali sh
chmod +x /workspace/scripts/http_flood.sh
/workspace/scripts/http_flood.sh
This is ApacheBench, Version 2.3 <$Revision: 1923142 $>
Copyright 1996 Adam Twiss, Zeus Technology Ltd, http://www.zeustech.net/
Licensed to The Apache Software Foundation, http://www.apache.org/

Benchmarking web (be patient)
apr_socket_recv: Connection reset by peer (104)
Total of 213602 requests completed

![изображение](https://github.com/user-attachments/assets/f48933ee-93ca-4124-9b19-9ee8f0b514ca)



# syn flood

PS E:\ai\ai_anppr\HSA13_hw16_ddos_attacks> docker exec -it kali sh
chmod +x /workspace/scripts/syn_flood.sh
/workspace/scripts/syn_flood.sh
HPING 172.26.0.2 (eth0 172.26.0.2): S set, 40 headers + 0 data bytes
hping in flood mode, no replies will be shown

![изображение](https://github.com/user-attachments/assets/aff704d2-beb1-4aeb-afe6-22e0a087df42)
