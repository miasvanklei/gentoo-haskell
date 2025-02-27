# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.9.0.0.9999

CABAL_HACKAGE_REVISION=1

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Orphan instances for binary"
HOMEPAGE="https://github.com/haskellari/binary-instances#readme"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

CABAL_CHDEPS=(
	"base    >=4.6.0.1 && <4.21" "base    >=4.6.0.1 && <4.22"
	'tasty                 ^>=1.5' 'tasty >=1.4'
	'tasty-quickcheck      ^>=0.10.3 || ^>=0.11' 'tasty-quickcheck      ^>=0.10.2'
	'tagged            >=0.8.8   && <0.8.9' 'tagged            >=0.8.8'
	)

RDEPEND=">=dev-haskell/aeson-2.2.2.0:=[profile?] <dev-haskell/aeson-2.3:=[profile?]
	>=dev-haskell/binary-orphans-1.0.5:=[profile?] <dev-haskell/binary-orphans-1.1:=[profile?]
	>=dev-haskell/case-insensitive-1.2.1.0:=[profile?] <dev-haskell/case-insensitive-1.2.2:=[profile?]
	>=dev-haskell/primitive-0.9.0.0:=[profile?] <dev-haskell/primitive-0.10:=[profile?]
	>=dev-haskell/scientific-0.3.8.0:=[profile?] <dev-haskell/scientific-0.4:=[profile?]
	>=dev-haskell/tagged-0.8.8:=[profile?]
	>=dev-haskell/time-compat-1.9.7:=[profile?] <dev-haskell/time-compat-1.10:=[profile?]
	>=dev-haskell/unordered-containers-0.2.20:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/vector-0.13.1.0:=[profile?] <dev-haskell/vector-0.14:=[profile?]
	>=dev-haskell/vector-binary-instances-0.2.5.2:=[profile?] <dev-haskell/vector-binary-instances-0.3:=[profile?]
	>=dev-lang/ghc-9.0.2:=
	>=dev-haskell/hashable-1.4.4.0:=[profile?] <dev-haskell/hashable-1.6:=[profile?]
	>=dev-haskell/text-1.2.3.0:=[profile?] <dev-haskell/text-2.2:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	test? ( dev-haskell/data-array-byte
		dev-haskell/hashable
		>=dev-haskell/quickcheck-instances-0.3.31 <dev-haskell/quickcheck-instances-0.4
		>=dev-haskell/tasty-1.4
		dev-haskell/text
		>=dev-haskell/quickcheck-2.14.3 <dev-haskell/quickcheck-2.16
		>=dev-haskell/tasty-quickcheck-0.10.2 )
"
