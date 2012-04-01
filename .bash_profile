### Bash Profile ###


## Source auxiliary bash files

[ -r "~/.mlstate" ] && source "~/.mlstate"

for file in ~/.bash/{prompt,complete}; do
    [ -r "$file" ] && source "$file"
done
for file in ~/.source/{exports,aliases,functions,extra}; do
    [ -r "$file" ] && source "$file"
done
unset file


## Shopt

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Append to the Bash history file, rather than overwriting it
shopt -s histappend
# shopt -s histreedit

# Autocorrect typos in path names when using `cd`
# shopt -s cdspell


## Bind

# bind '"\e[A": history-search-backward'
# bind '"\e[B": history-search-forward'