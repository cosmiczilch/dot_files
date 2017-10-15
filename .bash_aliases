alias l='ls'
alias ll='ls -lh'

alias ranger='/Users/avi/sandbox/tools/ranger/ranger-1.7.2/ranger.py'

alias taila='tail -f /Applications/MAMP/logs/apache_access_log'
alias taillog='tail -f /Applications/MAMP/logs/php_error.log'

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

alias adbinstall='~/sandbox/scripts/adbinstall.sh'
alias adbreinstall='~/sandbox/scripts/adbreinstall.sh'
alias adbrestart='~/sandbox/scripts/adbrestart.sh'
alias adbquit='~/sandbox/scripts/adbquit.sh'

function git_diff() {
      git diff --no-ext-diff -w "$@" | vim -R –
}

alias gigha='ssh root@amie.hkmr.in'
alias sand='cd ~/sandbox'
alias timi='cd ~/sandbox/Projects/timi_tracking'

alias htdocs='/Applications/MAMP/htdocs'
alias phpsh='~/bin/phpsh'

alias octave='/usr/local/octave/3.8.0/bin/octave-3.8.0'
