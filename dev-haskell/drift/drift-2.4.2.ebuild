# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.2.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit eutils haskell-cabal

MY_PN="DrIFT"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Program to derive type class instances"
HOMEPAGE="http://repetae.net/computer/haskell/DrIFT/"
SRC_URI="https://hackage.haskell.org/package/${MY_P}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="amd64 ~ia64 ppc ppc64 x86"
IUSE=""

RDEPEND="dev-haskell/old-time:=[profile?]
	dev-haskell/random:=[profile?]
	>=dev-lang/ghc-6.10.4:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
"

S="${WORKDIR}/${MY_P}"

PATCHES=(
	"${FILESDIR}"/${P}-ghc-7.10.patch
	"${FILESDIR}"/${P}-ghc84.patch
)
