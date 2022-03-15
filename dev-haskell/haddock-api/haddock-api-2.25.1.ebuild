# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7

CABAL_FEATURES="lib profile hoogle hscolour test-suite" # haddock
inherit haskell-cabal

DESCRIPTION="A documentation-generation tool for Haskell libraries"
HOMEPAGE="https://www.haskell.org/haddock/"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD-2"
SLOT="0/${PV}"
#keep in sync with ghc-9.0.2
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux"

RDEPEND="dev-haskell/exceptions:=[profile?]
	>=dev-haskell/ghc-paths-0.1.0.9:=[profile?] <dev-haskell/ghc-paths-0.2:=[profile?]
	>=dev-haskell/haddock-library-1.10.0:=[profile?] <dev-haskell/haddock-library-1.11:=[profile?]
	dev-haskell/mtl:=[profile?]
	>=dev-haskell/parsec-3.1.13.0:=[profile?] <dev-haskell/parsec-3.2:=[profile?]
	>=dev-haskell/xhtml-3000.2.2:=[profile?] <dev-haskell/xhtml-3000.3:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	test? ( >=dev-haskell/ghc-paths-0.1.0.12 <dev-haskell/ghc-paths-0.2
		>=dev-haskell/hspec-2.4.4
		>=dev-haskell/hspec-discover-2.4.4
		>=dev-haskell/quickcheck-2.14 <dev-haskell/quickcheck-2.15 )
"

src_prepare() {
	default

	cabal_chdeps \
		'hspec           >= 2.4.4 && < 2.8' 'hspec >=2.4.4' \
		'hspec-discover:hspec-discover >= 2.4.4 && < 2.8' 'hspec-discover:hspec-discover >= 2.4.4'
}