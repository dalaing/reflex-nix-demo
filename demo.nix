{ mkDerivation, base, jsaddle-warp, reflex, reflex-dom
, reflex-dom-core, stdenv
}:
mkDerivation {
  pname = "demo";
  version = "0.1.0.0";
  src = ./.;
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    base jsaddle-warp reflex reflex-dom-core
  ];
  executableHaskellDepends = [ base reflex-dom ];
  license = stdenv.lib.licenses.bsd3;
}
