{ pkgs ? import <nixpkgs> { } }:

with pkgs;

mkShell {
  buildInputs = [
    (python3.withPackages (ps: with ps; with python3Packages; [
        jupyter
	pandas
	scikit-learn
	matplotlib
	numpy	
	seaborn
	pytorch
	shap
	imbalanced-learn
    ]))
  ];
}
