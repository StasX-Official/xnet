# Copyright (c) 2025 StasX (Kozosvyst Stas). All rights reserved.

#!/bin/bash

_xnet_completion() {
    local cur prev
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    prev="${COMP_WORDS[COMP_CWORD-1]}"
    
    case ${COMP_CWORD} in
        1)
            COMMANDS="help ping traceroute lookup portscan whois ipgeo macscan subnetcalc speedtest log update sniff interfaces arpwatch knock packet wifi netmap dashboard analyze geoip banner dnsscan macvendor lanscan ipsweep latency serviceenum sslcert nbtscan snmpwalk multiscan httpget apirequest sslscan sslgen serve sslinfo cfg cvescan netflow topo plugin cfgdrift report interactive"
            COMPREPLY=($(compgen -W "${COMMANDS}" -- ${cur}))
            ;;
        2)
            case ${prev} in
                log)
                    COMPREPLY=($(compgen -W "view clear" -- ${cur}))
                    ;;
                cfgdrift)
                    COMPREPLY=($(compgen -W "monitor status" -- ${cur}))
                    ;;
                report)
                    COMPREPLY=($(compgen -W "html pdf" -- ${cur}))
                    ;;
                plugin)
                    COMPREPLY=($(compgen -W "list install run" -- ${cur}))
                    ;;
                cfg)
                    COMPREPLY=($(compgen -W "show get set" -- ${cur}))
                    ;;
                knock)
                    COMPREPLY=($(compgen -W "start list send" -- ${cur}))
                    ;;
                *)
                    ;;
            esac
            ;;
    esac
    
    return 0
}

complete -F _xnet_completion xnet
