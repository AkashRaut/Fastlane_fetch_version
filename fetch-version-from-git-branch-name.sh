git log --first-parent --merges -1 --oneline master > branch_name.txt
sed 's/.*\///' branch_name.txt
