# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Utilities for choosing and creating color schemes"
HOMEPAGE="http://projects.haskell.org/diagrams"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=">=dev-haskell/colour-2.3:=[profile?] <dev-haskell/colour-3.0:=[profile?]
	>=dev-haskell/monadrandom-0.5:=[profile?] <dev-haskell/monadrandom-0.6:=[profile?]
	>=dev-lang/ghc-7.6.1:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18
"

src_prepare() {
	default

	cabal_chdeps \
		'base >= 4.2 && < 4.13' 'base >= 4.2'
}
