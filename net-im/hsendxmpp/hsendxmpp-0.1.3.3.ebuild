# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.9.0.0.9999

CABAL_FEATURES=""
inherit haskell-cabal

DESCRIPTION="sendxmpp clone, sending XMPP messages via CLI"
HOMEPAGE="https://hackage.haskell.org/package/hsendxmpp"

LICENSE="AGPL-3"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/hslogger-1.2.8:= <dev-haskell/hslogger-1.4:=
	>=dev-haskell/pontarius-xmpp-0.4.5:= <dev-haskell/pontarius-xmpp-0.6:=
	>=dev-haskell/pontarius-xmpp-extras-0.1.0.6:= <dev-haskell/pontarius-xmpp-extras-0.2:=
	>=dev-haskell/string-class-0.1.7.0:= <dev-haskell/string-class-0.2:=
	>=dev-haskell/text-1.2.4.1:= <dev-haskell/text-2.2:=
	>=dev-haskell/tls-1.5.5:= <dev-haskell/tls-2.2:=
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
"