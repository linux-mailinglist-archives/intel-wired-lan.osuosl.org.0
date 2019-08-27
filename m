Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 67B2F9F2C9
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Aug 2019 20:58:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D3FAF876CF;
	Tue, 27 Aug 2019 18:58:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s6xyBCcPpsJU; Tue, 27 Aug 2019 18:58:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E7A70876C2;
	Tue, 27 Aug 2019 18:58:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D0CE91BF29E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2019 18:58:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CCA6F86A9A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2019 18:58:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WIjO6gk8iUbC for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Aug 2019 18:58:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 48D9E86A85
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2019 18:58:29 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Aug 2019 11:58:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,438,1559545200"; 
 d="asc'?scan'208";a="264390517"
Received: from jtkirshe-desk1.jf.intel.com ([134.134.177.96])
 by orsmga001.jf.intel.com with ESMTP; 27 Aug 2019 11:58:28 -0700
Message-ID: <92972e00895820ebefa9c2b1b582db0adaf801db.camel@intel.com>
From: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
To: Alice Michael <alice.michael@intel.com>, intel-wired-lan@lists.osuosl.org
Date: Tue, 27 Aug 2019 11:58:28 -0700
In-Reply-To: <20190826181655.15106-1-alice.michael@intel.com>
References: <20190826181655.15106-1-alice.michael@intel.com>
Organization: Intel
User-Agent: Evolution 3.32.4 (3.32.4-1.fc30) 
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [next PATCH S9 1/7] i40e: Allow updating OROM
 when a NIC is in recovery mode
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
Cc: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
Content-Type: multipart/mixed; boundary="===============0175093883159265442=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--===============0175093883159265442==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-k1tc9H8IARu2iMhsBbaL"


--=-k1tc9H8IARu2iMhsBbaL
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2019-08-26 at 11:16 -0700, Alice Michael wrote:
> From: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
>=20
> Allow OROM update with nvmupdate tool when a NIC is in recovery mode.
> Implemented by not exiting a recovery mode after firmware EMP reset
> and before actual OROM update.
> Previously it was not possible to do the OROM update with nvmupdate
> tool.

Should we be referencing our nvmupdate tool?  Is there a plan to
integrate this functionality into the existing ethtool interface to
update EEPROM's?

>=20
> Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c
> b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index a71369546c23..ed8e62cb5417 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -14559,8 +14559,8 @@ static bool i40e_check_recovery_mode(struct
> i40e_pf *pf)
> =20
>  		return true;
>  	}
> -	if (test_and_clear_bit(__I40E_RECOVERY_MODE, pf->state))
> -		dev_info(&pf->pdev->dev, "Reinitializing in normal mode
> with full functionality.\n");
> +	if (test_bit(__I40E_RECOVERY_MODE, pf->state))
> +		dev_info(&pf->pdev->dev, "Please do POR to initialize
> adapter in normal mode with full functionality.\n");

POR?  What does that stand for?  Is there is a reason we are using a
cryptic acronym in what is supposed to be a useful debug message to the
end-user?

FYI, common definitions for POR are "Plan of Record" or "Provided on
Request", but neither of those make much sense in this debug message.

> =20
>  	return false;
>  }


--=-k1tc9H8IARu2iMhsBbaL
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiTyZWz+nnTrOJ1LZ5W/vlVpL7c4FAl1lfVQACgkQ5W/vlVpL
7c7POQ//bdloUpsIWC7WP6Avj3WfX0eQ9I4NghL615RVdSyO6b7nJASrpAUR2Jjy
nQ+iIHJGkfe1OE8LRWnNLHX9WjkcD9Bn1cOXtXjTAzthnusgJI6Bwl0iS8V/E41y
MJTQ5KqIQRPMG7kGCOmzr+apGYhKmqhdKgpHC37XKlP3dPGkSWeoAp5tPdTWRl3K
inr3Pk4ztKKaQJlpoUB9KtiN0qfhcZBNv/LsUbN8J+oKtI2OXni50qUct3ZTZBt+
aoQEt3neUGwuncbZGwverCj0f6LJ37Kj8F+qZ1HaKKaThECLHID8vbqSGgQa7XTb
zjC404mOHAk2kTCqde/2RKnd0BL4RD+BWnc6Mbd7niKJ1/1NKHVWC/1U7Wr4OTzx
aHaB6kbAqQyzxaz5WHVrOse99ACZt1QDv7inSqBjytzzkyhKzBnYXTRvKbaGbPEy
SOvyMimJtp4f2Xq30fk3cvcljcHSEvTBGBflqNPSpXPw1+P/7rI0fkflswwagZ02
KSZtb2jijhRVEnTj+BiS1DTsJCgU99AAd02+zZqVq+C4WuDS/aEZ2FvhuLq8+cW1
yCosqTMSSSzalGq0ZJOvne4h8yysahdmcdmKxYISGIDuIeM9WbLJz/r+Yqx8W3XZ
/1jja4VFORVFq92TAkGhmx97O30uXEmC8ZOWgX+1oLXwI2e58Mo=
=t4by
-----END PGP SIGNATURE-----

--=-k1tc9H8IARu2iMhsBbaL--


--===============0175093883159265442==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============0175093883159265442==--

