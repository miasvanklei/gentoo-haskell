# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.6.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Pure Haskell solver routines used by diagrams"
HOMEPAGE="https://projects.haskell.org/diagrams"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( >=dev-haskell/tasty-0.10 <dev-haskell/tasty-1.5
		>=dev-haskell/tasty-hunit-0.9.2 <dev-haskell/tasty-hunit-0.11
		>=dev-haskell/tasty-quickcheck-0.8 <dev-haskell/tasty-quickcheck-0.11 )
"
