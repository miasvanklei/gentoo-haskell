# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.1.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
CABAL_HACKAGE_REVISION=1

inherit haskell-cabal

DESCRIPTION="Monads for free"
HOMEPAGE="https://github.com/ekmett/free/"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/comonad-5.0.8:=[profile?] <dev-haskell/comonad-6:=[profile?]
	>=dev-haskell/distributive-0.5.2:=[profile?] <dev-haskell/distributive-1:=[profile?]
	>=dev-haskell/indexed-traversable-0.1.1:=[profile?] <dev-haskell/indexed-traversable-0.2:=[profile?]
	>=dev-haskell/profunctors-5.6.1:=[profile?] <dev-haskell/profunctors-6:=[profile?]
	>=dev-haskell/semigroupoids-5.3.5:=[profile?] <dev-haskell/semigroupoids-6:=[profile?]
	>=dev-haskell/th-abstraction-0.4.2.0:=[profile?] <dev-haskell/th-abstraction-0.5:=[profile?]
	>=dev-haskell/transformers-base-0.4.5.2:=[profile?] <dev-haskell/transformers-base-0.5:=[profile?]
	>=dev-lang/ghc-8.10.1:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.2.0.0
"
