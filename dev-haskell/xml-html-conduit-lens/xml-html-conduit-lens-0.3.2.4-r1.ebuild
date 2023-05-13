# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.5.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Optics for xml-conduit and html-conduit"
HOMEPAGE="https://github.com/supki/xml-html-conduit-lens#readme"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RESTRICT=test # fails at quoting test

RDEPEND=">=dev-haskell/html-conduit-1.1:=[profile?] <dev-haskell/html-conduit-1.4:=[profile?]
	>=dev-haskell/lens-4.0.1:=[profile?]
	>=dev-haskell/text-0.11:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/xml-conduit-1.1:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
	test? ( >=dev-haskell/doctest-0.9.10
		dev-haskell/hspec
		>=dev-haskell/hspec-expectations-lens-0.3 )
"

src_prepare() {
	default

	cabal_chdeps \
		'containers              >= 0.4.0 && < 0.6' 'containers              >= 0.4' \
		'xml-conduit             >= 1.1   && < 1.9' 'xml-conduit             >= 1.1'
}
