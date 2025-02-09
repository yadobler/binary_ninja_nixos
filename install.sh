#! /bin/sh
set -xe
nix build -o binja_result
set +xe
nix profile remove binary-ninja
nix profile install ./binja_result
rm ./binja_result
