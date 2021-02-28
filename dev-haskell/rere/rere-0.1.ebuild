# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Regular-expressions extended with fixpoints for context-free powers"
HOMEPAGE="https://hackage.haskell.org/package/rere"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+rere-cfg rere-intersection"

RDEPEND=">=dev-haskell/parsec-3.1.12.0:=[profile?] <dev-haskell/parsec-3.2:=[profile?]
	>=dev-lang/ghc-8.4.3:=
	>=dev-haskell/quickcheck-2.13.2:2=[profile?] <dev-haskell/quickcheck-2.15:2=[profile?]
	rere-cfg? ( >=dev-haskell/fin-0.1.1:=[profile?] <dev-haskell/fin-0.2:=[profile?]
			>=dev-haskell/vec-0.3:=[profile?] <dev-haskell/vec-0.4:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( dev-haskell/quickcheck
		>=dev-haskell/quickcheck-instances-0.3.22 <dev-haskell/quickcheck-instances-0.4
		>=dev-haskell/tasty-1.2.3 <dev-haskell/tasty-1.3
		>=dev-haskell/tasty-quickcheck-0.10.1.1 <dev-haskell/tasty-quickcheck-0.11 )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag rere-cfg rere-cfg) \
		$(cabal_flag rere-intersection rere-intersection)
}
