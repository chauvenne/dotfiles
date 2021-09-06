export ZSH="/home/remichauvenne/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git
         zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# User configuration

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#

## Docker aliases
alias dk="docker"
alias dki="dk images"
alias dkps="dk ps"
alias dkstats="dk stats"
dkr(){
     dk run --rm $1
}
dkrb(){
     dk run --rm -it $1 /bin/bash
}
dkeb() {
     docker exec -it $1 /bin/sh
}

# Pip aliases
alias pipr='pip install -r requirements.txt'
alias pipe='pip install -e .'


# Set vim mode
bindkey -v
# Make Vi mode transitions faster (KEYTIMEOUT is in hundredths of a second)
export KEYTIMEOUT=1

# Activate default conda env
export PATH=~/anaconda3/bin:$PATH
source ~/anaconda3/bin/activate
conda activate rch

 source ~/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
