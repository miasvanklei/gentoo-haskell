# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.4.0.9999
#hackport: flags: +cabal-v1,+doctests,+gentoo-tests,+pedantic

CABAL_FEATURES="test-suite"
EGIT_REPO_URI="https://github.com/gentoo-haskell/hackport.git"

inherit git-r3 haskell-cabal bash-completion-r1

DESCRIPTION="Hackage and Portage integration tool"
HOMEPAGE="https://github.com/gentoo-haskell/hackport#readme"

LICENSE="GPL-3+"
SLOT="0"
KEYWORDS=""
IUSE="profile +threads"
REQUIRED_USE="profile? ( threads ) test? ( threads )"

RDEPEND="
	>=dev-haskell/async-2.0:=[profile?]
	>=dev-haskell/base16-bytestring-0.1.1:=[profile?]
	>=dev-haskell/base64-bytestring-1.0:=[profile?]
	>=dev-haskell/cryptohash-sha256-0.11:=[profile?]
	dev-haskell/dlist:=[profile?]
	>=dev-haskell/echo-0.1.3:=[profile?]
	>=dev-haskell/ed25519-0.0:=[profile?]
	>=dev-haskell/edit-distance-0.2.2:=[profile?]
	dev-haskell/extensible-exceptions:=[profile?]
	>=dev-haskell/hashable-1.0:=[profile?]
	>=dev-haskell/http-4000.1.5:=[profile?]
	dev-haskell/lifted-base:=[profile?]
	>=dev-haskell/lukko-0.1:=[profile?]
	dev-haskell/monad-control:=[profile?]
	>=dev-haskell/network-3.0:=[profile?]
	>=dev-haskell/network-uri-2.6.0.2:=[profile?]
	dev-haskell/optparse-applicative:=[profile?]
	>=dev-haskell/parallel-3.2.1.0:=[profile?]
	>=dev-haskell/parsec-3.1.13.0:=[profile?]
	dev-haskell/parser-combinators:=[profile?]
	dev-haskell/prettyprinter:=[profile?]
	dev-haskell/quickcheck:=
	>=dev-haskell/random-1.2:=[profile?]
	>=dev-haskell/regex-base-0.94.0.0:=[profile?]
	>=dev-haskell/regex-posix-0.96.0.0:=[profile?]
	>=dev-haskell/resolv-0.1.1:=[profile?]
	>=dev-haskell/safe-exceptions-0.1.7.0:=[profile?]
	dev-haskell/split:=[profile?]
	>=dev-haskell/tar-0.5.0.3:=[profile?]
	>=dev-haskell/text-1.2.3.0:=[profile?]
	dev-haskell/xml:=[profile?]
	>=dev-haskell/zlib-0.5.3:=[profile?]
	>=dev-lang/ghc-8.10.6:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.2.1.0
	test? (
		dev-haskell/base-compat
		>=dev-haskell/cabal-doctest-1.0
		>=dev-haskell/doctest-0.8
		dev-haskell/glob
		>=dev-haskell/hspec-2.0
		dev-haskell/hunit
		>=dev-haskell/quickcheck-2.0
	)
"

src_prepare() {
	haskell-cabal_src_prepare
	sed -e 's/^version:.*/&.9999/' -i ${PN}.cabal || die # just to distinguish from release install
}

src_configure() {
	if use test; then
		export GHC_BOOTSTRAP_PACKAGES=(
			cabal-doctest
		)
	fi

	haskell-cabal_src_configure \
		--flag=cabal-v1 \
		--flag=doctests \
		--flag=gentoo-tests \
		--flag=pedantic \
		$(cabal_flag profile profile) \
		$(cabal_flag threads threads)
}

src_install() {
	haskell-cabal_src_install
	doman man/hackport.1

	# We only install bash completion scripts currently
	newbashcomp "${FILESDIR}/${PN}.bash.completion" "${PN}"
}
