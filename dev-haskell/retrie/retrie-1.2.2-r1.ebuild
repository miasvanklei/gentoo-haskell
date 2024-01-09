# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.4.0.9999

CABAL_HACKAGE_REVISION=1

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A powerful, easy-to-use codemodding tool for Haskell"
HOMEPAGE="https://github.com/facebookincubator/retrie"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="examples executable"

PATCHES=(
	"${FILESDIR}/${PN}-1.1.0.0-modify-flags.patch"
	"${FILESDIR}/ghc-9.8-support.patch"
)

RDEPEND="
	>=dev-haskell/ansi-terminal-0.10.3:=[profile?]
	>=dev-haskell/async-2.2.2:=[profile?] <dev-haskell/async-2.3:=[profile?]
	>=dev-haskell/data-default-0.7.1:=[profile?] <dev-haskell/data-default-0.8:=[profile?]
	>=dev-haskell/ghc-exactprint-1.5.0:=[profile?] <dev-haskell/ghc-exactprint-1.9:=[profile?]
	>=dev-haskell/list-t-1.0.4:=[profile?] <dev-haskell/list-t-1.1:=[profile?]
	>=dev-haskell/optparse-applicative-0.15.1:=[profile?]
	>=dev-haskell/random-shuffle-0.0.4:=[profile?] <dev-haskell/random-shuffle-0.1:=[profile?]
	>=dev-haskell/syb-0.7.1:=[profile?] <dev-haskell/syb-0.8:=[profile?]
	>=dev-haskell/text-1.2.3:=[profile?] <dev-haskell/text-2.2:=[profile?]
	>=dev-haskell/unordered-containers-0.2.10:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-lang/ghc-9.2:=[profile?] <dev-lang/ghc-9.9:=[profile?]
	examples? (
		dev-haskell/ghc-paths:=[profile?]
		>=dev-haskell/haskell-src-exts-1.23.0:=[profile?] <dev-haskell/haskell-src-exts-1.24:=[profile?]
	)
	executable? (
		dev-haskell/ghc-paths:=[profile?]
		>=dev-haskell/haskell-src-exts-1.23.0:=[profile?] <dev-haskell/haskell-src-exts-1.24:=[profile?]
	)
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.2.1.0
	test? (
		dev-haskell/ghc-paths
		dev-haskell/haskell-src-exts
		dev-haskell/hunit
		dev-haskell/tasty
		dev-haskell/tasty-hunit
		dev-haskell/temporary
	)
"
BDEPEND="
	test? (
		dev-vcs/mercurial
	)
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag examples examples) \
		$(cabal_flag executable executable)
}
