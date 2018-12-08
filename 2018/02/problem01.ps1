$path = '.\input.data'
$data = Get-Content -Path $path

$double = 0
$tripple = 0

foreach($line in $data)
{
    $counter=@{}
    foreach($letter in $line.ToCharArray())
    {
        $counter[$letter] += 1
    }
    
    if($counter.Values -contains 2)
    {
        $double++
    }
    if($counter.Values -contains 3)
    {
        $tripple++
    }
}
$double * $tripple