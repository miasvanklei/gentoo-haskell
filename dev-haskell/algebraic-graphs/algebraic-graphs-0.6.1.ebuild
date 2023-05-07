# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.3.0

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A library for algebraic graph construction and transformation"
HOMEPAGE="https://github.com/snowleopard/alga"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"

CABAL_CHDEPS=(
	'inspection-testing >= 0.4.6.0 && < 0.5' 'inspection-testing >= 0.4.6.0'
)

RDEPEND=">=dev-lang/ghc-8.4.3:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( >=dev-haskell/extra-1.4 <dev-haskell/extra-2
		>=dev-haskell/inspection-testing-0.4.6.0
		>=dev-haskell/quickcheck-2.14 <dev-haskell/quickcheck-2.15 )
"
