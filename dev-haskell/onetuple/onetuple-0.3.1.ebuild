# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.9999

CABAL_HACKAGE_REVISION="3"
CABAL_PN="OneTuple"
CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"

inherit haskell-cabal

DESCRIPTION="Singleton Tuple"
HOMEPAGE="https://hackage.haskell.org/package/OneTuple"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-haskell/base-orphans-0.8.6:=[profile?]
	>=dev-haskell/hashable-1.3.5.0:=[profile?] <dev-haskell/hashable-1.5:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
"
