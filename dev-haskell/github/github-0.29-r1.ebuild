# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.9.0.0.9999
#hackport: flags: -openssl

CABAL_HACKAGE_REVISION=6

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Access to the GitHub API, v3"
HOMEPAGE="https://github.com/haskell-github/github"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/base-compat-0.11.1:=[profile?] <dev-haskell/base-compat-1:=[profile?]
	>=dev-haskell/base16-bytestring-0.1.1.6:=[profile?] <dev-haskell/base16-bytestring-1.1:=[profile?]
	>=dev-haskell/binary-instances-1:=[profile?] <dev-haskell/binary-instances-1.1:=[profile?]
	>=dev-haskell/cryptohash-sha1-0.11.100.1:=[profile?] <dev-haskell/cryptohash-sha1-0.12:=[profile?]
	>=dev-haskell/deepseq-generics-0.2.0.0:=[profile?] <dev-haskell/deepseq-generics-0.3:=[profile?]
	>=dev-haskell/hashable-1.2.7.0:=[profile?] <dev-haskell/hashable-2:=[profile?]
	>=dev-haskell/http-client-0.5.12:=[profile?] <dev-haskell/http-client-0.8:=[profile?]
	>=dev-haskell/http-client-tls-0.3.5.3:=[profile?] <dev-haskell/http-client-tls-0.4:=[profile?]
	>=dev-haskell/http-link-header-1.0.3.1:=[profile?] <dev-haskell/http-link-header-1.3:=[profile?]
	>=dev-haskell/http-types-0.12.3:=[profile?] <dev-haskell/http-types-0.13:=[profile?]
	>=dev-haskell/iso8601-time-0.1.5:=[profile?] <dev-haskell/iso8601-time-0.2:=[profile?]
	>=dev-haskell/network-uri-2.6.1.0:=[profile?] <dev-haskell/network-uri-2.7:=[profile?]
	>=dev-haskell/tagged-0.8.5:=[profile?] <dev-haskell/tagged-0.9:=[profile?]
	>=dev-haskell/text-1.2.0.6:=[profile?] <dev-haskell/text-2.2:=[profile?]
	>=dev-haskell/time-compat-1.9.2.2:=[profile?] <dev-haskell/time-compat-1.10:=[profile?]
	>=dev-haskell/tls-1.4.1:=[profile?]
	>=dev-haskell/transformers-compat-0.6.5:=[profile?] <dev-haskell/transformers-compat-0.8:=[profile?]
	>=dev-haskell/unordered-containers-0.2.10.0:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/vector-0.12.0.1:=[profile?] <dev-haskell/vector-0.14:=[profile?]
	>=dev-lang/ghc-9.0.2:=
	>=dev-haskell/aeson-1.4.0.0:=[profile?] <dev-haskell/aeson-2.3:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	test? ( dev-haskell/aeson
		dev-haskell/file-embed
		>=dev-haskell/hspec-2.6.1 <dev-haskell/hspec-2.12 )
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-openssl
}
