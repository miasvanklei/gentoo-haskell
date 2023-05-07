# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.6.9999
#hackport: flags: +newbase,+splitbase

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Unicode Support version of Text.Regex, using regex-tdfa"
HOMEPAGE="http://hub.darcs.net/shelarcy/regex-compat-tdfa"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~amd64-linux"
IUSE=""

RDEPEND=">=dev-haskell/regex-base-0.93:=[profile?]
	>=dev-haskell/regex-tdfa-1.1.0:=[profile?]
	>=dev-lang/ghc-7.4.1:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6
"

PATCHES=( "${FILESDIR}"/${PN}-0.95.1.4-ghc-9.0.patch )

src_configure() {
	haskell-cabal_src_configure \
		--flag=newbase \
		--flag=splitbase
}
