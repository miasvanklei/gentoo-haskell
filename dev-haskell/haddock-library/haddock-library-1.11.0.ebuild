# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.2.0.9999

CABAL_HACKAGE_REVISION=2

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Library exposing some functionality of Haddock"
HOMEPAGE="https://www.haskell.org/haddock/"

LICENSE="BSD-2"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~amd64-linux"

RDEPEND="
	>=dev-haskell/parsec-3.1.13.0:=[profile?] <dev-haskell/parsec-3.2:=[profile?]
	>=dev-haskell/text-1.2.3.0:=[profile?] <dev-haskell/text-2.1:=[profile?]
	>=dev-lang/ghc-8.8.1:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.0.0.0
	test? (
		>=dev-haskell/base-compat-0.11.0
		>=dev-haskell/hspec-2.4.4
		>=dev-haskell/optparse-applicative-0.15
		>=dev-haskell/tree-diff-0.1
		|| (
			( >=dev-haskell/quickcheck-2.11 <dev-haskell/quickcheck-2.12 )
			( >=dev-haskell/quickcheck-2.13.2 <dev-haskell/quickcheck-2.15 )
		)
	)
"
BDEPEND="test? (
	>=dev-haskell/hspec-discover-2.4.4
)"
