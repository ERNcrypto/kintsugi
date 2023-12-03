sudo apt update
sudo apt install curl -y

sudo curl https://sh.rustup.rs -sSf | sh -s -- -y

source $HOME/.cargo/env

sudo apt install make clang pkg-config libssl-dev build-essential -y

sudo apt install git -y

sudo apt search golang-go

sudo apt search gccgo-go

sudo apt install golang-go -y

sudo apt install apt-transport-https curl gnupg -y

sudo curl -fsSL https://bazel.build/bazel-release.pub.gpg | gpg --dearmor >bazel-archive-keyring.gpg

sudo mv bazel-archive-keyring.gpg /usr/share/keyrings

sudo echo "deb [arch=amd64 signed-by=/usr/share/keyrings/bazel-archive-keyring.gpg] https://storage.googleapis.com/bazel-apt stable jdk1.8" | sudo tee /etc/apt/sources.list.d/bazel.list

sudo apt install -y protobuf-compiler

git clone https://github.com/interlay/interbtc.git

cd interbtc

git checkout 1.25.3

./scripts/init.sh

apt install cmake

rustup install nightly-2023-01-10

rustup target add wasm32-unknown-unknown --toolchain nightly-2023-01-10

cargo build --release

./target/release/interbtc-parachain --collator --name "ERN VENTURES" --chain=kintsugi --database=rocksdb --pruning=1000
