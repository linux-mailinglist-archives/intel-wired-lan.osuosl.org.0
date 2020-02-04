Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C42CD152012
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Feb 2020 18:56:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 319F98506F;
	Tue,  4 Feb 2020 17:56:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qNq5gsm0O5Gd; Tue,  4 Feb 2020 17:56:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 75C6084C3C;
	Tue,  4 Feb 2020 17:56:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 724261BF288
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Feb 2020 17:56:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 696EF85077
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Feb 2020 17:56:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kXghVHSfZi+3 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Feb 2020 17:56:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 385F484FA7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Feb 2020 17:56:49 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Feb 2020 09:56:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,402,1574150400"; 
 d="p7s'?scan'208";a="263925007"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
 by fmsmga002.fm.intel.com with ESMTP; 04 Feb 2020 09:56:47 -0800
Received: from orsmsx126.amr.corp.intel.com (10.22.240.126) by
 ORSMSX103.amr.corp.intel.com (10.22.225.130) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 4 Feb 2020 09:56:47 -0800
Received: from orsmsx116.amr.corp.intel.com ([169.254.7.209]) by
 ORSMSX126.amr.corp.intel.com ([169.254.4.210]) with mapi id 14.03.0439.000;
 Tue, 4 Feb 2020 09:56:47 -0800
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Allan, Bruce W" <bruce.w.allan@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S37 v2 01/15] ice: Fix DCB rebuild
 after reset
Thread-Index: AQHV2IOC/teG/btnnUGU15qWonwLg6gL0xkAgAAK54A=
Date: Tue, 4 Feb 2020 17:56:46 +0000
Message-ID: <ed6d6d50b8e023f1381d8bdaf7bc4404ecc3ed92.camel@intel.com>
References: <20200131133905.42518-1-anthony.l.nguyen@intel.com>
 <804857E1F29AAC47BF68C404FC60A184010AF5CFED@ORSMSX113.amr.corp.intel.com>
In-Reply-To: <804857E1F29AAC47BF68C404FC60A184010AF5CFED@ORSMSX113.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [10.166.244.155]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S37 v2 01/15] ice: Fix DCB rebuild
 after reset
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
Content-Type: multipart/mixed; boundary="===============5411435597427123423=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============5411435597427123423==
Content-Language: en-US
Content-Type: multipart/signed; micalg=sha-1;
	protocol="application/x-pkcs7-signature"; boundary="=-IrMOBTu+gEjSPUcFPDID"

--=-IrMOBTu+gEjSPUcFPDID
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2020-02-04 at 09:17 -0800, Allan, Bruce W wrote:
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On
> > Behalf Of
> > Tony Nguyen
> > Sent: Friday, January 31, 2020 5:39 AM
> > To: intel-wired-lan@lists.osuosl.org
> > Subject: [Intel-wired-lan] [PATCH S37 v2 01/15] ice: Fix DCB
> > rebuild after reset
> >=20
> > From: Dave Ertman <david.m.ertman@intel.com>
> >=20
> > The function ice_dcb_rebuild had some logic
> > flaws in it, and also didn't differentiate
> > between FW and SW modes needs.
> >=20
> > For FW flow, the willing setting was being
> > forced to OFF and left that way.  Unwilling
> > in DCB FW mode is not a supported model.
> >=20
> > Leave the config alone and use the return value
> > from the set command to determine if setting the
> > config was successful.
> >=20
> > The SW DCB flow does not need to need to register
> > for MIB change events (as they are not used in
> > SW mode).
> >=20
> > Use !is_sw_lldp checks to only perform FW specific
> > task while in FW mode.
> >=20
> > Also adding a reapplication of the current DCB
> > config after a link event.  Some NVMs are not
> > maintaining their DCB configs across link events.
> >=20
> > Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> > ---
> > v2:
> > - Add missing mutex_unlock() in error path
> > ---
> >  drivers/net/ethernet/intel/ice/ice_dcb_lib.c | 83 +++++++++-------
> > ----
> >  drivers/net/ethernet/intel/ice/ice_main.c    |  1 +
> >  2 files changed, 36 insertions(+), 48 deletions(-)
> >=20
> > diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
> > b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
> > index 9401f2051293..8e96c722b065 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
> > @@ -339,9 +339,9 @@ ice_dcb_need_recfg(struct ice_pf *pf, struct
> > ice_dcbx_cfg *old_cfg,
> >   */
> >  void ice_dcb_rebuild(struct ice_pf *pf)
> >  {
> > -	struct ice_dcbx_cfg *local_dcbx_cfg, *desired_dcbx_cfg,
> > *prev_cfg;
> >  	struct ice_aqc_port_ets_elem buf =3D { 0 };
> >  	struct device *dev =3D ice_pf_to_dev(pf);
> > +	struct ice_dcbx_cfg *err_cfg;
> >  	enum ice_status ret;
> >=20
> >  	ret =3D ice_query_port_ets(pf->hw.port_info, &buf, sizeof(buf),
> > NULL);
> > @@ -354,53 +354,25 @@ void ice_dcb_rebuild(struct ice_pf *pf)
> >  	if (!test_bit(ICE_FLAG_DCB_ENA, pf->flags))
> >  		return;
> >=20
> > -	local_dcbx_cfg =3D &pf->hw.port_info->local_dcbx_cfg;
> > -	desired_dcbx_cfg =3D &pf->hw.port_info->desired_dcbx_cfg;
> > +	mutex_lock(&pf->tc_mutex);
> >=20
> > -	/* Save current willing state and force FW to unwilling */
> > -	local_dcbx_cfg->etscfg.willing =3D 0x0;
> > -	local_dcbx_cfg->pfc.willing =3D 0x0;
> > -	local_dcbx_cfg->app_mode =3D ICE_DCBX_APPS_NON_WILLING;
> > +	if (!pf->hw.port_info->is_sw_lldp)
> > +		ice_cfg_etsrec_defaults(pf->hw.port_info);
> >=20
> > -	ice_cfg_etsrec_defaults(pf->hw.port_info);
> >  	ret =3D ice_set_dcb_cfg(pf->hw.port_info);
> >  	if (ret) {
> > -		dev_err(dev, "Failed to set DCB to unwilling\n");
> > +		dev_err(dev, "Failed to set DCB config in rebuild\n");
> >  		goto dcb_error;
> >  	}
> >=20
> > -	/* Retrieve DCB config and ensure same as current in SW */
> > -	prev_cfg =3D kmemdup(local_dcbx_cfg, sizeof(*prev_cfg),
> > GFP_KERNEL);
> > -	if (!prev_cfg)
> > -		goto dcb_error;
> > -
> > -	ice_init_dcb(&pf->hw, true);
> > -	if (pf->hw.port_info->dcbx_status =3D=3D ICE_DCBX_STATUS_DIS)
> > -		pf->hw.port_info->is_sw_lldp =3D true;
> > -	else
> > -		pf->hw.port_info->is_sw_lldp =3D false;
> > -
> > -	if (ice_dcb_need_recfg(pf, prev_cfg, local_dcbx_cfg)) {
> > -		/* difference in cfg detected - disable DCB till next
> > MIB */
> > -		dev_err(dev, "Set local MIB not accurate\n");
> > -		kfree(prev_cfg);
> > -		goto dcb_error;
> > +	if (!pf->hw.port_info->is_sw_lldp) {
> > +		ret =3D ice_cfg_lldp_mib_change(&pf->hw, true);
> > +		if (ret && !pf->hw.port_info->is_sw_lldp) {
> > +			dev_err(dev, "Failed to register for MIB
> > changes\n");
> > +			goto dcb_error;
> > +		}
> >  	}
> >=20
> > -	/* fetched config congruent to previous configuration */
> > -	kfree(prev_cfg);
> > -
> > -	/* Set the local desired config */
> > -	if (local_dcbx_cfg->dcbx_mode =3D=3D ICE_DCBX_MODE_CEE)
> > -		memcpy(local_dcbx_cfg, desired_dcbx_cfg,
> > -		       sizeof(*local_dcbx_cfg));
> > -
> > -	ice_cfg_etsrec_defaults(pf->hw.port_info);
> > -	ret =3D ice_set_dcb_cfg(pf->hw.port_info);
> > -	if (ret) {
> > -		dev_err(dev, "Failed to set desired config\n");
> > -		goto dcb_error;
> > -	}
> >  	dev_info(dev, "DCB restored after reset\n");
> >  	ret =3D ice_query_port_ets(pf->hw.port_info, &buf, sizeof(buf),
> > NULL);
> >  	if (ret) {
> > @@ -408,26 +380,32 @@ void ice_dcb_rebuild(struct ice_pf *pf)
> >  		goto dcb_error;
> >  	}
> >=20
> > +	mutex_unlock(&pf->tc_mutex);
> > +
> >  	return;
> >=20
> >  dcb_error:
> >  	dev_err(dev, "Disabling DCB until new settings occur\n");
> > -	prev_cfg =3D kzalloc(sizeof(*prev_cfg), GFP_KERNEL);
> > -	if (!prev_cfg)
> > +	err_cfg =3D kzalloc(sizeof(*err_cfg), GFP_KERNEL);
> > +	if (!err_cfg) {
> > +		mutex_unlock(&pf->tc_mutex);
> >  		return;
> > +	}
> >=20
> > -	prev_cfg->etscfg.willing =3D true;
> > -	prev_cfg->etscfg.tcbwtable[0] =3D ICE_TC_MAX_BW;
> > -	prev_cfg->etscfg.tsatable[0] =3D ICE_IEEE_TSA_ETS;
> > -	memcpy(&prev_cfg->etsrec, &prev_cfg->etscfg, sizeof(prev_cfg-
> > > etsrec));
> >=20
> > +	err_cfg->etscfg.willing =3D true;
> > +	err_cfg->etscfg.tcbwtable[0] =3D ICE_TC_MAX_BW;
> > +	err_cfg->etscfg.tsatable[0] =3D ICE_IEEE_TSA_ETS;
> > +	memcpy(&err_cfg->etsrec, &err_cfg->etscfg, sizeof(err_cfg-
> > >etsrec));
> >  	/* Coverity warns the return code of ice_pf_dcb_cfg() is not
> > checked
> >  	 * here as is done for other calls to that function. That check
> > is
> >  	 * not necessary since this is in this function's error cleanup
> > path.
> >  	 * Suppress the Coverity warning with the following comment...
> >  	 */
> >  	/* coverity[check_return] */
> > -	ice_pf_dcb_cfg(pf, prev_cfg, false);
> > -	kfree(prev_cfg);
> > +	ice_pf_dcb_cfg(pf, err_cfg, false);
> > +	kfree(err_cfg);
> > +
> > +	mutex_unlock(&pf->tc_mutex);
> >  }
> >=20
> >  /**
> > @@ -842,6 +820,8 @@ ice_dcb_process_lldp_set_mib_change(struct
> > ice_pf
> > *pf,
> >  		}
> >  	}
> >=20
> > +	mutex_lock(&pf->tc_mutex);
>=20
> This lock is unlocked with most but not all return() function exit
> points.  That needs fixing,
> and it would be better if there was a single function exit point
> where things like the locked
> mutex and locked rtnl are unrolled.

Thanks for the feedback Bruce. I'll make those changes and send out a
v3.

-Tony

--=-IrMOBTu+gEjSPUcFPDID
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
KoZIhvcNAQkDMQsGCSqGSIb3DQEHATAcBgkqhkiG9w0BCQUxDxcNMjAwMjA0MTc1NjQzWjAjBgkq
hkiG9w0BCQQxFgQUKHqG4br+2v8xbABC8b2VZd8bZ40wDQYJKoZIhvcNAQEBBQAEggEAYpzy+2Fl
cW/+QmOajPe5KaIXWjGHxMszYkVBG4tSkNg2pn8cMO21ywVC3N/QD7mqfrd2QugSuOB5f1tSTXlF
BmLlAFEq8/GJgNbHdMNyVLvZhar5qroNMOYXtphQZk4mxh0qsdGIl3hqO74G379eLeqGSpgqx92q
MvQaR8ulbLf0f6Mq6TwKUgxNK5RkD4cDgcDcORnwLCKublXVYkcf3MmAbgwkkU7dS4I3UVoxs03k
Oj0XFRoaQ05Tnz/gEb56SI5jKUF3BocuyuMdJnNdH0vGWJSB3x8BWKXuOkzMWKNc9dpLcxODoxzx
WhlRCnw/CM7J7oQL90htYxNytcP8+AAAAAAAAA==


--=-IrMOBTu+gEjSPUcFPDID--

--===============5411435597427123423==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============5411435597427123423==--
