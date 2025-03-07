# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.9.0.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Functional test framework for LSP servers"
HOMEPAGE="https://github.com/haskell/lsp/blob/master/lsp-test/README.md"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
RESTRICT="test" #one test doesn't seem to be able to find the right directory

RDEPEND=">=dev-haskell/aeson-2:=[profile?] <dev-haskell/aeson-2.3:=[profile?]
	>=dev-haskell/aeson-pretty-0.8:=[profile?] <dev-haskell/aeson-pretty-0.9:=[profile?]
	>=dev-haskell/ansi-terminal-0.10:=[profile?] <dev-haskell/ansi-terminal-1.2:=[profile?]
	>=dev-haskell/async-2.2:=[profile?] <dev-haskell/async-2.3:=[profile?]
	>=dev-haskell/co-log-core-0.3:=[profile?] <dev-haskell/co-log-core-0.4:=[profile?]
	>=dev-haskell/conduit-1.3:=[profile?] <dev-haskell/conduit-1.4:=[profile?]
	>=dev-haskell/conduit-parse-0.2:=[profile?] <dev-haskell/conduit-parse-0.3:=[profile?]
	>=dev-haskell/data-default-0.7:=[profile?] <dev-haskell/data-default-0.9:=[profile?]
	>=dev-haskell/diff-0.4:=[profile?] <dev-haskell/diff-1.1:=[profile?]
	>=dev-haskell/extra-1.7:=[profile?] <dev-haskell/extra-1.9:=[profile?]
	>=dev-haskell/glob-0.9:=[profile?] <dev-haskell/glob-0.11:=[profile?]
	>=dev-haskell/lens-5.1:=[profile?] <dev-haskell/lens-5.4:=[profile?]
	>=dev-haskell/lens-aeson-1.2:=[profile?] <dev-haskell/lens-aeson-1.3:=[profile?]
	>=dev-haskell/lsp-2.7:=[profile?] <dev-haskell/lsp-2.8:=[profile?]
	>=dev-haskell/lsp-types-2.3:=[profile?] <dev-haskell/lsp-types-2.4:=[profile?]
	>=dev-haskell/parser-combinators-1.3:=[profile?] <dev-haskell/parser-combinators-1.4:=[profile?]
	>=dev-haskell/some-1.0:=[profile?] <dev-haskell/some-1.1:=[profile?]
	>=dev-haskell/text-1:=[profile?] <dev-haskell/text-2.2:=[profile?]
	>=dev-lang/ghc-9.2.4:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.6.3.0
	test? ( dev-haskell/hspec
		dev-haskell/unliftio )
"
