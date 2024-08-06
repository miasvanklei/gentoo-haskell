# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.5.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Bifunctors"
HOMEPAGE="https://github.com/ekmett/bifunctors/"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm64 ~ppc64 ~riscv ~x86"
IUSE="+tagged"

RDEPEND=">=dev-haskell/assoc-1.1:=[profile?] <dev-haskell/assoc-1.2:=[profile?]
	>=dev-haskell/comonad-5.0.7:=[profile?] <dev-haskell/comonad-6:=[profile?]
	>=dev-haskell/foldable1-classes-compat-0.1:=[profile?] <dev-haskell/foldable1-classes-compat-0.2:=[profile?]
	>=dev-haskell/th-abstraction-0.4.2.0:=[profile?] <dev-haskell/th-abstraction-0.8:=[profile?]
	>=dev-lang/ghc-9.0.2:=
	tagged? ( >=dev-haskell/tagged-0.8.6:=[profile?] <dev-haskell/tagged-1:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	test? ( >=dev-haskell/hspec-1.8
		>=dev-haskell/quickcheck-2 <dev-haskell/quickcheck-3
		dev-haskell/transformers-compat )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag tagged tagged)
}
