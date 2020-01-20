
# liri-player depends on vlc which has a restricted license commercial license.
# whitelist it in LICENSE_FLAGS_WHITELIST if you need liri-player.

RDEPENDS_${PN}_remove = " \
    liri-themes-grub \
    liri-themes-plymouth \
    liri-themes-sddm \
	liri-player \
"
