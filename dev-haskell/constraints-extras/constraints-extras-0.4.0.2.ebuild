# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.9.0.0.9999
#hackport: flags: -build-readme

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Utility package for constraints"
HOMEPAGE="https://github.com/obsidiansystems/constraints-extras"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/constraints-0.9:=[profile?] <dev-haskell/constraints-0.15:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	>=dev-haskell/aeson-2.0.0.0
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-build-readme
}
