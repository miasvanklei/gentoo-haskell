# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.9.0.0.9999

CABAL_HACKAGE_REVISION=3

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Convert between Dhall and JSON or YAML"
HOMEPAGE="https://hackage.haskell.org/package/dhall-json"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

CABAL_CHDEPS=(
	'aeson                     >= 1.4.6.0   && < 2.2' 'aeson >= 1.4.6.0'
	'bytestring                                < 0.12' 'bytestring'
	'text                      >= 0.11.1.0  && < 2.1' 'text >= 0.11.1.0'
	)

RDEPEND=">=dev-haskell/aeson-1.4.6.0:=[profile?]
	>=dev-haskell/aeson-pretty-0.8.5:=[profile?] <dev-haskell/aeson-pretty-0.9:=[profile?]
	>=dev-haskell/aeson-yaml-1.1.0:=[profile?] <dev-haskell/aeson-yaml-1.2:=[profile?]
	>=dev-haskell/ansi-terminal-0.6.3.1:=[profile?] <dev-haskell/ansi-terminal-1.2:=[profile?]
	>=dev-haskell/lens-family-core-1.0.0:=[profile?] <dev-haskell/lens-family-core-2.2:=[profile?]
	>=dev-haskell/optparse-applicative-0.14.0.0:=[profile?] <dev-haskell/optparse-applicative-0.19:=[profile?]
	>=dev-haskell/prettyprinter-1.7.0:=[profile?] <dev-haskell/prettyprinter-1.8:=[profile?]
	>=dev-haskell/prettyprinter-ansi-terminal-1.1.1:=[profile?] <dev-haskell/prettyprinter-ansi-terminal-1.2:=[profile?]
	>=dev-haskell/scientific-0.3.0.0:=[profile?] <dev-haskell/scientific-0.4:=[profile?]
	>=dev-haskell/text-0.11.1.0:=[profile?]
	<dev-haskell/unordered-containers-0.3:=[profile?]
	dev-haskell/vector:=[profile?]
	>=dev-lang/dhall-1.42.0:=[profile?] <dev-lang/dhall-1.43:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	test? ( <dev-haskell/tasty-1.6
		>=dev-haskell/tasty-hunit-0.2
		>=dev-haskell/tasty-silver-3.0 )
"
