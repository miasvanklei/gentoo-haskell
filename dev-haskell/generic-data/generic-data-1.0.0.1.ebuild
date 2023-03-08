# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.0.0.9999
#hackport: flags: enable-inspect:test

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Deriving instances with GHC.Generics and related utilities"
HOMEPAGE="https://github.com/Lysxia/generic-data#readme"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	>=dev-haskell/ap-normalize-0.1:=[profile?] <dev-haskell/ap-normalize-0.2:=[profile?]
	>=dev-haskell/base-orphans-0.8:=[profile?]
	dev-haskell/contravariant:=[profile?]
	dev-haskell/show-combinators:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? (
		>=dev-haskell/generic-lens-1.1.0.0
		>=dev-haskell/one-liner-1.0
		>=dev-haskell/show-combinators-0.2
		dev-haskell/tasty
		dev-haskell/tasty-hunit
	)
"

# Inspection tests are failing on ghc-9.2
# See: <https://github.com/Lysxia/generic-data/issues/56>
src_configure() {
	haskell-cabal_src_configure \
		--flag=-enable-inspect
}
