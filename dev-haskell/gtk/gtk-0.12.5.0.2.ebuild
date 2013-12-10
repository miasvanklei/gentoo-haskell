# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.5.9999

GTK_MAJ_VER="2"

MY_PV="${PV%.*}"
MY_P="${PN}-${MY_PV}"

#nocabaldep is for the fancy cabal-detection feature at build-time
CABAL_FEATURES="lib profile haddock hoogle hscolour nocabaldep"
inherit haskell-cabal

DESCRIPTION="Binding to the Gtk+ graphical user interface library."
HOMEPAGE="http://projects.haskell.org/gtk2hs/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${MY_PV}/${MY_P}.tar.gz"

S="${WORKDIR}/${MY_P}"

LICENSE="LGPL-2.1"
SLOT="${GTK_MAJ_VER}/${PV}"
KEYWORDS="~alpha ~amd64 ~ia64 ~ppc ~ppc64 ~sparc ~x86"
IUSE="+gio"

RDEPEND=">=dev-haskell/cairo-0.12.5:0=[profile?] <dev-haskell/cairo-0.13:0=[profile?]
	>=dev-haskell/glib-0.12.5:0=[profile?] <dev-haskell/glib-0.13:0=[profile?]
	dev-haskell/mtl:=[profile?]
	>=dev-haskell/pango-0.12.5:0=[profile?] <dev-haskell/pango-0.13:0=[profile?]
	>=dev-lang/ghc-6.10.4:=
	dev-libs/glib:2
	x11-libs/gtk+:${GTK_MAJ_VER}
	gio? ( >=dev-haskell/gio-0.12.5:0=[profile?] <dev-haskell/gio-0.13:0=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/gtk2hs-buildtools-0.12.5.1-r1:0=
	virtual/pkgconfig
"

src_configure() {
	# Upstream has this enabled, so we might as well force it enabled to be sure.
	cabal_src_configure \
		--flags=deprecated \
		$(cabal_flag gio have-gio)
}
