# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.3.1

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Pretty-printing for RIO"
HOMEPAGE="https://github.com/commercialhaskell/rio-prettyprint#readme"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND="dev-haskell/aeson:=[profile?]
	dev-haskell/annotated-wl-pprint:=[profile?]
	>=dev-haskell/ansi-terminal-0.9:=[profile?]
	dev-haskell/cabal:=[profile?]
	dev-haskell/colour:=[profile?]
	dev-haskell/path:=[profile?]
	dev-haskell/rio:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
"
