# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.5.0

CABAL_FEATURES=""
inherit haskell-cabal

DESCRIPTION="The yesod helper executable"
HOMEPAGE="https://www.yesodweb.com/"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

CABAL_CHDEPS=(
	'tar                >= 0.4          && < 0.6' 'tar >= 0.4'
	)

RDEPEND="dev-haskell/aeson:=
	>=dev-haskell/cabal-1.18:=
	>=dev-haskell/conduit-1.3:=
	>=dev-haskell/conduit-extra-1.3:=
	dev-haskell/data-default-class:=
	dev-haskell/file-embed:=
	dev-haskell/fsnotify:=
	>=dev-haskell/http-client-0.4.7:=
	dev-haskell/http-client-tls:=
	>=dev-haskell/http-reverse-proxy-0.4:=
	>=dev-haskell/http-types-0.7:=
	>=dev-haskell/network-2.5:=
	>=dev-haskell/optparse-applicative-0.11:=
	>=dev-haskell/project-template-0.1.1:=
	dev-haskell/say:=
	>=dev-haskell/split-0.2:= <dev-haskell/split-0.3:=
	dev-haskell/streaming-commons:=
	>=dev-haskell/tar-0.4:=
	>=dev-haskell/text-0.11:=
	dev-haskell/transformers-compat:=
	dev-haskell/unliftio:=
	dev-haskell/unordered-containers:=
	>=dev-haskell/wai-2.0:=
	dev-haskell/wai-extra:=
	>=dev-haskell/warp-1.3.7.5:=
	>=dev-haskell/warp-tls-3.0.1:=
	>=dev-haskell/yaml-0.8:= <dev-haskell/yaml-0.12:=
	>=dev-haskell/zlib-0.5:=
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
"
