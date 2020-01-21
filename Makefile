ROOT_DIR := $(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))
TEXMF    := $(shell kpsewhich -var-value=TEXMFHOME)

.PHONY: all
all: install

.PHONY: install
install:
	mkdir --parents $(TEXMF)/tex/latex/beamer
	cp -r $(ROOT_DIR)/latex/ulundletter/ $(TEXMF)/tex/latex/
	cp -r $(ROOT_DIR)/latex/beamer/ $(TEXMF)/tex/latex/beamer
