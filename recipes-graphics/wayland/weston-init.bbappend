
do_install_append () {
    rm -f ${D}${sysconfdir}/udev/rules.d/71-weston-drm.rules
}
