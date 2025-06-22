@echo off
cd /d D:\get_IP

REM Step 1: 更新 IPv6 地址（调用你写的 Python 脚本）
python Get_IP.py

REM Step 2: Git 操作
cd /d D:\get_IP\V6_in_WH
git add ip6_log.txt
git commit -m "Auto update IPv6 at %date% %time%"
git push origin main