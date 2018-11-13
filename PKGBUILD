# Maintainer: Ramon Buldó <ramon@manjaro.org>

pkgbase=artwork-breath
pkgname=('breath-icon-theme' 'breath-dark-icon-theme' 'plasma5-themes-breath' 'sddm-breath-theme' 'breath-wallpaper')
pkgver=0.4.0
pkgrel=2
_gitcommit=32f53e151801b584c138fbf20d1b3b3e93e583d7
url=https://gitlab.manjaro.org/artwork/themes/breath
arch=('any')
license=('LGPL')
makedepends=('extra-cmake-modules' 'plasma-framework')
source=("breath-$pkgver-$pkgrel.tar.gz::$url/-/archive/master/breath-$_gitcommit.tar.gz"
		'0001-Fix-for-media-playback-status-and-Switch-display-ico.patch') 
md5sums=('05d4a18b73f4d2da639e3ba061503fc0'
         '83f99f2dd4a247bdf0781190270016e1')

prepare() {
  mv $srcdir/breath-master-$_gitcommit $srcdir/breath
  patch -Np1 -i 0001-Fix-for-media-playback-status-and-Switch-display-ico.patch
  mkdir -p build
}

build() {
  cd build
  cmake ../breath \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_INSTALL_PREFIX=/usr \
    -DKDE_INSTALL_USE_QT_SYS_PATHS=ON
  make
}

package_breath-wallpaper() {
  pkgdesc='breath wallpaper'
  install -Dm644 ${srcdir}/breath/wallpapers/Breath/contents/images/1920x1080.png ${pkgdir}/usr/share/backgrounds/breath.png
}

package_breath-icon-theme() {
  pkgdesc='breath icon theme'
  cd build
  make DESTDIR="${pkgdir}" install
  rm -rf "${pkgdir}/usr/share/color-schemes"
  rm -rf "${pkgdir}/usr/share/icons/breath-dark"
  rm -rf "${pkgdir}/usr/share/kservices5"
  rm -rf "${pkgdir}/usr/share/metainfo"
  rm -rf "${pkgdir}/usr/share/plasma"
  rm -rf "${pkgdir}/usr/share/sddm"
  rm -rf "${pkgdir}/usr/share/wallpapers"
}

package_breath-dark-icon-theme() {
  pkgdesc='breath dark icon theme'
  cd build
  make DESTDIR="${pkgdir}" install
  rm -rf "${pkgdir}/usr/share/color-schemes"
  rm -rf "${pkgdir}/usr/share/icons/breath"
  rm -rf "${pkgdir}/usr/share/kservices5"
  rm -rf "${pkgdir}/usr/share/metainfo"
  rm -rf "${pkgdir}/usr/share/plasma"
  rm -rf "${pkgdir}/usr/share/sddm"
  rm -rf "${pkgdir}/usr/share/wallpapers"
}

package_plasma5-themes-breath() {
  pkgdesc='breath theme for KDE Plasma 5'
  depends=('breeze')
  optdepends=('breath-icon-theme: light icon theme'
              'breath-dark-icon-theme: dark icon theme')
  replaces=('breath-themes')
  cd build
  make DESTDIR="${pkgdir}" install
  rm -rf "${pkgdir}/usr/share/sddm"
  rm -rf "${pkgdir}/usr/share/icons"
}

package_sddm-breath-theme() {
  pkgdesc="breath theme for SDDM"
  depends=('plasma-framework' 'plasma-workspace')
  cd build
  make DESTDIR="${pkgdir}" install
  rm -rf "${pkgdir}/usr/share/color-schemes"
  rm -rf "${pkgdir}/usr/share/icons"
  rm -rf "${pkgdir}/usr/share/kservices5"
  rm -rf "${pkgdir}/usr/share/metainfo"
  rm -rf "${pkgdir}/usr/share/plasma"
  rm -rf "${pkgdir}/usr/share/wallpapers"
}
