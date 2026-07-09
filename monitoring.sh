# !/bin/bash/

# Monitoring  script

disk=$( df -h | awk 'NR==2 { print $4 }' )
cpu=$( top -bn1 | grep Cpu | awk '{ print $3 }')
memory= $( free -h | awk NR==2 { print $3}')

echo "Disk usage: $disk"
echo "CUp usage: $cpu"
echo "Memory usage: $memeory"


