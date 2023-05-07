# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.2.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Bridge between commonmark and pandoc AST"
HOMEPAGE="https://github.com/jgm/commonmark-hs"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/commonmark-0.2:=[profile?] <dev-haskell/commonmark-0.3:=[profile?]
	>=dev-haskell/commonmark-extensions-0.2.1:=[profile?] <dev-haskell/commonmark-extensions-0.3:=[profile?]
	>=dev-haskell/pandoc-types-1.21:=[profile?] <dev-haskell/pandoc-types-1.24:=[profile?]
	dev-haskell/text:=[profile?]
	>=dev-lang/ghc-8.8.1:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.0.0.0
"
