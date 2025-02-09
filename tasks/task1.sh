# edit task1.sh...
sh infinite.sh

# finds process id of infinite.sh and kills it
kill -9 $(ps aux | grep '[s]h infinite.sh' | gawk '{print $2}')