with import <nixpkgs> {};

stdenv.mkDerivation rec {
  name = "lpenz-cv";

  src = ./.;

  builder = builtins.toFile "builder.sh" "
source $stdenv/setup
cp -Rs $src/* .
chmod -R u+w .
ninja
mkdir $out
cp -R * $out/
";

  buildInputs = [
    coreutils
    ninja
    pandoc
    (python27.buildEnv.override {
        extraLibs = with python27Packages; [
            jinja2
            pyyaml
        ];
    })
    (texlive.combine {
        inherit (texlive)
        scheme-small
        moderncv
        ;
    })
  ];
}
