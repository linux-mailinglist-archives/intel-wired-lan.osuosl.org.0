Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EE9A28D7B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 May 2019 00:55:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id F32DF87EFB;
	Thu, 23 May 2019 22:55:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id So80YAxu6996; Thu, 23 May 2019 22:55:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id EB04B87B7E;
	Thu, 23 May 2019 22:55:12 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7DF941BF338
 for <intel-wired-lan@osuosl.org>; Thu, 23 May 2019 22:55:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7808A88A05
 for <intel-wired-lan@osuosl.org>; Thu, 23 May 2019 22:55:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2WnYv4GnmML2 for <intel-wired-lan@osuosl.org>;
 Thu, 23 May 2019 22:55:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 88CDB889FE
 for <intel-wired-lan@osuosl.org>; Thu, 23 May 2019 22:55:10 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 May 2019 15:55:09 -0700
X-ExtLoop1: 1
Received: from jtkirshe-desk1.jf.intel.com ([134.134.177.96])
 by orsmga004.jf.intel.com with ESMTP; 23 May 2019 15:55:09 -0700
Message-ID: <f8d774415fcb66c46ebc08a9b66f32d825c004ac.camel@intel.com>
From: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
To: Feng Tang <feng.tang@intel.com>, Sasha Neftin <sasha.neftin@intel.com>, 
 Aaron F Brown <aaron.f.brown@intel.com>, intel-wired-lan@osuosl.org,
 netdev@vger.kernel.org
Date: Thu, 23 May 2019 15:55:15 -0700
In-Reply-To: <20190523032233.29277-1-feng.tang@intel.com>
References: <20190523032233.29277-1-feng.tang@intel.com>
Organization: Intel
User-Agent: Evolution 3.32.2 (3.32.2-1.fc30) 
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [RESEND PATCH] intel-ethernet: warn when
 fatal read failure happens
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
Reply-To: jeffrey.t.kirsher@intel.com
Content-Type: multipart/mixed; boundary="===============9145258786395295800=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--===============9145258786395295800==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-y1OFu1nRmlcChIbRxZiy"


--=-y1OFu1nRmlcChIbRxZiy
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2019-05-23 at 11:22 +0800, Feng Tang wrote:
> Failed in reading the HW register is very serious for igb/igc driver,
> as its hw_addr will be set to NULL and cause the adapter be seen as
> "REMOVED".
>=20
> We saw the error only a few times in the MTBF test for
> suspend/resume,
> but can hardly get any useful info to debug.
>=20
> Adding WARN() so that we can get the necessary information about
> where and how it happens, and use it for root causing and fixing
> this "PCIe link lost issue"
>=20
> This affects igb, igc.
>=20
> Signed-off-by: Feng Tang <feng.tang@intel.com>
> Tested-by: Aaron Brown <aaron.f.brown@intel.com>
> Acked-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>  drivers/net/ethernet/intel/igb/igb_main.c | 1 +
>  drivers/net/ethernet/intel/igc/igc_main.c | 1 +
>  2 files changed, 2 insertions(+)

This patch is already in my next series of 1GbE patches to push to
Dave, so you can expect this to be pushed upstream before the weekend.

--=-y1OFu1nRmlcChIbRxZiy
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiTyZWz+nnTrOJ1LZ5W/vlVpL7c4FAlznJNMACgkQ5W/vlVpL
7c7v5Q/9F2bwo0bdt/sXDiOiWfpgLcTVVN3sYMsjzDHCJCZQAEZuGEvlnhl6GIgc
KwYrE0Am0ZvnhMtX6KYi29f51EZo3fpZ979hAUAZlIFBLgBVtg4F/j5YdpL283ku
U2c2MpnoDZEvlRjaOIzUsqygNmif9jNqsTINKazBm2FFm8qBMXPhJ3ivUWAmYx6J
AyyeoHDUUohDR4JxIdQkOiNumbaFszgNa6Rek5E8VV7jgujCic9TRV+SkvAYNViU
tDqBgoJJGlyHOUmJEYlW8EiHF+hQ8n03ycAct/57lU0BjDizZVBktdvxdSura3MP
klr1PTiuMwLMFaH+YzgVD+fuWplAALbrqhDtXpqG471Q+q0twvU1HIWIjOywjzxY
Lo9G3Ru0HBwyhELGotBi8NzsE3/w950jKefSYv37CzYKIAr6EwgvJydG1tW2VubW
s5jcDdxrr0qbSY1v5eI8HlKvcFKYRw+LYyHeOEVR0DLs8mXEker9qzluG4OBNm9W
URQN5F/Myy8pejMOQPCqSFyWSCzxddCzUy1KPaIUN82pIdz3pfMgQZfaseOH4GyV
/bzaXPU8EXAtjan6/P6XDJ71AW3+VSXIcfEC1UAV/9VAu8GY1N4aJym85NPCRyKD
tW1jAIXiErijG8ddQ0zHuv2kDT82mG8ggklcjElIIBu/ULE3GPc=
=3A37
-----END PGP SIGNATURE-----

--=-y1OFu1nRmlcChIbRxZiy--


--===============9145258786395295800==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============9145258786395295800==--

