# Maintainer: Philip Müller <philm[at]manjaro[dog]org>
# Contributor: artoo <artoo@manjaro.org>

pkgname=manjaro-base-skel
pkgver=20171029
pkgrel=3
pkgdesc='Manjaro Linux base skeleton files'
arch=('any')
url="https://github.com/manjaro/desktop-settings"
license=('GPL')
makedepends=('git')
source=("git+$url.git")
sha256sums=('SKIP')
install=$pkgname.install

pkgver() {
	date +%Y%m%d
}

package() {
	install -d $pkgdir/etc
	cp -r $srcdir/desktop-settings/shared/skel $pkgdir/etc
}
