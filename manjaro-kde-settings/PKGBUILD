# Maintainer: Bernhard Landauer <bernhard@manjaro.org>

pkgname=manjaro-kde-settings
pkgver=20220129
pkgrel=1
pkgdesc="Manjaro Linux KDE settings"
arch=('any')
url="https://gitlab.manjaro.org/profiles-and-settings/manjaro-kde-settings"
license=('GPL')
conflicts=('manjaro-desktop-settings-19.0' 'manjaro-kde-settings-dev')
replaces=('manjaro-desktop-settings-19.0' 'manjaro-kde-settings-dev')
makedepends=('git')
depends=('zsh'
         'manjaro-base-skel'
         'manjaro-icons'
         'noto-fonts-compat'
         'plasma5-themes-breath'
         'sddm-breath-theme'
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
