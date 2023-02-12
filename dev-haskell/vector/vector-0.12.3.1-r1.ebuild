# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.1.1.9999
#hackport: flags: -wall

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
CABAL_HACKAGE_REVISION="2"

inherit haskell-cabal

DESCRIPTION="Efficient Arrays"
HOMEPAGE="https://github.com/haskell/vector"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+boundschecks internalchecks unsafechecks"

RDEPEND=">=dev-haskell/primitive-0.6.4.0:=[profile?] <dev-haskell/primitive-0.8:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	dev-haskell/cabal-doctest
	test? ( >=dev-haskell/base-orphans-0.6
		dev-haskell/base-compat
		>=dev-haskell/doctest-0.15
		dev-haskell/hunit
		>=dev-haskell/quickcheck-2.9 <dev-haskell/quickcheck-2.15
		dev-haskell/random
		dev-haskell/tasty
		dev-haskell/tasty-hunit
		dev-haskell/tasty-quickcheck )
"
BDEPEND="app-text/dos2unix"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag boundschecks boundschecks) \
		$(cabal_flag internalchecks internalchecks) \
		$(cabal_flag unsafechecks unsafechecks) \
		--flag=-wall
}

GHC_BOOTSTRAP_PACKAGES=( cabal-doctest )
