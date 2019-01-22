NXP Yocto Support for Liri Desktop

This Yocto layer provides support for building Liri Desktop on NXP i.MX8 machines.
It has been built only with the xwayland backend. This is not tested and not supported.
It is a DEMO only.


Build instructions:

Install the `repo` utility:

$: mkdir ~/bin
$: curl http://commondatastorage.googleapis.com/git-repo-downloads/repo  > ~/bin/repo
$: chmod a+x ~/bin/repo
$: PATH=${PATH}:~/bin

Download the BSP Yocto Project Environment

$: mkdir imx-yocto-bsp
$: cd imx-yocto-bsp
$: repo init -u https://source.codeaurora.org/external/imx/imx-manifest -b imx-linux-sumo -m imx-4.14.78-1.0.0_ga_liridesktop.xml
$: repo sync

Setup and Build for XWayland

This example uses imx8qmmek MACHINE as example but you can build any mx8 machine
$: MACHINE=imx8qmmek DISTRO=fsl-imx-xwayland source ./fsl-setup-release.sh -b build-liri

Hook in liridesktop layers
$: source ../sources/meta-imx-liri/tools/hook-in-liri.sh

Image to build liri desktop:
$: bitbake lirios-image

Command to bring up liri desktop after boot :
$ liri-session -platform wayland

Known issues:

- Does not work well with systemd. Use the above command to bring up liri desktop until
  the issue is fixed.
