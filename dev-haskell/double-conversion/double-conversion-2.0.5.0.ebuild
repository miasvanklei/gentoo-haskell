# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.5.1.9999
#hackport: flags: -developer,-embedded_double_conversion

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Fast conversion between single and double precision floating point and text"
HOMEPAGE="https://github.com/haskell/double-conversion"

LICENSE="BSD-2"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/text-0.11.0.8:=[profile?]
	>=dev-lang/ghc-9.0.2:=
	dev-libs/double-conversion
	|| ( sys-devel/clang
		sys-devel/gcc[cxx] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	test? ( dev-haskell/hunit
		dev-haskell/test-framework
		dev-haskell/test-framework-hunit
		dev-haskell/test-framework-quickcheck2 )
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-developer \
		--flag=-embedded_double_conversion
}
