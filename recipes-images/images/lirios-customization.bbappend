LIC_FILES_CHKSUM = "file://${COREBASE}/LICENSE;md5=b97a012949927931feb7793eee5ed924"
pkg_postinst_${PN} () {
}

pkg_postinst_ontarget_${PN} () {
#!/bin/sh
# Replace networkd with NetworkManager
rm -f $D/lib/systemd/system/multi-user.target.wants/systemd-networkd.service
rm -f $D/lib/systemd/system/sockets.target.wants/systemd-networkd.socket
ln -s /usr/lib/systemd/system/NetworkManager.service $D/lib/systemd/system/multi-user.target.wants/NetworkManager.service
}
