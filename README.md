# Decription

NixOS package file for the [Binary Ninja](https://binary.ninja/) personal version. Since distribuition based on personal links, package is targeting local file with name `binaryninja_personal_linux.zip`.

# Install example
```shell
git clone https://github.com/kvnesterov/binary_ninja_nixos.git
cd binary_ninja_nixos
cp $(BINARY_NINJA_LINUX_ZIP_LOCATION)/binaryninja_personal_linux.zip .
nix-env -i -f  default.nix
```