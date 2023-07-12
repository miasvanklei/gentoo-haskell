# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.4.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Integration with the Fourmolu code formatter"
HOMEPAGE="https://github.com/haskell/haskell-language-server/tree/master/plugins/hls-fourmolu-plugin#readme"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64"

CABAL_CHDEPS=(
	'fourmolu        ^>=0.3 || ^>=0.4 || ^>= 0.6 || ^>= 0.7 || ^>= 0.8 || ^>= 0.9 || ^>= 0.10 || ^>= 0.11 || ^>= 0.12'
	'fourmolu >=0.3'
)

RDEPEND="
	>=dev-haskell/fourmolu-0.3:=[profile?]
	~dev-haskell/ghcide-2.0.0.1:=[profile?]
	~dev-haskell/hls-plugin-api-2.0.0.1:=[profile?]
	dev-haskell/lens:=[profile?]
	dev-haskell/lsp:=[profile?]
	>=dev-haskell/process-extras-0.7.1:=[profile?]
	dev-haskell/text:=[profile?]
	>=dev-lang/ghc-8.8.1:=
"

DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.0.0.0
	test? (
		dev-haskell/aeson
		dev-haskell/hls-plugin-api
		~dev-haskell/hls-test-utils-2.0.0.1
		dev-haskell/lsp-test
	)
"