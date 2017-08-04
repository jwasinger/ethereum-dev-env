$installScript = <<SCRIPT
sudo apt update && \
sudo apt install -y  git g++ libleveldb-dev libmicrohttpd-dev ccache && \
git clone https://github.com/ethereum/cpp-ethereum && \
chown -R vagrant:vagrant /home/vagrant/cpp-ethereum && \
cd cpp-ethereum && \
git submodule update --init && \
sudo scripts/install_cmake.sh --prefix /usr/local && \
sudo scripts/install_deps.sh --prefix /usr/local && \
mkdir build && \
cd build && \
cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=ON -DCMAKE_BUILD_TYPE=Debug -DCMAKE_CXX_COMPILER_LAUNCHER=ccache -DVMTRACE=1 .. && \
make
SCRIPT

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"

  config.vm.provider "virtualbox" do |v|
    v.memory = 4096
  end

  config.vm.provision "shell", "inline": $installScript
end
