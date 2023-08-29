# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.4.0.9999

CABAL_HACKAGE_REVISION=6

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A tiny JSON library with light dependency footprint"
HOMEPAGE="https://hackage.haskell.org/package/microaeson"

LICENSE="GPL-3"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/fail-4.9.0.0:=[profile?] <dev-haskell/fail-4.10:=[profile?]
	>=dev-lang/ghc-8.8.1:=
	>=dev-haskell/text-1.2.2.2:=[profile?] <dev-haskell/text-2.1:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/alex-3.2.0
	>=dev-haskell/cabal-3.0.0.0
	test? ( >=dev-haskell/quickcheck-instances-0.3.16 <dev-haskell/quickcheck-instances-0.4
		>=dev-haskell/tasty-quickcheck-0.10 <dev-haskell/tasty-quickcheck-0.11
		dev-haskell/text
		>=dev-haskell/unordered-containers-0.2.8.0 <dev-haskell/unordered-containers-0.3
		|| ( ( >=dev-haskell/aeson-1.3.1.0 <dev-haskell/aeson-1.4 )
			|| ( ( >=dev-haskell/aeson-1.4.7.1 <dev-haskell/aeson-1.5 )
				|| ( ( >=dev-haskell/aeson-1.5.6.0 <dev-haskell/aeson-1.6 )
				|| ( ( >=dev-haskell/aeson-2.0.3.0 <dev-haskell/aeson-2.1 )
					|| ( ( >=dev-haskell/aeson-2.1.0.0 <dev-haskell/aeson-2.2 )
						( >=dev-haskell/aeson-2.2.0.0 <dev-haskell/aeson-2.3 ) ) ) ) ) )
		|| ( ( >=dev-haskell/quickcheck-2.11.3 <dev-haskell/quickcheck-2.12 )
			|| ( ( >=dev-haskell/quickcheck-2.12.6.1 <dev-haskell/quickcheck-2.13 )
				|| ( ( >=dev-haskell/quickcheck-2.13.2 <dev-haskell/quickcheck-2.14 )
				( >=dev-haskell/quickcheck-2.14.2 <dev-haskell/quickcheck-2.15 ) ) ) )
		|| ( ( >=dev-haskell/tasty-1.0.1.1 <dev-haskell/tasty-1.1 )
			|| ( ( >=dev-haskell/tasty-1.1.0.4 <dev-haskell/tasty-1.2 )
				|| ( ( >=dev-haskell/tasty-1.2.3 <dev-haskell/tasty-1.3 )
				|| ( ( >=dev-haskell/tasty-1.3.1 <dev-haskell/tasty-1.4 )
					( >=dev-haskell/tasty-1.4.1 <dev-haskell/tasty-1.5 ) ) ) ) )
		|| ( ( >=dev-haskell/vector-0.12.0.1 <dev-haskell/vector-0.13 )
			( >=dev-haskell/vector-0.13.0.0 <dev-haskell/vector-0.14 ) ) )
"
