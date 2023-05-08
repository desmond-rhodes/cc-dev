from ubuntu-base
run apt-get -y install build-essential
run apt-get -y install cmake
run apt-get -y install mingw-w64
run git clone https://github.com/emscripten-core/emsdk
run /emsdk/emsdk install latest
run /emsdk/emsdk activate latest
env EMSDK=/emsdk
env EMSDK_NODE=/emsdk/node/15.14.0_64bit/bin/node
env PATH="${PATH}:/emsdk:/emsdk/upstream/emscripten:/emsdk/upstream/bin:/emsdk/node/15.14.0_64bit/bin"
