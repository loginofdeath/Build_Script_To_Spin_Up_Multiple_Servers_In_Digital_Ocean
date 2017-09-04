# ::|\ _______ /|::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: #
# ::| |       | |::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: #
# ::| | local | |::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: #
# ::| !_______! |::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: #
# ::!/         \!::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: #
export IP="$1"
export USERNAME="$2"

scp /Users/$USER/.ssh/id_rsa.pub root@$IP:/etc/ssh/$USERNAME/authorized_keys

scp .credentials root@$IP:/home/$USERNAME/

#ssh root@139.59.76.110