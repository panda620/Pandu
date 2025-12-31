#!/data/data/com.termux/files/usr/bin/bash

clear
echo "🐼 PANDA TOOL INSTALLER 🐼"
echo "--------------------------"

# Fix mirror automatically
echo "[*] Fixing Termux mirror..."
pkg install termux-tools -y >/dev/null 2>&1
yes | termux-change-repo >/dev/null 2>&1

# Update system
echo "[*] Updating packages..."
pkg update -y && pkg upgrade -y

# Install requirements
echo "[*] Installing requirements..."
pkg install python git -y

# Permission
chmod +x Panda.py

# Run tool
echo "[*] Running Panda Tool..."
python Panda.py

echo "✅ DONE"
