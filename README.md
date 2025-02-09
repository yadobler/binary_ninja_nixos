# Decription

NixOS package file for the [Binary Ninja](https://binary.ninja/) personal version. Since distribuition based on personal links, package is targeting local file with name `binaryninja_personal_linux.zip`.

# Install example
```shell
git clone https://github.com/kvnesterov/binary_ninja_nixos.git
cd binary_ninja_nixos
cp $(BINARY_NINJA_LINUX_ZIP_LOCATION)/binaryninja_personal_linux.zip .
```
and then either:

```shell
./install.sh
```

which is just a fancy version of: 

```shell
nix build
nix profile install ./result
```

This installs to nix profile (`nix profile list` to see all profile installs). I think this can be skipped if this repo is added to your nix configuration flake thingy but *ymmv*

# Credits
https://github.com/kvnesterov/binary_ninja_nixos