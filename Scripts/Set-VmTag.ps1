param (
    [Parameter(Mandatory = $true)] 
    [string] $VmId,

    [Parameter(Mandatory = $true)] 
    [string] $Tags
)
$tagArray = ConvertFrom-Json $Tags -AsHashtable
foreach($tag in $tagArray){
    Update-AzTag -ResourceId $VmId -Tag $tag -Operation Merge
}