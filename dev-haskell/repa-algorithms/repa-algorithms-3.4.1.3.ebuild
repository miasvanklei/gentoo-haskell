# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.6

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Algorithms using the Repa array library"
HOMEPAGE="http://repa.ouroborus.net"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=">=dev-haskell/repa-3.4.1:=[profile?] <dev-haskell/repa-3.4.2:=[profile?]
	>=dev-haskell/vector-0.11:=[profile?] <dev-haskell/vector-0.13:=[profile?]
	>=dev-lang/ghc-7.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
"

src_prepare() {
	default

	cabal_chdeps \
		'base                 >= 4.8 && < 4.13' 'base                 >= 4.8'
}
