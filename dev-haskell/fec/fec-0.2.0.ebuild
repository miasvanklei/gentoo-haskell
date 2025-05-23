# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.9.0.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Forward error correction of ByteStrings"
HOMEPAGE="https://github.com/tahoe-lafs/zfec"

LICENSE="GPL-2+"
SLOT="0/${PV}"
KEYWORDS="~amd64"

CABAL_CHDEPS=(
	'extra       >=1.7  && <1.8' 'extra >=1.7'
)

RDEPEND=">=dev-haskell/criterion-1.1:=[profile?] <dev-haskell/criterion-1.7:=[profile?]
	>=dev-haskell/extra-1.7:=[profile?]
	>=dev-haskell/random-1.1:=[profile?] <dev-haskell/random-1.3:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	test? ( >=dev-haskell/data-serializer-0.3 <dev-haskell/data-serializer-0.4
		>=dev-haskell/hspec-2.7 <dev-haskell/hspec-2.12
		>=dev-haskell/quickcheck-2.14 <dev-haskell/quickcheck-2.15
		>=dev-haskell/quickcheck-instances-0.3 <dev-haskell/quickcheck-instances-0.4 )
"
