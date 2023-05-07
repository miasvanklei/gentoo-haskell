# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.3.0
#hackport: flags: -static

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Dockerfile Linter JavaScript API"
HOMEPAGE="https://github.com/hadolint/hadolint"

LICENSE="GPL-3"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND="dev-haskell/aeson:=[profile?]
	dev-haskell/cabal:=[profile?]
	dev-haskell/colourista:=[profile?]
	dev-haskell/cryptonite:=[profile?]
	dev-haskell/data-default:=[profile?]
	dev-haskell/email-validate:=[profile?]
	dev-haskell/foldl:=[profile?]
	>=dev-haskell/gitrev-1.3.1:=[profile?]
	dev-haskell/hsyaml:=[profile?]
	dev-haskell/ilist:=[profile?]
	>=dev-haskell/language-docker-10.4.3:=[profile?] <dev-haskell/language-docker-11:=[profile?]
	>=dev-haskell/megaparsec-9.0.0:=[profile?]
	dev-haskell/network-uri:=[profile?]
	>=dev-haskell/optparse-applicative-0.14.0:=[profile?]
	dev-haskell/parallel:=[profile?]
	>=dev-haskell/prettyprinter-1.7.0:=[profile?]
	dev-haskell/semver:=[profile?]
	dev-haskell/spdx:=[profile?]
	>=dev-haskell/split-0.2:=[profile?]
	>=dev-haskell/timerep-2.0:=[profile?]
	dev-haskell/void:=[profile?]
	>=dev-lang/ghc-8.8.1:=[profile?]
	>=dev-util/shellcheck-0.8.0:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.0.0.0
	test? ( >=dev-haskell/hspec-2.8.3
		>=dev-haskell/hunit-1.2
		dev-haskell/silently )
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-static
}
