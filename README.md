# CPU Information Emailer Script

## Overview

This shell script is designed to send daily emails containing CPU information to a specified user. It fetches the CPU details and sends them via email using the `mail` command.

## Prerequisites

- Linux environment
- `mail` command configured for sending emails
- You can refere this video for email configurations : https://youtu.be/bjkyUPZzYzk?si=o0rFvqsbSD0HAjuy
- Cron job set up for scheduling daily execution

## Usage

1. Clone the repository:

    ```bash
    git clone https://github.com/maulik4107/CPU-Info-Sender.git
    cd cpu-info-emailer
    ```

2. Configure the script:

    Open the `CpuInfo.sh` script and update the following variables:
   
    - uuencode CPUinfo.txt CPUinfo.txt | mail -s "Subject" -r <SenderEmail> <ReceipentEmail>
    - (Optional) Adjust any other settings or customize the email content as needed.

4. Schedule the script:

    Use `crontab -e` to open the cron table and add the following line to schedule the script to run daily at a specific time (e.g., 8:00 AM):

    ```bash
    0 8 * * * /path/to/CpuInfo.sh
    ```
    Save and exit.
    You can refer this video for setting the timing in cron tab : https://youtu.be/wtLx8KqASEs?si=8Xgw1Lz7_xrlX7BV
   
6. Save and run the script:

    ```bash
    chmod +x CpuInfo.sh
    ./CpuInfo.sh
    ```

## Example Email Content

The email will contain information such as:

- Current CPU usage
- Number of CPU cores
- CPU temperature (if applicable)

Feel free to customize the script to include additional information or modify the email content based on your needs.

## License

This script is licensed under the [MIT License](LICENSE).
