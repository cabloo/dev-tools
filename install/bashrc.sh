echo $'alias pass="</dev/urandom tr -dc \'12345!@#$%qwertQWERTasdfgASDFGzxcvbZXCVB\' | head -c8; echo \'\'"' >> ~/.bashrc
export PATH=$PATH:$HOME/scripts/bin