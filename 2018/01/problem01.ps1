$path = '.\input.data'
$data = Get-Content -Path $path

$frequency = 0
foreach($line in $data)
{
    [int]$value = 0
    if([int]::TryParse($line,[ref]$value))
    {
        $frequency += $value
    }
    else
    {
        throw 'Parsing error'
    }
}
$frequency