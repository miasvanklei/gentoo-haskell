# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.6.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="ExactPrint for GHC"
HOMEPAGE="http://hackage.haskell.org/package/ghc-exactprint"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="roundtrip"

RESTRICT=test # slow

RDEPEND=">=dev-haskell/free-4.12:=[profile?]
	>=dev-haskell/ghc-paths-0.1:=[profile?]
	>=dev-haskell/mtl-2.2.1:=[profile?]
	>=dev-haskell/syb-0.5:=[profile?]
	>=dev-lang/ghc-7.10.1:=
	roundtrip? ( dev-haskell/diff:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
	test? ( >=dev-haskell/filemanip-0.3
		>=dev-haskell/hunit-1.2
		>=dev-haskell/silently-1.2 )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag roundtrip roundtrip)
}
