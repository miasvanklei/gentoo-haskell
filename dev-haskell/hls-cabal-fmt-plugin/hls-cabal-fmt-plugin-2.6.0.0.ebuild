# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.4.0.9999
#hackport: flags: -isolatetests

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Integration with the cabal-fmt code formatter"
HOMEPAGE="https://github.com/haskell/haskell-language-server/tree/master/plugins/hls-cabal-fmt-plugin#readme"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND="
	~dev-haskell/ghcide-2.6.0.0:=[profile?]
	~dev-haskell/hls-plugin-api-2.6.0.0:=[profile?]
	dev-haskell/lens:=[profile?]
	dev-haskell/lsp-types:=[profile?]
	dev-haskell/process-extras:=[profile?]
	dev-haskell/text:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	test? (
		~dev-haskell/hls-test-utils-2.6.0.0
	)
"
BDEPEND="test? (
	dev-haskell/cabal-fmt
)"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-isolatetests
}
