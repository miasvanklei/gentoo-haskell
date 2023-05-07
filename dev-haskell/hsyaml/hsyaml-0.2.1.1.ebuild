# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.1.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
CABAL_HACKAGE_REVISION=1
CABAL_PN="HsYAML"


inherit haskell-cabal

DESCRIPTION="Pure Haskell YAML 1.2 processor"
HOMEPAGE="https://github.com/haskell-hvr/HsYAML"

LICENSE="GPL-2"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="exe"

RDEPEND=">=dev-lang/ghc-8.4.3:=[profile?]
	exe? ( >=dev-haskell/megaparsec-7.0:=[profile?] <dev-haskell/megaparsec-10:=[profile?]
		>=dev-haskell/microaeson-0.1:=[profile?] <dev-haskell/microaeson-0.2:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( >=dev-haskell/quickcheck-2.14 <dev-haskell/quickcheck-2.15
		>=dev-haskell/tasty-1.4 <dev-haskell/tasty-1.5
		>=dev-haskell/tasty-quickcheck-0.10 <dev-haskell/tasty-quickcheck-0.11 )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag exe exe)
}
