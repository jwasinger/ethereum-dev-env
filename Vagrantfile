$installScript = <<SCRIPT
sudo apt update && \
sudo apt install -y  git g++ libleveldb-dev libmicrohttpd-dev && \
git clone https://github.com/ethereum/cpp-ethereum && \
cd cpp-ethereum && \
git submodule update --init && \
sudo scripts/install_cmake.sh --prefix /usr/local && \
sudo scripts/install_deps.sh --prefix /usr/local
mkdir build && \
cd build && \
cmake .. && \
cmake --build .
SCRIPT

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"

  config.vm.provider "virtualbox" do |v|
    v.memory = 4096
  end

  config.vm.provision "shell", "inline": $installScript
end
