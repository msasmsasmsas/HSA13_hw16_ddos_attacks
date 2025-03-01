#!/bin/bash

LOG_FILE="/workspace/scripts/attack_log.txt"
echo "=== DDoS Attack Simulation Started at $(date) ===" | tee -a $LOG_FILE

run_attack() {
    local script_name=$1
    echo "[$(date)] Starting $script_name..." | tee -a $LOG_FILE
    bash "/workspace/scripts/$script_name" &
    sleep 60  # Запускаем атаку на 60 секунд
    pkill -f "$(basename "$script_name")"  # Останавливаем атаку
    echo "[$(date)] Finished $script_name." | tee -a $LOG_FILE
    sleep 10  # Небольшая пауза между атаками
}

# Последовательно выполняем атаки
run_attack "http_flood.sh"
run_attack "icmp_flood.sh"
run_attack "ping_od.sh"
run_attack "slowloris.sh"
run_attack "syn_flood.sh"
run_attack "udp_flood.sh"

echo "=== DDoS Attack Simulation Finished at $(date) ===" | tee -a $LOG_FILE
