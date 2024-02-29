# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.4.0.9999
#hackport: flags: -pedantic,use-fingertree:fingertree

MY_PN="${PN}"
CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Haskell Language Server API for plugin communication"
HOMEPAGE="https://github.com/haskell/haskell-language-server#readme"
SRC_URI="https://github.com/haskell/haskell-language-server/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="+fingertree"

RDEPEND="
	dev-haskell/aeson:=[profile?]
	dev-haskell/co-log-core:=[profile?]
	dev-haskell/data-default:=[profile?]
	dev-haskell/dependent-map:=[profile?]
	>=dev-haskell/dependent-sum-0.7:=[profile?]
	>=dev-haskell/diff-0.4.0:=[profile?] <dev-haskell/diff-0.5:=[profile?]
	dev-haskell/dlist:=[profile?]
	dev-haskell/extra:=[profile?]
	dev-haskell/hashable:=[profile?]
	~dev-haskell/hls-graph-2.7.0.0:=[profile?]
	dev-haskell/lens:=[profile?]
	dev-haskell/lens-aeson:=[profile?]
	>=dev-haskell/lsp-2.4:=[profile?] <dev-haskell/lsp-2.5:=[profile?]
	>=dev-haskell/megaparsec-9.0:=[profile?]
	>=dev-haskell/opentelemetry-0.4:=[profile?]
	dev-haskell/optparse-applicative:=[profile?]
	dev-haskell/prettyprinter:=[profile?]
	>=dev-haskell/regex-tdfa-1.3.1.0:=[profile?]
	dev-haskell/row-types:=[profile?]
	dev-haskell/text:=[profile?]
	dev-haskell/unliftio:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	>=dev-lang/ghc-9.0.2:=
	fingertree? (
		dev-haskell/hw-fingertree:=[profile?]
	)
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	test? (
		dev-haskell/lsp-types
		dev-haskell/tasty
		dev-haskell/tasty-hunit
		dev-haskell/tasty-quickcheck
		dev-haskell/tasty-rerun
	)
"

S="${WORKDIR}/haskell-language-server-${PV}/${PN}"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-pedantic \
		$(cabal_flag fingertree use-fingertree)
}
