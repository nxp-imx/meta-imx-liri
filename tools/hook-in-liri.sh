#!/bin/sh

# hook in Liri Desktop layers
echo "# Hook in Liri Desktop layers " >> conf/bblayers.conf
echo "BBLAYERS += \" \${BSPDIR}/sources/meta-liri \"" >> conf/bblayers.conf
echo "BBLAYERS += \" \${BSPDIR}/sources/meta-qt5-extra \"" >> conf/bblayers.conf
echo "BBLAYERS += \" \${BSPDIR}/sources/meta-imx-liri \"" >> conf/bblayers.conf
echo >> conf/bblayers.conf

echo "Liri Desktop layers added to bblayers.conf"

