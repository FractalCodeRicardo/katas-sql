tempFile="temp.txt"
for i in {1..20}
do
    number=$(printf "%02d" $i)
    script="${number}.sql"

    output="answers/${number}-output.txt"
    
    > $tempFile

    sqlite3 sales.db < $script >> $tempFile

    if diff -q $tempFile $output > /dev/null; then
    echo "$script Correct!"  
    else
    echo "$script Wrong! :("  
    fi
done