# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.4.0.9999
#hackport: flags: example:examples

CABAL_HACKAGE_REVISION=2

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Bindings to libtelnet"
HOMEPAGE="https://git.sr.ht/~jack/libtelnet-haskell"

LICENSE="GPL-3+"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="examples"

RDEPEND="
	>=dev-lang/ghc-8.10.6:=
	examples? (
		>=dev-haskell/monad-loops-0.4.3:=[profile?] <dev-haskell/monad-loops-0.5
		=dev-haskell/network-simple-0.4*:=[profile?]
	)
	net-libs/libtelnet
"
DEPEND="
	${RDEPEND}
	>=dev-haskell/cabal-3.2.1.0
	virtual/pkgconfig
"

# Rename example executable
src_prepare() {
	if use examples; then
		export CABAL_CHBINS=(
			'example' "haskell-${PN}-example"
		)
	fi

	haskell-cabal_src_prepare
}

src_configure() {
	local config_flags=(
		$(cabal_flag examples example)
	)

	haskell-cabal_src_configure "${config_flags[@]}"
}
