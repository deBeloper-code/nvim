# JDK
export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-17.jdk/Contents/Home 


autoload -Uz add-zsh-hook
function iterm2_tab_title() {
  echo -ne "\033]0;$(basename "$PWD")\007"
}
add-zsh-hook precmd iterm2_tab_title



export PATH="$HOME/Documents/sonar-scanner-6.2.1.4610-macosx-aarch64/bin:$PATH"

#Python
export PATH="/Library/Frameworks/Python.framework/Versions/3.12/bin/pip3:$PATH"



# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/powerlevel10k/powerlevel10k.zsh-theme

 export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh



# Alias

alias digital="cd ~/Documents/meWal/digitalassistant-intl-mini"
alias digital-api="cd ~/Documents/meWal/NLP-DigitalAssistant-API"
alias askSam="cd ~/Documents/meWal/asksam-mini-app"
alias meWal="cd ~/Documents/meWal/mystore-international-composite"
alias prodlook-api="cd ~/Documents/meWal/asksam-productlookup"

# Hackaton
alias chat="cd ~/Documents/hackaton/chatbot_proyect"

# Yabai
alias yar="yabai --restart-service"

# TMUX
alias tmux='tmux -u'

# ANDROID EMU
alias emu='cd ~/Library/Android/sdk/emulator && ./emulator -avd Pixel_4_API_34'


alias setup='./open-chrome.sh && ./setup.sh'
alias takedown='osascript -e '\''tell application "Google Chrome" to quit'\'' -e '\''tell application "Microsoft Teams" to quit'\'' -e '\''tell application "Microsoft Outlook" to quit'\'

# Scripts Proxy
alias p="source ~/set_proxy.sh"


test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init --path)"
  eval "$(pyenv init -)"
fi
# export PATH="$HOME/.jenv/bin:$PATH"
# eval "$(jenv init -)"
#sledge:binary path
export SLEDGE_BIN=/Users/b0s0kdu/.sledge/bin
export PATH="${PATH}:${SLEDGE_BIN}"

export ANDROID_HOME=$HOME/Library/Android/sdk
export ANDROID_SDK_ROOT=$ANDROID_HOME
export PATH=$ANDROID_HOME/platform-tools:$ANDROID_HOME/emulator:$ANDROID_HOME/cmdline-tools/latest/bin:$PATH
