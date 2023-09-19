# handling this dataset in csv format: https://catalog.data.gov/dataset/walkability-index

cat datasets/EPASmartLocationDatabaseV3.csv \
| awk -F ',' 'NR > 1 { print $17 }' \
| R --no-echo -e 'x <- scan(file="stdin", quiet=TRUE); summary(x)'
#| awk -F ',' '{ printf("%s %s\n", $17, $21) }' # extracting field 17 and 21, which are numerical columns

echo "== Difference of the sum of field 17 and field 21"

# the tail call is to ignore the first line, i.e., the heading 
cat datasets/EPASmartLocationDatabaseV3.csv \
| tail -n+2 \
| awk -F ',' '
    {sum1 += $17; sum2 += $21}
    END { print sum1 - sum2, sum1, sum2 }
'

