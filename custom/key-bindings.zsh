# keybindings for gnome-terminal

# zkbd output
typeset -g -A key

key[F1]=''
key[F2]='OQ'
key[F3]='OR'
key[F4]='OS'
key[F5]='[15~'
key[F6]='[17~'
key[F7]='[18~'
key[F8]='[19~'
key[F9]='[20~'
key[F10]='[21~'
key[F11]=''
key[F12]='[24~'
key[Backspace]=''
key[Insert]='[2~'
key[Home]='OH'
key[PageUp]='[5~'
key[Delete]='[3~'
key[End]='OF'
key[PageDown]='[6~'
key[Up]='[A'
key[Left]='[D'
key[Down]='[B'
key[Right]='[C'
key[Menu]=''
# end of zkbd output

# move to where the arguments begin
after-first-word() {
  zle beginning-of-line
  zle forward-word
}

zle -N after-first-word

#  actually bind the keys
bindkey -me 2>/dev/null
#bindkey ""			beginning-of-line
#bindkey ""			end-of-line
bindkey ""			backward-kill-word
bindkey ""			kill-region
bindkey "${key[Home]}"          beginning-of-line
bindkey "${key[End]}"           end-of-line
bindkey "${key[Insert]}"        overwrite-mode
bindkey "${key[Delete]}"        delete-char
bindkey "${key[Up]}"            history-search-backward #up-line-or-history
bindkey "${key[Down]}"          history-search-forward # down-line-or-history
bindkey "${key[Left]}"          backward-char
bindkey "${key[Right]}"         forward-char

bindkey '^X1' after-first-word
bindkey 'p' history-beginning-search-backward
bindkey 'n' history-beginning-search-forward

