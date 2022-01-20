# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.4.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour" # test-suite deps need porting
inherit haskell-cabal

DESCRIPTION="Reading, writing and manipulating \".tar\" archive files"
HOMEPAGE="https://hackage.haskell.org/package/tar"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RESTRICT=test

RDEPEND=">=dev-lang/ghc-7.6.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.16.0"
# 	test? ( dev-haskell/bytestring-handle
# 		dev-haskell/old-time
# 		>=dev-haskell/quickcheck-2 <dev-haskell/quickcheck-3
# 		>=dev-haskell/tasty-0.10 <dev-haskell/tasty-0.12
# 		>=dev-haskell/tasty-quickcheck-0.8 <dev-haskell/tasty-quickcheck-0.9 )
# "
