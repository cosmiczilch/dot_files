alias l='ls'
alias ll='ls -lh'

alias ranger='/Users/avi/sandbox/tools/ranger/ranger-1.7.2/ranger.py'

alias taillog='tail -f /var/log/apache2/error_log'

alias tabspace='git status | grep ".cs" | grep -v "renamed" | grep -v ".meta" | cut -d " " -f 4- | xargs -I fileName sed -i "" -f ~/sandbox/sedcmdfile fileName'
alias formatstaged='~/Projects/storm8/tools/EngTools/astyle/formatstaged.sh'

alias killu='ps aux | grep -iI "/Applications" | grep -iI "Contents\/MacOS\/Unity" | grep -vi "Helper" | tr -s " " | cut -d " " -f 2 | xargs -I varName kill -9 varName'

findguid () {
    # Greps for occurances of the guid of the passed in unity asset file
    find . -name "$1"".meta" | xargs -I filePath head -n 2 filePath | tail -n 1 | tr -s " " | cut -d " " -f 2 | xargs -I guid grep -RIn guid * | grep -v "pristine"
}

findbyguid () {
    # Greps for occurances of the guid
    grep -Rin "$1" * | grep -v "pristine"
}

bcl () {
    echo "$@" | tr 'x' '*' | bc -l
}

alias gits='git status'
alias githard='git reset HEAD --hard'
alias gitch='git checkout'

alias adbinstall='adb install'
alias adbreinstall='adb uninstall $PACKAGE_NAME; adb install'
alias adbrestart='~/sandbox/scripts/adbrestart.sh'
alias adbquit='~/sandbox/scripts/adbquit.sh'

function git_diff() {
      git diff --no-ext-diff -w "$@" | vim -R –
}

alias gigha='ssh root@amie.hkmr.in'
alias sand='cd ~/sandbox'
alias Projects='cd ~/sandbox/Projects'

alias httpdconf='sudo vim /etc/apache2/httpd.conf'
alias httpvconf='sudo vim /private/etc/apache2/extra/httpd-vhosts.conf'
alias hosts='sudo vim /etc/hosts'
alias phpsh='~/bin/phpsh'

alias octave='/usr/local/octave/3.8.0/bin/octave-3.8.0'

alias ssh='~/sandbox/tools/colorssh/colorssh.sh'
alias devserver='ssh -i ~/.ssh/aws_keys/aws-spacetimi-webserver-dev--1.pem ubuntu@52.201.225.87'
alias redisserver='/Users/avi/sandbox/tools/redis/redis-4.0.10/src/redis-server'
alias rediscli='/Users/avi/sandbox/tools/redis/redis-4.0.10/src/redis-cli'

alias bashaliases='vim ~/.bash_aliases; source ~/.bash_aliases'

# Create as alias for nuget
alias nuget="mono /usr/local/bin/nuget.exe"

alias bf='boxfuse'
alias bfkilllocal='boxfuse ps | grep "http://127" | cut -d " " -f 2 | xargs -I instance_id  boxfuse kill -env=dev instance_id;'

alias dkkillall='docker ps | grep -v "CONTAINER ID" | cut -d " " -f 1 | xargs -I container_id docker kill container_id'
dkbuild () {
    # Builds a docker container for bonda
    docker build -t bonda-server -f /Users/avi/go/src/github.com/spacetimi/server/Dockerfile_bonda .
}
dkrun() {
    # Run the docker container for bonda against $1 environment
    if [[ "$@" == "Local" ]] || [[ "$@" == "Test" ]]
    then
        docker run --restart always -d -e app_environment=$1 --publish 8000:8000 bonda-server
    else
        echo "Usage: dkrun <Local|Test>"
    fi
}
