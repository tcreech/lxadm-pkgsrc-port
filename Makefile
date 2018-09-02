# $NetBSD$

DISTNAME=	lxadm-0.1.6
CATEGORIES=	sysutils
MASTER_SITES=	${MASTER_SITE_GITHUB:=hadfl/}
GITHUB_RELEASE=	v0.1.6

MAINTAINER=	tcreech@tcreech.com
HOMEPAGE=	https://github.com/hadfl/lxadm/
COMMENT=	Manager for Illumos LX zones
#LICENSE=	# TODO: (see mk/license.mk)

GNU_CONFIGURE=	yes
USE_LANGUAGES=	# none
USE_TOOLS+=	perl gmake
CONFIGURE_ENV+=		PERL5LIB="${PERL5_INSTALLVENDORLIB:Q}"

.include "../../lang/perl5/buildlink3.mk"
.include "../../lang/perl5/dirs.mk"
.include "../../mk/bsd.pkg.mk"
