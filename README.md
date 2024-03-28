# ExportEmailTrackingLog.ps1

A PowerShell script by Aviad Ofek designed to streamline the process of exporting email tracking logs for specific senders and recipients within the last 24 hours. The script filters logs based on sender and recipient email addresses, then exports relevant data—such as Timestamp, Sender, Recipients, Subject, Source, and Event ID—to a CSV file for easy analysis and record-keeping.

## Features

- **Selective Log Extraction**: Filters email logs for messages sent from a specified sender to a specified recipient.
- **Customizable Time Frame**: Searches email logs within the last 24 hours by default, with the option to adjust the timeframe as needed.
- **Automated Export**: Outputs detailed log data to a CSV file, simplifying data analysis and reporting tasks.
- **Ease of Use**: Automatically creates the output directory if it does not exist, ensuring smooth script execution.

## Prerequisites

- Microsoft Exchange Server or a compatible email service that supports `Get-MessageTrackingLog`.
- PowerShell access with sufficient permissions to execute the `Get-MessageTrackingLog` cmdlet and write to the desired output location.

## Setup and Execution

1. **Prepare the Script**: Save the script as `ExportEmailTrackingLog.ps1` on your machine.
2. **Customize Parameters**: Modify the `$sender` and `$recipient` variables in the script to reflect the email addresses you wish to track.
3. **Execute the Script**: Run the script via PowerShell with administrative privileges to ensure proper access to log data and file system operations.
4. **Review the Output**: Navigate to `C:\temp\` to find the `email_tracking_log.csv` file, which contains your exported data.

## How It Works

The script operates by defining two main parameters—`$sender` and `$recipient`—to filter the email logs. It then sets a 24-hour window from the current time to define the search's start and end dates. Utilizing the `Get-MessageTrackingLog` cmdlet, the script filters the logs based on these criteria and exports the findings into a CSV file for easy analysis and record-keeping.

## Author

[aviado1](https://github.com/aviado1) - This script was developed with the aim of enhancing system administration tasks and streamlining the process of email log tracking.


## Note

This script is tailored for environments where `Get-MessageTrackingLog` is a supported cmdlet, typically Exchange Server or similar email services. Please verify compatibility and permissions before use.
