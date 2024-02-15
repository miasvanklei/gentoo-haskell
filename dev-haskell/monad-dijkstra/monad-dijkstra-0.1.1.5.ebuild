# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.5.1

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A monad transformer for weighted graph searches"
HOMEPAGE="https://github.com/ennocramer/monad-dijkstra"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND="
	>=dev-haskell/free-4.12.0:=[profile?] <dev-haskell/free-5.3:=[profile?]
	>=dev-haskell/psqueues-0.2.0.0:=[profile?] <dev-haskell/psqueues-0.3:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	test? ( >=dev-haskell/hlint-1.0 <dev-haskell/hlint-4
		dev-haskell/hspec
		dev-haskell/tasty
		dev-haskell/tasty-hspec )
"
