# EishLOQ Shodan Toolbox

![image](https://github.com/TaxPRiNTER/EishLOQ-Shodan-Toolbox/assets/146424699/9fd413b8-2241-4c54-ac80-6a418b862cb2)

EishLOQ is a Bash script designed to streamline interactions with Shodan, a powerful search engine for internet-connected devices. It offers a user-friendly interface for submitting IPs for scanning, performing targeted searches, and checking detailed host information.

⚠️ **Disclaimer: This script is for educational purposes only. Use responsibly, and the author is not responsible for any misuse or unintended consequences.**

## Features

- **Submit IP for Scan:** Easily submit IPs for scanning with a simple user prompt.
- **Search:** Conduct targeted searches using Shodan's capabilities.
- **Check Host by IP:** Retrieve detailed information about a specific host.
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

### Version 1.0.2

- **New Feature:** Added `pingAndSearch` function to get the IP from a website via ping and perform a Shodan host search.
- **Enhancement:** Improved the overall user experience.
- **Note:** When using option 5, remove any extra characters after '/' at the domain for accurate results.

### Version 1.0.1

- **New Feature:** Added more color and ASCII art for an enhanced visual experience.
- **Enhancement:** Improved the overall user interface.

## License

This project is licensed under the [MIT License](LICENSE.md) - see the [LICENSE.md](LICENSE.md) file for details.

## Contributing

Contributions are welcome! Feel free to open issues or submit pull requests.

## Acknowledgements

Special thanks to the [Shodan](https://www.shodan.io/) team for their powerful search engine.

## Author

TaxPRiNTER

[GitHub](https://github.com/TaxPRiNTER)
