# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.4.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Handle per-operating-system X.509 accessors and storage"
HOMEPAGE="https://github.com/kazu-yamamoto/crypton-certificate"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/crypton-x509-1.6:=[profile?]
	>=dev-haskell/crypton-x509-store-1.6.2:=[profile?]
	>=dev-haskell/pem-0.1:=[profile?] <dev-haskell/pem-0.3:=[profile?]
	>=dev-lang/ghc-8.8.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.0.0.0
"
