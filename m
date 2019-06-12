Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BB34430F5
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Jun 2019 22:24:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9B6B220336;
	Wed, 12 Jun 2019 20:24:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PAW9wDaBiId6; Wed, 12 Jun 2019 20:24:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id AD0B3204EC;
	Wed, 12 Jun 2019 20:24:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BAA431BF3E5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jun 2019 20:24:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B7194824BE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jun 2019 20:24:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SWwjPpGuK5JR for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Jun 2019 20:24:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 17EE081110
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jun 2019 20:24:31 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Jun 2019 13:24:30 -0700
X-ExtLoop1: 1
Received: from lcarlos-mobl.amr.corp.intel.com ([10.252.140.234])
 by fmsmga004.fm.intel.com with ESMTP; 12 Jun 2019 13:24:30 -0700
Message-ID: <d96a913951ec3649171e9d5f1cf7ee8be9d41727.camel@intel.com>
From: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
To: "Wang, Liang-min" <liang-min.wang@intel.com>, 
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Date: Wed, 12 Jun 2019 13:24:29 -0700
In-Reply-To: <B6CB929FEBC10D4FAC4BCA7EF2298E259DD2F265@FMSMSX110.amr.corp.intel.com>
References: <B6CB929FEBC10D4FAC4BCA7EF2298E259DD2F265@FMSMSX110.amr.corp.intel.com>
User-Agent: Evolution 3.32.2 (3.32.2-1.fc30) 
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH] ixgbevf: add control of skipping PF
 link-status check
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
Cc: Guilherme Piccoli <gpiccoli@canonical.com>
Content-Type: multipart/mixed; boundary="===============0546763292838872014=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--===============0546763292838872014==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-Me0SVeYh0qqGUO1hYE5R"


--=-Me0SVeYh0qqGUO1hYE5R
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2019-06-11 at 17:55 -0700, Wang, Liang-min wrote:
> ixgbevf: add control of skipping PF link-status check
> =20
> The ixgbevf link status check always triggers an interrupt on Physical
> Function (PF) driver because
> it uses mailbox read to check PF link-status. For any Virtual Network
> Function (VNF) implementation
> where periodical link-status check is needed, this interrupt per request
> becomes a significant
> performance overhead. Therefore, this change uses the input parameter,
> autoneg_wait_to_complete, to
> conditionally skip the PF link-status check. For scenarios where only
> quick Virtual Function (VF)
> link status check is required, application could skip the PF interrupt by
> setting autoneg_wait_to_complete
> to "0". For cases where deep link status check (include both PF and VF
> link status check) is required,
> the application can set the autoneg_wait_to_complete to "1".
> =20
> Signed-off-by: Liang-Min Wang<liang-min.wang@intel.com>
> Reviewed-by: Jeffrey T Kirsher<jeffrey.t.kirsher@intel.com>

Interesting, I know I did an initial review, but I do not remember adding
my reviewed-by to this patch yet.  FYI, I never use my full legal name when
signing any patch, which tells me you forged my Reviewed-by.

> ---
> drivers/net/ethernet/intel/ixgbevf/vf.c | 10 ++++++++++
> 1 file changed, 10 insertions(+)


--=-Me0SVeYh0qqGUO1hYE5R
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEiTyZWz+nnTrOJ1LZ5W/vlVpL7c4FAl0BX30ACgkQ5W/vlVpL
7c46eQ/+Npcc4UWvUrswY/y4qgMsHJvHLtIhBR/hRYKVEPoP4wgQjdvm7ZAkmBe3
ifjSCjCzzxaU50AsvGpXQkmY2B7MHxNqFmS1KVQicxq23HdlLwG1ZD6xa7kdyC9L
xt+/76UfQLkwgyWKD5BksFeutzvoHDAVKnATym5hyaJgTXPOG5nwox+GP/2pbFpE
nYS5fboLb6oS7duNotiK9rV2hKu2a72n6kDi5YLKbbb1ZwZWcGH8xvHDR9tWIuZf
4jb/+nckud0H30muPEjtsdXEeQeIaQCUIRY7dN5LIoP32YCh/lVjyfpPkII4owAN
Pkm3L3SgrGqfUY2J+dLTOgt4+Vj2v4zvgtP3ZC5PK2cghDkWY+7ojxNClHpaGgwe
3V46Lo1rkC6y1xRi42wLvo4YPDKV61u948IpvK8MKLKlAtjhZk2d5ZOYqMOPdzlu
WGWtD5vL0gU0R3rmkLbAV7pUEIQJNYFSRlORAd22mPxZN2XTvZybHWIS+zajRr5/
3j0hogG2vf7g7v988YVdE3BxpOpjnX8BqthGCmKC3av8BENZtQ0Tfx6I18Rj4iR4
BPY46na3xCvNSY577uBSGa+UaJCq10srrBQJTvJdpmJ68t+/75ITxZtvow900Gmf
xWAlgMgnrrJm4cGjdYY09EoeUjxcpgS+hXsY4uENYkrx37iu7CE=
=2fx0
-----END PGP SIGNATURE-----

--=-Me0SVeYh0qqGUO1hYE5R--


--===============0546763292838872014==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============0546763292838872014==--

