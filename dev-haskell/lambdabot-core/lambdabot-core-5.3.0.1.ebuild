# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.6.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Lambdabot core functionality"
HOMEPAGE="https://wiki.haskell.org/Lambdabot"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=">=dev-haskell/dependent-map-0.2:=[profile?] <dev-haskell/dependent-map-0.5:=[profile?]
	>=dev-haskell/dependent-sum-0.7:=[profile?] <dev-haskell/dependent-sum-0.8:=[profile?]
	>=dev-haskell/dependent-sum-template-0.1.0.2:=[profile?] <dev-haskell/dependent-sum-template-0.2:=[profile?]
	>=dev-haskell/edit-distance-0.2:=[profile?]
	>=dev-haskell/exceptions-0.10:=[profile?] <dev-haskell/exceptions-0.11:=[profile?]
	>=dev-haskell/haskeline-0.7:=[profile?] <dev-haskell/haskeline-0.9:=[profile?]
	>=dev-haskell/hslogger-1.2.1:=[profile?]
	>=dev-haskell/http-4000:=[profile?]
	>=dev-haskell/lifted-base-0.2:=[profile?]
	>=dev-haskell/monad-control-1.0:=[profile?]
	>=dev-haskell/mtl-2:=[profile?]
	>=dev-haskell/network-2.7:=[profile?] <dev-haskell/network-3.2:=[profile?]
	>=dev-haskell/network-bsd-2.7:=[profile?] <dev-haskell/network-bsd-2.9:=[profile?]
	>=dev-haskell/parsec-3:=[profile?]
	>=dev-haskell/prim-uniq-0.2:=[profile?] <dev-haskell/prim-uniq-0.4:=[profile?]
	>=dev-haskell/random-1:=[profile?]
	>=dev-haskell/random-fu-0.2.6.2:=[profile?]
	>=dev-haskell/random-source-0.3:=[profile?]
	>=dev-haskell/regex-tdfa-1.1:=[profile?] <dev-haskell/regex-tdfa-1.4:=[profile?]
	>=dev-haskell/safesemaphore-0.9:=[profile?]
	>=dev-haskell/split-0.2:=[profile?]
	>=dev-haskell/syb-0.3:=[profile?]
	>=dev-haskell/transformers-base-0.4:=[profile?]
	>=dev-haskell/utf8-string-0.3:=[profile?]
	>=dev-haskell/zlib-0.5:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
"
