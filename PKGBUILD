# Maintainer: Bernhard Landauer <oberon@manjaro.org>

pkgname=manjaro-icons
pkgver=20191015
pkgrel=1
_commit=75988529ecfe9751c481c03d98979888fd2113a5
pkgdesc='Official Manjaro icons'
arch=('any')
url="https://gitlab.manjaro.org/artwork/icon-themes/$pkgname"
licence=GPL
source=("$url/-/archive/$_commit/$pkgname-$_commit.tar.gz")
md5sums=('ee89fb9aa18d3be1a38bf9df8486da96')

pkgver() {
  date +%Y%m%d
}

package() {
  install -dm755 $pkgdir/usr/share/icons/manjaro
  cp -r $srcdir/$pkgname-$_commit/green $pkgdir/usr/share/icons/manjaro
  cp -r $srcdir/$pkgname-$_commit/maia $pkgdir/usr/share/icons/manjaro
  cp -r $srcdir/$pkgname-$_commit/white $pkgdir/usr/share/icons/manjaro
  
  install -dm755 $pkgdir/usr/share/icons/hicolor/16x16/apps
  install -dm755 $pkgdir/usr/share/icons/hicolor/22x22/apps
  install -dm755 $pkgdir/usr/share/icons/hicolor/24x24/apps
  install -dm755 $pkgdir/usr/share/icons/hicolor/32x32/apps
  install -dm755 $pkgdir/usr/share/icons/hicolor/48x48/apps
  install -dm755 $pkgdir/usr/share/icons/hicolor/64x64/apps
  install -dm755 $pkgdir/usr/share/icons/hicolor/96x96/apps
  install -dm755 $pkgdir/usr/share/icons/hicolor/128x128/apps
  install -dm755 $pkgdir/usr/share/icons/hicolor/scalable/apps
  
  cd $pkgdir/usr/share/icons/hicolor
  src=/usr/share/icons/manjaro/maia
  ln -s $src/16x16.png 16x16/apps/manjaro.png
  ln -s $src/22x22.png 22x22/apps/manjaro.png
  ln -s $src/24x24.png 24x24/apps/manjaro.png
  ln -s $src/32x32.png 32x32/apps/manjaro.png
  ln -s $src/48x48.png 48x48/apps/manjaro.png
  ln -s $src/64x64.png 64x64/apps/manjaro.png
  ln -s $src/96x96.png 96x96/apps/manjaro.png
  ln -s $src/128x128.png 128x128/apps/manjaro.png
  ln -s $src/maia.svg scalable/apps/manjaro.svg
  ln -s $src/maia.svg scalable/apps/manjarolinux.svg
  ln -s $src/maia.svg ../whiskermenu-manjaro.svg
}
