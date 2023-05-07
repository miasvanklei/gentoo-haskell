# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.0.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

# Test tries to fire up a temporary postgresql instance. Disabling.
RESTRICT=test

DESCRIPTION="Start and stop a temporary postgres"
HOMEPAGE="https://github.com/jfischoff/tmp-postgres#readme"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

PATCHES=( "${FILESDIR}/${PN}-1.34.1.0-disable-test-executables.patch" )

RDEPEND="
	dev-haskell/ansi-wl-pprint:=[profile?]
	dev-haskell/async:=[profile?]
	dev-haskell/base64-bytestring:=[profile?]
	dev-haskell/cryptohash-sha1:=[profile?]
	dev-haskell/generic-monoid:=[profile?]
	dev-haskell/port-utils:=[profile?]
	>=dev-haskell/postgres-options-0.2.0.0:=[profile?]
	dev-haskell/postgresql-simple:=[profile?]
	|| ( dev-lang/ghc >=dev-haskell/process-1.2.0.0[profile?] )
	dev-haskell/stm:=[profile?]
	dev-haskell/temporary:=[profile?]
	>=dev-lang/ghc-8.4.3:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? (
		dev-haskell/hspec
		dev-haskell/network
	)
"
