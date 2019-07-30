all: png
clean:
	rm -rf build
	mkdir build
	mkdir build/logo


png: logo


logo: \
	build/logo/acm_uci_color_128.png \
	build/logo/acm_uci_color_256.png \
	build/logo/acm_uci_color_512.png \
	build/logo/acm_uci_color_1024.png \
	build/logo/acm_uci_color_transparent_bkgd_128.png \
	build/logo/acm_uci_color_transparent_bkgd_256.png \
	build/logo/acm_uci_color_transparent_bkgd_512.png \
	build/logo/acm_uci_color_transparent_bkgd_1024.png \
	build/logo/acm_uci_white_128.png \
	build/logo/acm_uci_white_256.png \
	build/logo/acm_uci_white_512.png \
	build/logo/acm_uci_white_1024.png \
	build/logo/acm_uci_white_transparent_bkgd_128.png \
	build/logo/acm_uci_white_transparent_bkgd_256.png \
	build/logo/acm_uci_white_transparent_bkgd_512.png \
	build/logo/acm_uci_white_transparent_bkgd_1024.png \
	build/logo/acm_uci_black_128.png \
	build/logo/acm_uci_black_256.png \
	build/logo/acm_uci_black_512.png \
	build/logo/acm_uci_black_1024.png \
	build/logo/acm_uci_black_transparent_bkgd_128.png \
	build/logo/acm_uci_black_transparent_bkgd_256.png \
	build/logo/acm_uci_black_transparent_bkgd_512.png \
	build/logo/acm_uci_black_transparent_bkgd_1024.png

build/logo/acm_uci_color_%.png: logo/acm_uci_color.svg
	inkscape -e $@ -w $* -h $* $< -b white
build/logo/acm_uci_color_transparent_bkgd_%.png: logo/acm_uci_color.svg
	inkscape -e $@ -w $* -h $* $<

build/logo/acm_uci_white_%.png: logo/acm_uci_white.svg
	inkscape -e $@ -w $* -h $* $< -b white
build/logo/acm_uci_white_transparent_bkgd_%.png: logo/acm_uci_white.svg
	inkscape -e $@ -w $* -h $* $<

build/logo/acm_uci_black_%.png: logo/acm_uci_black.svg
	inkscape -e $@ -w $* -h $* $< -b white
build/logo/acm_uci_black_transparent_bkgd_%.png: logo/acm_uci_black.svg
	inkscape -e $@ -w $* -h $* $<
