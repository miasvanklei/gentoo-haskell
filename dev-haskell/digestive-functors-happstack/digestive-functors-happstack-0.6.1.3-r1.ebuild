# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.3.0

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Happstack backend for the digestive-functors library"
HOMEPAGE="https://github.com/jaspervdj/digestive-functors"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

CABAL_CHDEPS=(
	'happstack-server      >= 6.0  && < 7.7' 'happstack-server >= 6.0'
)

RDEPEND="
	>=dev-haskell/digestive-functors-0.8:=[profile?] <dev-haskell/digestive-functors-0.9:=[profile?]
	>=dev-haskell/happstack-server-6.0:=[profile?]
	>=dev-lang/ghc-8.4.3:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
"
