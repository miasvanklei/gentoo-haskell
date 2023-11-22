# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.4.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Partial types as a type constructor"
HOMEPAGE="https://github.com/i-am-tom/higgledy"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"

GHC_BOOTSTRAP_PACKAGES=(
	cabal-doctest
)

CABAL_CHDEPS=(
	'base-compat >= 0.11 && < 0.13' 'base-compat >= 0.11'
	'doctest >= 0.17 && < 0.22' 'doctest >= 0.17'
)

RDEPEND="
	=dev-haskell/barbies-2.0*:=[profile?]
	>=dev-haskell/generic-lens-2.1:=[profile?] <dev-haskell/generic-lens-3.0
	>=dev-haskell/generic-lens-core-2.1:=[profile?] <dev-haskell/generic-lens-core-3.0
	=dev-haskell/named-0.3*
	>=dev-haskell/quickcheck-2.12.6:=[profile?] <dev-haskell/quickcheck-2.15
	>=dev-lang/ghc-8.8.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.0.0.0
	=dev-haskell/cabal-doctest-1.0*
	test? (
		>=dev-haskell/base-compat-0.11
		>=dev-haskell/doctest-0.17
		>=dev-haskell/hspec-2.6.1 <dev-haskell/hspec-2.11
		>=dev-haskell/lens-4.17 <dev-haskell/lens-5.3
	)
"
