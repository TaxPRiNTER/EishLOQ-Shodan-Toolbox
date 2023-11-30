#!/bin/bash

# Define text colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# ASCII art for the header with tool name
echo -e "${GREEN}
  ______ _     _     _             
 |  ____(_)   | |   | |            
 | |__   _ ___| |__ | | ___   __ _ 
 |  __| | / __| '_ \| |/ _ \ / _\ |
 | |____| \__ \ | | | | (_) | (_| |
 |______|_|___/_| |_|_|\___/ \__, |
                               | |${NC}
                               |_|"

while true; do
    echo -e "\n********** EishLOQ Shodan Tool **********"
    echo -e "1. ${YELLOW}Submit IP for Scan${NC}"
    echo -e "2. ${YELLOW}Search${NC}"
    echo -e "3. ${YELLOW}Check Host by IP${NC}"
    echo -e "4. ${RED}Exit${NC}"
    read -p "Enter your choice (1-4): " choice

    case $choice in
        1)
            read -p "Enter IP to scan: " ip_to_scan
            python3 -m shodan scan submit "$ip_to_scan"
            echo -e "${GREEN}Scan submitted for $ip_to_scan${NC}"
            ;;
        2)
            read -p "Enter search query: " search_query
            python3 -m shodan search "$search_query"
            ;;
        3)
            read -p "Enter IP to check: " ip_to_check
            python3 -m shodan host "$ip_to_check"
            ;;
        4)
            echo -e "${RED}Exiting EishLOQ. Goodbye!${NC}"
            exit 0
            ;;
        *)
            echo -e "${RED}Invalid choice. Please enter a number between 1 and 4.${NC}"
            ;;
    esac

    read -p "Press Enter to continue..."
done
