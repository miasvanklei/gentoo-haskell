# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.5.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Use pandoc types in Lua"
HOMEPAGE="https://github.com/pandoc/pandoc-lua-marshal"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/aeson-1.5:=[profile?] <dev-haskell/aeson-2.3:=[profile?]
	>=dev-haskell/hslua-2.2:=[profile?] <dev-haskell/hslua-2.4:=[profile?]
	>=dev-haskell/hslua-list-1.1:=[profile?] <dev-haskell/hslua-list-1.2:=[profile?]
	>=dev-haskell/hslua-marshalling-2.2:=[profile?] <dev-haskell/hslua-marshalling-2.4:=[profile?]
	>=dev-haskell/pandoc-types-1.23:=[profile?] <dev-haskell/pandoc-types-1.24:=[profile?]
	>=dev-haskell/safe-0.3:=[profile?] <dev-haskell/safe-0.4:=[profile?]
	>=dev-lang/ghc-9.0.2:=
	>=dev-haskell/text-1.1.1.0:=[profile?] <dev-haskell/text-2.2:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	test? ( >=dev-haskell/quickcheck-2.4 <dev-haskell/quickcheck-2.16
		>=dev-haskell/tasty-0.11
		>=dev-haskell/tasty-hunit-0.9
		>=dev-haskell/tasty-lua-1.0
		>=dev-haskell/tasty-quickcheck-0.8 <dev-haskell/tasty-quickcheck-0.11 )
"
