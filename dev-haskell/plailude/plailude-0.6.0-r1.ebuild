# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.4.4

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="plaimi's prelude"
HOMEPAGE="https://secure.plaimi.net/works/plailude"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=">=dev-haskell/mtl-2.2.1:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
"

src_prepare() {
	default

	cabal_chdeps \
		'base       >=4.6 && <4.8' 'base       >=4.6' \
		'time       >=1.4 && <1.5' 'time       >=1.4' \
		'mtl        >=2.2.1 && <2.2.2' 'mtl        >=2.2.1'
}
