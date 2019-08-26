Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DD139CB36
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Aug 2019 10:03:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 726D487938;
	Mon, 26 Aug 2019 08:03:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oKYQAgI3MYpA; Mon, 26 Aug 2019 08:03:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 445C5878FE;
	Mon, 26 Aug 2019 08:03:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7279A1BF356
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Aug 2019 08:03:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5EA9E878FE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Aug 2019 08:03:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 12BhBv-DKoYT for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Aug 2019 08:03:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 885C187877
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Aug 2019 08:03:35 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Aug 2019 01:03:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,431,1559545200"; 
 d="asc'?scan'208";a="196998739"
Received: from sjolley-mobl.amr.corp.intel.com ([10.254.178.147])
 by fmsmga001.fm.intel.com with ESMTP; 26 Aug 2019 01:03:34 -0700
Message-ID: <c2279a78904b581924894b712403299903eacbfc.camel@intel.com>
From: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
To: Forrest Fleming <ffleming@gmail.com>
Date: Mon, 26 Aug 2019 01:03:33 -0700
In-Reply-To: <20190823191421.3318-1-ffleming@gmail.com>
References: <20190823191421.3318-1-ffleming@gmail.com>
User-Agent: Evolution 3.32.4 (3.32.4-1.fc30) 
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH] net: intel: Cleanup e1000 - add space
 between }}
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 "David S. Miller" <davem@davemloft.net>, linux-kernel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============0112823548859350770=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--===============0112823548859350770==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-+SaW8iJuTsbssO2+QFx8"


--=-+SaW8iJuTsbssO2+QFx8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2019-08-23 at 19:14 +0000, Forrest Fleming wrote:
> suggested by checkpatch
>=20
> Signed-off-by: Forrest Fleming <ffleming@gmail.com>
> ---
>  .../net/ethernet/intel/e1000/e1000_param.c    | 28 +++++++++----------
>  1 file changed, 14 insertions(+), 14 deletions(-)

While I do not see an issue with this change, I wonder how important it is
to make such a change.  Especially since most of the hardware supported by
this driver is not available for testing.  In addition, this is one
suggested change by checkpatch.pl that I personally do not agree with.

This is not a hard NAK, but you have to explain how this change makes the
code more readable before I consider it.

--=-+SaW8iJuTsbssO2+QFx8
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEiTyZWz+nnTrOJ1LZ5W/vlVpL7c4FAl1jklUACgkQ5W/vlVpL
7c7hHg/+NAXAeuMjDZxOZq/wxvvj915GMyFGhtxIHKvbyYMLDU1m2AMHXzvBamyb
qhYKGFYjTD5OsbqvHCKaZ4KxjMgiNGxfrDnLD3JPgyrEGKMICpU87Ec49tfRhLo7
Jj7+IetakkcwLGnNoi2ZeumsfybLvjrtJGZS+QC66QRXqD8TeIuoEDleRDSs9sMp
6CVb5m0ZGQAbEk0Kpso1CwdoEqQ0LdN27dQbTi8ix5wCcQ1HJnOjBUDvTzsfp2cS
L5TlNViQ4GhfJkkR2PDsI2Svh1XJd1w4U3PMDRHx4Bu6MajAFcKxGoFgfbizpP5C
CtGGiCN91RuI87eUfpWvpFsIOM4wm4EULYMSEgPn7TuUBB3CweNafpGJnDmtiqGD
dj2+AOYtmKoKFbatNBhl9zIEMU76vW54gshX5CaWToCFJeFAqagrgoWdrOM4vWIM
rMcz/hgTvxU40ad3ZJ0kCcSy+j/JTF8JRG9sBYaymoJnxMCT6jeFI6R9fIhRqMA3
QEpuEElGSnpvD7Up7z1Sd7oE4wJlLYbAEwZqn/+rwGIk6d0PZmHH3ZixFI/HYemt
qji8KltUM/QHM0jaXeLiPBq3RJlt/4qs6x8LV9k1zuLRL0GuXQs1Wu1PX2pNDLZU
jataaHMp0uFKLkWwR2metAyY9mwHKdJgV7pO2/MAb2AKVJF2HqA=
=pzql
-----END PGP SIGNATURE-----

--=-+SaW8iJuTsbssO2+QFx8--


--===============0112823548859350770==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============0112823548859350770==--

