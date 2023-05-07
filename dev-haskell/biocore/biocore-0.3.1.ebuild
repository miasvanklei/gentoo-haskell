# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.3.3.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="A bioinformatics library"
HOMEPAGE="https://hackage.haskell.org/package/biocore"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="dev-haskell/stringable:=[profile?]
	>=dev-lang/ghc-6.10.4:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6.0.3
"

PATCHES=(
	"${FILESDIR}"/${P}-ghc84.patch
)
