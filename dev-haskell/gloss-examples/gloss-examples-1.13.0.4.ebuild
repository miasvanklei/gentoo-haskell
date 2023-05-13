# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.1.1.9999
#hackport: flags: -llvm

CABAL_FEATURES=""
inherit haskell-cabal

DESCRIPTION="Examples using the gloss library"
HOMEPAGE="https://gloss.ouroborus.net"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/bmp-1.2:= <dev-haskell/bmp-1.3:=
	>=dev-haskell/gloss-1.13:= <dev-haskell/gloss-1.14:=
	>=dev-haskell/gloss-algorithms-1.13:= <dev-haskell/gloss-algorithms-1.14:=
	>=dev-haskell/gloss-raster-1.13:= <dev-haskell/gloss-raster-1.14:=
	>=dev-haskell/random-1.2:= <dev-haskell/random-1.3:=
	>=dev-haskell/repa-3.4:= <dev-haskell/repa-3.5:=
	>=dev-haskell/repa-algorithms-3.4:= <dev-haskell/repa-algorithms-3.5:=
	>=dev-haskell/repa-io-3.4:= <dev-haskell/repa-io-3.5:=
	>=dev-haskell/vector-0.11:= <dev-haskell/vector-0.13:=
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-llvm
}
