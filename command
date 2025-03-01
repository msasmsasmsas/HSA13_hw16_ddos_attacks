todo: HTTP flood, Slowloris, SYN flood, Ping of Death


docker-compose up --build
docker-compose down
devcontainer up --remove-existing-container --workspace-folder .

docker-compose down --volumes --remove-orphans

---
docker exec -it kali /workspace/scripts/setup_kali.sh
# or
docker-compose exec --user root kali bash -c "/workspace/scripts/setup_kali.sh"

docker exec -it kali /workspace/scripts/udp_flood.sh
docker exec -it kali /workspace/scripts/icmp_flood.sh
docker exec -it kali /workspace/scripts/http_flood.sh

docker compose exec kali bash -c "ping web"
    172.26.0.2 - out into slowloris.sh

docker exec -it kali /workspace/scripts/slowloris.sh
docker exec -it kali /workspace/scripts/syn_flood.sh

---
# from web container
sh /workspace/scripts/setup_web.sh

docker-compose exec --user root web sh -c "iptables -L -v -n"
docker-compose exec --user root web sh -c "iptables -A INPUT -p icmp --icmp-type echo-request -j DROP"

---
iptables -A INPUT -p icmp --icmp-type echo-request -j DROP
iptables -L -v -n
# Reverse the rull
iptables -D INPUT -p icmp --icmp-type echo-request -j DROP
---
ufw deny proto icmp
ufw enable
ufw status
# Reverse the rull
ufw allow proto icmp
---

import dashboard
    http://localhost:3000/dashboard/import
    https://grafana.com/grafana/dashboards/61-telegraf-metrics

docker compose restart telegraf

--- old --------

docker-compose exec test sh /scripts/test_web-proxy.sh
docker-compose exec test sh /scripts/purge_image1.sh

docker-compose exec test sh /scripts/test_web.sh
---



find . -type f \( -name "*.sh" -o -name "*.conf" -o -name "*.yml" \) -exec dos2unix {} \;

docker compose exec web-proxy nginx -s reload

docker compose exec web-proxy apt-get update && docker compose exec web-proxy apt-get install -y tree
docker compose exec web-proxy tree /tmp/nginx_cache
docker compose exec web-proxy bash -c "rm -rf /tdocker exec -it kali /workspace/scripts/ping_od.sh
mp/nginx_cache && nginx -s reload"
---