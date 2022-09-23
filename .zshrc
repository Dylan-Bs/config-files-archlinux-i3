# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/dylan/.oh-my-zsh"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/data/Documents/CloudInfracstuture/Cours6/google-cloud-sdk/path.zsh.inc' ]; then . '/data/Documents/CloudInfracstuture/Cours6/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/data/Documents/CloudInfracstuture/Cours6/google-cloud-sdk/completion.zsh.inc' ]; then . '/data/Documents/CloudInfracstuture/Cours6/google-cloud-sdk/completion.zsh.inc'; fi

# added by Anaconda3 installer
#export PATH="/home/dylan/anaconda3/bin:$PATH"

# powerline-daemon -q 
# . /usr/lib/python3.7/site-packages/powerline/bindings/zsh/powerline.zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Remove the green background on other accesible files
export LS_COLORS="$LS_COLORS:ow=1;34:tw=1;34:"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  archlinux
  zsh-autosuggestions
  common-aliases
  python
  pylint
  screen
  history
  systemd
  web-search
  docker
  vscode
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nano'
else
  export EDITOR='nano'
fi

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Bash Configuration
# Ne pas enregistrer les commandes qui commencent par un espace
export HISTCONTROL="ignorespace"
# Ne pas afficher les commandes dupliquées qui se suivent
export HISTCONTROL="ignoredups"
# Nombre de lignes affichés avec la command history
export HISTSIZE=1000
# Nombre de ligne dans le fichier history
export HISTFILESIZE=10000
# On ignore les commandes ls et cd de l'historique
export HISTIGNORE="ls*:cd*"
# Ajout de la date dans l''historique
export HISTTIMEFORMAT="%d/%m/%Y %H:%M:%S "
# Sauvegarde de l'historique quand il y a plusieurs shell ouverts
setopt autocd histappend


# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases

# System
alias .="cd .."
alias ..="cd ../.."
alias ...="cd ../../.."
alias ....="cd ../../../.."
alias projecteur="xrandr --output HDMI2 --mode 1920x1080 --same-as eDP1"
alias double_ecran="xrandr --output HDMI2 --mode 1920x1080 --right-of eDP1"
alias simple_ecran="xrandr --output HDMI2 --off "
# App
alias red="killall redshift && redshift -O 3500"
alias wakfu="/./data/Documents/Wakfu\ Linux/Wakfu/Wakfu &"
alias russie="sudo create_ap wlp4s0 enp0s31f6 Dylan Toulouse31180 --country FR --mac 12:12:12:12:12:12 --daemon"
alias tf="source ~/tensorflow/bin/activate"
alias sqldev="/opt/sqldeveloper/sqldeveloper.sh"
alias startphpmyadmin="sudo systemctl restart httpd.service mysqld && echo 'lien web : localhost/phpmyadmin'"
alias ecouteurs="Documents/Autres/bluetoothEcouteurs.sh"
alias jn="jupyter-notebook &> /dev/null &"
alias kjn="killall jupyter-noteboo"

# Network
alias vpn='f() {systemctl $1 openvpn-client@eisti.students};f'
alias cg='f() {nmcli connection $1 cybergohst};f'
alias nsu="ssh -X -p 10022 dylan@gw.ccfit.nsu.ru -L localhost:8888:localhost:8888"

# echo Salut $USER, nous sommes le `date +"%A %e %B %Y"`, et il est : `date +"%H"` h `date +"%M"` | cowsay -f blowfish.cow
# Open new terminal
# chuck_cow
