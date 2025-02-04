# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.9.0.0.9999
#hackport: flags: -in-ghc-tree

CABAL_FEATURES="lib profile haddock hoogle hscolour" # test-suite
inherit haskell-cabal

DESCRIPTION="A documentation-generation tool for Haskell libraries"
HOMEPAGE="https://www.haskell.org/haddock/"

GHC_BRANCH_COMMIT="daf659b6e3c8f2a84100fbee797cd9d457c00df5" # ghc-9.12.1-release

SRC_URI="https://gitlab.haskell.org/ghc/ghc/-/archive/${GHC_BRANCH_COMMIT}.tar.gz?path=utils/haddock/haddock-api -> ${P}.tar.gz"
LICENSE="BSD-2"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RESTRICT="test" # Tests fail to build

CABAL_CHDEPS=(
	'base             >= 4.16 && < 4.22' 'base             >= 4.16'
	'hspec           ^>= 2.9' 'hspec >= 2.9'
	'hspec-discover:hspec-discover ^>= 2.9' 'hspec-discover:hspec-discover >= 2.9'
	'ghc             ^>= 9.7' 'ghc ^>=9.12'
)

PATCHES=(
	"${FILESDIR}/${PN}-2.30.0-add-test-module.patch"
)

RDEPEND="
	>=dev-haskell/haddock-library-1.11:=[profile?] <dev-haskell/haddock-library-1.12:=[profile?]
	>=dev-haskell/parsec-3.1.13.0:=[profile?] <dev-haskell/parsec-3.2:=[profile?]
	>=dev-haskell/xhtml-3000.2.2:=[profile?] <dev-haskell/xhtml-3000.3:=[profile?]
	>=dev-lang/ghc-9.12:= <dev-lang/ghc-9.13:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.6.3.0
"
#	test? (
#		>=dev-haskell/hspec-2.9
#		>=dev-haskell/quickcheck-2.14 <dev-haskell/quickcheck-2.15
#	)
#BDEPEND="test? (
#	>=dev-haskell/hspec-discover-2.9
#)"

src_unpack() {
	default
	cd "${WORKDIR}" || die
	ln -s "ghc-${GHC_BRANCH_COMMIT}-utils-haddock-haddock-api/utils/haddock/haddock-api" "${P}" || die
}

src_configure() {
	haskell-cabal_src_configure \
		--flag=-in-ghc-tree
}

CABAL_CORE_LIB_GHC_PV="9.12.1"
