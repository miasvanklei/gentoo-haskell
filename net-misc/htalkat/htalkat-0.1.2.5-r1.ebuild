# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.5.1

CABAL_FEATURES=""
inherit haskell-cabal

DESCRIPTION="Talk across TLS"
HOMEPAGE="https://mbays.sdf.org/htalkat/"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE="+ncurses"

CABAL_CHDEPS=(
	'crypton >=0.26 && <0.35' 'crypton >=0.26'
)

PATCHES=(
	"${FILESDIR}/${PN}-0.1.2.5-tls-2_1-compatibility.patch"
)

RDEPEND="
	<dev-haskell/asn1-encoding-0.10:=
	>=dev-haskell/asn1-types-0.3.4:=
	<dev-haskell/asn1-types-0.4:=
	>=dev-haskell/crypton-0.26:=
	>=dev-haskell/crypton-x509-1.7.5:=
	<dev-haskell/crypton-x509-1.8:=
	>=dev-haskell/crypton-x509-validation-1.6.11:=
	<dev-haskell/crypton-x509-validation-1.7:=
	>=dev-haskell/data-default-class-0.1.2.0:=
	<dev-haskell/data-default-class-0.2:=
	>=dev-haskell/data-hash-0.2.0.1:=
	<dev-haskell/data-hash-0.3:=
	<dev-haskell/filelock-0.2:=
	>=dev-haskell/hourglass-0.2.12:=
	<dev-haskell/hourglass-0.3:=
	>=dev-haskell/memory-0.14:=
	<dev-haskell/memory-0.19:=
	>=dev-haskell/network-2.4.2.3:=
	<dev-haskell/network-3.3:=
	>=dev-haskell/network-simple-0.4.3:=
	<dev-haskell/network-simple-0.5:=
	>=dev-haskell/pem-0.2.4:=
	<dev-haskell/pem-0.3:=
	<dev-haskell/rset-1.1:=
	>=dev-haskell/safe-0.3.19:=
	<dev-haskell/safe-0.4:=
	>=dev-haskell/temporary-1.2:=
	<dev-haskell/temporary-1.4:=
	>=dev-haskell/text-1.1.0.0:=
	<dev-haskell/text-2.2:=
	>=dev-haskell/tls-2.1:=
	<dev-haskell/tls-2.2:=
	>=dev-lang/ghc-9.0.2:=
	ncurses? (
		<dev-haskell/hscurses-1.5:=
		sys-libs/ncurses:=
	)
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
"
BDEPEND="
	ncurses? ( virtual/pkgconfig )
"

DOCS=( {CHANGELOG,README}.md )
HTML_DOCS=( spec.html )

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag ncurses curses)
}

src_install() {
	haskell-cabal_src_install
	rm "${ED}"/usr/share/doc/${PF}/COPYING || die

	doman htalkat.1
	einstalldocs
}
