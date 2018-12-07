$path = '.\input.data'
$data = Get-Content -Path $path

$frequencyMap = [System.Collections.Generic.HashSet[int]]::new()
$frequency = 0
:mainLoop while ($true)
{
    Write-Verbose "looping again" -Verbose
    foreach ($line in ($data * 20))
    {
        #Write-Verbose "[$line]" -Verbose
        [int]$value = 0
        if ([int]::TryParse($line, [ref]$value))
        {
            $frequency += $value
            #Write-Verbose "  F [$frequency]" -Verbose
            if ( -not ( $frequencyMap.Add($frequency) ) )
            {
                Write-Verbose "  Duplicate found" -Verbose
                break mainLoop
            }
        }
        else
        {
            throw 'Parsing error'
        }
    }
}
$frequency