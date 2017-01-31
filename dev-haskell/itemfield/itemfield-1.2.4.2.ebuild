# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

# ebuild generated by hackport 0.5.1

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A brick Widget for selectable summary of many elements on a terminal"
HOMEPAGE="http://hackage.haskell.org/package/itemfield"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+base49 +brick015 +brick016 +brick017"

RDEPEND="dev-haskell/data-default:=[profile?]
	<dev-haskell/microlens-0.5:=[profile?]
	<dev-haskell/text-1.3:=[profile?]
	dev-haskell/vty:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	brick017? ( >=dev-haskell/brick-0.17:=[profile?] )
	!brick017? ( brick016? ( ~dev-haskell/brick-0.16:=[profile?] )
			!brick016? ( brick015? ( >=dev-haskell/brick-0.15:=[profile?] <dev-haskell/brick-0.16:=[profile?] )
					!brick015? ( >=dev-haskell/brick-0.13:=[profile?] <dev-haskell/brick-0.15:=[profile?] ) ) )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
	test? ( dev-haskell/hunit
		dev-haskell/microlens-th
		dev-haskell/quickcheck
		dev-haskell/test-framework
		dev-haskell/test-framework-hunit
		dev-haskell/test-framework-quickcheck2
		brick017? ( >=dev-haskell/brick-0.17 <dev-haskell/brick-1.0 ) )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag base49 base49) \
		$(cabal_flag brick015 brick015) \
		$(cabal_flag brick016 brick016) \
		$(cabal_flag brick017 brick017)
}
