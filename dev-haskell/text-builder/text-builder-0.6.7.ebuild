# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.0.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="An efficient strict text builder"
HOMEPAGE="https://github.com/nikita-volkov/text-builder"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/text-builder-dev-0.3.1:=[profile?] <dev-haskell/text-builder-dev-0.4:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.0
	test? ( >=dev-haskell/quickcheck-2.13 <dev-haskell/quickcheck-3
		>=dev-haskell/quickcheck-instances-0.3.22 <dev-haskell/quickcheck-instances-0.4
		<dev-haskell/rerebase-2
		>=dev-haskell/tasty-1.2.3 <dev-haskell/tasty-2
		>=dev-haskell/tasty-hunit-0.10.0.2 <dev-haskell/tasty-hunit-0.11
		>=dev-haskell/tasty-quickcheck-0.10.1 <dev-haskell/tasty-quickcheck-0.11 )
"
