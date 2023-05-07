# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.0.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Batteries included conduit: adapters for common libraries"
HOMEPAGE="https://github.com/snoyberg/conduit"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND="
	dev-haskell/async:=[profile?]
	>=dev-haskell/attoparsec-0.10:=[profile?]
	>=dev-haskell/conduit-1.3:=[profile?] <dev-haskell/conduit-1.4:=[profile?]
	>=dev-haskell/network-2.3:=[profile?]
	>=dev-haskell/primitive-0.5:=[profile?]
	|| ( dev-lang/ghc dev-haskell/process[profile?] )
	>=dev-haskell/resourcet-1.1:=[profile?]
	dev-haskell/stm:=[profile?]
	>=dev-haskell/streaming-commons-0.1.16:=[profile?]
	>=dev-haskell/typed-process-0.2.6:=[profile?]
	dev-haskell/unliftio-core:=[profile?]
	>=dev-lang/ghc-8.6.3:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.4.0.1
	test? (
		dev-haskell/exceptions
		>=dev-haskell/hspec-1.3
		dev-haskell/quickcheck
		dev-haskell/transformers-base
	)
"
