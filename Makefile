all: png
clean:
	rm -rf png
	mkdir png
	mkdir png/logo


png: logo


logo: \
	png/logo/acm_uci_color_16x16.png \
	png/logo/acm_uci_color_32x32.png \
	png/logo/acm_uci_color_48x48.png \
	png/logo/acm_uci_color_64x64.png \
	png/logo/acm_uci_color_128x128.png \
	png/logo/acm_uci_color_transparent_bkgd_16x16.png \
	png/logo/acm_uci_color_transparent_bkgd_32x32.png \
	png/logo/acm_uci_color_transparent_bkgd_48x48.png \
	png/logo/acm_uci_color_transparent_bkgd_64x64.png \
	png/logo/acm_uci_color_transparent_bkgd_128x128.png \
	png/logo/acm_uci_white_16x16.png \
	png/logo/acm_uci_white_32x32.png \
	png/logo/acm_uci_white_48x48.png \
	png/logo/acm_uci_white_64x64.png \
	png/logo/acm_uci_white_128x128.png \
	png/logo/acm_uci_white_transparent_bkgd_16x16.png \
	png/logo/acm_uci_white_transparent_bkgd_32x32.png \
	png/logo/acm_uci_white_transparent_bkgd_48x48.png \
	png/logo/acm_uci_white_transparent_bkgd_64x64.png \
	png/logo/acm_uci_white_transparent_bkgd_128x128.png \
	png/logo/acm_uci_black_16x16.png \
	png/logo/acm_uci_black_32x32.png \
	png/logo/acm_uci_black_48x48.png \
	png/logo/acm_uci_black_64x64.png \
	png/logo/acm_uci_black_128x128.png \
	png/logo/acm_uci_black_transparent_bkgd_16x16.png \
	png/logo/acm_uci_black_transparent_bkgd_32x32.png \
	png/logo/acm_uci_black_transparent_bkgd_48x48.png \
	png/logo/acm_uci_black_transparent_bkgd_64x64.png \
	png/logo/acm_uci_black_transparent_bkgd_128x128.png

png/logo/acm_uci_color_%.png: logo/acm_uci_color.svg
	convert -resize $* $< $@
png/logo/acm_uci_color_transparent_bkgd_%.png: logo/acm_uci_color.svg
	convert -transparent white -resize $* $< $@

png/logo/acm_uci_white_%.png: logo/acm_uci_white.svg
	convert -resize $* $< $@
png/logo/acm_uci_white_transparent_bkgd_%.png: logo/acm_uci_white.svg
	convert -transparent black -resize $* $< $@

png/logo/acm_uci_black_%.png: logo/acm_uci_black.svg
	convert -resize $* $< $@
png/logo/acm_uci_black_transparent_bkgd_%.png: logo/acm_uci_black.svg
	convert -transparent white -resize $* $< $@
