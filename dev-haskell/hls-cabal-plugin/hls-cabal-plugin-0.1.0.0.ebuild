# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.0.0.9999

CABAL_HACKAGE_REVISION=1
CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Cabal integration plugin with Haskell Language Server"
HOMEPAGE="https://github.com/haskell/haskell-language-server/tree/master/plugins/hls-cabal-plugin#readme"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND="
	>=dev-haskell/cabal-3.2:=[profile?] <dev-haskell/cabal-3.11:=[profile?]
	>=dev-haskell/extra-1.7.4:=[profile?]
	>=dev-haskell/ghcide-1.9:=[profile?] <dev-haskell/ghcide-1.11:=[profile?]
	dev-haskell/hashable:=[profile?]
	>=dev-haskell/hls-graph-1.9:=[profile?] <dev-haskell/hls-graph-1.10:=[profile?]
	>=dev-haskell/hls-plugin-api-1.6:=[profile?] <dev-haskell/hls-plugin-api-1.7:=[profile?]
	>=dev-haskell/lsp-1.6.0.0:=[profile?] <dev-haskell/lsp-1.7:=[profile?]
	>=dev-haskell/lsp-types-1.6.0.0:=[profile?] <dev-haskell/lsp-types-1.7:=[profile?]
	>=dev-haskell/regex-tdfa-1.3.1:=[profile?] <dev-haskell/regex-tdfa-1.4:=[profile?]
	dev-haskell/stm:=[profile?]
	>=dev-haskell/unordered-containers-0.2.10.0:=[profile?]
	>=dev-lang/ghc-8.6.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.0
	test? (
		>=dev-haskell/hls-test-utils-1.5 <dev-haskell/hls-test-utils-1.6
		dev-haskell/lens
		dev-haskell/tasty-hunit
	)
"

CABAL_CHDEPS=(
	'Cabal                 ^>=3.2 || ^>=3.4 || ^>=3.6 || ^>= 3.8' 'Cabal                 ^>=3.2 || ^>=3.4 || ^>=3.6 || ^>= 3.10'
)

src_test() {
	# Limit tasty threads to avoid random failures
	# See: <https://github.com/haskell/haskell-language-server/issues/3224#issuecomment-1257070277>
	export TASTY_NUM_THREADS=1

	haskell-cabal_src_test
}
