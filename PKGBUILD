# Maintainer: Bernhard Landauer <bernhard@manjaro.org>
# Maintainer: Bogdan Covaciu <bogdan@manjaro.org

pkgbase=artwork-breath
pkgname=('plasma5-themes-breath'
    'breath-wallpapers'
    'sddm-breath-theme')
pkgver=21.2.0
pkgrel=0
url=https://gitlab.manjaro.org/artwork/themes/breath
arch=('any')
license=('LGPL')
makedepends=('extra-cmake-modules' 'git' 'plasma-framework')
source=("git+$url.git")
md5sums=('SKIP')

prepare() {
  mkdir -p build
}

package_plasma5-themes-breath() {
  pkgdesc='Breath2 theme for KDE Plasma 5'
  depends=('breeze')
  conflicts=('plasma5-themes-breath2' 'breath2-icon-themes')
  replaces=('plasma5-themes-breath2' 'breath2-icon-themes')
  cd build
  cmake ../breath -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/usr -DKDE_INSTALL_USE_QT_SYS_PATHS=ON -DBUILD_PLASMA_THEMES=ON
  make && make DESTDIR="${pkgdir}" install
}

package_breath-wallpapers() {
  pkgdesc='Breath wallpapers'
  install -Dm644 ${srcdir}/breath/wallpapers/Bamboo/contents/images/5120x2880.png ${pkgdir}/usr/share/backgrounds/bamboo.png
  install -Dm644 ${srcdir}/breath/wallpapers/Bamboo\ at\ Night/contents/images/5120x2880.png ${pkgdir}/usr/share/backgrounds/bambooatnight.png
}


package_sddm-breath-theme() {
  pkgdesc="Breath theme for SDDM"
  depends=('plasma-framework' 'plasma-workspace')
  conflicts=('sddm-breath2-theme-dev')
  replaces=('sddm-breath2-theme')
  cd build && rm -rf *
  cmake ../breath -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/usr -DKDE_INSTALL_USE_QT_SYS_PATHS=ON -DBUILD_SDDM_THEME=ON
  make && make DESTDIR="${pkgdir}" install
}
