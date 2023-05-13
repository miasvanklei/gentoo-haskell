# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.2.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Extract and apply patches to JSON documents"
HOMEPAGE="https://github.com/ysangkok/aeson-diff"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

# Ambiguous module name ‘Data.Vector’: found in multiple packages: AC-Vector-Fancy-2.4.0 vector-0.12.0.2
RESTRICT=test

RDEPEND=">=dev-haskell/aeson-2.0.3:=[profile?]
	dev-haskell/edit-distance-vector:=[profile?]
	dev-haskell/optparse-applicative:=[profile?]
	dev-haskell/scientific:=[profile?]
	dev-haskell/vector:=[profile?]
	dev-haskell/yaml:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1 <dev-haskell/cabal-4
	>=dev-haskell/cabal-doctest-1 <dev-haskell/cabal-doctest-1.1
	test? ( >=dev-haskell/doctest-0.18.2
		dev-haskell/glob
		dev-haskell/quickcheck )
"
