# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.1.0.9999
#hackport: flags: -wall

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Efficient Arrays"
HOMEPAGE="https://github.com/haskell/vector"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="+boundschecks internalchecks unsafechecks"

PATCHES=(
	"${FILESDIR}/${PN}-0.12.3.1-disable-doctests.patch"
)

RDEPEND="
	>=dev-haskell/primitive-0.6.4.0:=[profile?] <dev-haskell/primitive-0.10:=[profile?]
	>=dev-haskell/vector-stream-0.1.0.0:=[profile?] <dev-haskell/vector-stream-0.2.0.0:=[profile?]
	>=dev-lang/ghc-8.8.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.0.0.0
	test? (
		>=dev-haskell/base-orphans-0.6
		dev-haskell/hunit
		>=dev-haskell/quickcheck-2.9 <dev-haskell/quickcheck-2.15
		dev-haskell/random
		dev-haskell/tasty
		dev-haskell/tasty-hunit
		dev-haskell/tasty-quickcheck
	)
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag boundschecks boundschecks) \
		$(cabal_flag internalchecks internalchecks) \
		$(cabal_flag unsafechecks unsafechecks) \
		--flag=-wall
}