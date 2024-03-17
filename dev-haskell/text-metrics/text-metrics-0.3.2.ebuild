# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.5.1.9999
#hackport: flags: -dev

CABAL_HACKAGE_REVISION=3

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Calculate various string metrics efficiently"
HOMEPAGE="https://github.com/mrkkrp/text-metrics"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/text-0.2:=[profile?] <dev-haskell/text-2.2:=[profile?]
	>=dev-haskell/vector-0.11:=[profile?] <dev-haskell/vector-0.14:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	test? ( >=dev-haskell/hspec-2.0 <dev-haskell/hspec-3
		>=dev-haskell/quickcheck-2.8 <dev-haskell/quickcheck-3 )
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-dev
}
