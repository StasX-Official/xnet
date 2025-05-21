# Copyright (c) 2025 StasX (Kozosvyst Stas). All rights reserved.



echo "Installing XNET tool..."

if ! command -v python3 &> /dev/null; then
    echo "Python 3 is required but not installed. Please install Python 3 and try again."
    exit 1
fi

pip3 install --upgrade .

if [[ -d /etc/bash_completion.d ]]; then
    echo "Installing bash completion..."
    sudo cp bash_completion.sh /etc/bash_completion.d/xnet
    echo "Bash completion installed. Restart your terminal or run 'source /etc/bash_completion.d/xnet'"
else
    echo "Bash completion directory not found. To enable completion manually:"
    echo "source $(pwd)/bash_completion.sh"
    echo "You can add this line to your ~/.bashrc file"
fi

echo "XNET has been installed successfully!"
echo "You can now use the 'xnet' command from anywhere in your terminal."
echo "Use the --export flag to export results from any command."
