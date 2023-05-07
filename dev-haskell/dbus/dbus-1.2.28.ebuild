# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.2.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A client library for the D-Bus IPC system"
HOMEPAGE="https://github.com/rblaze/haskell-dbus#readme"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64"
# exotic keywords require ghc bump to 9.2 series
#KEYWORDS="~amd64 ~arm64 ~ppc64 ~riscv ~x86"

RDEPEND="<dev-haskell/cereal-0.6:=[profile?]
	>=dev-haskell/conduit-1.3.0:=[profile?] <dev-haskell/conduit-1.4:=[profile?]
	<dev-haskell/lens-5.3:=[profile?]
	>=dev-haskell/network-3.1.2.1:=[profile?] <dev-haskell/network-3.2:=[profile?]
	<dev-haskell/parsec-3.2:=[profile?]
	<dev-haskell/random-1.3:=[profile?]
	<dev-haskell/split-0.3:=[profile?]
	<dev-haskell/text-2.1:=[profile?]
	<dev-haskell/th-lift-0.9:=[profile?]
	<dev-haskell/vector-0.14:=[profile?]
	>=dev-haskell/xml-conduit-1.9.0.0:=[profile?] <dev-haskell/xml-conduit-1.10.0.0:=[profile?]
	<dev-haskell/xml-types-0.4:=[profile?]
	>=dev-lang/ghc-9.2.4:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.6.3.0
	test? ( <dev-haskell/extra-1.8
		<dev-haskell/quickcheck-2.15
		<dev-haskell/resourcet-1.4
		<dev-haskell/tasty-1.5
		<dev-haskell/tasty-hunit-0.11
		<dev-haskell/tasty-quickcheck-0.11 )
"
