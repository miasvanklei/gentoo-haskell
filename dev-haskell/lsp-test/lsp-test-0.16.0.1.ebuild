# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.4.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Functional test framework for LSP servers"
HOMEPAGE="https://github.com/haskell/lsp/blob/master/lsp-test/README.md"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND="
	dev-haskell/aeson:=[profile?]
	dev-haskell/aeson-pretty:=[profile?]
	dev-haskell/ansi-terminal:=[profile?]
	>=dev-haskell/async-2.0:=[profile?]
	dev-haskell/co-log-core:=[profile?]
	dev-haskell/conduit:=[profile?]
	>=dev-haskell/conduit-parse-0.2:=[profile?] <dev-haskell/conduit-parse-0.3:=[profile?]
	dev-haskell/data-default:=[profile?]
	>=dev-haskell/diff-0.3:=[profile?]
	>=dev-haskell/glob-0.9:=[profile?] <dev-haskell/glob-0.11:=[profile?]
	dev-haskell/lens:=[profile?]
	dev-haskell/lens-aeson:=[profile?]
	>=dev-haskell/lsp-2.3:=[profile?] <dev-haskell/lsp-2.4:=[profile?]
	>=dev-haskell/lsp-types-2.1:=[profile?] <dev-haskell/lsp-types-2.1.1
	>=dev-haskell/parser-combinators-1.2:=[profile?]
	dev-haskell/row-types:=[profile?]
	dev-haskell/some:=[profile?]
	dev-haskell/text:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	test? (
		dev-haskell/hspec
		dev-haskell/unliftio
	)
"
