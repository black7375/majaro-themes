# Maintainer: Ramon Buldó <rbuldo@gmail.com>

pkgbase=manjaro-kde-settings
pkgname=('manjaro-kde-settings'
         'manjaro-kde-minimal-settings')
pkgver=20190331
pkgrel=2
pkgdesc="Manjaro Linux KDE settings"
arch=('any')
url="https://gitlab.manjaro.org/profiles-and-settings/manjaro-kde-settings"
license=('GPL')
_gitcommit=a73f18b7581ecaf6b9630434c1117f5ba72d7864
source=("${pkgbase}-$_gitcommit.tar.gz::$url/-/archive/$_gitcommit/${pkgbase}-$_gitcommit.tar.gz"
        "$url/raw/7731a8f6d640c4158e52c4f253565b3d99ad0391/etc/xdg/touchpadrc"
        "$url/commit/6103f6b.patch")
md5sums=('632626d88323689ef7cd6bbff81279c3'
         'a91bf6df3627197857959c0a9f25a5d8'
         '88fed22fdee74d9295b7b98dd6c6e3cf')

pkgver() {
  date +%Y%m%d
}

prepare() {
  cd ${srcdir}/${pkgbase}-${_gitcommit}
  patch -p1 -i ../6103f6b.patch
  cd ..
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
