{ stdenv, autoPatchelfHook, makeWrapper, unzip, libGL, wayland, qt6, wrapQtAppsHook, python310, glib, fontconfig, dbus, binja_src }:

stdenv.mkDerivation rec {
  name = "binary-ninja";
  buildInputs = [ autoPatchelfHook makeWrapper wayland libGL qt6.full qt6.qtbase python310 stdenv.cc.cc.lib glib fontconfig dbus ];
  nativeBuildInputs = [ wrapQtAppsHook python310.pkgs.wrapPython ]; 
  src = binja_src;
  dontWrapQtApps = true;
  buildPhase = ":";
  installPhase = ''
    mkdir -p $out/bin
    makeWrapper $src/binaryninja \
          $out/bin/binaryninja \
          --prefix "QT_QPA_PLATFORM" ":" "wayland"
  '';

  postFixup = ''
    # patchelf --debug --add-needed libpython3.so \
    #   "$out/opt/binaryninja"
  '';
}
