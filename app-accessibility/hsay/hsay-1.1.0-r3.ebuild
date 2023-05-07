# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.4.5.9999

CABAL_FEATURES=""
inherit haskell-cabal

DESCRIPTION="(ab)Use Google Translate as a speech synthesiser"
HOMEPAGE="https://hackage.haskell.org/package/hsay"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/hclip-3:= <dev-haskell/hclip-4:=
	>=dev-haskell/http-4000.2:=
	>=dev-lang/ghc-7.8.2:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
"

src_prepare() {
	default

	cabal_chdeps \
		'base >=4.7 && <4.8' 'base >=4.7' \
		'HTTP >= 4000.2 && < 4000.3' 'HTTP >= 4000.2' \
		'process >= 1.2.0.0 && < 1.3.0.0' 'process >= 1.2.0.0'
}
