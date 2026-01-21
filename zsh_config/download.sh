# 网络配置（如果需要）
export http_proxy=http://127.0.0.1:7897
export https_proxy=http://127.0.0.1:7897

# 下载 oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# 创建了 ～/.zshrc 文件，可在其中修改配置
# 如果使用 ZSH_THEME="agnoster"，还需要下载下面两个文件
## 安装语法高亮
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-～/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
## 安装自动建议
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-～/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# 建议直接使用 powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
# 配置可新打开一个终端自行配置，或者直接使用 .p10k.zsh 文件。注意此文件应当位于 ～/.p10k.zsh
