# export path for my customized toolchain
export PATH=$PATH:$HOME/x-tools/arm-cortex_a8-linux-gnueabihf/bin

# export path for my customized toolchain
export PATH=$PATH:$HOME/x-tools/arm-unknown-linux-gnueabi/bin

# export path for arm toolchain
export PATH=$PATH:/opt/gcc-arm-none-eabi-9-2020-q2-update/bin

# export path for euby
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"

# export path for golag
export PATH=$PATH:/usr/local/go/bin
export PATH=~/.local/bin:"$PATH"

# export path for espressif developement environment
alias get_idf='. $HOME/esp/esp-idf/export.sh'
