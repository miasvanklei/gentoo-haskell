# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.0.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Safe conversions between textual types"
HOMEPAGE="https://github.com/cjdev/text-conversions"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND="<dev-haskell/base16-bytestring-2:=[profile?]
	<dev-haskell/base64-bytestring-2:=[profile?]
	>=dev-lang/ghc-8.4.3:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.4
	test? ( dev-haskell/hspec )
"
