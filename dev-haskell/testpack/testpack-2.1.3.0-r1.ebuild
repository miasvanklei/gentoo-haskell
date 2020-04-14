# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.4.4.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit eutils haskell-cabal

DESCRIPTION="Test Utililty Pack for HUnit and QuickCheck (unmaintained)"
HOMEPAGE="https://github.com/jgoerzen/testpack"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="<dev-haskell/hunit-1.3:=[profile?]
	dev-haskell/mtl:=[profile?]
	>=dev-haskell/quickcheck-2.1.0.3:2=[profile?]
	dev-haskell/random:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6
"

src_prepare() {
	epatch "${FILESDIR}"/${P}-qc28.patch
	epatch "${FILESDIR}"/${P}-HUnit-1.3.patch
	epatch "${FILESDIR}"/${P}-QC-2.8.2.patch
	epatch "${FILESDIR}"/${P}-QC-2.10.patch
}
