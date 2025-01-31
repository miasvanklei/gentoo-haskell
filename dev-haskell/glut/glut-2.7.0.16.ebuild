# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.6.7.9999
#hackport: flags: -usenativewindowslibraries,buildexamples:examples

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

MY_PN="GLUT"
MY_P="${MY_PN}-${PV}"
S="${WORKDIR}/${MY_P}"

DESCRIPTION="A binding for the OpenGL Utility Toolkit"
HOMEPAGE="https://www.haskell.org/haskellwiki/Opengl"
SRC_URI="https://hackage.haskell.org/package/${MY_P}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="examples"

CABAL_CHDEPS=(
				'containers   >= 0.3  && < 0.7' 'containers   >= 0.3  && < 0.8'
				'transformers >= 0.2  && < 0.6' 'transformers >= 0.2 && < 0.7'
				)

RDEPEND=">=dev-haskell/opengl-2.12:=[profile?] <dev-haskell/opengl-3.1:=[profile?]
	>=dev-haskell/statevar-1.1:=[profile?] <dev-haskell/statevar-1.3:=[profile?]
	>=dev-lang/ghc-8.4.3:=
	examples? ( >=dev-haskell/openglraw-1.0:=[profile?] <dev-haskell/openglraw-3.4:=[profile?]
			>=dev-haskell/random-1.0:=[profile?] <dev-haskell/random-1.3:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag examples buildexamples) \
		--flag=-usenativewindowslibraries
}
