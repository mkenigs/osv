{ pkgs ? import <nixpkgs> {} }:
let
    staticBoost = pkgs.boost.override { enableShared = false; enabledStatic = true; };
in with pkgs; mkShell {
#    buildInputs = with pkgs; [ staticBoost wget unzip luarocks qemu ];
#    LIBRARY_PATH = staticBoost + "/lib";


        buildInputs = [ staticBoost python37 wget unzip openssl.dev openssl.out pax-utils file krb5 libselinux.out xz.out openjdk11 libyamlcpp pkg-config libedit qemu gcc-unwrapped.lib

ant
autoconf
automake
bison
#            boost-static
curl
flex
gcc #            gcc-c++
#            gcc-c++-aarch64-linux-gnu
gdb
genromfs
git
gnutls #            gnutls-utils
libedit.dev #            libedit-devel
#            libstdc++-static
libtool
libvirt
gnumake #            make
maven
#            maven-shade-plugin
ncurses
#            ncurses-devel
openssl
#            openssl-libs
#            openssl-devel
p11-kit
patch
python3.pkgs.dpkt #            python3-dpkt
python3.pkgs.requests #            python3-requests
qemu #            qemu-img
     #            qemu-system-x86
tcpdump
unzip
wget
libyamlcpp #            yaml-cpp-devel
pax-utils
#            java-1.8.0-openjdk
lua5_3 #            lua-5.3.*
#            lua-devel-5.3.*
lua53Packages.luarocks
zlib
        ];
    ZLIB = zlib;
    OPENSSL_INCDIR = openssl.dev + "/include";
    OPENSSL_DIR = openssl.out;
    LIBRARY_PATH = staticBoost + "/lib";
    LUA_LIBRARY = lua5_3 + "/lib/liblua.so";
    KRB5 = krb5;
    LIBSELINUX = libselinux.out;
    XZ = xz.out;
    GCC = gcc-unwrapped.lib;
}
