sudo apt-get update && \
sudo apt-get install -y libssl-dev build-essential automake pkg-config libtool libffi-dev libgmp-dev python-pip && \
pip install py_ecc pycryptodome ethereum pytest && \
git clone --recursive https://github.com/ethereum/pyethereum
