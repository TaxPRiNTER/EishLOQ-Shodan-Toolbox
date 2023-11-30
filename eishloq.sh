#!/bin/bash

# Define text colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Function to strip http, https, trailing /, and extra fragments
function cleanInput() {
    cleaned_input=$(echo "$1" | sed -e 's/^http:\/\///' -e 's/^https:\/\///' -e 's/\/$//' -e 's/#.*$//')
    echo "$cleaned_input"
}

# Function to get IP from a website using ping
function pingAndSearch() {
    read -p "Enter IP or website to scan: " ip_or_website
    cleaned_input=$(cleanInput "$ip_or_website")

    # Check if the input is an IP address
    if [[ "$cleaned_input" =~ ^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
        ip_address="$cleaned_input"
    else
        # Get IP address from the website
        ip_address=$(ping -c 1 "$(echo "$cleaned_input" | cut -d ':' -f 1)" | grep -Eo '([0-9]{1,3}\.){3}[0-9]{1,3}' | head -n 1)
        
        if [ -z "$ip_address" ]; then
            echo -e "${RED}Unable to retrieve IP address for $cleaned_input.${NC}"
            return
        fi
    fi

    echo -e "${GREEN}IP Address: $ip_address${NC}"
    python3 -m shodan host "$ip_address"
}

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
    echo -e "4. ${YELLOW}Organization Information${NC}"
    echo -e "5. ${YELLOW}Ping Website and Search by IP${NC}"
    echo -e "6. ${RED}Exit${NC}"
    echo -e "${YELLOW}Note: Remove any extra characters after '/' at the domain.${NC}"
    read -p "Enter your choice (1-6): " choice

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
            read -p "Enter Organization name: " org_name
            python3 -m shodan search org:"$org_name"
            ;;
        5)
            pingAndSearch
            ;;
        6)
            echo -e "${RED}Exiting EishLOQ. Goodbye!${NC}"
            exit 0
            ;;
        *)
            echo -e "${RED}Invalid choice. Please enter a number between 1 and 6.${NC}"
            ;;
    esac

    read -p "Press Enter to continue..."
done
