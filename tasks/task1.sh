# edit task1.sh...
sh infinite.sh

# finds process id of infinite.sh and kills it
# '[s]h' has the [] around 's' so that grep doesn't return its own pid after searching for 'sh infinite.sh'
# 'aux' after ps shows more columns in ps table
kill -9 $(ps aux | grep '[s]h infinite.sh' | gawk '{print $2}')