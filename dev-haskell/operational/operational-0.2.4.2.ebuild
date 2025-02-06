# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.9.0.0.9999

CABAL_HACKAGE_REVISION=1

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Implementation of difficult monads made easy with operational semantics"
HOMEPAGE="https://github.com/HeinrichApfelmus/operational"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="+buildexamples"

RDEPEND=">=dev-lang/ghc-9.0.2:=
	buildexamples? ( >=dev-haskell/random-1:=[profile?] <dev-haskell/random-2:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag buildexamples buildexamples)
}
