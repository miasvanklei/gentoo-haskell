# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.4.0.9999
#hackport: flags: +deepseq,+transformers

CABAL_FEATURES="lib profile haddock hoogle hscolour"
# break circular dependencies:
# https://github.com/gentoo-haskell/gentoo-haskell/issues/810
CABAL_FEATURES+=" nocabaldep"

inherit haskell-cabal

DESCRIPTION="Haskell 98 phantom types to avoid unsafely passing dummy arguments"
HOMEPAGE="https://github.com/ekmett/tagged"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-lang/ghc-8.10.6:=
"
DEPEND="${RDEPEND}"

src_configure() {
	haskell-cabal_src_configure \
		--flag=deepseq \
		--flag=transformers
}
