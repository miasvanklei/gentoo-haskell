# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.5.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Functions for instrumenting your application so the heap can be analysed with ghc-debug-common"
HOMEPAGE="https://gitlab.haskell.org/ghc/ghc-debug"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="eras trace"

RDEPEND="~dev-haskell/ghc-debug-convention-0.6.0.0:=[profile?]
	>=dev-lang/ghc-9.2.4:=
	|| ( llvm-core/clang
		sys-devel/gcc[cxx] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.6.3.0
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag eras eras) \
		$(cabal_flag trace trace)
}
