# LU and LTH LaTeX Templates

Collection of Lund University and Technical Faculty LaTeX templates for
documents and projects.

This repository currently contains an extensible Beamer template (`ulund`) and
simple LaTeX letter format (`ulundletter`). More templates may be added in the
future.


## Official LU Fonts

The beamer theme in this repository have support for the fonts ("Adobe Garamond
Pro" and "Frutiger LT Std") used by the official Lund University graphical
profile using the beamer option:

```
defaultfont=lu,      % [palatino], beamer, lu
```

However, using this options will only work with `lualatex` and requires a bit
setup to work, or you may encounter the following issues:

```
XeLaTeX:
/home/gustaf/.local/share/texlive/texmf/tex/latex/beamer/beamer/themes/ulund/beamerfontthemeulund.sty:42: Package fontspec Error: The font "AGaramondPro-Regular" cannot be found.

LuaLaTeX:
</usr/share/texmf/fonts/opentype/public/lm/lmmono10-regular.otf></home/gustaf/.local/share/fonts/FrutigerLTStd-LightItalic.otf>{/usr/share/texlive/texmf-dist/fonts/enc/dvips/ly1/texnansi.enc}</home/gustaf/.local/share/fonts/AGaramondPro-Italic.otf></usr/share/texmf/fonts/opentype/public/lm/lmmono9-regular.otf></home/gustaf/.local/share/fonts/FrutigerLTStd-Light.otf></home/gustaf/.local/share/fonts/AGaramondPro-Regular.otf></usr/share/texlive/texmf-dist/fonts/type1/public/mathdesign/mdugm/md-gmr7t.pfb></usr/share/texlive/texmf-dist/fonts/type1/public/mathdesign/mdugm/md-gmr7v.pfb></usr/share/texlive/texmf-dist/fonts/type1/public/mathdesign/mdugm/md-gmr7y.pfb></usr/share/texlive/texmf-dist/fonts/type1/public/mathdesign/mdugm/md-gmri7m.pfb>
! error:  (type 1): cannot open file for reading 'ugmr8a.pfb'
!  ==> Fatal error occurred, no output PDF file produced!
```

To fix this, you need to install font support files for these fonts as described
here: https://tug.org/fonts/getnonfreefonts/ in short, you need to run the
following commands to properly setup you TeX system:

```
curl --remote-name https://www.tug.org/fonts/getnonfreefonts/install-getnonfreefonts
sudo texlua install-getnonfreefonts
sudo getnonfreefonts --sys \
     arial-urw \
     classico \
     dayroman \
     gandhi \
     garamond \
     garamondx \
     lettergothic \
     literaturnaya \
     luximono \
     vntex-nonfree \
     webomints
```

### Missing Characters

Unfortunately, even the LU official fonts are missing some special characters,
most notably various accented characters such as ě. One way to ameliorate this
is to add fallback characters with the following LaTeX macros:

```
\newunicodechar{ě}{e}
```
