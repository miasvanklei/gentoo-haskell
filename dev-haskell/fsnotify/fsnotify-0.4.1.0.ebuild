# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.3.1

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Cross platform library for file change notification"
HOMEPAGE="https://github.com/haskell-fswatch/hfsnotify"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND="
	>=dev-haskell/async-2.0.0.0:=[profile?]
	>=dev-haskell/hinotify-0.3.7:=[profile?]
	>=dev-haskell/monad-control-1.0.0.0:=[profile?]
	>=dev-haskell/safe-exceptions-0.1.0.0:=[profile?]
	>=dev-haskell/unix-compat-0.2:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? (
		dev-haskell/exceptions
		dev-haskell/random
		dev-haskell/retry
		dev-haskell/sandwich
		dev-haskell/temporary
		>=dev-haskell/unliftio-0.2.20
	)
"
