# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.9.0.0.9999

CABAL_HACKAGE_REVISION=1

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A data-type like Either but with an accumulating Applicative"
HOMEPAGE="https://github.com/qfpl/validation"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/assoc-1:=[profile?] <dev-haskell/assoc-2:=[profile?]
	>=dev-haskell/bifunctors-5.5:=[profile?] <dev-haskell/bifunctors-6:=[profile?]
	>=dev-haskell/lens-4.0.5:=[profile?] <dev-haskell/lens-6:=[profile?]
	>=dev-haskell/semigroupoids-5.2.2:=[profile?] <dev-haskell/semigroupoids-7:=[profile?]
	>=dev-haskell/semigroups-0.18.2:=[profile?] <dev-haskell/semigroups-1:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	test? ( >=dev-haskell/hedgehog-0.5 <dev-haskell/hedgehog-2
		>=dev-haskell/hunit-1.6 <dev-haskell/hunit-1.7 )
"
