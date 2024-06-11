# Directory containing the PNG files
$SourceDirectory = "B:\AI\webui_forge_cu121_torch21\webui\output\extras-images\New folder\"
# Directory to save the watermarked images
$DestinationDirectory = "B:\AI\webui_forge_cu121_torch21\webui\output\extras-images\New folder\watermark\output\"

# Ensure the destination directory exists
if (!(Test-Path -Path $DestinationDirectory)) {
    New-Item -ItemType Directory -Path $DestinationDirectory | Out-Null
}

# Get all PNG files in the source directory
$FilePaths = Get-ChildItem -Path $SourceDirectory -Filter *.png

foreach ($FilePath in $FilePaths) {
    # Add watermark
    $Image = Get-Image -FilePath $FilePath.FullName
    $Image.WatermarkImage("B:\AI\webui_forge_cu121_torch21\webui\output\extras-images\New folder\watermark\aishorts.png", [ImagePlayground.Image+WatermarkPlacement]::Bottomright, 0.6, 7)
    
    # Save image with original name plus -WM
    $OutputPath = Join-Path -Path $DestinationDirectory -ChildPath ($FilePath.BaseName + "-WM" + $FilePath.Extension)
    Save-Image -Image $Image -Open -FilePath $OutputPath
}
