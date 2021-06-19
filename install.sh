#/bin/bash

printf "\n🚀 Installing pre-compiled Rust programs\n"
mv ./binaries/* /usr/local/bin

printf "\n🚀 Installing fzf\n"

# Clone fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf

# Install fzf
~/.fzf/install

printf "\n🚀 Installing fast node manager\n"

# Instal fast node manager
curl -fsSL https://fnm.vercel.app/install | bash

printf "\n🚀 Installing oh-my-zsh\n"

# Install oh-my-zsh
RUNZSH="no" sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

printf "\n🚀 Linking dotfiles\n"

ln -sf "$(pwd)/zsh/.zshrc" "${HOME}/.zshrc"
ln -sf "$(pwd)/zsh/zeb.zsh-theme" "${HOME}/.oh-my-zsh/custom/themes/"

printf "\n🚀 Setting zsh to default shell\n"
chsh -s /bin/zsh

printf "\n🚀 Done!\n"


zsh