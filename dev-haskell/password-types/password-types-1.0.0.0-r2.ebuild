# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.9.0.0.9999

CABAL_HACKAGE_REVISION=4

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Types for handling passwords"
HOMEPAGE="https://github.com/cdepillabout/password/tree/master/password-types#readme"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

GHC_BOOTSTRAP_PACKAGES=(
	cabal-doctest
	)

RDEPEND="<dev-haskell/memory-1:=[profile?]
	<dev-haskell/text-3:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	>=dev-haskell/cabal-doctest-1.0.6 <dev-haskell/cabal-doctest-1.1
	test? ( dev-haskell/base-compat
		dev-haskell/doctest
		dev-haskell/quickcheck
		dev-haskell/quickcheck-instances
		dev-haskell/tasty
		dev-haskell/tasty-quickcheck )
"
