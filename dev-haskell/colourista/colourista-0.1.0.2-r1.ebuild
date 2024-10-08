# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.4.0.9999

CABAL_HACKAGE_REVISION=5

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Convenient interface for printing colourful messages"
HOMEPAGE="https://github.com/kowainik/colourista"

LICENSE="MPL-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND="
	>=dev-haskell/ansi-terminal-0.10:=[profile?] <dev-haskell/ansi-terminal-1.1:=[profile?]
	>=dev-haskell/text-1.2.3.0:=[profile?] <dev-haskell/text-2.2:=[profile?]
	>=dev-lang/ghc-8.10.6:=
"
DEPEND="
	${RDEPEND}
	>=dev-haskell/cabal-3.2.1.0
	test? (
		>=dev-haskell/hspec-2.7.1 <dev-haskell/hspec-2.12
	)
"
