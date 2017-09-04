export IP="$1"
export username="$2"
export password="$3"
export port="$4"

ssh root@$IP 'bash -s' < R1X.sh $username

./L2X.sh $IP $username

ssh root@$IP 'bash -s' < R2X.sh $IP $username $password $port

