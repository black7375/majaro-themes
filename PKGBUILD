# Maintainer: Ramon Buldó <rbuldo@gmail.com>

pkgbase=manjaro-kde-settings
pkgname=('manjaro-kde-settings'
         'manjaro-kde-minimal-settings')
pkgver=20180804
pkgrel=1
pkgdesc="Manjaro Linux KDE settings"
arch=('any')
url="https://gitlab.manjaro.org/profiles-and-settings/manjaro-kde-settings"
license=('GPL')
_gitcommit=959b4e9a904cfdaf4be2cdb854e60313055d4b47
source=("${pkgbase}-$_gitcommit.tar.gz::$url/-/archive/$_gitcommit/${pkgbase}-$_gitcommit.tar.gz"
        "$url/raw/7731a8f6d640c4158e52c4f253565b3d99ad0391/etc/xdg/touchpadrc")
md5sums=('9888c00b255a8f24490201db8f5ccdb7'
         'a91bf6df3627197857959c0a9f25a5d8')

pkgver() {
  date +%Y%m%d
}

package_manjaro-kde-settings() {
  pkgdesc="Manjaro Linux KDE settings"
  conflicts=('manjaro-desktop-settings')
  provides=('manjaro-desktop-settings')
  depends=('manjaro-base-skel' 'breath-icon-theme' 'gtk-theme-breath' 'plasma5-themes-breath' 'noto-fonts-compat')

  cp -r ${srcdir}/${pkgbase}-${_gitcommit}/etc ${pkgdir}/etc
  cp -H "${srcdir}/touchpadrc" "${pkgdir}/etc/xdg/touchpadrc"
  cp -r ${srcdir}/${pkgbase}-${_gitcommit}/usr ${pkgdir}/usr
}

package_manjaro-kde-minimal-settings() {
  pkgdesc="Manjaro Linux KDE minimal settings"
  conflicts=('manjaro-desktop-settings')
  provides=('manjaro-desktop-settings')
  depends=('manjaro-base-skel' 'breath-icon-theme' 'gtk-theme-breath' 'plasma5-themes-breath' 'noto-fonts-compat')

  cp -r "${srcdir}/${pkgbase}-${_gitcommit}/etc" "${pkgdir}/etc"
  cp -r "${srcdir}/${pkgbase}-${_gitcommit}/usr" "${pkgdir}/usr"
  cp -H "${srcdir}/touchpadrc" "${pkgdir}/etc/xdg/touchpadrc"
  cp -f "${srcdir}/${pkgbase}-${_gitcommit}/minimal/plasma-org.kde.plasma.desktop-appletsrc" "${pkgdir}/etc/skel/.config/plasma-org.kde.plasma.desktop-appletsrc"
}
