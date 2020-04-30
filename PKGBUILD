# Maintainer: Bernhard Landauer <bernhard@manjaro.org>

pkgname=manjaro-kde-settings
pkgver=20200430
pkgrel=1
_branch='master'
pkgdesc="Manjaro Linux KDE settings"
arch=('any')
url="https://gitlab.manjaro.org/profiles-and-settings/$pkgname"
license=('GPL')
conflicts=('manjaro-desktop-settings-19.0')
provides=('manjaro-desktop-settings-19.0')
replaces=('manjaro-kde-settings-dev')
makedepends=('git')
depends=('breath2-icon-themes'
    'breath2-wallpaper'
    'gtk-theme-breath'
    'manjaro-base-skel'
    'manjaro-icons'
    'noto-fonts-compat'
    'plasma5-themes-breath2'
    'xdg-desktop-portal'
    'xdg-desktop-portal-kde')
source=("git+$url.git")
md5sums=('SKIP')

pkgver() {
  date +%Y%m%d
}

package_manjaro-kde-settings() {
  pkgdesc="Manjaro Linux KDE settings"

  cp -r $pkgname/etc $pkgdir/etc
  cp -r $pkgname/usr $pkgdir/usr
  
  # show wallpapers from other pkgs in Plasma Desktop Settings
  mkdir -p $pkgdir/usr/share/wallpapers
  ln -s ../backgrounds $pkgdir/usr/share/wallpapers/Manjaro
}

package_manjaro-kde-minimal-setting() {
  pkgdesc="Manjaro Linux KDE minimal settings"

  cp -r $pkgname/etc $pkgdir/etc
  cp -r $pkgname/usr $pkgdir/usr
  cp -f $pkgname/minimal/plasma-org.kde.plasma.desktop-appletsrc $pkgdir/etc/skel/.config/plasma-org.kde.plasma.desktop-appletsrc
}
