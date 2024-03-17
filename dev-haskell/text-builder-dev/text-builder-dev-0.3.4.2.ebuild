# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.5.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Edge of developments for \"text-builder\""
HOMEPAGE="https://github.com/nikita-volkov/text-builder-dev"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/deferred-folds-0.9.10.1:=[profile?] <dev-haskell/deferred-folds-0.10:=[profile?]
	>=dev-haskell/isomorphism-class-0.1.0.1:=[profile?] <dev-haskell/isomorphism-class-0.2:=[profile?]
	>=dev-haskell/quickcheck-2.14:=[profile?] <dev-haskell/quickcheck-3:=[profile?]
	>=dev-haskell/quickcheck-instances-0.3.28:=[profile?] <dev-haskell/quickcheck-instances-0.4:=[profile?]
	>=dev-haskell/split-0.2.3.4:=[profile?] <dev-haskell/split-0.3:=[profile?]
	>=dev-haskell/text-1.0:=[profile?] <dev-haskell/text-3:=[profile?]
	>=dev-lang/ghc-9.4.5:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.8.1.0
	test? ( >=dev-haskell/base-compat-0.13.1 <dev-haskell/base-compat-0.14
		>=dev-haskell/quickcheck-classes-0.6.5 <dev-haskell/quickcheck-classes-0.7
		<dev-haskell/rerebase-2
		>=dev-haskell/tasty-1.2.3 <dev-haskell/tasty-2
		>=dev-haskell/tasty-hunit-0.10.0.2 <dev-haskell/tasty-hunit-0.11
		>=dev-haskell/tasty-quickcheck-0.10.1 <dev-haskell/tasty-quickcheck-0.11 )
"
