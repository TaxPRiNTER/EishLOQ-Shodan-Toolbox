# EishLOQ Shodan Toolbox

![image](https://github.com/TaxPRiNTER/EishLOQ-Shodan-Toolbox/assets/146424699/9fd413b8-2241-4c54-ac80-6a418b862cb2)

EishLOQ is a Bash script designed to streamline interactions with Shodan, a powerful search engine for internet-connected devices. It offers a user-friendly interface for submitting IPs for scanning, performing targeted searches, and checking detailed host information.

## ❌ Errors
- **socktype: SOCK_RAW ping: socket: Operation not permitted ping: => missing cap_net_raw+p capability or setuid?**
  #### Fix: ```sudo setcap cap_net_raw+ep /bin/ping```

--------

- **Unable to retrieve IP address for**
  #### Fix: ```Remove anything after / on a url. For example: https://github.com/TaxPRiNTER/ (REMOVE TaxPRiNTER)```

  




## Features

- **Submit IP for Scan:** Easily submit IPs for scanning with a simple user prompt.
- **Search:** Conduct targeted searches using Shodan's capabilities.
- **Check Host by IP:** Retrieve detailed information about a specific host.
- **Organization Information:** Obtain details about organizations based on name.
- **Ping Website and Search by IP:** Get the IP from a website via ping and perform a Shodan host search.
- **Scan Raw IP:** Directly scan raw IP addresses without validation.
- **Download and Parse Shodan Results:** Download Shodan results based on a query and parse the downloaded file to extract IP addresses.
- **Clear:** Clear the terminal screen for a clean interface.
- **Colorful Interface:** Enjoy colorful prompts and ASCII art for an engaging experience.

## Usage

1. Clone the repository:

    ```bash
    git clone https://github.com/TaxPRiNTER/EishLOQ-Shodan-Toolbox.git
    cd EishLOQ-Shodan-Toolbox
    ```

2. Make the script executable:

    ```bash
    chmod +x eishloq.sh
    ```

3. Run the script:

    ```bash
    ./eishloq.sh
    ```

## Updates

### Version 1.0.3

- **New Feature:** Added `Download and Parse Shodan Results` option to download Shodan results based on a query and parse the downloaded file to extract IP addresses.
- **Enhancement:** Maintained ASCII art after clearing the screen.
- **Note:** Remove any extra characters after '/' at the domain.

### Version 1.0.2

- **New Feature:** Added `Scan Raw IP` option to directly scan raw IP addresses.
- **New Feature:** Added `Clear` option to clear the terminal screen.
- **Enhancement:** Maintained ASCII art after clearing the screen.
- **Note:** Remove any extra characters after '/' at the domain.

### Version 1.0.1

- **New Feature:** Added `pingAndSearch` function to get the IP from a website via ping and perform a Shodan host search.
- **Enhancement:** Improved the overall user experience.
- **Note:** Remove any extra characters after '/' at the domain.

## Disclaimer

⚠️ This tool is for educational purposes only. The author is not responsible for any misuse or damage caused. Use responsibly and respect applicable laws and regulations.
