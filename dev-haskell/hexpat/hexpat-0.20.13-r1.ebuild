# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.6.7.9999
#hackport: flags: -bundle

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="XML parser/formatter based on expat"
HOMEPAGE="https://haskell.org/haskellwiki/Hexpat/"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

CABAL_CHDEPS=(
	'deepseq >= 1.1.0.0 && < 1.5.0.0' 'deepseq >= 1.1.0.0'
	'text >= 0.5.0.0 && < 1.3.0.0' 'text >= 0.5.0.0'
	)

RDEPEND=">=dev-haskell/list-0.4.2:=[profile?] <dev-haskell/list-0.7:=[profile?]
	>=dev-haskell/text-0.5.0.0:=[profile?]
	>=dev-haskell/utf8-string-0.3:=[profile?] <dev-haskell/utf8-string-1.1:=[profile?]
	>=dev-lang/ghc-8.4.3:=
	dev-libs/expat
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-bundle
}
