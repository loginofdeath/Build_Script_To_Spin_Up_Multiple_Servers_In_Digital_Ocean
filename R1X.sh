# ::|\ ________ /|:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: #
# ::| |        | |:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: #
# ::| | remote | |:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: #
# ::| !________! |:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: #
# ::!/          \!:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: #

#yes
export username="$1"

sh -c 'echo "set const" >> .nanorc'

sh -c 'echo "set tabsize 8" >> .nanorc'

sh -c 'echo "set tabstospaces" >> .nanorc'

adduser --disabled-password --gecos "" $username

usermod -aG sudo $username

cp .nanorc /home/$username/

mkdir /etc/ssh/$username

exit