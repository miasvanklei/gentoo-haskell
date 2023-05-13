# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.2.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour" # test-suite
inherit haskell-cabal

DESCRIPTION="Test interactive Haskell examples"
HOMEPAGE="https://github.com/martijnbastiaan/doctest-parallel#readme"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RESTRICT="test" # Known failure, issue #22 on upstream github

PATCHES=(
	"${FILESDIR}/${PN}-0.2.4-disable-internal-test-lib.patch"
)

RDEPEND=">=dev-haskell/base-compat-0.7.0:=[profile?]
	>=dev-haskell/cabal-3.4:=[profile?]
	>=dev-haskell/code-page-0.1:=[profile?]
	dev-haskell/extra:=[profile?]
	>=dev-haskell/ghc-paths-0.1.0.9:=[profile?]
	dev-haskell/glob:=[profile?]
	>=dev-haskell/random-1.2:=[profile?]
	>=dev-haskell/syb-0.3:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	>=dev-lang/ghc-8.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.2.0.0
"
#	test? ( >=dev-haskell/hspec-2.3.0
#		>=dev-haskell/hspec-core-2.3.0
#		dev-haskell/hspec-discover
#		dev-haskell/hunit
#		dev-haskell/mockery
#		>=dev-haskell/quickcheck-2.13.1
#		dev-haskell/setenv
#		>=dev-haskell/silently-1.2.4
#		>=dev-haskell/stringbuilder-0.4 )
