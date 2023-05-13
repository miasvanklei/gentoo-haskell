# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.2.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Object orientation tools for HsLua"
HOMEPAGE="https://hslua.org/"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/hslua-core-2.2.1:=[profile?] <dev-haskell/hslua-core-2.4:=[profile?]
	>=dev-haskell/hslua-marshalling-2.2.1:=[profile?] <dev-haskell/hslua-marshalling-2.4:=[profile?]
	>=dev-haskell/hslua-typing-0.1:=[profile?] <dev-haskell/hslua-typing-0.2:=[profile?]
	>=dev-haskell/text-1.2:=[profile?] <dev-haskell/text-2.1:=[profile?]
	>=dev-lang/ghc-8.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.2.0.0
	test? ( >=dev-haskell/lua-arbitrary-1.0
		>=dev-haskell/quickcheck-2.7
		>=dev-haskell/quickcheck-instances-0.3
		>=dev-haskell/tasty-0.11
		>=dev-haskell/tasty-hslua-1.0
		>=dev-haskell/tasty-hunit-0.9
		>=dev-haskell/tasty-quickcheck-0.8 )
"
