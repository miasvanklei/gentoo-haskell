# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour" # Broken test-suite: missing files
inherit haskell-cabal

DESCRIPTION="ID3v2 (tagging standard for MP3 files) library"
HOMEPAGE="https://hackage.haskell.org/package/idiii"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RESTRICT=test #missing files

RDEPEND="dev-haskell/data-accessor:=[profile?]
	dev-haskell/missingh:=[profile?]
	dev-haskell/polyparse:=[profile?]
	dev-haskell/text:=[profile?]
	dev-haskell/utf8-string:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
"

PATCHES=("${FILESDIR}"/${P}-fold.patch)
