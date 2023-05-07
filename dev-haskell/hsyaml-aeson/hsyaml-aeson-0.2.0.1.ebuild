# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.1.2

CABAL_PN="HsYAML-aeson"

CABAL_FEATURES="lib profile haddock hoogle hscolour"
CABAL_HACKAGE_REVISION=5

inherit haskell-cabal

DESCRIPTION="JSON to YAML Adapter"
HOMEPAGE="https://hackage.haskell.org/package/HsYAML-aeson"

LICENSE="GPL-2+"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="exe"

RDEPEND=">=dev-haskell/hsyaml-0.2.0:=[profile?] <dev-haskell/hsyaml-0.3:=[profile?]
	>=dev-haskell/scientific-0.3.6.2:=[profile?] <dev-haskell/scientific-0.4:=[profile?]
	>=dev-haskell/unordered-containers-0.2:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-lang/ghc-8.4.3:=[profile?]
	>=dev-haskell/aeson-1.4.0.0:=[profile?] <dev-haskell/aeson-2.2:=[profile?]
	>=dev-haskell/vector-0.12.0.2:=[profile?] <dev-haskell/vector-0.14:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag exe exe)
}
