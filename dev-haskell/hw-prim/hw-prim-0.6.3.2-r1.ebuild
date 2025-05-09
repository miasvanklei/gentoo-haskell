# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.4.0.9999
#hackport: flags: bounds-checking-enabled:bounds-checking

CABAL_HACKAGE_REVISION=2

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Primitive functions and data types"
HOMEPAGE="https://github.com/haskell-works/hw-prim#readme"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="bounds-checking"

CABAL_CHDEPS=(
	'ghc-prim                   >= 0.5        && < 0.12' 'ghc-prim                   >= 0.5'
)

RDEPEND="
	>=dev-haskell/mmap-0.5:=[profile?] <dev-haskell/mmap-0.6:=[profile?]
	>=dev-haskell/unliftio-core-0.1.2.0:=[profile?] <dev-haskell/unliftio-core-0.3:=[profile?]
	>=dev-haskell/vector-0.12:=[profile?] <dev-haskell/vector-0.14:=[profile?]
	>=dev-lang/ghc-8.10.6:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.2.1.0
	test? (
		>=dev-haskell/doctest-0.16.2
		>=dev-haskell/doctest-discover-0.2 <dev-haskell/doctest-discover-0.3
		>=dev-haskell/hedgehog-1.0
		>=dev-haskell/hspec-2.4 <dev-haskell/hspec-3
		>=dev-haskell/hw-hspec-hedgehog-0.1 <dev-haskell/hw-hspec-hedgehog-0.2
		>=dev-haskell/quickcheck-2.10 <dev-haskell/quickcheck-2.15
	)
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag bounds-checking bounds-checking-enabled)
}
