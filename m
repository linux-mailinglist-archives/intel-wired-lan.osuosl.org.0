Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E0952653A6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Sep 2020 23:38:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D12BF867CC;
	Thu, 10 Sep 2020 21:38:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wWmltaF6eVoW; Thu, 10 Sep 2020 21:38:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6F6BE8778D;
	Thu, 10 Sep 2020 21:38:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9E6D91BF38C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Sep 2020 08:47:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8AB94204D4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Sep 2020 08:47:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1IgssDQUuOmD for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Sep 2020 08:47:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 747F5204D9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Sep 2020 08:47:49 +0000 (UTC)
Received: from saruman (91-155-214-58.elisa-laajakaista.fi [91.155.214.58])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0C4F920770;
 Thu, 10 Sep 2020 08:47:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1599727668;
 bh=RPokpgxyglYjppmxdwE4ETpgoWb+FLMn8txdhEbALdk=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=caMPoUSKexLI6/Cqhtg8fT99cl3GRCJBgwM+b8CDUH4fpndiULhN2ZxxlePCqMtm8
 o+PPIhKL0Yab4dKBUBJb9PAX9HTFJdHyhq4ZrB98n0hws/gO34J2oo99WhyXQG8LAo
 ih4L+nIDe5nvGNhsdtsxYZAUrexQb+0pD4TKBRdk=
From: Felipe Balbi <balbi@kernel.org>
To: Joe Perches <joe@perches.com>, LKML <linux-kernel@vger.kernel.org>, Jiri
 Kosina <trivial@kernel.org>
In-Reply-To: <e6387578c75736d61b2fe70d9783d91329a97eb4.camel@perches.com>
References: <e6387578c75736d61b2fe70d9783d91329a97eb4.camel@perches.com>
Date: Thu, 10 Sep 2020 11:47:27 +0300
Message-ID: <878sdikogw.fsf@kernel.org>
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 10 Sep 2020 21:38:51 +0000
Subject: Re: [Intel-wired-lan] [trivial PATCH] treewide: Convert switch/case
 fallthrough; to break; 
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Cc: linux-wireless@vger.kernel.org, linux-fbdev@vger.kernel.org,
 oss-drivers@netronome.com, nouveau@lists.freedesktop.org,
 alsa-devel <alsa-devel@alsa-project.org>, dri-devel@lists.freedesktop.org,
 linux-ide@vger.kernel.org, dm-devel@redhat.com, linux-mtd@lists.infradead.org,
 linux-i2c@vger.kernel.org, sparclinux@vger.kernel.org,
 kvmarm@lists.cs.columbia.edu, linux-rtc@vger.kernel.org,
 linux-s390@vger.kernel.org, linux-scsi@vger.kernel.org, dccp@vger.kernel.org,
 linux-rdma@vger.kernel.org, linux-atm-general@lists.sourceforge.net,
 linux-afs@lists.infradead.org, coreteam@netfilter.org,
 intel-wired-lan@lists.osuosl.org, linux-serial@vger.kernel.org,
 linux-input@vger.kernel.org, linux-mmc@vger.kernel.org,
 Kees Cook <kees.cook@canonical.com>, linux-media@vger.kernel.org,
 linux-pm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-sctp@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-nvme@lists.infradead.org, storagedev@microchip.com,
 ceph-devel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-nfs@vger.kernel.org, linux-parisc@vger.kernel.org,
 netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 Nick Desaulniers <ndesaulniers@google.com>, linux-mips@vger.kernel.org,
 iommu@lists.linux-foundation.org, netfilter-devel@vger.kernel.org,
 linux-crypto@vger.kernel.org, bpf@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org
Content-Type: multipart/mixed; boundary="===============7112080311620380041=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============7112080311620380041==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Hi,

Joe Perches <joe@perches.com> writes:
>  drivers/usb/dwc3/core.c                                   |  2 +-
>  drivers/usb/gadget/legacy/inode.c                         |  2 +-
>  drivers/usb/gadget/udc/pxa25x_udc.c                       |  4 ++--
>  drivers/usb/phy/phy-fsl-usb.c                             |  2 +-

for the drivers above:

Acked-by: Felipe Balbi <balbi@kernel.org>

=2D-=20
balbi

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJFBAEBCAAvFiEElLzh7wn96CXwjh2IzL64meEamQYFAl9Z6B8RHGJhbGJpQGtl
cm5lbC5vcmcACgkQzL64meEamQZSCRAAuTv1hrqhd9iVfnwXFrfx8dYquoCMc3VI
y1IiULV6avnZvLQTqKviHDvZw05WY6dna714mpLFW1laW3WuhLSD4elIu6cqHaiz
ZgtvtA4bZ/s7ipV+jlZ86S9oIz4MMBbZYhqSN1ZVk50NsUA/1thpcjS0aLI5SAgX
j2dV6BEEHBSgMDwcWLPNwr6f5R/ycEBx3i6HYSSdNtBr1SK+UhbSkwNxdCA9IzH8
1WCugmJdohP26DIYNzFZcssjcSFb5wu2iuHXQXuvOmmAfQmro+gRcnq1SOElae7v
cas67L69RQ5fxskM/XpIYH2AURFnRUNondcJWViUQXHwXF1U0r+FdwXUr8OeFi19
sVEI4FNu7ZqgvhfUlKMpldyUZRIrWb+WZZ5toBQAKFee/3tqTs4Tqh9cwfLL9IU4
ho4tG7J/bd6hASfr0x2dH5Pm7oXKskxmtUpmmSVlNaTpXytiD30+pUvOl9Qg7A+X
tc9h6N3Z6kdVxkJlm1KpUUccPeUtHox549ukAtzKQL4x6PDCdNqBkNDVSIx04FA4
dgyt4O7w4HaWT1GPHH322pG5nNT1dsGT0CC9QA/2AJkoXTY03YGR3dgDw89GNUrP
WPj73gtBbWTwRFuwHQQs8F/E8x2UjBC005aawoKcK2bxBR1fzqz1y8daUaiCftnV
ocu1QwRIgL8=
=BFTp
-----END PGP SIGNATURE-----
--=-=-=--

--===============7112080311620380041==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============7112080311620380041==--
