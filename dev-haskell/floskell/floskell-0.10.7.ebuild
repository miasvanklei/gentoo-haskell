# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.3.0

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A flexible Haskell source code pretty printer"
HOMEPAGE="https://github.com/ennocramer/floskell"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="executable"

PATCHES=( "${FILESDIR}/${PN}-0.10.5-add-executable-flag.patch" )

RDEPEND="
	>=dev-haskell/aeson-0.11.3.0:=[profile?] <dev-haskell/aeson-2.2:=[profile?]
	>=dev-haskell/attoparsec-0.13.1.0:=[profile?] <dev-haskell/attoparsec-0.15:=[profile?]
	>=dev-haskell/data-default-0.7.1.1:=[profile?] <dev-haskell/data-default-0.8:=[profile?]
	>=dev-haskell/haskell-src-exts-1.19:=[profile?] <dev-haskell/haskell-src-exts-1.24:=[profile?]
	>=dev-haskell/monad-dijkstra-0.1.1:=[profile?] <dev-haskell/monad-dijkstra-0.2:=[profile?]
	>=dev-haskell/unordered-containers-0.2.8.0:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/utf8-string-1.0.1.1:=[profile?] <dev-haskell/utf8-string-1.1:=[profile?]
	executable? (
		>=dev-haskell/aeson-pretty-0.8.2:=[profile?] <dev-haskell/aeson-pretty-0.9:=[profile?]
		>=dev-haskell/optparse-applicative-0.12.1.0:=[profile?]
	)
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? (
		>=dev-haskell/exceptions-0.8.3 <dev-haskell/exceptions-0.12
		>=dev-haskell/hspec-2.2.4
	)
"

CABAL_CHDEPS=(
	'base >=4.9 && <4.18' 'base >=4.9 && <4.19'
)
