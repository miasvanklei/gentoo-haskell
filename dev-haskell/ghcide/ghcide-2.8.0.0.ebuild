# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.5.1.9999
#hackport: flags: -ghc-patched-unboxed-bytecode,-pedantic

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="The core of an IDE"
HOMEPAGE="https://github.com/haskell/haskell-language-server/tree/master/ghcide#readme"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="executable test-exe test-lib"

PATCHES=(
	"${FILESDIR}/${PN}-2.7.0.0-add-test-lib-flag.patch"
)

# Without this, './setup haddock' fails when calculating transient dependencies
# Should be fixed in Cabal-3.10 (https://github.com/haskell/cabal/issues/1919)
CABAL_HADDOCK_TARGETS="lib:${CABAL_PN}"

RDEPEND="
	dev-haskell/aeson:=[profile?]
	dev-haskell/async:=[profile?]
	>=dev-haskell/base16-bytestring-0.1.1:=[profile?] <dev-haskell/base16-bytestring-1.1:=[profile?]
	dev-haskell/case-insensitive:=[profile?]
	dev-haskell/co-log-core:=[profile?]
	>=dev-haskell/cryptohash-sha1-0.11.100:=[profile?] <dev-haskell/cryptohash-sha1-0.12:=[profile?]
	dev-haskell/data-default:=[profile?]
	dev-haskell/dependent-map:=[profile?]
	dev-haskell/dependent-sum:=[profile?]
	>=dev-haskell/diff-0.4.0:=[profile?] <dev-haskell/diff-0.5:=[profile?]
	dev-haskell/dlist:=[profile?]
	dev-haskell/enummapset:=[profile?]
	>=dev-haskell/extra-1.7.14:=[profile?]
	dev-haskell/fingertree:=[profile?]
	>=dev-haskell/focus-1.0.3.2:=[profile?]
	>=dev-haskell/ghc-check-0.5.0.8:=[profile?]
	dev-haskell/ghc-paths:=[profile?]
	dev-haskell/ghc-trace-events:=[profile?]
	dev-haskell/glob:=[profile?]
	>=dev-haskell/haddock-library-1.8:=[profile?] <dev-haskell/haddock-library-1.12:=[profile?]
	dev-haskell/hashable:=[profile?]
	>=dev-haskell/hie-bios-0.14.0:=[profile?] <dev-haskell/hie-bios-0.15:=[profile?]
	>=dev-haskell/hie-compat-0.3.0.0:=[profile?] <dev-haskell/hie-compat-0.4:=[profile?]
	>=dev-haskell/hiedb-0.6.0.0:=[profile?] <dev-haskell/hiedb-0.7:=[profile?]
	~dev-haskell/hls-graph-2.8.0.0:=[profile?]
	~dev-haskell/hls-plugin-api-2.8.0.0:=[profile?]
	>=dev-haskell/implicit-hie-0.1.4.0:=[profile?] <dev-haskell/implicit-hie-0.1.5:=[profile?]
	dev-haskell/lens:=[profile?]
	dev-haskell/list-t:=[profile?]
	>=dev-haskell/lsp-2.4.0.0:=[profile?] <dev-haskell/lsp-2.5:=[profile?]
	>=dev-haskell/lsp-types-2.1.0.0:=[profile?] <dev-haskell/lsp-types-2.2:=[profile?]
	>=dev-haskell/opentelemetry-0.6.1:=[profile?]
	dev-haskell/optparse-applicative:=[profile?]
	dev-haskell/parallel:=[profile?]
	>=dev-haskell/prettyprinter-1.7:=[profile?]
	dev-haskell/prettyprinter-ansi-terminal:=[profile?]
	dev-haskell/random:=[profile?]
	>=dev-haskell/regex-tdfa-1.3.1.0:=[profile?]
	dev-haskell/row-types:=[profile?]
	dev-haskell/safe-exceptions:=[profile?]
	dev-haskell/sorted-list:=[profile?]
	dev-haskell/sqlite-simple:=[profile?]
	dev-haskell/stm-containers:=[profile?]
	dev-haskell/syb:=[profile?]
	dev-haskell/text:=[profile?]
	dev-haskell/text-rope:=[profile?]
	>=dev-haskell/unliftio-0.2.6:=[profile?]
	dev-haskell/unliftio-core:=[profile?]
	>=dev-haskell/unordered-containers-0.2.10.0:=[profile?]
	dev-haskell/vector:=[profile?]
	>=dev-lang/ghc-9.2.4:=
	executable? (
		dev-haskell/gitrev:=[profile?]
	)
	test-lib? (
		>=dev-haskell/lsp-test-0.17:=[profile?] <dev-haskell/lsp-test-0.18
		>=dev-haskell/tasty-hunit-0.10:=[profile?]
	)
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.6.3.0
"

src_configure() {
	local flags=(
		$(cabal_flag executable executable)
		--flag=-ghc-patched-unboxed-bytecode
		--flag=-pedantic
		$(cabal_flag test-exe test-exe)
		$(cabal_flag test-lib test-lib)
	)

	haskell-cabal_src_configure "${flags[@]}"
}
