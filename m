Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF68DF9953
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Nov 2019 20:06:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6454787598;
	Tue, 12 Nov 2019 19:06:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id osvCW1JC7Xko; Tue, 12 Nov 2019 19:06:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E337E87766;
	Tue, 12 Nov 2019 19:05:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 36C511BF593
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Nov 2019 19:05:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 308ED875AD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Nov 2019 19:05:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Zo-SOQMWlyTR for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Nov 2019 19:05:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by hemlock.osuosl.org (Postfix) with ESMTPS id EB9E187598
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Nov 2019 19:05:54 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Nov 2019 11:05:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,297,1569308400"; 
 d="asc'?scan'208";a="198189007"
Received: from sshah1-mobl7.amr.corp.intel.com ([10.254.176.99])
 by orsmga008.jf.intel.com with ESMTP; 12 Nov 2019 11:05:39 -0800
Message-ID: <498edf36e634b9590fd7f58fa7febde226bb3e6e.camel@intel.com>
From: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, "Michael, Alice"
 <alice.michael@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Date: Tue, 12 Nov 2019 11:05:38 -0800
In-Reply-To: <0EF347314CF65544BA015993979A29CDB4ED9024@IRSMSX102.ger.corp.intel.com>
References: <0EF347314CF65544BA015993979A29CDB4ED9024@IRSMSX102.ger.corp.intel.com>
User-Agent: Evolution 3.32.4 (3.32.4-1.fc30) 
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [e1000-patches] [PATCH] igb: read flash with
 iomem=strict
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
Cc: "Ludkiewicz, Adam" <adam.ludkiewicz@intel.com>
Content-Type: multipart/mixed; boundary="===============1857062361662576051=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--===============1857062361662576051==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-sXwDS8uHtlHyPLenbOdZ"


--=-sXwDS8uHtlHyPLenbOdZ
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2019-11-12 at 13:03 +0000, Loktionov, Aleksandr wrote:
> When Secure Boot is enabled access to the /dev/mem is forbidden for user-
> space applications and clients are reporting inability to use tools in
> Secure Boot Mode. The way to perform NVM update is to use igb driver.
> Currently 1G Linux Base Driver has API which allows only EEPROM access.
> There is a need to extend IOCTL API to allow NVM and registers access.
> These defines are necessary for NVM access functions.
>=20
> Signed-off-by: Adam Ludkiewicz <adam.ludkiewicz@intel.com>
> ---

This patch only adds defines and macros which are not being used in the
driver currently.  It appears you are missing the code to actually use
these defines.  Your missing the changes that Adam made to igb_ethtool.c,
which are currently being reviewed internally.

Since this is an incomplete patch, I will drop it from the queue and will
await a v2 of the patch that has the complete changes needed in the driver.

>=20
> diff --git a/drivers/net/ethernet/intel/igb/e1000_defines.h
> b/drivers/net/ethernet/intel/igb/e1000_defines.h
> index d2e2c50..68dee6a 100644
> --- a/drivers/net/ethernet/intel/igb/e1000_defines.h
> +++ b/drivers/net/ethernet/intel/igb/e1000_defines.h
> @@ -481,6 +481,7 @@
>  #define E1000_RAH_POOL_1 0x00040000
> =20
>  /* Error Codes */
> +#define E1000_SUCCESS      0
>  #define E1000_ERR_NVM      1
>  #define E1000_ERR_PHY      2
>  #define E1000_ERR_CONFIG   3
> @@ -800,6 +801,37 @@
>  #define NVM_ETS_DATA_INDEX_SHIFT	8
>  #define NVM_ETS_DATA_HTHRESH_MASK	0x00FF
> =20
> +#define E1000_REGISTER_SET_SIZE		0x20000 /* CSR Size */
> +#define E1000_FLA	0x0001C  /* Flash Access - RW */
> +#define E1000_FLOP	0x0103C  /* FLASH Opcode Register */
> +#define E1000_I350_BARCTRL		0x5BFC /* BAR ctrl reg */
> +#define E1000_I350_DTXMXPKTSZ		0x355C /* Maximum sent
> packet size reg*/
> +
> +#define E1000_SRWR		0x12018
> +#define E1000_EEC_REG		0x12010
> +
> +#define E1000_SHADOWINF		0x12068
> +#define E1000_FLFWUPDATE	0x12108
> +
> +/* os dep */
> +#define E1000_READ_FLASH_REG(a, reg) (readl((a)->flash_address +=20
> +(reg)))
> +
> +#define E1000_READ_FLASH_REG8(a, reg) ( \
> +	readb(READ_ONCE((a)->flash_address) + (reg)))
> +
> +#define E1000_WRITE_FLASH_REG(a, reg, value) ( \
> +	writel((value), ((a)->flash_address + (reg))))
> +
> +#define E1000_READ_REG(x, y) igb_rd32(x, y) #define E1000_READ_REG8(h,=
=20
> +r) readb(READ_ONCE((h)->hw_addr) + (r))
> +
> +#define E1000_WRITE_REG(hw, reg, val) \ do { \
> +	u8 __iomem *hw_addr =3D READ_ONCE((hw)->hw_addr); \
> +	if (!E1000_REMOVED(hw_addr)) \
> +		writel((val), &hw_addr[(reg)]); \
> +} while (0)
> +
>  #define E1000_NVM_CFG_DONE_PORT_0  0x040000 /* MNG config cycle done
> */  #define E1000_NVM_CFG_DONE_PORT_1  0x080000 /* ...for second port
> */  #define E1000_NVM_CFG_DONE_PORT_2  0x100000 /* ...for third port */
> --------------------------------------------------------------------
>=20
> Intel Technology Poland sp. z o.o.
> ul. Slowackiego 173 | 80-298 Gdansk | Sad Rejonowy Gdansk Polnoc | VII
> Wydzial Gospodarczy Krajowego Rejestru Sadowego - KRS 101882 | NIP 957-
> 07-52-316 | Kapital zakladowy 200.000 PLN.
>=20
> Ta wiadomosc wraz z zalacznikami jest przeznaczona dla okreslonego
> adresata i moze zawierac informacje poufne. W razie przypadkowego
> otrzymania tej wiadomosci, prosimy o powiadomienie nadawcy oraz trwale
> jej usuniecie; jakiekolwiek
> przegladanie lub rozpowszechnianie jest zabronione.
> This e-mail and any attachments may contain confidential material for the
> sole use of the intended recipient(s). If you are not the intended
> recipient, please contact the sender and delete all copies; any review or
> distribution by
> others is strictly prohibited.
>=20
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan


--=-sXwDS8uHtlHyPLenbOdZ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEiTyZWz+nnTrOJ1LZ5W/vlVpL7c4FAl3LAoIACgkQ5W/vlVpL
7c5PhhAAh2nxAkuSkk5RauZcs1krKLR54Io/1DdpnONY1OAWOxgvwnX+UvDb40o6
h7Vj7Vay2r1aYed0CuhdMjesGL70ulH1e4MFgdLdoqUC4X3DXiqOyyme73KvjfQE
j4y40CFRRiJQd8qAyU32/7T+8RMpFRSck5z6uorCMylaaTsufJZDc4n6+iKE6ilt
7GmCnEK+Pd5aB9mXMrCvsmozhc/vUlEjbqZ6F4uafWWVOVXouVTr6vZBDidspX0+
vZC3Qa7TRmd3OeSvo/LadJoqaN6T6CkMiqk/8lIvu+A6opBpiPpjzuMdFTvTveJi
7vBHcJfG804fkOOpkjTZLHLiAooL7gM+Lmugc765nj/1yfE9Z/t3J5nXeFuqw3wI
B8AV5THJUw2Ti23sr8Tr2v9oBf/kxiSa48u7TV0wyMZHiaAQRikA9sGXHB8qJK1k
7Sh7MHPHVsPgbp3spw4d9GzaT6yLyxrqph5EzritB3r46L93CgUnI3LUUAO1tvyB
NCYGGaTfsm7DKnwQG/4xLtKQ1IBuUrsqbn6fUhv53mRu5Lfk4m3vO6RO7NJHXtCC
3e9X9CABix1as58f62hv5uCnB0oCwcOYrVPDbQvWRTQS44Kta1Guam9gf1bURdOh
guq/YKMytlMzmuW4deA5cvsx/tH1Jw6XYqg1uNR+bXPf1oLWGpw=
=nygC
-----END PGP SIGNATURE-----

--=-sXwDS8uHtlHyPLenbOdZ--


--===============1857062361662576051==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============1857062361662576051==--

