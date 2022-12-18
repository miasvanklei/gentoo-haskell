# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.3.0

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="base-compat with extra batteries"
HOMEPAGE="https://hackage.haskell.org/package/base-compat-batteries"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	~dev-haskell/base-compat-0.12.2:=[profile?]
	>=dev-haskell/contravariant-1.5:=[profile?] <dev-haskell/contravariant-1.6:=[profile?]
	>=dev-haskell/onetuple-0.3:=[profile?] <dev-haskell/onetuple-0.4:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? (
		>=dev-haskell/hspec-1.8
		dev-haskell/quickcheck
	)
"