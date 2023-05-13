# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.3.1

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A modern format for Haskell packages"
HOMEPAGE="https://github.com/sol/hpack#readme"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/aeson-1.4.3.0:=[profile?]
	dev-haskell/bifunctors:=[profile?]
	>=dev-haskell/cabal-3.0.0.0:=[profile?] <dev-haskell/cabal-3.9:=[profile?]
	dev-haskell/cryptonite:=[profile?]
	>=dev-haskell/glob-0.9.0:=[profile?]
	dev-haskell/http-client:=[profile?]
	dev-haskell/http-client-tls:=[profile?]
	dev-haskell/http-types:=[profile?]
	>=dev-haskell/infer-license-0.2.0:=[profile?] <dev-haskell/infer-license-0.3:=[profile?]
	dev-haskell/scientific:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	dev-haskell/vector:=[profile?]
	>=dev-haskell/yaml-0.10.0:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( >=dev-haskell/hspec-2 <dev-haskell/hspec-3
		>=dev-haskell/hunit-1.6.0.0
		dev-haskell/interpolate
		>=dev-haskell/mockery-0.3
		dev-haskell/quickcheck
		dev-haskell/temporary )
"
