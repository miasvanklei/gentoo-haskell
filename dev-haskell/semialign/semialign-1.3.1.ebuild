# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.5.1.9999

CABAL_HACKAGE_REVISION=2

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Align and Zip type-classes from the common Semialign ancestor"
HOMEPAGE="https://github.com/haskellari/these"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm64 ~ppc64 ~riscv ~x86"
IUSE="+semigroupoids"

RDEPEND=">=dev-haskell/hashable-1.4.4.0:=[profile?] <dev-haskell/hashable-1.6:=[profile?]
	>=dev-haskell/indexed-traversable-0.1.4:=[profile?] <dev-haskell/indexed-traversable-0.2:=[profile?]
	>=dev-haskell/indexed-traversable-instances-0.1.2:=[profile?]
		<dev-haskell/indexed-traversable-instances-0.2:=[profile?]
	>=dev-haskell/tagged-0.8.8:=[profile?] <dev-haskell/tagged-0.9:=[profile?]
	>=dev-haskell/these-1.2.1:=[profile?] <dev-haskell/these-1.3:=[profile?]
	>=dev-haskell/unordered-containers-0.2.8.0:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/vector-0.13.0.0:=[profile?] <dev-haskell/vector-0.14:=[profile?]
	>=dev-lang/ghc-9.0.2:=
	semigroupoids? ( >=dev-haskell/semigroupoids-6.0.1:=[profile?] <dev-haskell/semigroupoids-6.1:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag semigroupoids semigroupoids)
}
