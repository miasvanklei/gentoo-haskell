# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.9.0.0.9999

CABAL_HACKAGE_REVISION=2

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="List shuffling and sampling"
HOMEPAGE="https://github.com/awkward-squad/list-shuffle"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND="
	>=dev-haskell/primitive-0.8:=[profile?] <dev-haskell/primitive-0.10:=[profile?]
	>=dev-haskell/random-1.2.1:=[profile?] <dev-haskell/random-1.4:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	test? (
		>=dev-haskell/hedgehog-1.4 <dev-haskell/hedgehog-1.5
		dev-haskell/random
	)
"
