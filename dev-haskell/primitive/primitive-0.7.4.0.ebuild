# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.3.0

CABAL_HACKAGE_REVISION=1
CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Primitive memory-related operations"
HOMEPAGE="https://github.com/haskell/primitive"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~amd64-linux"

CABAL_CHDEPS=(
	'tasty ^>= 1.2 || ^>= 1.3 || ^>= 1.4' 'tasty >= 1.2'
)

RDEPEND="
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? (
		dev-haskell/base-orphans
		>=dev-haskell/quickcheck-2.13 <dev-haskell/quickcheck-2.15
		>=dev-haskell/quickcheck-classes-base-0.6 <dev-haskell/quickcheck-classes-base-0.7
		dev-haskell/tagged
		>=dev-haskell/tasty-1.2
		dev-haskell/tasty-quickcheck
		dev-haskell/transformers-compat
	)
"

pkg_pretend() {
	if use test; then
		ewarn "The \"test\" USE flag for this package creates cycles within the"
		ewarn "dependency graph. This may give you problems during 'haskell-updater' runs."
		ewarn "It is recommended to leave it disabled unless explicitly testing the package."
	fi
}
