LIRI_GIT_BRANCH ?= "develop"

SRC_URI = "git://github.com/lirios/${@'${BPN}'.replace('liri-', '')}.git;protocol=git;branch=${LIRI_GIT_BRANCH}"

DEPENDS += " \
    qtwayland-native \
    qttools-native \
    liri-cmake-shared \
    extra-cmake-modules \
    qtbase \
    qttools \
    qtdeclarative \
    qtwayland \
"

inherit cmake_qt5_extra_wayland pkgconfig qt5-translation

EXTRA_OECMAKE += " \
    -DINSTALL_LIBDIR:PATH=${baselib} \
    -DINSTALL_QMLDIR:PATH=${OE_QMAKE_PATH_QML} \
    -DINSTALL_PLUGINSDIR:PATH=${OE_QMAKE_PATH_PLUGINS} \
"
