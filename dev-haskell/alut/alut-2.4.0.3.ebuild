# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.9999
#hackport: flags: -usenativewindowslibraries,buildexamples:examples

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

MY_PN="ALUT"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="A binding for the OpenAL Utility Toolkit"
HOMEPAGE="https://github.com/haskell-openal/ALUT"
SRC_URI="https://hackage.haskell.org/package/${MY_P}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="examples"

RDEPEND=">=dev-haskell/openal-1.7:=[profile?] <dev-haskell/openal-1.8:=[profile?]
	>=dev-haskell/statevar-1.1:=[profile?] <dev-haskell/statevar-1.3:=[profile?]
	>=dev-lang/ghc-7.8.2:=[profile?]
	media-libs/freealut
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
"

S="${WORKDIR}/${MY_P}"

PATCHES=("${FILESDIR}"/${PN}-2.4.0.3-ghc-8.patch)

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag examples buildexamples) \
		--flag=-usenativewindowslibraries
}
