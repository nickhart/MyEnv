# check out this repository somewhere and add the following to your ~/.bash_profile file:
# if [ -f ~/MyEnv/bash_profile ]; then
#     . ~/MyEnv/bash_profile
# fi

if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
fi

if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

touchpch() {
    find . -name *.pch -print0 | xargs -0 touch
}

chbranch() {
    git checkout $1
    git pull origin $1
}
