# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.1.9999
#hackport: flags: -lib-werror

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Sharing code for serialization between binary and cereal"
HOMEPAGE="https://github.com/ekmett/bytes"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+test-doctests"

RDEPEND=">=dev-haskell/binary-orphans-1.0.1:=[profile?] <dev-haskell/binary-orphans-1.1:=[profile?]
	>=dev-haskell/cereal-0.5.2:=[profile?] <dev-haskell/cereal-0.6:=[profile?]
	>=dev-haskell/fail-4.9.0.0:=[profile?] <dev-haskell/fail-4.10:=[profile?]
	>=dev-haskell/hashable-1.0.1.1:=[profile?] <dev-haskell/hashable-1.4:=[profile?]
	>=dev-haskell/mtl-2.0:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/scientific-0.0:=[profile?] <dev-haskell/scientific-1:=[profile?]
	>=dev-haskell/semigroups-0.5:=[profile?] <dev-haskell/semigroups-1:=[profile?]
	>=dev-haskell/text-0.2:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/transformers-compat-0.6.5:=[profile?] <dev-haskell/transformers-compat-1:=[profile?]
	>=dev-haskell/unordered-containers-0.2:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/void-0.6:=[profile?] <dev-haskell/void-1:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	>=dev-haskell/cabal-doctest-1 <dev-haskell/cabal-doctest-1.1
	test? ( test-doctests? ( >=dev-haskell/doctest-0.11.1 <dev-haskell/doctest-0.17 ) )
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-lib-werror \
		$(cabal_flag test-doctests test-doctests)
}
