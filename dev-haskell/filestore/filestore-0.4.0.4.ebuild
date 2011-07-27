# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.13

EAPI="3"

CABAL_FEATURES="lib profile haddock hscolour"
inherit base haskell-cabal

DESCRIPTION="Interface for versioning file stores."
HOMEPAGE="http://johnmacfarlane.net/repos/filestore"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="<dev-haskell/diff-0.2
		<dev-haskell/parsec-3.2
		=dev-haskell/split-0.1*
		<dev-haskell/time-1.3
		=dev-haskell/utf8-string-0.3*
		=dev-haskell/xml-1.3*
		>=dev-lang/ghc-6.10.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.2
		test? ( dev-haskell/hunit
			dev-vcs/git
			dev-vcs/mercurial
			dev-vcs/darcs
		)
	"

PATCHES=("${FILESDIR}/${PN}-0.4.0.4-ghc-7.2.patch")

pkg_postinst() {
	ghc-package_pkg_postinst

	elog "${PN} requires either dev-vcs/darcs or dev-vcs/git to work."
	elog "Please install one of these DVCS packages to fully utilise ${PN}."
	elog "(These aren't in RDEPEND in case you are just using filestore to program.)"
}
