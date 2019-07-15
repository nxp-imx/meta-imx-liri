
DEPENDS_remove = "vlc"
DEPENDS_append = "${@bb.utils.contains("LICENSE_FLAGS_WHITELIST", "commercial", " vlc", "", d)}"
