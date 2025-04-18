# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.9.0.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Core types used for interacting with the Nix store"
HOMEPAGE="https://github.com/haskell-nix/hnix-store"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND="dev-haskell/attoparsec:=[profile?]
	>=dev-haskell/base16-bytestring-1.0:=[profile?]
	>=dev-haskell/base64-bytestring-1.2.1:=[profile?]
	dev-haskell/constraints-extras:=[profile?]
	dev-haskell/crypton:=[profile?]
	dev-haskell/data-default-class:=[profile?]
	>dev-haskell/dependent-sum-0.7:=[profile?]
	>=dev-haskell/dependent-sum-template-0.2.0.1:=[profile?] <dev-haskell/dependent-sum-template-0.3:=[profile?]
	dev-haskell/hashable:=[profile?]
	dev-haskell/memory:=[profile?]
	>=dev-haskell/nix-derivation-1.1.1:=[profile?] <dev-haskell/nix-derivation-2:=[profile?]
	>dev-haskell/some-1.0.5:=[profile?] <dev-haskell/some-2:=[profile?]
	dev-haskell/text:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	dev-haskell/vector:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	test? ( dev-haskell/hspec
		dev-haskell/tasty
		dev-haskell/tasty-discover
		dev-haskell/tasty-golden
		dev-haskell/tasty-hspec )
"
