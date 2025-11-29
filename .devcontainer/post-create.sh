#!/usr/bin/env bash

# Check if a Node.js project file exists, then install latest Node.js LTS and dependencies
if [ -f package.json ]; then
  bash -i -c "nvm install --lts && nvm install-latest-npm"
  npm i
  npm run build
fi

# Install dependencies for shfmt extension (a shell script formatter)
curl -sS https://webi.sh/shfmt | sh &>/dev/null

# --- Zsh Customization (Oh My Zsh - OMZ) ---

# Clone the zsh-syntax-highlighting plugin repository
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

# Clone the zsh-autosuggestions plugin repository
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions

# Enable the plugins in the .zshrc configuration file 
sed -i -E "s/^(plugins=\()(git)(\))/\1\2 zsh-syntax-highlighting zsh-autosuggestions\3/" ~/.zshrc

# Avoid git log use less
echo -e "\nunset LESS" >>~/.zshrc
