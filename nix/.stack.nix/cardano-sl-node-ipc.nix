{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "cardano-sl-node-ipc"; version = "3.1.0"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "cleverca22@gmail.com";
      author = "Michael Bishop";
      homepage = "";
      url = "";
      synopsis = "";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.cardano-sl-infra)
          (hsPkgs.cardano-sl-util)
          (hsPkgs.Cabal)
          (hsPkgs.mtl)
          (hsPkgs.universum)
          ];
        };
      };
    } // rec { src = (pkgs.lib).mkDefault ../.././node-ipc; }