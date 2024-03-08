# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.6.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Combinator-based type-safe formatting (like printf() or FORMAT)"
HOMEPAGE="https://github.com/AJChapman/formatting#readme"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/clock-0.4:=[profile?]
	>=dev-haskell/double-conversion-2.0.2.0:=[profile?] <dev-haskell/double-conversion-2.1:=[profile?]
	dev-haskell/old-locale:=[profile?]
	>=dev-haskell/scientific-0.3.0.0:=[profile?]
	>=dev-haskell/text-0.11.0.8:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.4
	test? ( dev-haskell/hspec )
"
