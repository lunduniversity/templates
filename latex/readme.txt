##################################################
## LaTeX document templates for Lund University
##################################################
Installation:
There are esential two main distributions of TeX/LaTeX, texlive and MikTeX. The first has versions for all platforms (Win, MAC, Linux) while the latter is only for Windows.

Texlive
Use the command tool to get the path for the local tree:
> kpsewhich -var-value=TEXMFHOME

The trees for beamer and ulundletter should be placed under <TEXMFHOME>/tex/latex/. For standard installations that means
* Windows: <User>\texmf\tex\latex\
* Linux: ~/Library/texmf/tex/latex/
* MAC: ~/Library/texmf/tex/latex/

Then it should work. (For not too old installations you do not have to re-hash the tex engine search tree).

MikTeX
To be written


