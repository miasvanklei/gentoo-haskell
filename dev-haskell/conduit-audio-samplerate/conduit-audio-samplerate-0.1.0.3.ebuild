# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.9.0.0.9999

CABAL_HACKAGE_REVISION=2

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="conduit-audio interface to the libsamplerate resampling library"
HOMEPAGE="https://github.com/mtolly/conduit-audio"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

CABAL_CHDEPS=(
	'transformers >= 0.3 && < 0.6' 'transformers >= 0.3'
)

RDEPEND="dev-haskell/conduit:=[profile?]
	>=dev-haskell/conduit-audio-0.1:=[profile?] <dev-haskell/conduit-audio-0.3:=[profile?]
	dev-haskell/resourcet:=[profile?]
	dev-haskell/vector:=[profile?]
	>=dev-lang/ghc-9.0.2:=
	media-libs/libsamplerate:=
"
DEPEND="${RDEPEND}
	dev-haskell/c2hs
	>=dev-haskell/cabal-3.4.1.0
"
