FROM kalilinux/kali-rolling

# Устанавливаем временную переменную для подавления интерактивных запросов
ENV DEBIAN_FRONTEND=noninteractive

# Обновляем список пакетов, чистим кеш и устанавливаем нужные пакеты
RUN apt-get update && apt-get install -y --fix-missing \
    hping3 \
    iputils-ping \
    apache2-utils \
    slowloris \
    nmap && \
    apt-get clean && rm -rf /var/lib/apt/lists/*
