# BREW SETUP
# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# stop analytics
brew analytics off
# install packages and casks
brew bundle --file="Brewfile"
# update and cleanup
brew update && brew upgrade && brew autoremove && brew cleanup && brew doctor

# SHELL SETUP
# add bash 5.2 and fish to etc/shells
echo /usr/local/bin/bash | sudo tee -a /etc/shells
echo /usr/local/bin/fish | sudo tee -a /etc/shells
# set fish as default shell
chsh -s /usr/local/bin/fish
#check version
fish -v

# UV SETUP      [PYTHON]
# install UV
curl -LsSf https://astral.sh/uv/install.sh | sh
# update
uv self update
# bash
echo 'eval "$(uv generate-shell-completion bash)"' >> ~/.profile
echo 'eval "$(uvx --generate-shell-completion bash)"' >> ~/.bashrc
# fish
echo 'uv generate-shell-completion fish | source' >> ~/.config/fish/completions/uv.fish
echo 'uvx --generate-shell-completion fish | source' >> ~/.config/fish/completions/uvx.fish

# RUSTUP SETUP  [RUST]
# install RUSTUP
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
# update
rustup update stable
