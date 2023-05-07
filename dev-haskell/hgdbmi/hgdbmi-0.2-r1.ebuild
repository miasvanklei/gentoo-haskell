# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.3.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="GDB Machine Interface: program-driven control of GDB"
HOMEPAGE="https://github.com/copton/hgdbmi"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RESTRICT=test # tests hung on gdb process

RDEPEND=">=dev-haskell/parsec-3.1:=[profile?] <dev-haskell/parsec-3.2:=[profile?]
	>=dev-haskell/stm-2.3:=[profile?]
	>=dev-lang/ghc-7.6.1:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.16.0
	test? ( >=dev-haskell/hunit-1.2
		>=dev-haskell/temporary-1.1
		>=dev-haskell/test-framework-0.6
		>=dev-haskell/test-framework-hunit-0.2 )
"

src_prepare() {
	default

	cabal_chdeps \
		'test-framework       == 0.6.*' 'test-framework       >= 0.6' \
		'test-framework-hunit == 0.2.*' 'test-framework-hunit >= 0.2' \
		'process              == 1.1.*' 'process              >= 1.1' \
		'process     == 1.1.*' 'process     >= 1.1' \
		'temporary            == 1.1.*' 'temporary            >= 1.1' \
		'stm         == 2.3.*' 'stm         >= 2.3' \
		'unix        == 2.6.*' 'unix        >= 2.6' \
		'HUnit                == 1.2.*' 'HUnit                >= 1.2' \
		'directory            == 1.2.*' 'directory            >= 1.2'
}
