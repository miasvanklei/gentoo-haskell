# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Explicitly typed, checked exceptions with stack traces"
HOMEPAGE="http://pepeiborra.github.com/control-monad-exception"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=">=dev-haskell/failure-0.1:=[profile?] <dev-haskell/failure-0.3:=[profile?]
	>=dev-haskell/lifted-base-0.2.1:=[profile?]
	>=dev-haskell/monad-control-0.3:=[profile?]
	>=dev-haskell/monadloc-0.7:=[profile?]
	>=dev-haskell/transformers-base-0.4.1:=[profile?]
	>=dev-lang/ghc-7.8.2:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
"
