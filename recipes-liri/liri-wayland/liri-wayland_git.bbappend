FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += "file://0001-Update-EglFSScreen-to-Qt-5.9.patch \
            file://0001-Fix-build-with-Qt-5.10.patch"

DEPENDS_append = " \
    fontconfig \
"
EXTRANATIVEPATH = "qt5"

PACKAGECONFIG[kms] = "-DENABLE_EGLDEVICEINTEGRATION_KMS:BOOL=ON,-DENABLE_EGLDEVICEINTEGRATION_KMS:BOOL=OFF,libdrm,imx-gpu-viv"
