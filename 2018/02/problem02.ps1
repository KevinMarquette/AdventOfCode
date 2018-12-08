$path = '.\input.data'
$data = Get-Content -Path $path

:mainLoop foreach($primary in $data)
{
    :secondLoop foreach($secondary in $data)
    { # O(n^2)
        $diffCount = 0
        $diffIndex = 0
        for($index = 0; $index -lt $primary.length; $index++)
        {
            if($primary[$index] -ne $secondary[$index])
            {
                $diffCount++
                $diffIndex = $index
                if($diffCount -gt 1)
                {
                    continue secondLoop
                }
            }
        }
        if ($diffCount -eq 1)
        {
            break mainLoop
        }
    }
}

# xpysnnkqrbuhefmcajodplyzw