# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.0.0.9999
#hackport: flags: -pedantic

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Utilities used in the tests of Haskell Language Server"
HOMEPAGE="https://github.com/haskell/haskell-language-server#readme"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND="
	dev-haskell/aeson:=[profile?]
	dev-haskell/async:=[profile?]
	dev-haskell/blaze-markup:=[profile?]
	dev-haskell/data-default:=[profile?]
	dev-haskell/extra:=[profile?]
	>=dev-haskell/ghcide-1.9:=[profile?] <dev-haskell/ghcide-1.10:=[profile?]
	dev-haskell/hls-graph:=[profile?]
	>=dev-haskell/hls-plugin-api-1.6:=[profile?] <dev-haskell/hls-plugin-api-1.7:=[profile?]
	dev-haskell/lens:=[profile?]
	>=dev-haskell/lsp-1.6.0.0:=[profile?] <dev-haskell/lsp-1.7:=[profile?]
	>=dev-haskell/lsp-test-0.14:=[profile?] <dev-haskell/lsp-test-0.15:=[profile?]
	>=dev-haskell/lsp-types-1.6.0.0:=[profile?] <dev-haskell/lsp-types-1.7:=[profile?]
	dev-haskell/tasty:=[profile?]
	dev-haskell/tasty-expected-failure:=[profile?]
	dev-haskell/tasty-golden:=[profile?]
	dev-haskell/tasty-hunit:=[profile?]
	dev-haskell/tasty-rerun:=[profile?]
	dev-haskell/temporary:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	>=dev-lang/ghc-8.6.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.4.0.1
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-pedantic
}
