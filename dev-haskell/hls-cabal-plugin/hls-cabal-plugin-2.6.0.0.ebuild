# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.4.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Cabal integration plugin with Haskell Language Server"
HOMEPAGE="https://github.com/haskell/haskell-language-server/tree/master/plugins/hls-cabal-plugin#readme"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"

PATCHES=(
	"${FILESDIR}/${PN}-2.6.0.0-fix-tests.patch"
)

RDEPEND="
	>=dev-haskell/cabal-syntax-3.7:=[profile?]
	>=dev-haskell/extra-1.7.4:=[profile?]
	~dev-haskell/ghcide-2.6.0.0:=[profile?]
	dev-haskell/hashable:=[profile?]
	~dev-haskell/hls-graph-2.6.0.0:=[profile?]
	~dev-haskell/hls-plugin-api-2.6.0.0:=[profile?]
	dev-haskell/lens:=[profile?]
	>=dev-haskell/lsp-2.3:=[profile?] <dev-haskell/lsp-2.4:=[profile?]
	>=dev-haskell/lsp-types-2.1:=[profile?] <dev-haskell/lsp-types-2.2:=[profile?]
	>=dev-haskell/regex-tdfa-1.3.1:=[profile?] <dev-haskell/regex-tdfa-1.4:=[profile?]
	dev-haskell/text:=[profile?]
	dev-haskell/text-rope:=[profile?]
	>=dev-haskell/unordered-containers-0.2.10.0:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	test? (
		dev-haskell/ghcide
		~dev-haskell/hls-test-utils-2.6.0.0
		dev-haskell/row-types
		dev-haskell/tasty-hunit
	)
"
