[CmdletBinding ()]
Param (
  [Parameter (Mandatory = $true, position = 0)]
   [String] $SourceFile,
	
   [Parameter (Mandatory = $true, position = 1)]
   [String] $DestinationFile,
   
   [Parameter (Mandatory = $false, position = 2)]
   [Int] $NumFiles = 1
)

$count = 0
If ($numFiles -lt 1) {$numFiles = 1}

$index = $DestinationFile.LastIndexOf('.')
$base = $DestinationFile.Substring(0, $index)
$extension = $DestinationFile.Substring($index + 1)

While ($count -lt $numFiles) {
	$DestinationFile = "$base$count.$extension"
	$count += 1
	If ((Test-Path $DestinationFile) -eq $false) {
		New-Item -ItemType File -Path $DestinationFile -Force
	} 
	Copy-Item -Path $SourceFile -Destination $DestinationFile 
}