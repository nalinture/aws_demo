whoami
sudo apt update
sudo apt upgrade -y
sudo apt install python3-pip -y
python3 --version
    
sudo apt install python3-venv -y
python3 -m venv myenv
source myenv/bin/activate


--------------------------------------------------- EBS 20 GB
pip install transformers torch streamlit
sudo growpart /dev/nvme0n1 1
sudo resize /dev/nvme0n1p1
sudo resize2fs /dev/nvme0n1p1
lsblk

pip cache purge
rm -rf ~/.cache/pip
df -h

pip install --no-cache-dir transformers
pip show transformers
pip install --no-cache-dir torch
pip show torch
pip install --no-cache-dir streamlit
pip install torch --index-url https://download.pytorch.org/whl/cpu --break-system-packages  
lsblk
df -h
pip uninstall transformers
pip uninstall streamlit
pip install torch --index-url https://download.pytorch.org/whl/cpu --break-system-packages  

pip cache purge
rm -rf ~/.cache/pip
df -h
---------------------------------------------------------- EBS 20 GB
pip install --no-cache-dir torch --index-url https://download.pytorch.org/whl/cpu --break-system-packages  
pip install transformers --break-system-packages
pip install streamlit --break-system-packages
pip show torch

nano app.py

streamlit run app.py --server.port 8501 --server.address 0.0.0.0

nohup streamlit run app.py --server.port 8501 --server.address 0.0.0.0 &
whoami
