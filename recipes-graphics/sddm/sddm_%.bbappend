FILESEXTRAPATHS_prepend := "${THISDIR}/${BPN}:"

SRC_URI_append = "file://sddm.conf"

do_install_append () {
    install -d ${D}${sysconfdir}/systemd/system/multi-user.target.wants/
    # Enable the sddm.service
    ln -sf ${systemd_unitdir}/system/sddm.service \
            ${D}${sysconfdir}/systemd/system/multi-user.target.wants/sddm.service
}
RDEPENDS_${PN}_remove = "packagegroup-core-x11-xserver"
