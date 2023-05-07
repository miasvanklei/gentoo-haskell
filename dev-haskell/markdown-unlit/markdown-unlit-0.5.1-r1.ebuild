# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Literate Haskell support for Markdown"
HOMEPAGE="https://github.com/sol/markdown-unlit#readme"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="+executable"

RDEPEND="dev-haskell/base-compat:=[profile?]
	>=dev-lang/ghc-8.4.3:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( >=dev-haskell/hspec-2 <dev-haskell/hspec-3
		dev-haskell/quickcheck
		dev-haskell/silently
		dev-haskell/stringbuilder
		dev-haskell/temporary )
"

PATCHES=( "${FILESDIR}/${PN}-0.5.1-add-executable-flag.patch" )

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag executable executable)
}
