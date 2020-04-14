# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.3.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Binding to the ALSA Library API (Exceptions)"
HOMEPAGE="http://www.haskell.org/haskellwiki/ALSA"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/extensible-exceptions-0.1.1:=[profile?]
		<dev-haskell/extensible-exceptions-0.2:=[profile?]
		>=dev-lang/ghc-6.10.4:=
		media-libs/alsa-lib"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.8"
