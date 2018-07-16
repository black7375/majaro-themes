# Maintainer: Ramon Buldó <rbuldo@gmail.com>

pkgbase=manjaro-kde-settings
pkgname=('manjaro-kde-settings'
         'manjaro-kde-minimal-settings')
pkgver=20180715
pkgrel=3
pkgdesc="Manjaro Linux KDE settings"
arch=('any')
url="https://gitlab.manjaro.org/profiles-and-settings/manjaro-kde-settings"
license=('GPL')
_gitcommit=9da369e3eed132b7fde485f9702fcd17c83ae221
source=("${pkgbase}-$_gitcommit.tar.gz::$url/-/archive/master/${pkgbase}-$_gitcommit.tar.gz")
md5sums=('3d387d03ed8f2ac8dae4df88a5cc6579')

pkgver() {
  date +%Y%m%d
}

package_manjaro-kde-settings() {
  pkgdesc="Manjaro Linux KDE settings"
  conflicts=('manjaro-desktop-settings')
  provides=('manjaro-desktop-settings')
  depends=('manjaro-base-skel' 'adapta-breath-theme' 'plasma5-theme-adaptabreath' 'illyria-wallpaper' 'noto-fonts-compat')

  cp -r ${srcdir}/${pkgbase}-master-${_gitcommit}/etc ${pkgdir}/etc
  cp -r ${srcdir}/${pkgbase}-master-${_gitcommit}/usr ${pkgdir}/usr
}

package_manjaro-kde-minimal-settings() {
  pkgdesc="Manjaro Linux KDE minimal settings"
  conflicts=('manjaro-desktop-settings')
  provides=('manjaro-desktop-settings')
  depends=('manjaro-base-skel' 'adapta-breath-theme' 'plasma5-theme-adaptabreath' 'illyria-wallpaper' 'noto-fonts-compat')

  cp -r "${srcdir}/${pkgbase}-master-${_gitcommit}/etc" "${pkgdir}/etc"
  cp -r "${srcdir}/${pkgbase}-master-${_gitcommit}/usr" "${pkgdir}/usr"
  cp -f "${srcdir}/${pkgbase}-master-${_gitcommit}/minimal/plasma-org.kde.plasma.desktop-appletsrc" "${pkgdir}/etc/skel/.config/plasma-org.kde.plasma.desktop-appletsrc"
}