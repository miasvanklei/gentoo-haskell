# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.0.0.9999
#hackport: flags: -check-bounds,+integer-gmp

CABAL_HACKAGE_REVISION=1

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Converting time to and from ISO 8601 text"
HOMEPAGE="https://github.com/haskell/aeson"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND="
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? (
		>=dev-haskell/quickcheck-2.14.1 <dev-haskell/quickcheck-2.15
		>=dev-haskell/tasty-0.10 <dev-haskell/tasty-1.5
		>=dev-haskell/tasty-quickcheck-0.8 <dev-haskell/tasty-quickcheck-0.11
	)
"

pkg_pretend() {
	if use test; then
		ewarn "The \"test\" USE flag for this package creates cycles within the"
		ewarn "dependency graph. This may give you problems during 'haskell-updater' runs."
		ewarn "It is recommended to leave it disabled unless explicitly testing the package."
	fi
}
