# Decription

NixOS package file for the [Binary Ninja](https://binary.ninja/) free version. ~~Since distribuition based on personal links, package is targeting local file with name `binaryninja_personal_linux.zip`.~~ We no longer need personal version, but a free version, using the wayback archive!

# Install example

## manual profile install
```shell
git clone https://github.com/kvnesterov/binary_ninja_nixos.git
./install.sh
```
which is just a fancy version of: 

```shell
nix build
nix profile install ./result
```

This installs to nix profile (`nix profile list` to see all profile installs). 

## global install 

add to `flake.nix`:

```nix
    inputs.binja.url =  "github:yadobler/binary_ninja_nixos";
```

and then somewhere in your `configuration.nix`:
```nix
  environment.systemPackages = with pkgs; [
    inputs.binaryninja.packages.${system}.default
      ...
  ];
```


I think this can be skipped if this repo is added to your nix configuration flake thingy but *ymmv*


# Credits
https://github.com/kvnesterov/binary_ninja_nixos
