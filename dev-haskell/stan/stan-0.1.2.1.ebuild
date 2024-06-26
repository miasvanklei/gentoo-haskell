# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.3.0

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Haskell STatic ANalyser"
HOMEPAGE="https://github.com/kowainik/stan"

LICENSE="MPL-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="executable"

RDEPEND="
	>=dev-haskell/base64-0.4.1:=[profile?] <dev-haskell/base64-2.0:=[profile?]
	>=dev-haskell/blaze-html-0.9.1:=[profile?] <dev-haskell/blaze-html-0.10:=[profile?]
	>=dev-haskell/clay-0.14:=[profile?] <dev-haskell/clay-0.15:=[profile?]
	>=dev-haskell/colourista-0.1:=[profile?] <dev-haskell/colourista-0.3:=[profile?]
	>=dev-haskell/cryptohash-sha1-0.11:=[profile?] <dev-haskell/cryptohash-sha1-0.12:=[profile?]
	>=dev-haskell/dir-traverse-0.2.2.2:=[profile?] <dev-haskell/dir-traverse-0.3:=[profile?]
	>=dev-haskell/extensions-0.0.0.1:=[profile?] <dev-haskell/extensions-0.2:=[profile?]
	>=dev-haskell/gitrev-1.3.1:=[profile?] <dev-haskell/gitrev-1.4:=[profile?]
	>=dev-haskell/microaeson-0.1.0.0:=[profile?] <dev-haskell/microaeson-0.2:=[profile?]
	>=dev-haskell/optparse-applicative-0.15:=[profile?]
	>=dev-haskell/pretty-simple-4.0:=[profile?]
	>=dev-haskell/relude-1.0:=[profile?] <dev-haskell/relude-1.3:=[profile?]
	>=dev-haskell/slist-0.1:=[profile?]
	>=dev-haskell/tomland-1.3.0.0:=[profile?] <dev-haskell/tomland-1.4:=[profile?]
	>=dev-haskell/trial-0.0.0.0:=[profile?] <dev-haskell/trial-0.1:=[profile?]
	>=dev-haskell/trial-optparse-applicative-0.0.0.0:=[profile?] <dev-haskell/trial-optparse-applicative-0.1:=[profile?]
	>=dev-haskell/trial-tomland-0.0.0.0:=[profile?] <dev-haskell/trial-tomland-0.1:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	>=dev-lang/ghc-8.8.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.0.1.0
	test? (
		>=dev-haskell/hedgehog-1.0 <dev-haskell/hedgehog-1.1
		>=dev-haskell/hspec-2.7
		>=dev-haskell/hspec-hedgehog-0.0.1.2 <dev-haskell/hspec-hedgehog-0.1
	)
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag executable executable)
}
