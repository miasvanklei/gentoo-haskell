# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.0.0.9999
#hackport: flags: -pedantic

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

# hololeap (2022-09-23)
# TODO: Many tests fail due to network-sandbox issues
# See: <https://github.com/haskell/haskell-language-server/issues/3126>
RESTRICT="test"

DESCRIPTION="Eval plugin for Haskell Language Server"
HOMEPAGE="https://github.com/haskell/haskell-language-server/tree/master/plugins/hls-eval-plugin#readme"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND="
	dev-haskell/aeson:=[profile?]
	dev-haskell/data-default:=[profile?]
	>=dev-haskell/diff-0.4.0:=[profile?] <dev-haskell/diff-0.5:=[profile?]
	dev-haskell/dlist:=[profile?]
	dev-haskell/extra:=[profile?]
	dev-haskell/ghc-paths:=[profile?]
	>=dev-haskell/ghcide-1.9:=[profile?] <dev-haskell/ghcide-1.11:=[profile?]
	dev-haskell/hashable:=[profile?]
	dev-haskell/hls-graph:=[profile?]
	>=dev-haskell/hls-plugin-api-1.6:=[profile?] <dev-haskell/hls-plugin-api-1.7:=[profile?]
	dev-haskell/lens:=[profile?]
	dev-haskell/lsp:=[profile?]
	dev-haskell/lsp-types:=[profile?]
	>=dev-haskell/megaparsec-9.0:=[profile?]
	>=dev-haskell/parser-combinators-1.2:=[profile?]
	dev-haskell/pretty-simple:=[profile?]
	dev-haskell/quickcheck:2=[profile?]
	dev-haskell/safe-exceptions:=[profile?]
	dev-haskell/unliftio:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	>=dev-lang/ghc-8.6.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.4.0.1
	test? (
		>=dev-haskell/hls-test-utils-1.5 <dev-haskell/hls-test-utils-1.6
	)
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-pedantic
}

src_test() {
	# Limit tasty threads to avoid random failures
	# See: <https://github.com/haskell/haskell-language-server/issues/3224#issuecomment-1257070277>
	export TASTY_NUM_THREADS=1

	# Enable debug output for the tests
	LSP_TEST_LOG_STDERR=1 \
		LSP_TEST_LOG_MESSAGES=1 \
		haskell-cabal_src_test \
		--test-option=--color=always \
		--test-option=+RTS \
		--test-option=-T
}
