

param(

    $unit = '1gb'
)
$unitName = "Free space in " + $unit.Substring(1,2)

Get-CimInstance  -class Win32_LogicalDisk | select deviceid, FreeSpace, @{n= $unitName;e={$_.FreeSpace/$unit -as [int]}}


