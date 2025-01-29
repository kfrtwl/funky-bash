#! bash oh-my-bash.module

# Taken from Tassilo's Blog
# https://tsdh.wordpress.com/2007/12/06/my-funky-zsh-prompt/

# translated from zsh to bash

bash_op='\[\033[34m\][\[\033[0m\]'
blue_cp='\[\033[34m\]]\[\033[0m\]'
green='\[\033[32m\]'
red='\[\033[31m\]'

path_p="${blue_op}\w${blue_cp}"
user_host="${blue_op}\u@\h${blue_cp}"
ret_status="${blue_op}\$?${blue_cp}"
hist_no="${blue_op}\!${blue_cp}"

smiley='$(if [[    $? -eq 0 ]]; then echo -e "${green}:)";    else echo -e "${red}:("; fi)'

PS1="╭─${path_p}─${user_host}─${ret_status}─${hist_no}
╰─${blue_op}${smiley}${blue_cp} $ "

PS2="${blueop}${blue_cp}> "
