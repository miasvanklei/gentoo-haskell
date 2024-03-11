# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

#hackport: flags: cabalfmt:hls_formatters_cabal-fmt,floskell:hls_formatters_floskell,fourmolu:hls_formatters_fourmolu,ormolu:hls_formatters_ormolu,refactor:hls_formatters_refactor,stylishhaskell:hls_formatters_stylish-haskell,alternateNumberFormat:hls_plugins_alternate-number-format,cabal:hls_plugins_cabal,callHierarchy:hls_plugins_call-hierarchy,changeTypeSignature:hls_plugins_change-type-signature,class:hls_plugins_class,codeRange:hls_plugins_code-range,eval:hls_plugins_eval,explicitFields:hls_plugins_explicit-fields,explicitFixity:hls_plugins_explicit-fixity,gadt:hls_plugins_gadt,hlint:hls_plugins_hlint,importLens:hls_plugins_import-lens,moduleName:hls_plugins_module-name,overloadedRecordDot:hls_plugins_overloaded-record-dot,pragmas:hls_plugins_pragmas,qualifyImportedNames:hls_plugins_qualify-imported-names,rename:hls_plugins_rename,retrie:hls_plugins_retrie,semanticTokens:hls_plugins_semantic-tokens,splice:hls_plugins_splice,stan:hls_plugins_stan,-dynamic,+ignore-plugins-ghc-bounds,-pedantic

CABAL_FEATURES="lib profile haddock hoogle hscolour" # test-suite
inherit haskell-cabal

RESTRICT="test" # Depends on masked ghcide-test-utils

DESCRIPTION="LSP server for GHC"
HOMEPAGE="https://github.com/haskell/haskell-language-server#readme"
SRC_URI="https://github.com/haskell/haskell-language-server/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64"

IUSE_HLS_PLUGINS="
	+hls_plugins_alternate-number-format
	+hls_plugins_cabal
	+hls_plugins_call-hierarchy
	+hls_plugins_change-type-signature
	+hls_plugins_class
	+hls_plugins_code-range
	+hls_plugins_eval
	+hls_plugins_explicit-fields
	+hls_plugins_explicit-fixity
	+hls_plugins_hlint
	+hls_plugins_import-lens
	+hls_plugins_gadt
	+hls_plugins_module-name
	+hls_plugins_overloaded-record-dot
	+hls_plugins_pragmas
	+hls_plugins_qualify-imported-names
	+hls_plugins_rename
	+hls_plugins_retrie
	+hls_plugins_semantic-tokens
	+hls_plugins_splice
	+hls_plugins_stan
"

# Disabled:
# - hls_formatters_fourmolu: Requires masked package fourmolu
IUSE_HLS_FORMATTERS="
	+hls_formatters_cabal-fmt
	+hls_formatters_floskell
	+hls_formatters_ormolu
	+hls_formatters_refactor
	+hls_formatters_stylish-haskell
"

IUSE="
	${IUSE_HLS_PLUGINS}
	${IUSE_HLS_FORMATTERS}
	ghc-lib
"

CABAL_TEST_REQUIRED_BINS=(
	haskell-language-server
)

RDEPEND="
	dev-haskell/aeson:=[profile?]
	dev-haskell/aeson-pretty:=[profile?]
	dev-haskell/async:=[profile?]
	dev-haskell/base16-bytestring:=[profile?]
	dev-haskell/cryptohash-sha1:=[profile?]
	dev-haskell/data-default:=[profile?]
	dev-haskell/extra:=[profile?]
	dev-haskell/ghc-paths:=[profile?]
	~dev-haskell/ghcide-2.7.0.0:=[profile?]
	dev-haskell/gitrev:=[profile?]
	dev-haskell/githash:=[profile?]
	dev-haskell/hashable:=[profile?]
	dev-haskell/hie-bios:=[profile?]
	dev-haskell/hiedb:=[profile?]
	>=dev-haskell/hls-graph-2.7.0.0:=[profile?]
	~dev-haskell/hls-plugin-api-2.7.0.0:=[profile?]
	dev-haskell/lens:=[profile?]
	>=dev-haskell/lsp-2.4.0.0:=[profile?]
	dev-haskell/lsp-types:=[profile?]
	dev-haskell/optparse-applicative:=[profile?]
	dev-haskell/optparse-simple:=[profile?]
	>=dev-haskell/prettyprinter-1.7:=[profile?]
	dev-haskell/regex-tdfa:=[profile?]
	dev-haskell/safe-exceptions:=[profile?]
	dev-haskell/sqlite-simple:=[profile?]
	dev-haskell/stm:=[profile?]
	dev-haskell/syb:=[profile?]
	dev-haskell/temporary:=[profile?]
	dev-haskell/text:=[profile?]
	dev-haskell/unliftio-core:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	>=dev-lang/ghc-9.2:=
	hls_plugins_alternate-number-format? (
		dev-haskell/hie-compat:=[profile?]
	)
	hls_formatters_cabal-fmt? (
		dev-haskell/process-extras:=[profile?]
	)
	hls_plugins_cabal? (
		>=dev-haskell/cabal-syntax-3.7:=[profile?]
		dev-haskell/text-rope:=[profile?]
	)
	hls_plugins_class? (
		>=dev-haskell/ghc-exactprint-1.5:=[profile?]
	)
	hls_plugins_code-range? (
		dev-haskell/semigroupoids:=[profile?]
		dev-haskell/vector:=[profile?]
	)
	hls_plugins_eval? (
		>=dev-haskell/diff-0.4.0:=[profile?] <dev-haskell/diff-0.5:=[profile?]
		dev-haskell/dlist:=[profile?]
		>=dev-haskell/megaparsec-9.0:=[profile?]
		>=dev-haskell/parser-combinators-1.2:=[profile?]
		dev-haskell/pretty-simple:=[profile?]
		dev-haskell/quickcheck:=[profile?]
		dev-haskell/safe-exceptions:=[profile?]
		dev-haskell/unliftio:=[profile?]
	)
	hls_formatters_floskell? (
		>=dev-haskell/floskell-0.11.0:=[profile?] <dev-haskell/floskell-0.12:=[profile?]
	)
	hls_plugins_gadt? (
		dev-haskell/ghc-exactprint:=[profile?]
	)
	hls_plugins_hlint? (
		dev-haskell/apply-refact:=[profile?]
		>=dev-haskell/diff-0.4.0:=[profile?] <dev-haskell/diff-0.5:=[profile?]
		>=dev-haskell/ghc-exactprint-0.6.3.4:=[profile?]
		dev-haskell/ghc-lib-parser-ex:=[profile?]
		dev-haskell/hlint:=[profile?]
		dev-haskell/refact:=[profile?]
		dev-haskell/temporary:=[profile?]
		ghc-lib? ( >=dev-haskell/ghc-lib-parser-9.8:=[profile?] <dev-haskell/ghc-lib-parser-9.9:=[profile?] )
		!ghc-lib? ( >=dev-lang/ghc-9.8:= <dev-lang/ghc-9.9:= )
	)
	hls_formatters_ormolu? (
		>=dev-haskell/ormolu-0.1.2:=[profile?] <dev-haskell/ormolu-0.8:=[profile?]
		>=dev-haskell/process-extras-0.7.1:=[profile?]
	)
	hls_plugins_pragmas? (
		dev-haskell/fuzzy:=[profile?]
	)
	hls_plugins_qualify-imported-names? (
		dev-haskell/dlist:=[profile?]
	)
	hls_formatters_refactor? (
		dev-haskell/dlist:=[profile?]
		dev-haskell/parser-combinators:=[profile?]
		dev-haskell/regex-applicative:=[profile?]
		dev-haskell/retrie:=[profile?]
		dev-haskell/text-rope:=[profile?]
		|| (
			<dev-haskell/ghc-exactprint-1
			>=dev-haskell/ghc-exactprint-1.4
		)
		dev-haskell/ghc-exactprint:=[profile?]
	)
	hls_plugins_rename? (
		dev-haskell/ghc-exactprint:=[profile?]
		dev-haskell/mod:=[profile?]
	)
	hls_plugins_retrie? (
		>=dev-haskell/retrie-0.1.1.0:=[profile?]
		dev-haskell/safe-exceptions:=[profile?]
	)
	hls_plugins_splice? (
		dev-haskell/dlist:=[profile?]
		dev-haskell/foldl:=[profile?]
		dev-haskell/ghc-exactprint:=[profile?]
		dev-haskell/retrie:=[profile?]
	)
	hls_plugins_stan? (
		dev-haskell/stan:=[profile?]
	)
	hls_formatters_stylish-haskell? (
		|| (
			( >=dev-haskell/stylish-haskell-0.12 <dev-haskell/stylish-haskell-0.14 )
			( >=dev-haskell/stylish-haskell-0.14.2 <dev-haskell/stylish-haskell-0.15 )
		)
		dev-haskell/stylish-haskell:=[profile?]
	)
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.5.0.1
"
#	test? (
#		dev-haskell/ghcide
#		dev-haskell/ghcide-test-utils
#		~dev-haskell/hls-test-utils-2.6.0.0
#		dev-haskell/hspec-expectations
#		dev-haskell/lens-aeson
#		dev-haskell/lsp-test
#		dev-haskell/lsp-types
#		dev-haskell/row-types
#	)

PATCHES=(
	"${FILESDIR}"/ghc-9.8.patch
	"${FILESDIR}"/plugins-optional.patch
)

src_configure() {
	config_flags=(
		$(cabal_flag hls_formatters_cabal-fmt cabalfmt)
		$(cabal_flag hls_formatters_floskell floskell)
		$(cabal_flag hls_formatters_ormolu ormolu)
		$(cabal_flag hls_formatters_refactor refactor)
		$(cabal_flag hls_formatters_stylish-haskell stylishhaskell)
		$(cabal_flag hls_plugins_alternate-number-format alternateNumberFormat)
		$(cabal_flag hls_plugins_cabal cabal)
		$(cabal_flag hls_plugins_call-hierarchy callHierarchy)
		$(cabal_flag hls_plugins_change-type-signature changeTypeSignature)
		$(cabal_flag hls_plugins_class class)
		$(cabal_flag hls_plugins_code-range codeRange)
		$(cabal_flag hls_plugins_eval eval)
		$(cabal_flag hls_plugins_explicit-fields explicitFields)
		$(cabal_flag hls_plugins_explicit-fixity explicitFixity)
		$(cabal_flag hls_plugins_gadt gadt)
		$(cabal_flag hls_plugins_hlint hlint)
		$(cabal_flag hls_plugins_import-lens importLens)
		$(cabal_flag hls_plugins_module-name moduleName)
		$(cabal_flag hls_plugins_overloaded-record-dot overloadedRecordDot)
		$(cabal_flag hls_plugins_pragmas pragmas)
		$(cabal_flag hls_plugins_qualify-imported-names qualifyImportedNames)
		$(cabal_flag hls_plugins_rename rename)
		$(cabal_flag hls_plugins_retrie retrie)
		$(cabal_flag hls_plugins_semantic-tokens semanticTokens)
		$(cabal_flag hls_plugins_splice splice)
		$(cabal_flag hls_plugins_stan stan)
		--flag=-fourmolu
		--flag=ignore-plugins-ghc-bounds
		--flag=-pedantic
	)

	haskell-cabal_src_configure "${config_flags[@]}"
}

src_compile() {
	export LD_LIBRARY_PATH="${S}/dist/build/hls-refactor-plugin"
	haskell-cabal_src_compile
}
