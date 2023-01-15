# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.0.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Golden tests for hspec"
HOMEPAGE="https://github.com/stackbuilders/hspec-golden#readme"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	>=dev-haskell/hspec-core-2.5:=[profile?] <dev-haskell/hspec-core-3.0:=[profile?]
	dev-haskell/optparse-applicative:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? (
		dev-haskell/hspec
		dev-haskell/silently
	)
"