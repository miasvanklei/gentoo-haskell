# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Initial project template from stack"
HOMEPAGE="https://github.com/fpco/say#readme"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=">=dev-haskell/text-1.2:=[profile?]
	>=dev-lang/ghc-8.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.24.2.0
	test? ( dev-haskell/hspec
		dev-haskell/unliftio )
"
