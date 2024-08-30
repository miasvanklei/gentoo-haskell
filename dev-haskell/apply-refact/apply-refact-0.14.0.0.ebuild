# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.5.1

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Perform refactorings specified by the refact library"
HOMEPAGE="https://github.com/mpickering/apply-refact"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="executable"

PATCHES=(
	"${FILESDIR}/${PN}-0.9.2.0-add-executable-flag.patch"
	"${FILESDIR}/ghc-9.10.patch"
)

RDEPEND="
	>=dev-haskell/extra-1.7.3:=[profile?]
	>=dev-haskell/filemanip-0.3.6.3:=[profile?] <dev-haskell/filemanip-0.4:=[profile?]
	>=dev-haskell/ghc-exactprint-1.5.0:=[profile?] <dev-haskell/ghc-exactprint-1.9:=[profile?]
	dev-haskell/ghc-paths:=[profile?]
	>=dev-haskell/refact-0.2:=[profile?]
	>=dev-haskell/syb-0.7.1:=[profile?]
	>=dev-haskell/uniplate-1.6.13:=[profile?]
	>=dev-haskell/unix-compat-0.5.2:=[profile?]
	>=dev-lang/ghc-9.2.4:=
	executable? (
		dev-haskell/ghc-exactprint:=[profile?]
		dev-haskell/ghc-paths:=[profile?]
		>=dev-haskell/optparse-applicative-0.15.1.0:=[profile?]
	)
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.6.3.0
	test? (
		dev-haskell/ghc-exactprint
		dev-haskell/ghc-paths
		dev-haskell/optparse-applicative
		dev-haskell/silently
		dev-haskell/tasty
		dev-haskell/tasty-expected-failure
		dev-haskell/tasty-golden
	)
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag executable executable)
}

pkg_postinst() {
	if use executable; then
		elog "The executable installed with this package (normally named 'refactor')"
		elog "has been renamed to 'apply-refactor' to help prevent name collisions."
	fi

	haskell-cabal_pkg_postinst
}
