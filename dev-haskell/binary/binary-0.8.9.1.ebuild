# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.2.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour" # test-suite circular depends
# break circular dependencies:
# https://github.com/gentoo-haskell/gentoo-haskell/issues/810
CABAL_FEATURES+=" nocabaldep"
inherit haskell-cabal

DESCRIPTION="Binary serialisation for Haskell values using lazy ByteStrings"
HOMEPAGE="https://github.com/kolmodin/binary"

LICENSE="BSD"
SLOT="0/${PV}"
# keep in sync with ghc-9.4
#KEYWORDS="~amd64 ~x86"

RESTRICT=test # circular depend: test-framework->base-orphans->cabal->semigroups->nats->binary

RDEPEND="
	>=dev-lang/ghc-9.4.4:=
"
DEPEND="${RDEPEND}
"
#	test? (
#		>=dev-haskell/base-orphans-0.8.1 <dev-haskell/base-orphans-0.9
#		dev-haskell/hunit
#		>=dev-haskell/quickcheck-2.9
#		>=dev-haskell/random-1.0.1.0
#		dev-haskell/test-framework
#		>=dev-haskell/test-framework-quickcheck2-0.3
#	)

CABAL_CORE_LIB_GHC_PV="9.4.4 9.4.5 9.4.7 9.4.8 9.6.3"
