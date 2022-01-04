source /opt/homebrew/share/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle heroku
antigen bundle bundler
antigen bundle colored-man-pages
antigen bundle asdf

antigen bundle ssh-agent
zstyle :omz:plugins:ssh-agent lazy yes
zstyle :omz:plugins:ssh-agent identities id_ed25519
zstyle :omz:plugins:ssh-agent agent-forwarding yes

antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme robbyrussell
antigen apply
