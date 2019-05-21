# Variables
# Delete the buld Artifacts older than:
$DateForCompare1 = (Get-Date).AddDays(-137)
$ServiceUserName = "_tfsservice"

# I divided the deletion for the Deployment and Result folders only for the example
# Possibly, will be enough to delete all build artifacts older than (n days)

# Delete Test run Deployment (older then 1 Week) folders exclude Results folders

$PathToDelete = "C:\Users\$ServiceUserName\AppData\Local\VSEQT\QTController"
$ExcludeFolder = "Results"

$targets = @(Get-ChildItem $PathToDelete -Exclude $ExcludeFolder | Where {$_.psIsContainer -eq $true -and $_.CreationTime -lt $DateForCompare1})

if ($targets.Count -ne 0)
{
	"Deleting:"
	$targets
	$targets | Remove-Item -Recurse -Force
}

# Delete test run Results folders older than 2 Weeks

$targets = @(Get-ChildItem $PathToDelete | Where {$_.psIsContainer -eq $true -and $_.CreationTime -lt $DateForCompare2})

if ($targets.Count -ne 0)
{
	"Deleting:"
	$targets
	$targets | Remove-Item -Recurse -Force
}
