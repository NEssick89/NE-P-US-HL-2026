#Simple practice system health job
0 23 * * * { date ; iostat -m 2 2 | grep -v loop | tail -n 4 ; df -m ; free -m ; } > /var/log/simple_stats.log