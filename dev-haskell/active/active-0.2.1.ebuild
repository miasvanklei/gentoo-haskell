# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.5.1.9999

CABAL_HACKAGE_REVISION=3

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Abstractions for animation"
HOMEPAGE="https://hackage.haskell.org/package/active"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/lens-4.0:=[profile?] <dev-haskell/lens-5.4:=[profile?]
	>=dev-haskell/linear-1.14:=[profile?] <dev-haskell/linear-1.24:=[profile?]
	>=dev-haskell/semigroupoids-1.2:=[profile?] <dev-haskell/semigroupoids-6.1:=[profile?]
	>=dev-haskell/semigroups-0.1:=[profile?] <dev-haskell/semigroups-0.21:=[profile?]
	>=dev-haskell/vector-0.10:=[profile?] <dev-haskell/vector-0.14:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	test? ( >=dev-haskell/quickcheck-2.9 <dev-haskell/quickcheck-2.16 )
"
