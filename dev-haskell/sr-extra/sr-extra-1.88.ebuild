# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.6.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Module limbo"
HOMEPAGE="https://github.com/seereason/sr-extra"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="+network-uri omit-data omit-serialize"

PATCHES=(
	"${FILESDIR}"/${P}-ghc-9.8.patch
	"${FILESDIR}"/${P}-diff.patch
	)

RDEPEND="dev-haskell/base64-bytestring:=[profile?]
	dev-haskell/bzlib:=[profile?]
	dev-haskell/cabal:=[profile?]
	dev-haskell/cereal:=[profile?]
	dev-haskell/diff:=[profile?]
	dev-haskell/exceptions:=[profile?]
	dev-haskell/fgl:=[profile?]
	dev-haskell/filemanip:=[profile?]
	dev-haskell/generic-data:=[profile?]
	dev-haskell/hslogger:=[profile?]
	dev-haskell/hunit:=[profile?]
	dev-haskell/lens:=[profile?]
	dev-haskell/listlike:=[profile?]
	dev-haskell/mmorph:=[profile?]
	dev-haskell/mtl:=[profile?]
	dev-haskell/process-extras:=[profile?]
	dev-haskell/puremd5:=[profile?]
	>=dev-haskell/quickcheck-2:=[profile?] <dev-haskell/quickcheck-3:=[profile?]
	dev-haskell/random:=[profile?]
	>=dev-haskell/safecopy-0.9.5:=[profile?]
	dev-haskell/show-combinators:=[profile?]
	dev-haskell/show-please:=[profile?]
	dev-haskell/syb:=[profile?]
	dev-haskell/text:=[profile?]
	dev-haskell/th-lift:=[profile?]
	dev-haskell/th-lift-instances:=[profile?]
	dev-haskell/th-orphans:=[profile?]
	dev-haskell/unexceptionalio-trans:=[profile?]
	>=dev-haskell/unixutils-1.51:=[profile?]
	dev-haskell/userid:=[profile?]
	dev-haskell/uuid:=[profile?]
	dev-haskell/uuid-orphans:=[profile?]
	dev-haskell/uuid-types:=[profile?]
	dev-haskell/zlib:=[profile?]
	>=dev-lang/ghc-8.4.3:=
	network-uri? ( >=dev-haskell/network-uri-2.6:=[profile?] )
	!network-uri? ( >=dev-haskell/network-2.4:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag network-uri network-uri) \
		$(cabal_flag omit-data omit-data) \
		$(cabal_flag omit-serialize omit-serialize)
}
