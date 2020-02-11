Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 96995159C0A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Feb 2020 23:20:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3EC4286D73;
	Tue, 11 Feb 2020 22:20:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jnbe0nlsHOhj; Tue, 11 Feb 2020 22:20:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D31BC86CB4;
	Tue, 11 Feb 2020 22:20:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 728551BF82D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2020 22:20:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6B1F386C1A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2020 22:20:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZILpZKfr4eYX for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Feb 2020 22:20:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8018686C4A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2020 22:20:27 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Feb 2020 14:20:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,428,1574150400"; 
 d="p7s'?scan'208";a="226627163"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
 by fmsmga007.fm.intel.com with ESMTP; 11 Feb 2020 14:20:26 -0800
Received: from orsmsx162.amr.corp.intel.com (10.22.240.85) by
 ORSMSX103.amr.corp.intel.com (10.22.225.130) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 11 Feb 2020 14:20:26 -0800
Received: from orsmsx116.amr.corp.intel.com ([169.254.7.108]) by
 ORSMSX162.amr.corp.intel.com ([169.254.3.233]) with mapi id 14.03.0439.000;
 Tue, 11 Feb 2020 14:20:26 -0800
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [PATCH S39 01/15] ice: Validate config for
 SW DCB map
Thread-Index: AQHV1Tr1cBCLcSbivkWzc1OhfvJlGagW1zmAgABXVIA=
Date: Tue, 11 Feb 2020 22:20:25 +0000
Message-ID: <69197e331233673ea185bd5d48f9773ee72bf45e.camel@intel.com>
References: <20200127085927.13999-1-anthony.l.nguyen@intel.com>
 <5cea01f5-7e1b-f835-60b3-2dafa8b6e744@molgen.mpg.de>
In-Reply-To: <5cea01f5-7e1b-f835-60b3-2dafa8b6e744@molgen.mpg.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [10.166.244.155]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S39 01/15] ice: Validate config for SW
 DCB map
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: multipart/mixed; boundary="===============3614719371576313719=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============3614719371576313719==
Content-Language: en-US
Content-Type: multipart/signed; micalg=sha-1;
	protocol="application/x-pkcs7-signature"; boundary="=-6d8hIXDUOIp7zeLGGp4G"

--=-6d8hIXDUOIp7zeLGGp4G
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2020-02-11 at 18:07 +0100, Paul Menzel wrote:
> Dear Tony,
>=20
>=20
> On 2020-01-27 09:59, Tony Nguyen wrote:
> > From: Avinash Dayanand <avinash.dayanand@intel.com>
> >=20
> > Validate the inputs for SW DCB config received either via lldptool
> > or pcap
> > file. And don't apply DCB for bad bandwidth inputs or non-
> > contiguous TCs.
> > Without this patch, any config having bad inputs will cause the
> > loss of
> > link making PF unusable even after driver reload. Recoverable only
> > via
> > system reboot.
> >=20
> > Signed-off-by: Avinash Dayanand <avinash.dayanand@intel.com>
> > Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> > ---
> >  drivers/net/ethernet/intel/ice/ice_dcb_lib.c | 55
> > ++++++++++++++++++++
> >  drivers/net/ethernet/intel/ice/ice_dcb_lib.h |  1 +
> >  drivers/net/ethernet/intel/ice/ice_dcb_nl.c  |  7 +++
> >  3 files changed, 63 insertions(+)
> >=20
> > diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
> > b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
> > index 0f4ca813a7ab..bd361212921c 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
> > @@ -169,6 +169,56 @@ ice_peer_prep_tc_change(struct
> > ice_peer_dev_int *peer_dev_int,
> >  	return 0;
> >  }
> > =20
> > +/**
> > + * ice_dcb_bwchk - check if ETS bandwidth input parameters are
> > correct
> > + * @dcbcfg: pointer to DCB config structure
> > + */
> > +int ice_dcb_bwchk(struct ice_dcbx_cfg *dcbcfg)
> > +{
> > +	struct ice_dcb_ets_cfg *etscfg =3D &dcbcfg->etscfg;
> > +	u8 num_tc, total_bw =3D 0;
> > +	int i;
> > +
> > +	/* returns number of contigous TCs and 1 TC for non-contigous
> > TCs,
> > +	 * since at least 1 TC has to be configured
> > +	 */
> > +	num_tc =3D ice_dcb_get_num_tc(dcbcfg);
> > +
> > +	/* no bandwidth checks required if there's only one TC and
> > assign
> > +	 * all bandwidth to it i.e. to TC0 and return
>=20
> =E2=80=A6, so assign all bandwidth to TC0 and return
>=20

Will fix the comment to include this

> > +	 */
> > +	if (num_tc =3D=3D 1) {
> > +		etscfg->tcbwtable[0] =3D ICE_TC_MAX_BW;
> > +		return 0;
> > +	}
> > +	/* There are few rules with which TC bandwidth can be applied
> > for any TC
> > +	 * with a UP mapped to it.
> > +	 *	1. All TCs have zero BW - Valid
> > +	 *	   ex:  tcbw=3D0,0,0
> > +	 *	2. First few non-zero and rest zero BW - Valid
> > +	 *	   ex:  tcbw=3D100,0,0
> > +	 *	3. Zero BW in between 2 non-zero BW TCs - Invalid
> > +	 *	   ex:  tcbw=3D25,0,75
> > +	 */
> > +	for (i =3D 0; i < num_tc; i++) {
> > +		/* don't allow zero BW for TCs other than TC0 */
> > +		if (i && !etscfg->tcbwtable[i])
> > +			goto err;
>=20
> As the error handling is just `return -EINVAL`, please do that
> directly
> here.

After talking to others this check is not needed so I'll take it out
altogether.

> > +
> > +		if (etscfg->tsatable[i] =3D=3D ICE_IEEE_TSA_ETS)
> > +			total_bw +=3D etscfg->tcbwtable[i];
> > +	}
> > +
> > +	 /* total bandwidth should be equal to 100 */
> > +	if (total_bw !=3D ICE_TC_MAX_BW)
> > +		goto err;
>=20
> Ditto.
>=20
> Also, why not print an error for this case?

Will do both.

> > +
> > +	return 0;
> > +
> > +err:
> > +	return -EINVAL;
> > +}
> > +
> >  /**
> >   * ice_pf_dcb_cfg - Apply new DCB configuration
> >   * @pf: pointer to the PF struct
> > @@ -206,6 +256,11 @@ int ice_pf_dcb_cfg(struct ice_pf *pf, struct
> > ice_dcbx_cfg *new_cfg, bool locked)
> >  	/* Notify capable peers about impending change to TCs */
> >  	ice_for_each_peer(pf, NULL, ice_peer_prep_tc_change);
> > =20
> > +	if (ice_dcb_bwchk(new_cfg)) {
> > +		dev_err(dev, "Invalid config, not applying DCB\n");
>=20
> It=E2=80=99d be useful to know what is incorrect. So, maybe move the erro=
r
> message
> into the function.

Will include messaging in the function on what is incorrect.

>=20
> > +		return -EINVAL;
> > +	}
> > +
> >  	/* Store old config in case FW config fails */
> >  	old_cfg =3D kmemdup(curr_cfg, sizeof(*old_cfg), GFP_KERNEL);
> >  	if (!old_cfg)
> > diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.h
> > b/drivers/net/ethernet/intel/ice/ice_dcb_lib.h
> > index bb53edf462ba..2b900da27f57 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.h
> > +++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.h
> > @@ -20,6 +20,7 @@ u8 ice_dcb_get_num_tc(struct ice_dcbx_cfg
> > *dcbcfg);
> >  u8 ice_dcb_get_tc(struct ice_vsi *vsi, int queue_index);
> >  int
> >  ice_pf_dcb_cfg(struct ice_pf *pf, struct ice_dcbx_cfg *new_cfg,
> > bool locked);
> > +int ice_dcb_bwchk(struct ice_dcbx_cfg *dcbcfg);
> >  void ice_pf_dcb_recfg(struct ice_pf *pf);
> >  void ice_vsi_cfg_dcb_rings(struct ice_vsi *vsi);
> >  int ice_init_pf_dcb(struct ice_pf *pf, bool locked);
> > diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_nl.c
> > b/drivers/net/ethernet/intel/ice/ice_dcb_nl.c
> > index b61aba428adb..a45e8abef8f3 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_dcb_nl.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_dcb_nl.c
> > @@ -95,6 +95,12 @@ static int ice_dcbnl_setets(struct net_device
> > *netdev, struct ieee_ets *ets)
> >  		new_cfg->etsrec.prio_table[i] =3D ets->reco_prio_tc[i];
> >  	}
> > =20
> > +	if (ice_dcb_bwchk(new_cfg)) {
> > +		netdev_err(netdev, "Invalid config, not applying
> > DCB\n");
> > +		err =3D -EINVAL;
> > +		goto ets_out;
>=20
> Is that good style to use goto in this case? Why can=E2=80=99t it be put
> after
> `ice_pf_dcb_cfg()`?

We need to validate the config before applying it, which is what
ice_pf_dcb_cfg() does. We can't apply the config without knowing that
it's a good configuration.

For the goto, we're trying to have a single point of unlock/exit.

Thanks,
Tony

--=-6d8hIXDUOIp7zeLGGp4G
Content-Type: application/x-pkcs7-signature; name="smime.p7s"
Content-Disposition: attachment; filename="smime.p7s"
Content-Transfer-Encoding: base64

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
UDSWFPJn1IonMumCuP0DYWGYiGS8dKTJMMh2WA2XVewXVn0JQTWQDpckAOkmi+A0RwpZzYJ0Y3gT
AgMBAAGjggI2MIICMjAdBgNVHQ4EFgQUydTU8+nnPeJE0ndEkV7rlhV6p30wHwYDVR0jBBgwFoAU
HmkqtNwo/kcYTiELP7ysES/wmPUwZQYDVR0fBF4wXDBaoFigVoZUaHR0cDovL3d3dy5pbnRlbC5j
b20vcmVwb3NpdG9yeS9DUkwvSW50ZWwlMjBFeHRlcm5hbCUyMEJhc2ljJTIwSXNzdWluZyUyMENB
JTIwNEEuY3JsMIGeBggrBgEFBQcBAQSBkTCBjjBpBggrBgEFBQcwAoZdaHR0cDovL3d3dy5pbnRl
bC5jb20vcmVwb3NpdG9yeS9jZXJ0aWZpY2F0ZXMvSW50ZWwlMjBFeHRlcm5hbCUyMEJhc2ljJTIw
SXNzdWluZyUyMENBJTIwNEEuY3J0MCEGCCsGAQUFBzABhhVodHRwOi8vb2NzcC5pbnRlbC5jb20w
CwYDVR0PBAQDAgeAMDwGCSsGAQQBgjcVBwQvMC0GJSsGAQQBgjcVCIbDjHWEmeVRg/2BKIWOn1OC
kcAJZ4HevTmV8EMCAWQCAQkwHwYDVR0lBBgwFgYIKwYBBQUHAwQGCisGAQQBgjcKAwwwKQYJKwYB
BAGCNxUKBBwwGjAKBggrBgEFBQcDBDAMBgorBgEEAYI3CgMMMFEGA1UdEQRKMEigKgYKKwYBBAGC
NxQCA6AcDBphbnRob255Lmwubmd1eWVuQGludGVsLmNvbYEaYW50aG9ueS5sLm5ndXllbkBpbnRl
bC5jb20wDQYJKoZIhvcNAQEFBQADggEBALLF5b7PLd6kEWuQRkEq6eZpohKWRkfC9DyLiwS+HaeH
9euNcIqpV4xrMXM6mPqs3AHRb9ibqUPo3wQMtHph35RRsmY7ENk9FxF/W8Ov5ZVPyW0rFiRsnr1C
QVc08YqXp1dlbQGf8nvJn8ryCwjNpw0CTQcGHXrL/YnboLu8+R9RdBue/HIlP4g0pyAC/8YOie04
PVo4flU2CGMYilm1euQ6OV8WRA2CKgvRVp/DZEzTqnmDvy12efG74bmMzXAvDv2I53TR5ltDpx5X
B8uO1XlhOrj+Z3mSi85eblWWhJlq6+TQH/hZWSiyZH2lo3J49oHClTlk86GUEIUp/sf5v5cxggIX
MIICEwIBATCBkDB5MQswCQYDVQQGEwJVUzELMAkGA1UECBMCQ0ExFDASBgNVBAcTC1NhbnRhIENs
YXJhMRowGAYDVQQKExFJbnRlbCBDb3Jwb3JhdGlvbjErMCkGA1UEAxMiSW50ZWwgRXh0ZXJuYWwg
QmFzaWMgSXNzdWluZyBDQSA0QQITMwAA0J5PWjT/SLEH2wAAAADQnjAJBgUrDgMCGgUAoF0wGAYJ
KoZIhvcNAQkDMQsGCSqGSIb3DQEHATAcBgkqhkiG9w0BCQUxDxcNMjAwMjExMjIyMDIzWjAjBgkq
hkiG9w0BCQQxFgQUJggZOioqJoW/HkdAnz6OHjhxDu0wDQYJKoZIhvcNAQEBBQAEggEASwajBPL3
wh6GI/6hmpGamKx/IQAe1ThXF0kAqSNKE9nejSx0qy7h5ta4g+vRjbqY0w5P5+5LaKmKn3nC/1xr
14Nty9zuQfa7l/7llN6FoW4P7sN2Gn+w7F/9Xou5H5g+dIu6GZl6Oq4zcr37CqNlLMUdPKRQ6yXa
RMiZPLoScAoPukqown0mTnv2GBVAgezFKJEExG/XSlRy9g6ykPKB6/91xLh5Cp/tPFYie19dQnHl
KN77z70uXDKzDD0nOTdlx5KOc4IlYtgIPmCQivH1JlWYrSZVgh7fhRKT7QOnHbl31TkCPO210cui
PrgkzutNJFgDC3Jj4Q2DGcY75k6ZZwAAAAAAAA==


--=-6d8hIXDUOIp7zeLGGp4G--

--===============3614719371576313719==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============3614719371576313719==--
