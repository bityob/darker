{ pkgs ? import <nixpkgs> { } }:
(
  pkgs.stdenv.mkDerivation {
    name = "darker-test";
    buildInputs = [ pkgs.python311 pkgs.git ];
    shellHook = ''
      export PY_IGNORE_IMPORTMISMATCH=1
    '';
  }
)
