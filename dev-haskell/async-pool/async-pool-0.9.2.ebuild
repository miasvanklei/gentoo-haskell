# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.9.0.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A modified version of async that supports worker groups and many-to-many task dependencies"
HOMEPAGE="https://hackage.haskell.org/package/async-pool"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/async-2.0.0.0:=[profile?]
	>=dev-haskell/fgl-5.4.2.2:=[profile?]
	>=dev-haskell/monad-control-1.0:=[profile?] <dev-haskell/monad-control-1.1:=[profile?]
	dev-haskell/transformers-base:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	test? ( >=dev-haskell/hspec-1.4 )
"
