# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.4.0.9999

CABAL_HACKAGE_REVISION=2

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Dependent finite maps (partial dependent products)"
HOMEPAGE="https://github.com/obsidiansystems/dependent-map"

LICENSE="BSD-2"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/constraints-extras-0.2.3.0:=[profile?] <dev-haskell/constraints-extras-0.5
	>=dev-haskell/dependent-sum-0.6.1:=[profile?] <dev-haskell/dependent-sum-0.8
	>=dev-lang/ghc-8.8.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.0.0.0
"
