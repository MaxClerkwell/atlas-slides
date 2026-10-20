TARGET = main

.PHONY: all clean

all: $(TARGET).pdf

$(TARGET).pdf: $(TARGET).tex $(wildcard images/*)
	latexmk -pdf -interaction=nonstopmode -halt-on-error $(TARGET).tex

clean:
	latexmk -C
