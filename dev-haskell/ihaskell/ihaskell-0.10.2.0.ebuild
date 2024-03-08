# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.6.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A Haskell backend kernel for the IPython project"
HOMEPAGE="https://github.com/gibiansky/IHaskell"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RESTRICT=test # broken hspec code

RDEPEND=">=dev-haskell/aeson-1.0:=[profile?]
	>=dev-haskell/base64-bytestring-1.0:=[profile?]
	>=dev-haskell/cereal-0.3:=[profile?]
	>=dev-haskell/cmdargs-0.10:=[profile?]
	dev-haskell/exceptions:=[profile?]
	>=dev-haskell/ghc-parser-0.2.1:=[profile?]
	>=dev-haskell/ghc-paths-0.1:=[profile?]
	dev-haskell/haskeline:=[profile?]
	>=dev-haskell/haskell-src-exts-1.18:=[profile?]
	>=dev-haskell/hlint-1.9:=[profile?]
	>=dev-haskell/http-client-0.4:=[profile?]
	>=dev-haskell/http-client-tls-0.2:=[profile?]
	>=dev-haskell/ipython-kernel-0.10.2.0:=[profile?]
	>=dev-haskell/mtl-2.1:=[profile?]
	dev-haskell/parsec:=[profile?]
	>=dev-haskell/random-1.0:=[profile?]
	>=dev-haskell/shelly-1.5:=[profile?]
	>=dev-haskell/split-0.2:=[profile?]
	dev-haskell/stm:=[profile?]
	>=dev-haskell/strict-0.3:=[profile?]
	>=dev-haskell/text-0.11:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	dev-haskell/utf8-string:=[profile?]
	dev-haskell/vector:=[profile?]
	>=dev-lang/ghc-8.4.3:= <dev-lang/ghc-9.1:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( dev-haskell/here
		dev-haskell/hspec
		dev-haskell/hspec-contrib
		dev-haskell/hunit
		dev-haskell/raw-strings-qq
		dev-haskell/setenv )
"
