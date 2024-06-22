{ lib, stdenv }:

stdenv.mkDerivation (finalAttrs: {
  pname = "amy-home-scripts";
  version = "1.0";

  src = ./.;

  installPhase = ''
    mkdir -p $out/bin
    cp $src/*.sh $out/bin/
  '';
})
