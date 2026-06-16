# Displays system status information at login

# Displays system health from simple_stats.log
echo >> ~/.bashrc
echo '# Display health check log at login' >> ~/.bashrc
echo 'echo' >> ~/.bashrc
echo "echo 'System Metrics:'" >> ~/.bashrc
echo 'cat /var/log/simple_stats.log' >> ~/.bashrc

# Display active process
echo >> ~/.bashrc
echo '# Display active process' >> ~/.bashrc
echo 'echo' >> ~/.bashrc
echo "echo 'Active Process'" >> ~/.bashrc
echo 'ps -eo pid= | wc -l' >> ~/.bashrc

# Displays logged in users
echo >> ~/.bashrc
echo '# Display active users' >> ~/.bashrc
echo 'echo' >> ~/.bashrc
echo 'echo Logged in users:' >> ~/.bashrc
echo 'users' >> ~/.bashrc

# Displays uptime
echo >> ~/.bashrc
echo '#Displays uptime' >> ~/.bashrc
echo 'echo $(uptime)' >> ~/.bashrc

#System shames you for gaps in practice
echo >> ~/.bashrc
echo '# System shames you for gaps in practice' >> ~/.bashrc
echo 'echo "Hello, $(whoami). Your last login was $(lastlog -u $(whoami) | awk 'NR==2 {print $4, $5, $6}'). Today is $(date | awk '{print $1, $2, $3}')."' >> ~/.bashrc

# Script self deletes 
rm -- "$0"