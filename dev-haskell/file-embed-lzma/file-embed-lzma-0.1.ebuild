# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.9.0.0.9999

CABAL_HACKAGE_REVISION=1

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Use Template Haskell to embed (LZMA compressed) data"
HOMEPAGE="https://github.com/phadej/file-embed-lzma"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/lzma-0.0.1.1:=[profile?] <dev-haskell/lzma-0.1:=[profile?]
	>=dev-lang/ghc-9.0.2:=
	>=dev-haskell/text-1.2.5.0:=[profile?] <dev-haskell/text-2.2:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
"
