# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.0.0.9999
#hackport: flags: -bytestring-builder,-developer,-integer-simple

CABAL_FEATURES="lib profile haddock hoogle hscolour" # broken test-suite
# break circular dependencies:
# https://github.com/gentoo-haskell/gentoo-haskell/issues/810
CABAL_FEATURES+=" nocabaldep"
inherit haskell-cabal

DESCRIPTION="An efficient packed Unicode text type"
HOMEPAGE="https://github.com/haskell/text"

LICENSE="BSD-2"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~amd64-linux"

# break cyclic dependencies, test suite requires porting to >=QC-2.11
RESTRICT=test

RDEPEND="
	>=dev-lang/ghc-8.10.6:=[profile?]
"
DEPEND="${RDEPEND}
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-bytestring-builder \
		--flag=-developer \
		--flag=-integer-simple
}

CABAL_CORE_LIB_GHC_PV="8.10.6 8.10.7"
