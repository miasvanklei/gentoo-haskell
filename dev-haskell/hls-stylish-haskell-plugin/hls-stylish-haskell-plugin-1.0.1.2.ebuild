# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.0.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Integration with the Stylish Haskell code formatter"
HOMEPAGE="https://github.com/haskell/haskell-language-server/tree/master/plugins/hls-stylish-haskell-plugin#readme"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND="
	>=dev-haskell/ghcide-1.7:=[profile?] <dev-haskell/ghcide-1.10:=[profile?]
	>=dev-haskell/hls-plugin-api-1.4:=[profile?] <dev-haskell/hls-plugin-api-1.7:=[profile?]
	dev-haskell/lsp-types:=[profile?]
	>=dev-haskell/stylish-haskell-0.14.2:=[profile?] <dev-haskell/stylish-haskell-0.15:=[profile?]
	>=dev-lang/ghc-8.6.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.4.0.1
	test? (
		>=dev-haskell/hls-test-utils-1.5 <dev-haskell/hls-test-utils-1.6
	)
"

PATCHES=(
	"${FILESDIR}/buildable-ghc-9.4.patch"
)

src_test() {
	# Limit tasty threads to avoid random failures
	# See: <https://github.com/haskell/haskell-language-server/issues/3224#issuecomment-1257070277>
	export TASTY_NUM_THREADS=1
	haskell-cabal_src_test
}
