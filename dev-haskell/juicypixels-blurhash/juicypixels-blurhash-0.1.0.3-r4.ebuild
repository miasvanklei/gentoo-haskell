# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.4.0.9999

CABAL_HACKAGE_REVISION=8
CABAL_PN="JuicyPixels-blurhash"

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Blurhash is a very compact representation of a placeholder for an image"
HOMEPAGE="https://github.com/SamProtas/JuicyPixels-blurhash#readme"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="executable"

CABAL_CHDEPS=(
	'doctest >=0.16.2 && <0.20' 'doctest >=0.16.2'
	'tasty-hedgehog >=1.0.0.2 && <1.2' 'tasty-hedgehog >=1.0.0.2'
	'hedgehog >=1.0.2 && <1.2' 'hedgehog >=1.0.2'
	'optparse-applicative >=0.14.3 && <0.18' 'optparse-applicative >=0.14.3'
	'bytestring >=0.9 && <0.11' 'bytestring >=0.9'
	'vector >=0.10 && <0.13' 'vector >=0.10'
)

GHC_BOOTSTRAP_PACKAGES=(
	cabal-doctest
)

PATCHES=(
	"${FILESDIR}/${PN}-0.1.0.3-add-executable-flag.patch"
	"${FILESDIR}/${PN}-0.1.0.3-bytestring.patch"
	"${FILESDIR}/${PN}-0.1.0.3-cabal-doctest.patch"
)

RDEPEND="
	>=dev-haskell/juicypixels-3.2.8:=[profile?] <dev-haskell/juicypixels-3.4:=[profile?]
	>=dev-haskell/vector-0.10:=[profile?]
	>=dev-lang/ghc-8.10.6:=
	executable? (
		>=dev-haskell/optparse-applicative-0.14.3:=[profile?]
	)
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.2.1.0
	test? (
		>=dev-haskell/doctest-0.16.2
		>=dev-haskell/glob-0.10 <dev-haskell/glob-0.11
		>=dev-haskell/hedgehog-1.0.2
		>=dev-haskell/tasty-1.2.3 <dev-haskell/tasty-1.5
		>=dev-haskell/tasty-discover-4.2.1 <dev-haskell/tasty-discover-4.3
		>=dev-haskell/tasty-hedgehog-1.0.0.2
		>=dev-haskell/tasty-hunit-0.10.0.2 <dev-haskell/tasty-hunit-0.11
	)
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag executable executable)
}
