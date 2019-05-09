##################################################
## LaTeX document templates for Lund University
##################################################
Installation:
There are esential two main distributions of TeX/LaTeX, texlive and MikTeX. The first has versions for all platforms (Win, MAC, Linux) while the latter is only for Windows.

Texlive
Use the command tool to get the path for the local tree:
> kpsewhich -var-value=TEXMFHOME

Standard installations gives the following values of <TEXMFHOME>
* Windows: <User>\texmf\
* Linux: ~/Library/texmf/
* MAC: ~/Library/texmf/

The tree here is given as the sub-tree under <TEXMFHOME>/lex/latex/. So, copy the sub-tree, or patts of it, to this location and it should work directly. 

MikTeX
To be written


