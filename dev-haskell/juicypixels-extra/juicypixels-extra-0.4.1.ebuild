# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.1

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

MY_PN="JuicyPixels-extra"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Efficiently scale, crop, flip images with JuicyPixels"
HOMEPAGE="https://github.com/mrkkrp/JuicyPixels-extra"
SRC_URI="https://hackage.haskell.org/package/${MY_P}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="dev"

RDEPEND=">=dev-haskell/juicypixels-3.2.6.4:=[profile?] <dev-haskell/juicypixels-3.4:=[profile?]
	>=dev-lang/ghc-8.0.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.24.0.0
	test? ( >=dev-haskell/hspec-2.0 )
"

S="${WORKDIR}/${MY_P}"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag dev dev)
}
