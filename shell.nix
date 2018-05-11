{ pkgs ? import <nixpkgs> {}}: with pkgs;

pkgs.stdenv.mkDerivation {
  name = "dupeguru";

  buildInputs = [
    python36Full
    python36Packages.pyqt5
  ];

  shellHook = ''
    ./bootstrap.sh
    ./env/bin/python build.py
    ./env/bin/python run.py
  '';
}
