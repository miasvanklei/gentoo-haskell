# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.2.2.9999

CABAL_PN="HUnit"

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A unit testing framework for Haskell"
HOMEPAGE="https://github.com/hspec/HUnit#readme"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

PATCHES=(
	"${FILESDIR}/${PN}-1.6.2.0-prevent-abi-change.patch"
)

RDEPEND=">=dev-haskell/call-stack-0.3.0:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
"
