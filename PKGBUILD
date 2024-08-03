# Maintainer: Johnathan Spiva
# Contributor: Ganome
# 
#
#
pkgname=uranusinstaller
pkgver=0.1.0
pkgrel=1
pkgdesc='Part of Install Script for Uranus OS'
url='https://github.com/sprunglesongithub/UranusOS_REPO/'
arch=(x86_64)
license=(MIT)
install=''
#makedepends=''
provides=('uranusinstaller=0.1.0')
source=("https://github.com/sprunglesongithub/UranusOS_REPO/raw/main/x86_64/uranusinstaller-0.1.0-x86_64.pkg.tar.gz")
sha256sums=('SKIP')
package() {
     install -Dm755 "$srcdir"/"$pkgname"-"$pkgver"-"$arch"/usr/bin/uranusinstaller "$pkgdir/usr/bin/uranusinstaller"
#     mv $pkgdir/usr/bin/uranusinstaller /usr/bin/uranusinstaller
}

