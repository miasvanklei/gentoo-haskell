# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.9.0.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="The UserId type and useful instances for web development"
HOMEPAGE="https://www.github.com/Happstack/userid"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/aeson-0.9:=[profile?] <dev-haskell/aeson-2.3:=[profile?]
	>=dev-haskell/boomerang-1.4:=[profile?] <dev-haskell/boomerang-1.5:=[profile?]
	>=dev-haskell/cereal-0.5:=[profile?] <dev-haskell/cereal-0.6:=[profile?]
	>=dev-haskell/safecopy-0.8:=[profile?] <dev-haskell/safecopy-0.11:=[profile?]
	>=dev-haskell/web-routes-0.27:=[profile?] <dev-haskell/web-routes-0.28:=[profile?]
	>=dev-haskell/web-routes-th-0.22:=[profile?] <dev-haskell/web-routes-th-0.23:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
"
