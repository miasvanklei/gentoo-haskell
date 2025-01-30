# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.1.0.9999
#hackport: flags: -usenativewindowslibraries,-useglxgetprocaddress,-osandroid,-usegles2

CABAL_HACKAGE_REVISION=3
CABAL_PN="OpenGLRaw"

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="A raw binding for the OpenGL graphics system"
HOMEPAGE="https://www.haskell.org/haskellwiki/Opengl"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND="
	>=dev-haskell/fixed-0.2:=[profile?] <dev-haskell/fixed-0.4:=[profile?]
	>=dev-haskell/half-0.2.2.1:=[profile?] <dev-haskell/half-0.4:=[profile?]
	>=dev-haskell/text-0.1:=[profile?] <dev-haskell/text-2.2:=[profile?]
	>=dev-lang/ghc-8.8.1:=
	virtual/opengl
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.0.0.0
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-osandroid \
		--flag=-usegles2 \
		--flag=-useglxgetprocaddress \
		--flag=-usenativewindowslibraries
}
