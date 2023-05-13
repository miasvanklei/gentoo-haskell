# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.0.0.9999

CABAL_FEATURES=""
inherit haskell-cabal

DESCRIPTION="Treemap visualiser for GHC prof files"
HOMEPAGE="https://github.com/jaspervdj/profiteur"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64"
IUSE="embed-data-files"

CABAL_CHDEPS=(
	'file-embed       >= 0.0.10 && < 0.0.12' 'file-embed >= 0.0.10'
)

RDEPEND="
	>=dev-haskell/aeson-0.6:= <dev-haskell/aeson-2.2:=
	>=dev-haskell/ghc-prof-1.3:= <dev-haskell/ghc-prof-1.5:=
	>=dev-haskell/js-jquery-3.1:= <dev-haskell/js-jquery-3.4:=
	>=dev-haskell/scientific-0.3:= <dev-haskell/scientific-0.4:=
	>=dev-haskell/unordered-containers-0.2:= <dev-haskell/unordered-containers-0.3:=
	>=dev-haskell/vector-0.10:= <dev-haskell/vector-0.13:=
	>=dev-lang/ghc-8.4.3:=
	embed-data-files? (
		>=dev-haskell/file-embed-0.0.10:=
	)
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag embed-data-files embed-data-files)
}
