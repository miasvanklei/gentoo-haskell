# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.0.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A powerful and easy-to-use command-line option parser"
HOMEPAGE="https://john-millikin.com/software/haskell-options/"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND="
	>=dev-haskell/monads-tf-0.1:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? (
		>=dev-haskell/chell-0.4 <dev-haskell/chell-0.5
		>=dev-haskell/chell-quickcheck-0.2 <dev-haskell/chell-quickcheck-0.3
	)
"

pkg_pretend() {
	if use test; then
		ewarn "The \"test\" USE flag for this package creates cycles within the"
		ewarn "dependency graph. This may give you problems during 'haskell-updater' runs."
		ewarn "It is recommended to leave it disabled unless explicitly testing the package."
	fi
}
