# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.1.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Closable, fair, single-wakeup channel type that avoids 0 reader space leaks"
HOMEPAGE="https://github.com/merijn/broadcast-chan"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="sync +threaded"

RDEPEND=">=dev-haskell/unliftio-core-0.1.1:=[profile?] <dev-haskell/unliftio-core-0.3:=[profile?]
	>=dev-lang/ghc-8.4.3:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag sync sync) \
		$(cabal_flag threaded threaded)
}
