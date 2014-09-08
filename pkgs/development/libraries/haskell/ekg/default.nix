# This file was auto-generated by cabal2nix. Please do NOT edit manually!

{ cabal, aeson, ekgCore, filepath, network, snapCore, snapServer
, text, time, transformers, unorderedContainers
}:

cabal.mkDerivation (self: {
  pname = "ekg";
  version = "0.4.0.2";
  sha256 = "0svw43dnlg93nyaxiq310sp5csbf0w68ipbhqkxm052yvc9k6fv9";
  buildDepends = [
    aeson ekgCore filepath network snapCore snapServer text time
    transformers unorderedContainers
  ];
  jailbreak = true;
  meta = {
    homepage = "https://github.com/tibbe/ekg";
    description = "Remote monitoring of processes";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
