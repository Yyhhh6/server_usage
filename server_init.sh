# 查看服务器的版本
## 命令
lsb_release -a

## 输出
Distributor ID: Ubuntu
Description:    Ubuntu 22.04.5 LTS
Release:        22.04
Codename:       jammy

# 更换apt为清华源
cd /etc/apt
cp sources.list sources.list.backup
nano sources.list
sudo apt update
sudo apt upgrade

# 安装基础工具
sudo apt install -y build-essential git curl wget tmux htop nvtop cmake unzip pciutils

# 查看驱动与GPU基本信息
nvidia-smi
nvidia-smi topo -m

# 安装miniconda
cd /data1
mkdir download
cd download
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh

# 创建用户
sudo useradd -s /bin/bash -m zbr
sudo passwd zbr
sudo usermod -aG sudo zbr

# 更换conda源和pip源
## 参考：https://mirrors.tuna.tsinghua.edu.cn/help/anaconda/
## 参考：https://mirrors.tuna.tsinghua.edu.cn/help/pypi/

# 安装cuda
## nvidia-smi版本为575.64.03
## 安装cuda 12.6
wget https://developer.download.nvidia.com/compute/cuda/12.6.0/local_installers/cuda_12.6.0_560.28.03_linux.run
sudo sh cuda_12.6.0_560.28.03_linux.run

# 安装cudnn
wget https://developer.download.nvidia.com/compute/cudnn/9.12.0/local_installers/cudnn-local-repo-ubuntu2204-9.12.0_1.0-1_amd64.deb
sudo dpkg -i cudnn-local-repo-ubuntu2204-9.12.0_1.0-1_amd64.deb
sudo cp /var/cudnn-local-repo-ubuntu2204-9.12.0/cudnn-*-keyring.gpg /usr/share/keyrings/
sudo apt-get update
sudo apt-get -y install cudnn
sudo apt-get -y install cudnn9-cuda-12 # 或者用这个

# 安装PyTorch
