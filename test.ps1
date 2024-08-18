# Define the temporary file and the database
$tempFile = "temp.txt"
$database = "sales.db"

# Loop through numbers 1 to 20
for ($i = 1; $i -le 20; $i++) {
    # Format the number with leading zeros
    $number = "{0:D2}" -f $i
    $script = "$number.sql"
    $output = "answers/${number}-output.txt"

    # Clear the temporary file
    Clear-Content -Path $tempFile -Force

    # Execute the SQL script and append the output to the temporary file
    & sqlite3 $database < $script | Out-File -Append -FilePath $tempFile

    # Compare the temporary file with the expected output
    $diff = Compare-Object -ReferenceObject (Get-Content $output) -DifferenceObject (Get-Content $tempFile)

    if ($diff -eq $null) {
        Write-Output "$script Correct!"
    } else {
        Write-Output "$script Wrong! :("
    }
}