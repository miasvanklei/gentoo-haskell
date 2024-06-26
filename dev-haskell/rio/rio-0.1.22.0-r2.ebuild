# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.5.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A standard library for Haskell"
HOMEPAGE="https://github.com/commercialhaskell/rio#readme"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND="
	dev-haskell/hashable:=[profile?]
	dev-haskell/microlens:=[profile?]
	dev-haskell/microlens-mtl:=[profile?]
	dev-haskell/primitive:=[profile?]
	dev-haskell/text:=[profile?]
	>=dev-haskell/typed-process-0.2.5.0:=[profile?]
	>=dev-haskell/unliftio-0.2.14:=[profile?]
	dev-haskell/unliftio-core:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	dev-haskell/vector:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	test? (
		dev-haskell/hspec
		dev-haskell/quickcheck
	)
"
