Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E11120F3B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 May 2019 21:35:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1302688260;
	Thu, 16 May 2019 19:35:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uKcyDWeYJJXH; Thu, 16 May 2019 19:35:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 859308808D;
	Thu, 16 May 2019 19:35:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 30DDE1BF28D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 May 2019 19:35:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2C98C3137A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 May 2019 19:35:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5HksjkGbOI4U for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 May 2019 19:35:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by silver.osuosl.org (Postfix) with ESMTPS id 796A2234BB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 May 2019 19:35:30 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 May 2019 12:35:29 -0700
X-ExtLoop1: 1
Received: from jtkirshe-desk1.jf.intel.com ([134.134.177.96])
 by fmsmga008.fm.intel.com with ESMTP; 16 May 2019 12:35:29 -0700
Message-ID: <9be117dc6e818ab83376cd8e0f79dbfaaf193aa9.camel@intel.com>
From: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
To: Nikunj Kela <nkela@cisco.com>
Date: Thu, 16 May 2019 12:35:27 -0700
In-Reply-To: <1557357269-9498-1-git-send-email-nkela@cisco.com>
References: <1557357269-9498-1-git-send-email-nkela@cisco.com>
Organization: Intel
User-Agent: Evolution 3.32.2 (3.32.2-1.fc30) 
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH] igb: add parameter to ignore nvm
 checksum validation
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 "David S. Miller" <davem@davemloft.net>, linux-kernel@vger.kernel.org,
 xe-linux-external@cisco.com
Content-Type: multipart/mixed; boundary="===============6729653963721361177=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--===============6729653963721361177==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-z4gzyTVe/RxHVRF6YPc2"


--=-z4gzyTVe/RxHVRF6YPc2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2019-05-08 at 23:14 +0000, Nikunj Kela wrote:
> Some of the broken NICs don't have EEPROM programmed correctly. It
> results
> in probe to fail. This change adds a module parameter that can be
> used to
> ignore nvm checksum validation.
>=20
> Cc: xe-linux-external@cisco.com
> Signed-off-by: Nikunj Kela <nkela@cisco.com>
> ---
>  drivers/net/ethernet/intel/igb/igb_main.c | 28
> ++++++++++++++++++++++------
>  1 file changed, 22 insertions(+), 6 deletions(-)

NAK for two reasons.  First, module parameters are not desirable
because their individual to one driver and a global solution should be
found so that all networking device drivers can use the solution.  This
will keep the interface to change/setup/modify networking drivers
consistent for all drivers.

Second and more importantly, if your NIC is broken, fix it.  Do not try
and create a software workaround so that you can continue to use a
broken NIC.  There are methods/tools available to properly reprogram
the EEPROM on a NIC, which is the right solution for your issue.

--=-z4gzyTVe/RxHVRF6YPc2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiTyZWz+nnTrOJ1LZ5W/vlVpL7c4FAlzdu38ACgkQ5W/vlVpL
7c7ZxA/+PPTvaNQhtRytI+u56SLmQrJVgitUmXA5alK0EjlDbd8qdyb18SqLryUv
IwdXvVKa4L9IwiH7szS10YNgzDDxHB4y5EXWRI3xQvguf7gsTwujOcIyMXGRJAhY
3bHsOXmMYdwQHosm7iybtUyNjwYLS3BUqVCpUl5FvXgZnpSNqmHpCP8T/Lx0Rr+D
LeM2w5Q0g8IVVhXGPEhaVsI4QYFekfLBWAJpv/5vT9DTqmIUILssRGbNe2OMopb3
VCLaCRGbs3e9v8BMtRd5pU7F/Joo5g8zaHOtyGeUFkd4+zFD7STlrNAlbtQsi5no
SSwdCCDuljlQkCKiLrutlsuOEJstaN0Ix8bOx8RiMW20asDf76GSGBUbZxDDpjew
VCBrzNSbI/vFC8vSdDyWMB0LyuC7ZTCD39nrHyqTJazogkPjEH7usUs93MqHoJ1l
3Iv1WQgThHl9r0aZYQw4/DzJ3triye2iDnyZ8d2gjlwxA124BFtJumPDzGfKwjJq
U+GfCkYZ4CIbJS3VorNW8bSFvRVMc5ZM3xW2rnvUIXUILwTC6ziUdaOrvAqye58k
VV5FWfE7N6/0ntbQ5vAS5xaP6L1xCCi/Zd5jNzYrc/I0+WIlG0q49lY31KHfLIW0
Y5fKAAKkEu7HY442WEWhJZViQtDSgAkxrX/5Z4BpkCtiaRBdn8Q=
=4Goj
-----END PGP SIGNATURE-----

--=-z4gzyTVe/RxHVRF6YPc2--


--===============6729653963721361177==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============6729653963721361177==--

