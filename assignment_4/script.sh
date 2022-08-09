grep -o "[0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+" test_cases.txt | sort | uniq -c | sort -rn
