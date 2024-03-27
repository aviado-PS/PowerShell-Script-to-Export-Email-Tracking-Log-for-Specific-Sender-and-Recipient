# PowerShell Script to Export Email Tracking Log for Specific Sender and Recipient

# Define the sender and recipient email addresses
$sender = sender@gmail.com
$recipient = recipient@gmail.com

# Define the start and end dates for the log search (last 24 hours)
$startDate = (Get-Date).AddHours(-24)
$endDate = Get-Date

# Define the path for the output CSV file
$outputFilePath = "C:\temp\email_tracking_log.csv"

# Create the output directory if it doesn't exist
if (-not (Test-Path "C:\temp")) {
    New-Item -ItemType Directory -Path "C:\temp"
}

# Initialize an array to hold all results
$results = @()

# Search the message tracking logs for emails sent from the specified sender to the specified recipient
$logs = Get-MessageTrackingLog -Sender $sender -Recipients $recipient -Start $startDate -End $endDate -EventID "RECEIVE" |
        Select-Object Timestamp, Sender, Recipients, MessageSubject, Source, EventId

$results += $logs

# Export the results to a CSV file
$results | Export-Csv -Path $outputFilePath -NoTypeInformation

# Note: The script searches for emails sent from sender@gmail.com to recipient@gmail.com in the last 24 hours.
# It exports the data, including Timestamp, Sender, Recipient, Subject, Source, and Event ID, to a CSV file located in C:\temp.
