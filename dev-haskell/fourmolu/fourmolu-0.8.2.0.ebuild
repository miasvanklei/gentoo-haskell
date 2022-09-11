# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.2.2.9999
#hackport: flags: -dev

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A formatter for Haskell source code"
HOMEPAGE="https://github.com/parsonsmatt/fourmolu"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="examples executable +fixity-th"

PATCHES=( "${FILESDIR}/${PN}-0.4.0.0-add-flags.patch" )

RDEPEND=">=dev-haskell/aeson-1.0:=[profile?] <dev-haskell/aeson-3.0:=[profile?]
	>=dev-haskell/ansi-terminal-0.10:=[profile?] <dev-haskell/ansi-terminal-1.0:=[profile?]
	>=dev-haskell/cabal-3.6:=[profile?] <dev-haskell/cabal-3.7:=[profile?]
	>=dev-haskell/diff-0.4:=[profile?] <dev-haskell/diff-1.0:=[profile?]
	>=dev-haskell/dlist-0.8:=[profile?] <dev-haskell/dlist-2.0:=[profile?]
	>=dev-haskell/ghc-lib-parser-9.2:=[profile?] <dev-haskell/ghc-lib-parser-9.3:=[profile?]
	>=dev-haskell/megaparsec-9.0:=[profile?]
	>=dev-haskell/memotrie-0.6:=[profile?] <dev-haskell/memotrie-0.7:=[profile?]
	>=dev-haskell/syb-0.7:=[profile?] <dev-haskell/syb-0.8:=[profile?]
	>=dev-haskell/th-lift-instances-0.1:=[profile?] <dev-haskell/th-lift-instances-0.2:=[profile?]
	>=dev-haskell/yaml-0.11.6.0:=[profile?] <dev-haskell/yaml-1:=[profile?]
	>=dev-lang/ghc-8.10.1:=
	executable? ( >=dev-haskell/gitrev-1.3:=[profile?] <dev-haskell/gitrev-1.4:=[profile?]
		>=dev-haskell/optparse-applicative-0.14:=[profile?] <dev-haskell/optparse-applicative-0.18:=[profile?] )
	!fixity-th? ( >=dev-haskell/file-embed-0.0.15:=[profile?] <dev-haskell/file-embed-0.1:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.2.0.0
	test? ( >=dev-haskell/diff-0.3 <dev-haskell/diff-0.5
		>=dev-haskell/hspec-2.0 <dev-haskell/hspec-3.0
		>=dev-haskell/hspec-megaparsec-2.2
		>=dev-haskell/path-0.6 <dev-haskell/path-0.10
		>=dev-haskell/path-io-1.4.2 <dev-haskell/path-io-2.0
		>=dev-haskell/quickcheck-2.14
		>=dev-haskell/temporary-1.3 <dev-haskell/temporary-1.4 )
"

src_configure() {
	if use test || use executable; then
		exe_flag=executable
	else
		exe_flag=-executable
	fi

	haskell-cabal_src_configure \
		--flag=-dev \
		--flag=$exe_flag \
		$(cabal_flag fixity-th fixity-th)
}

src_test() {
	export PATH="${S}/dist/build/${PN}${PATH+:}${PATH}"
	export LD_LIBRARY_PATH="${S}/dist/build${LD_LIBRARY_PATH+:}${LD_LIBRARY_PATH}"
	haskell-cabal_src_test
}

src_install() {
	local install_components=()
	use executable && install_components+=( "exe:${PN}" )

	haskell-cabal_src_install lib:$PN "${install_components[@]}"

	if use examples; then
		# Don't compress example source files
		docompress -x /usr/share/doc/${PF}/examples
		dodoc -r data/examples/
	fi
}
