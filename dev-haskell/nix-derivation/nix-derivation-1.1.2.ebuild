# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.6.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Parse and render *.drv files"
HOMEPAGE="https://hackage.haskell.org/package/nix-derivation"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/attoparsec-0.12.0.0:=[profile?] <dev-haskell/attoparsec-0.15:=[profile?]
	>=dev-haskell/pretty-show-1.6.11:=[profile?] <dev-haskell/pretty-show-1.11:=[profile?]
	>=dev-haskell/text-0.8.0.0:=[profile?] <dev-haskell/text-1.3:=[profile?]
	<dev-haskell/vector-0.13:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( <dev-haskell/quickcheck-2.15 )
"
