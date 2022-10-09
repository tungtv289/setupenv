# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/trantung/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

DISABLE_UPDATE_PROMPT=true
DISABLE_AUTO_UPDATE=true

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    docker
    docker-compose
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

LS_COLORS='di=1:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=36:*.rpm=90'
export LS_COLORS

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/trantung/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/trantung/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/trantung/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/trantung/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# |==========================================
# | User configuration
# |==========================================

alias ll='colorls -lA --sd --group-directories-first'
alias ls='colorls --group-directories-first'
alias pwdx='sh ~/utilities/pwdx_for_mac.sh'
alias clean_cache='sh ~/utilities/clean_cache.sh'

#========= JAVA =========
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-11.0.12.jdk/Contents/Home
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/temurin-8.jdk/Contents/Home
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_202.jdk/Contents/Home

#========= HADDDOP =========
#export HADOOP_HOME=~/DE/Hadoop/hadoop-3.3.0
#export PATH=$PATH:$HADOOP_HOME/bin

#========= SPARK =========
export SPARK_HOME=~/utilities/spark-3.3.0-bin-hadoop2
export PATH=$PATH:$SPARK_HOME/bin

#========= ZOO =========
alias zooinspector='sh ~/utilities/zooinspector/target/zooinspector-pkg/bin/zooinspector.sh'
