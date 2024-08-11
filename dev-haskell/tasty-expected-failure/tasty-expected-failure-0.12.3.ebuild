# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.0.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Mark tasty tests as failure expected"
HOMEPAGE="https://github.com/nomeata/tasty-expected-failure"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm64 ~ppc64 ~riscv ~x86"

RDEPEND="
	>=dev-haskell/tagged-0.7:=[profile?] <dev-haskell/tagged-0.9:=[profile?]
	>=dev-haskell/tasty-0.11:=[profile?]
	<dev-haskell/unbounded-delays-0.2:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? (
		dev-haskell/hedgehog
		dev-haskell/tasty-golden
		dev-haskell/tasty-hedgehog
		dev-haskell/tasty-hunit
	)
"

pkg_pretend() {
	if use test; then
		ewarn "The \"test\" USE flag for this package creates cycles within the"
		ewarn "dependency graph. This may give you problems during 'haskell-updater' runs."
		ewarn "It is recommended to leave it disabled unless explicitly testing the package."
	fi
}
