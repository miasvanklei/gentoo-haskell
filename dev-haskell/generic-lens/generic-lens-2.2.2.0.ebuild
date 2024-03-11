# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.3.0

CABAL_HACKAGE_REVISION=1

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Generically derive traversals, lenses and prisms"
HOMEPAGE="https://github.com/kcsongor/generic-lens"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

GHC_BOOTSTRAP_PACKAGES=(
	cabal-doctest
)

RDEPEND="~dev-haskell/generic-lens-core-2.2.1.0:=[profile?]
	dev-haskell/profunctors:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	dev-haskell/cabal-doctest
	test? ( dev-haskell/doctest
		dev-haskell/base-compat
		dev-haskell/hunit
		>=dev-haskell/inspection-testing-0.2
		dev-haskell/lens )
"

# Workaround for GHC panics when installing over a previous version of the same
# package. See: <https://github.com/gentoo-haskell/gentoo-haskell/issues/1270>
src_configure() {
	local local_pkgdb="${S}/package.conf.d"

	local ghc_pkg=( "/usr/bin/ghc-pkg" "--global-package-db=${local_pkgdb}" )

	cp -a "$(ghc-libdir)"/{package.conf.d,settings} "${S}" || die

	# Work around base attempting relative access for dynamic libraries
	ln -s "$(ghc-libdir)" "${WORKDIR}" || die

	"${ghc_pkg[@]}" unregister "${PN}" &>/dev/null
	"${ghc_pkg[@]}" recache || die

	local config_opts=(
		"--package-db=clear"
		"--package-db=${local_pkgdb}"
	)

	haskell-cabal_src_configure "${config_opts[@]}"
}