# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.1.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Library for functional reactive programming (FRP)"
HOMEPAGE="https://wiki.haskell.org/Reactive-banana"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

PATCHES=( "${FILESDIR}/${PN}-1.2.2.0-hashable-1_4-fix.patch" )

RDEPEND=">=dev-haskell/hashable-1.1:=[profile?]
	>=dev-haskell/pqueue-1.0:=[profile?] <dev-haskell/pqueue-1.5:=[profile?]
	>=dev-haskell/semigroups-0.13:=[profile?]
	>=dev-haskell/these-0.2:=[profile?] <dev-haskell/these-1.2:=[profile?]
	>=dev-haskell/unordered-containers-0.2.1.0:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/vault-0.3:=[profile?] <dev-haskell/vault-0.4:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( >=dev-haskell/hunit-1.2 <dev-haskell/hunit-2
		dev-haskell/psqueues
		>=dev-haskell/test-framework-0.6 <dev-haskell/test-framework-0.9
		>=dev-haskell/test-framework-hunit-0.2 <dev-haskell/test-framework-hunit-0.4 )
"

src_prepare() {
	default

	cabal_chdeps \
		'hashable >= 1.1 && < 1.4' 'hashable >=1.1' \
		'semigroups >= 0.13 && < 0.20' 'semigroups >=0.13'
}
