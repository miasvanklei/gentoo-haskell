# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.5.6

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Abstractions and concrete implementations of mutable containers"
HOMEPAGE="https://github.com/snoyberg/mono-traversable#readme"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="dev-haskell/mono-traversable:=[profile?]
	>=dev-haskell/primitive-0.5.2.1:=[profile?]
	dev-haskell/vector:=[profile?]
	>=dev-lang/ghc-8.0.1:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.24.0.0
	test? ( dev-haskell/hspec
		dev-haskell/quickcheck )
"
