#!/bin/bash
echo "=== Flask Downloader Script ==="
if ! command -v python3 &> /dev/null; then
    echo "❌ Python3 not found."
    exit 1
fi
if ! command -v pip3 &> /dev/null; then
    echo "❌ pip3 not found. Installing..."
    sudo apt update && sudo apt install -y python3-pip
fi
if ! python3 -c "import flask" &> /dev/null; then
    echo "📦 Installing Flask..."
    python3 -m pip install flask
else
    echo "✅ Flask already installed."
fi
if [ -f "ipget.py" ]; then
    echo "🚀 Starting ipget.py..."
    python3 ipget.py
else
    echo "❌ ipget.py not found."
    exit 1
fi
