# Watermark Automation Script

This PowerShell script automates the process of adding watermarks to PNG images. It takes images from a specified source directory, applies a watermark, and saves the watermarked images to a designated destination directory.

## Prerequisites

- PowerShell 5.0 or higher.
- The script assumes you have a watermark image named `aishorts.png` located in your source directory.
- The `ImagePlayground` module must be installed. Run the following command to install it:
  
  ```powershell
  Install-Module ImagePlayground -Force -Verbose

Ensure that your PowerShell execution policy is set to either Signed or Unrestricted to allow the script to run. Use the following command to check your execution policy:

Get-ExecutionPolicy

If necessary, change the execution policy with:

Set-ExecutionPolicy Unrestricted -Scope CurrentUser

Note: Changing the execution policy might expose you to security risks. Please consult your system administrator or follow your organization’s security policies.

Usage
Set Source and Destination Directories:

$SourceDirectory: The directory containing the original PNG files.
$DestinationDirectory: The directory where the watermarked images will be saved.

Check Destination Directory:

The script checks if the destination directory exists. If not, it creates one.

Watermarking Process:
The script retrieves all PNG files from the source directory.
It then applies a watermark to each image and saves them with the original name plus -WM in the destination directory.
Steps to Run the Script
Update the $SourceDirectory and $DestinationDirectory variables with your respective folder paths.
Place your watermark image in the source directory.
Ensure the ImagePlayground module is installed and the execution policy is set correctly.
Open PowerShell and navigate to the directory containing the script.
Run the script by typing ./name_of_script.ps1 (replace name_of_script with the actual script name).
Check the destination directory for the watermarked images.
Notes
Ensure that the watermark image path inside the script matches the location of your watermark image.
The script currently sets the watermark at the bottom right of the images with a 60% opacity and a margin of 7 pixels.
For any issues or further customization, please refer to the script comments or contact the script maintainer.


This README now includes the necessary steps to install the `ImagePlayground` module and set the appropriate execution policy. Make sure to replace `name_of_script.ps1` with the actual name of your PowerShell script file when instructing users to run it.

