# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.1.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
CABAL_HACKAGE_REVISION="1"
inherit haskell-cabal

CABAL_FILE="${S}/${PN}.cabal"
CABAL_DISTFILE="${P}-rev${CABAL_HACKAGE_REVISION}.cabal"

DESCRIPTION="CSS Minifier"
HOMEPAGE="https://github.com/contivero/hasmin#readme"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz
	https://hackage.haskell.org/package/${P}/revision/${CABAL_HACKAGE_REVISION}.cabal
		-> ${CABAL_DISTFILE}"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

PATCHES=( "${FILESDIR}/${PN}-1.0.3-cabal-doctest.patch" )

RDEPEND=">=dev-haskell/attoparsec-0.12:=[profile?]
	>=dev-haskell/gitrev-1.0.0:=[profile?] <dev-haskell/gitrev-1.4:=[profile?]
	>=dev-haskell/hopfli-0.2:=[profile?] <dev-haskell/hopfli-0.4:=[profile?]
	>=dev-haskell/matrix-0.3.4:=[profile?] <dev-haskell/matrix-0.4:=[profile?]
	>=dev-haskell/numbers-3000.2.0.0:=[profile?] <dev-haskell/numbers-3000.3:=[profile?]
	>=dev-haskell/optparse-applicative-0.11:=[profile?]
	>=dev-haskell/parsers-0.12.3:=[profile?] <dev-haskell/parsers-0.13:=[profile?]
	>=dev-lang/ghc-8.4.3:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	dev-haskell/cabal-doctest
	test? ( >=dev-haskell/doctest-0.11
		dev-haskell/base-compat
		>=dev-haskell/hspec-2.2 <dev-haskell/hspec-3.0
		>=dev-haskell/hspec-attoparsec-0.1.0.0 <dev-haskell/hspec-attoparsec-0.2
		>=dev-haskell/quickcheck-2.8 <dev-haskell/quickcheck-3.0
		>=dev-haskell/quickcheck-instances-0.3.16 <dev-haskell/quickcheck-instances-0.4 )
"
BDEPEND="app-text/dos2unix"

src_prepare() {
	# pull revised cabal from upstream
	cp "${DISTDIR}/${CABAL_DISTFILE}" "${CABAL_FILE}" || die

	# Convert to unix line endings
	dos2unix "${CABAL_FILE}" || die

	# Apply patches *after* pulling the revised cabal
	default

	cabal_chdeps \
		'attoparsec      >=0.12       && <0.14' 'attoparsec >=0.12' \
		'attoparsec           >=0.12    && <0.14' 'attoparsec' \
		'doctest          >=0.11    && <0.17' 'doctest >=0.11' \
		'optparse-applicative >=0.11       && <0.16' 'optparse-applicative >=0.11'
}
