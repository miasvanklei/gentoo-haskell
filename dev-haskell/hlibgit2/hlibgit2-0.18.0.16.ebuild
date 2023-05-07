# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.5.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Low-level bindings to libgit2"
HOMEPAGE="https://hackage.haskell.org/package/hlibgit2"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=">=dev-haskell/bindings-dsl-1.0.11:=[profile?]
	>=dev-haskell/zlib-0.5.4:=[profile?]
	>=dev-lang/ghc-7.4.1:=[profile?]
	dev-libs/openssl
	virtual/libc
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
"
