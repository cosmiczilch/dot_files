source ~/.bash_aliases

export PS1="\[$(tput bold)\]\[$(tput setaf 2)\]█\[$(tput sgr0)\]\[$(tput setaf 6)\] [\w] \[$(tput bold)\]\[$(tput setaf 2)\]★  \[$(tput sgr0)\]\[$(tput sgr0)\]"

export ANDROID_HOME=~/Library/Android/sdk

PERL_MB_OPT="--install_base \"/Users/avi/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/avi/perl5"; export PERL_MM_OPT;

eval $(thefuck --alias)

