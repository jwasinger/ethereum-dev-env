sudo apt update && \
sudo apt install -y  git g++ libleveldb-dev libmicrohttpd-dev ccache && \
git clone https://github.com/jwasinger/cpp-ethereum && \
cd cpp-ethereum && \
git checkout invalid-ops && \
git submodule update --init && \
sudo scripts/install_cmake.sh --prefix /usr/local && \
sudo scripts/install_deps.sh --prefix /usr/local && \
mkdir build && \
cd build && \
cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=ON -DCMAKE_BUILD_TYPE=Debug -DCMAKE_CXX_COMPILER_LAUNCHER=ccache -DVMTRACE=1 .. && \
make && \
sudo add-apt-repository -y ppa:ethereum/ethereum && \
sudo add-apt-repository -y ppa:ethereum/ethereum-dev && \
sudo apt-get update && \
sudo apt-get install -y solc && \
