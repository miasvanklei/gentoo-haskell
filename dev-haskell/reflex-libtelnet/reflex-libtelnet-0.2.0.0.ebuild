# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.4.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Reflex bindings for libtelnet"
HOMEPAGE="https://git.sr.ht/~jack/reflex-libtelnet"

LICENSE="GPL-3+"
SLOT="0/${PV}"
KEYWORDS="~amd64"

CABAL_CHDEPS=(
	'base                    >=4.11     && <4.16' 'base >=4.11'
	'dependent-sum-template  ^>=0.1' 'dependent-sum-template >=0.1'
	'reflex                  >=0.5      && <0.9' 'reflex >=0.5'
	'bytestring              >=0.10.8.2 && <0.12' 'bytestring >= 0.10.8.2'
)

PATCHES=(
	"${FILESDIR}"/${P}-disambiguate-records.patch
)

RDEPEND="
	>=dev-haskell/dependent-map-0.3:=[profile?] <dev-haskell/dependent-map-0.5
	>=dev-haskell/dependent-sum-0.6.2.0:=[profile?] <=dev-haskell/dependent-sum-0.8
	>=dev-haskell/dependent-sum-template-0.1:=[profile?]
	=dev-haskell/libtelnet-0.1*:=[profile?]
	>=dev-haskell/reflex-0.5:=[profile?]
	>=dev-lang/ghc-8.10.6:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.2.1.0
"
