# Maintainer: Bernhard Landauer <bernhard@manjaro.org>

pkgname=manjaro-kde-settings
<<<<<<< HEAD
pkgver=20211209
pkgrel=1
=======
pkgver=20211205
pkgrel=2
>>>>>>> f425edd ([pkg-upd] 20211205-2)
_branch='master'
pkgdesc="Manjaro Linux KDE settings"
arch=('any')
url="https://gitlab.manjaro.org/profiles-and-settings/$pkgname"
license=('GPL')
conflicts=('manjaro-desktop-settings-19.0')
provides=('manjaro-desktop-settings-19.0')
replaces=('manjaro-kde-settings-dev')
makedepends=('git')
depends=('manjaro-base-skel'
         'manjaro-icons'
         'noto-fonts-compat'
         'plasma5-themes-breath'
         'sddm-breath-theme'
         'xdg-desktop-portal'
         'xdg-desktop-portal-kde')
source=("git+$url.git")
md5sums=('SKIP')
install=manjaro-kde-settings.install

pkgver() {
  date +%Y%m%d
}

package_manjaro-kde-settings() {
  pkgdesc="Manjaro Linux KDE settings"

  cp -r $pkgname/etc $pkgdir/etc
  cp -r $pkgname/usr $pkgdir/usr
}
