Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 93EB016F0F6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Feb 2020 22:15:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 35FD1869D1;
	Tue, 25 Feb 2020 21:15:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c5DK5PhOZksY; Tue, 25 Feb 2020 21:15:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A5646869D7;
	Tue, 25 Feb 2020 21:15:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CED921BF2F7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2020 21:15:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CA3F6869F8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2020 21:15:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iKMR92cXU7Bb for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Feb 2020 21:15:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A4D45869D7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2020 21:15:47 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Feb 2020 13:15:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,485,1574150400"; 
 d="asc'?scan'208";a="230247807"
Received: from unknown (HELO jtkirshe-desk1.jf.intel.com) ([134.134.177.86])
 by fmsmga007.fm.intel.com with ESMTP; 25 Feb 2020 13:15:46 -0800
Message-ID: <469b51add666cf3df7381b6409a3972c70024c12.camel@intel.com>
From: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
To: Jiri Pirko <jiri@resnulli.us>, netdev@vger.kernel.org
Date: Tue, 25 Feb 2020 13:15:46 -0800
In-Reply-To: <20200225121023.6011-1-jiri@resnulli.us>
References: <20200225121023.6011-1-jiri@resnulli.us>
Organization: Intel
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31) 
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [patch net-next] iavf: use
 tc_cls_can_offload_basic() instead of chain check
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
Cc: kuba@kernel.org, intel-wired-lan@lists.osuosl.org, davem@davemloft.net
Content-Type: multipart/mixed; boundary="===============5165075667737555481=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--===============5165075667737555481==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-nElXtqeOP+3OIyzJeE4R"


--=-nElXtqeOP+3OIyzJeE4R
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2020-02-25 at 13:10 +0100, Jiri Pirko wrote:
> From: Jiri Pirko <jiri@mellanox.com>
>=20
> Looks like the iavf code actually experienced a race condition, when
> a
> developer took code before the check for chain 0 was put to helper.
> So use tc_cls_can_offload_basic() helper instead of direct check and
> move the check to _cb() so this is similar to i40e code.
>=20
> Signed-off-by: Jiri Pirko <jiri@mellanox.com>

Acked-by: Jeff Kirsher <jeffrey.t.kirsher@intel.com>

Go ahead and pick this up Dave, thanks!

> ---
> This was originally part of "net: allow user specify TC filter HW
> stats type"
> patchset, but it is no longer related after the requested changes.
> Sending separatelly.
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)


--=-nElXtqeOP+3OIyzJeE4R
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiTyZWz+nnTrOJ1LZ5W/vlVpL7c4FAl5VjoIACgkQ5W/vlVpL
7c6RkQ//YHqG2qXg2A3snvt2Uvn0PKS19+SnrLnlAmKcPMj/Mi0Tn4yoi2kF6fs7
h3TWd2Po7mAhE08U/YsSRsURpP9rM+NYBiJlzFQShsZbZ2N08gWPAZgo9PIkflrS
PYM7FwQJE2tmaaGtgPqS4/o0YT7sftUScjIeyGloP78/PALGZZW8PhDsq+KrQooi
XEOHffczQ75VHRXvIy6FsrCBDvv1kQGWCexBJktCBzPtxDQBCwu1Vl+EoEny7fi5
ei7lG9e18MmwdTt5JpuigMuCO4s4g8iaWwZKubStd03fy006wTzwOqto1d9QBC41
IYOXzqWe0MN7t7JUMuFCYLv4Y0PWAAQknxq4QhS42QXJ+XPLz/TbqKtI6biiqFVr
lh/rufPYbNb9qPUFMooTArUdFNCDX43ttTOQdSM0xhMsGtNnZ0o4gsxp/cVzW6dD
lB+fp0tYBi6SWPoQ4P3+buew7AeYtpsbqpiwRGmrFQ3/Z80DGxqI/9RzTLUgq2g3
UN2J3LQp3Yfte8gZqhCNPyy9LFU4EhxeFbvQ+SDQXFl8YGg7EhfgPDlEpPT4x2o6
yLweY9wOgkcItgjqZb49cuOCLlEfz31LNg5QlMBmmaQd4wFgBgcPsX0rHOl/Rgdc
Fnr95EEzwT6qd2m2t9G+8aEZ60S3E7/AkqB+//dAxmttMTpwQdw=
=rPmc
-----END PGP SIGNATURE-----

--=-nElXtqeOP+3OIyzJeE4R--


--===============5165075667737555481==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============5165075667737555481==--

