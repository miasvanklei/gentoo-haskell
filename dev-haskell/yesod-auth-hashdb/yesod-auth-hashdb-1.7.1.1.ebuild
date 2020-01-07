# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Authentication plugin for Yesod"
HOMEPAGE="https://github.com/paul-rouse/yesod-auth-hashdb"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/aeson:=[profile?]
	>=dev-haskell/persistent-2.1:=[profile?] <dev-haskell/persistent-2.11:=[profile?]
	>=dev-haskell/text-0.7:=[profile?]
	>=dev-haskell/yesod-auth-1.4.18:=[profile?] <dev-haskell/yesod-auth-1.7:=[profile?]
	>=dev-haskell/yesod-core-1.4.19:=[profile?] <dev-haskell/yesod-core-1.7:=[profile?]
	>=dev-haskell/yesod-form-1.4:=[profile?] <dev-haskell/yesod-form-1.7:=[profile?]
	>=dev-haskell/yesod-persistent-1.2:=[profile?]
	>=dev-lang/ghc-7.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
	test? ( dev-haskell/basic-prelude
		>=dev-haskell/hspec-2.0.0
		dev-haskell/http-conduit
		dev-haskell/http-types
		dev-haskell/monad-logger
		dev-haskell/network-uri
		dev-haskell/persistent-sqlite
		dev-haskell/resourcet
		dev-haskell/unordered-containers
		dev-haskell/wai-extra
		dev-haskell/yesod
		>=dev-haskell/yesod-test-1.5.0.1
		|| ( ( >=dev-haskell/yesod-auth-1.4.18 <dev-haskell/yesod-auth-1.5 )
			( >=dev-haskell/yesod-auth-1.6.1 <dev-haskell/yesod-auth-1.7 ) ) )
"

PATCHES=("${FILESDIR}"/${P}-new-exps.patch)
