# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.9.0.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Conduit-based ZStd Compression"
HOMEPAGE="https://github.com/luispedro/conduit-zstd#readme"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/conduit-1.0:=[profile?]
	dev-haskell/zstd:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	test? ( dev-haskell/conduit-combinators
		dev-haskell/conduit-extra
		dev-haskell/quickcheck-instances
		dev-haskell/tasty
		dev-haskell/tasty-quickcheck )
"
