# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.6.3

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Distributed parallel programming in Haskell using MPI"
HOMEPAGE="https://github.com/bjpop/haskell-mpi"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="test"

RESTRICT=test # requires testrunner, and that can't be built

RDEPEND="dev-haskell/cereal:=[profile?]
	dev-haskell/extensible-exceptions:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	virtual/mpi
"
DEPEND="${RDEPEND}
	dev-haskell/c2hs
	>=dev-haskell/cabal-1.6
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-mpich14
}
