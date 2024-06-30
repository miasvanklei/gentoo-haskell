# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.5.1.9999
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
	dev-haskell/data-default:=[profile?]
	dev-haskell/extra:=[profile?]
	~dev-haskell/ghcide-2.8.0.0:=[profile?]
	~dev-haskell/hls-plugin-api-2.8.0.0:=[profile?]
	dev-haskell/lens:=[profile?]
	>=dev-haskell/lsp-test-0.17:=[profile?] <dev-haskell/lsp-test-0.18:=[profile?]
	>=dev-haskell/lsp-types-2.1:=[profile?] <dev-haskell/lsp-types-2.2:=[profile?]
	dev-haskell/row-types:=[profile?]
	dev-haskell/safe-exceptions:=[profile?]
	dev-haskell/tasty:=[profile?]
	dev-haskell/tasty-expected-failure:=[profile?]
	dev-haskell/tasty-golden:=[profile?]
	dev-haskell/tasty-hunit:=[profile?]
	dev-haskell/tasty-rerun:=[profile?]
	dev-haskell/temporary:=[profile?]
	dev-haskell/text:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-pedantic
}
