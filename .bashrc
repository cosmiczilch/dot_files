source ~/.bash_aliases
source ~/.shellrc

export PS1="\[$(tput bold)\]\[$(tput setaf 2)\]█\[$(tput sgr0)\]\[$(tput setaf 6)\] [\w] \[$(tput bold)\]\[$(tput setaf 2)\]★  \[$(tput sgr0)\]\[$(tput sgr0)\]"

export ANDROID_HOME=~/Library/Android/sdk
export RANGER_LOAD_DEFAULT_RC=false

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_131.jdk/Contents/Home

PERL_MB_OPT="--install_base \"/Users/avi/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/avi/perl5"; export PERL_MM_OPT;

export PATH=~/.npm-global/bin:$PATH

eval $(thefuck --alias)
