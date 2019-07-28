all: png
clean:
	rm -rf png
	mkdir png
	mkdir png/logo

png: \
	png/logo/acm_uci_color_16x16.png \
	png/logo/acm_uci_color_32x32.png \
	png/logo/acm_uci_color_48x48.png \
	png/logo/acm_uci_color_64x64.png \
	png/logo/acm_uci_color_128x128.png

png/logo/acm_uci_color_%.png: logo/acm_uci_color.svg
	convert -resize $* $< $@
