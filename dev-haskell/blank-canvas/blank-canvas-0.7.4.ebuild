# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.9.0.0.9999

CABAL_HACKAGE_REVISION=5

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="HTML5 Canvas Graphics Library"
HOMEPAGE="https://github.com/ku-fpg/blank-canvas/wiki"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/aeson-1.4.4:=[profile?] <dev-haskell/aeson-2.3:=[profile?]
	>=dev-haskell/base-compat-batteries-0.10:=[profile?] <dev-haskell/base-compat-batteries-0.15:=[profile?]
	>=dev-haskell/base64-bytestring-1.0:=[profile?] <dev-haskell/base64-bytestring-1.3:=[profile?]
	>=dev-haskell/colour-2.2:=[profile?] <dev-haskell/colour-2.4:=[profile?]
	>=dev-haskell/data-default-class-0.0.1:=[profile?] <dev-haskell/data-default-class-0.3:=[profile?]
	>=dev-haskell/fail-4.9:=[profile?] <dev-haskell/fail-4.10:=[profile?]
	>=dev-haskell/http-types-0.8:=[profile?] <dev-haskell/http-types-0.13:=[profile?]
	>=dev-haskell/kansas-comet-0.4:=[profile?] <dev-haskell/kansas-comet-0.5:=[profile?]
	>=dev-haskell/mime-types-0.1.0.3:=[profile?] <dev-haskell/mime-types-0.2:=[profile?]
	>=dev-haskell/scotty-0.10:=[profile?] <dev-haskell/scotty-0.23:=[profile?]
	>=dev-haskell/semigroups-0.18:=[profile?] <dev-haskell/semigroups-1:=[profile?]
	>=dev-haskell/text-1.1:=[profile?] <dev-haskell/text-2.2:=[profile?]
	>=dev-haskell/text-show-2:=[profile?] <dev-haskell/text-show-4:=[profile?]
	>=dev-haskell/vector-0.10:=[profile?] <dev-haskell/vector-0.14:=[profile?]
	>=dev-haskell/wai-3:=[profile?] <dev-haskell/wai-4:=[profile?]
	>=dev-haskell/wai-extra-3.0.1:=[profile?] <dev-haskell/wai-extra-3.2:=[profile?]
	>=dev-haskell/warp-3:=[profile?] <dev-haskell/warp-4:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
"
