# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.2

CABAL_FEATURES="lib profile haddock hoogle hscolour" # Missing depends: test-suite"
inherit haskell-cabal

DESCRIPTION="High level functions for working with message queues"
HOMEPAGE="https://github.com/seanhess/amqp-worker#readme"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RESTRICT=test # unknown test dependency: "server"

RDEPEND="dev-haskell/aeson:=[profile?]
	dev-haskell/amqp:=[profile?]
	dev-haskell/data-default:=[profile?]
	dev-haskell/exceptions:=[profile?]
	dev-haskell/monad-control:=[profile?]
	dev-haskell/monad-loops:=[profile?]
	dev-haskell/mtl:=[profile?]
	dev-haskell/resource-pool:=[profile?]
	dev-haskell/split:=[profile?]
	dev-haskell/text:=[profile?]
	dev-haskell/transformers-base:=[profile?]
	>=dev-lang/ghc-8.0.1:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.24.0.0
"

src_prepare() {
	default

	# Rename ambiguous binary. Upstream proposal: https://github.com/seanhess/amqp-worker/pull/4
	cabal_chdeps \
		'executable example' 'executable amqp-worker-example'
}
