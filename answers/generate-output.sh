for i in {1..20}
do
    number=$(printf "%02d" $i)
    script="${number}.sql"
    output="${number}-output.txt"

    sqlite3 ../sales.db < $script >> $output
done