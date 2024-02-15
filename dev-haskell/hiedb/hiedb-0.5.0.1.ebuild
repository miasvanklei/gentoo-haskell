# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.4.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Generates a references DB from .hie files"
HOMEPAGE="https://hackage.haskell.org/package/hiedb"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="executable"

PATCHES=(
	"${FILESDIR}/${PN}-0.3.0.1-add-executable-flag.patch"
	"${FILESDIR}/${PN}-0.5.0.1-disable-flaky-tests.patch"
)

CABAL_TEST_REQUIRED_BINS=(
	hiedb
)

RDEPEND="
	>=dev-haskell/algebraic-graphs-0.3:=[profile?]
	>=dev-haskell/ansi-terminal-0.9:=[profile?]
	dev-haskell/extra:=[profile?]
	>=dev-haskell/hie-compat-0.3:=[profile?] <dev-haskell/hie-compat-0.4:=[profile?]
	dev-haskell/lucid:=[profile?]
	dev-haskell/optparse-applicative:=[profile?]
	dev-haskell/sqlite-simple:=[profile?]
	>=dev-haskell/terminal-size-0.2:=[profile?]
	dev-haskell/text:=[profile?]
	>=dev-lang/ghc-9.0.2:=
	executable? (
		dev-haskell/ghc-paths:=[profile?]
	)
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	test? (
		dev-haskell/ghc-paths
		dev-haskell/hspec
		dev-haskell/temporary
	)
"

src_configure() {
	local flags=()
	# Build the exe if the user wants it _or_ if the tests are enabled
	if use executable || use test; then
		flags+=( --flag=executable )
	else
		flags+=( --flag=-executable )
	fi
	haskell-cabal_src_configure "${flags[@]}"
}

src_install() {
	if use executable; then
		# Install everything
		haskell-cabal_src_install
	else
		# Only install lib (skip exe)
		haskell-cabal_src_install "lib:${PN}"
	fi
}
