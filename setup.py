# Copyright (c) 2025 StasX (Kozosvyst Stas). All rights reserved.

from setuptools import setup, find_packages

setup(
    name="xnet",
    version="1.0.0",
    packages=find_packages(),
    package_data={
        'xnet_system': ['config.json'],
        '': ['latest_version.txt']
    },
    install_requires=[
        'asyncio',
        'ipaddress',
        'cryptography',
        'requests',
        'scapy',
        'netifaces',
        'prettytable',
        'pyOpenSSL',
        'argon2-cffi',
        'psutil',
        'dnspython',
        'graphviz',
        'python-iptables; platform_system != "Windows"',
        'weasyprint',
    ],
    entry_points={
        'console_scripts': [
            'xnet=xnet_system.cli:main',
        ],
    },
    author="StasX (Kozosvyst Stas)",
    description="Network Administration and Security Tool",
    classifiers=[
        "Programming Language :: Python :: 3",
        "License :: OSI Approved :: MIT License",
        "Operating System :: OS Independent",
    ],
    python_requires=">=3.6",
)
