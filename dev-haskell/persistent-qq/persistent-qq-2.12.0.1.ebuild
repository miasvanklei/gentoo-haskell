# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Provides a quasi-quoter for raw SQL for persistent"
HOMEPAGE="https://github.com/yesodweb/persistent#readme"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND="dev-haskell/haskell-src-meta:=[profile?]
	dev-haskell/mtl:=[profile?]
	>=dev-haskell/persistent-2.12:=[profile?]
	dev-haskell/text:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( dev-haskell/aeson
		dev-haskell/fast-logger
		dev-haskell/hspec
		dev-haskell/hunit
		dev-haskell/monad-logger
		>=dev-haskell/persistent-2.13
		dev-haskell/persistent-sqlite
		dev-haskell/resourcet
		dev-haskell/unliftio )
"
