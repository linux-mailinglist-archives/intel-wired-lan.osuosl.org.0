Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E8DB5393259
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 May 2021 17:22:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6C6B760BCE;
	Thu, 27 May 2021 15:22:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UL5WkD0sYuyk; Thu, 27 May 2021 15:22:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E8F5660ADD;
	Thu, 27 May 2021 15:22:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DF8371BF340
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 May 2021 15:22:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CDED540297
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 May 2021 15:22:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 80cwhGycE-1k for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 May 2021 15:22:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9692440283
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 May 2021 15:22:17 +0000 (UTC)
IronPort-SDR: Yp19/LH2ZDI8daS7YZe5wHjE4Qb3zVwETYpe6F0c3Gggz18479gO8bNDO1WIBrkotqrI8epmLA
 6518sRDTF/Qw==
X-IronPort-AV: E=McAfee;i="6200,9189,9996"; a="199720107"
X-IronPort-AV: E=Sophos;i="5.82,334,1613462400"; d="scan'208";a="199720107"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2021 08:22:16 -0700
IronPort-SDR: ujtK3tLcAgGHkbc3Gm3fbCycBBz3oyGKPwPbfE+5p9jrMqzT69WoeZwikOxel09RyuNCkfQh71
 1wgwAQIEICuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,334,1613462400"; d="scan'208";a="548001021"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga001.fm.intel.com with ESMTP; 27 May 2021 08:22:16 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Thu, 27 May 2021 08:22:16 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Thu, 27 May 2021 08:22:16 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.174)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Thu, 27 May 2021 08:22:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gOVJDCkqU4drwJPCWwAvYoYkFkrUg8lrcJPBMY05Mu+ysi4zkq1fzMqQyTX3+TsHklOJLtY0ilYIeUkDwJOYLxRNKAvSXYRtHZQZcJTy3h2MxbbTi/5qqkO7FF1nCujAwgowfmd28gn15yKcHIQb2NDwWKDW15EuXImhqt14pAQXG4NpHSqLtYmoZXtxaM7GKSfTCx5Ld+RBN9xqVEhTJ72L2nmTAihoojietnCfFzmUSEhu0a1+NqlxDSelBlFkgKPGiUyX3EgmpDlp0pDbFhXs1kdznro92BX6kiNEdUIgLHbg823myC3NyCzRalvbRDaMWK7XFjhn6AafJZgxrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WwQzES4WgpFSEACMBUA+kTYTY2gUqY48g/Vq+R+mj5o=;
 b=bi3qqFasuSO+egpS2XVCX5373cpjDofvlXKUykQouyBUk2mxFUvHtOqGnKSKkYIakf++ogVdWYEQYjIwDNsfiq8js5Ju15OmfJvajHOxJO2q9EIBC/4BfIERv6SpL4ce9aT3tJJNcAYUPJyEEuhSGXCpjjtoJjGMlu3xnowYzgNyv4xNiXJdbJEMukVj5ylWGZ/tka1p0+JerkxB3Ge9aZkImt6Q+R9CB5zXnvr+ximptZslcBesfDKlBQ8CLHRlJE3LORhXU+WsENCXH23r0VeCIiVS+TIyNhjngFZzkwFK9AOnTswv6pOEOBoVuS59SnQEbP+C/4p94CHZHimxBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WwQzES4WgpFSEACMBUA+kTYTY2gUqY48g/Vq+R+mj5o=;
 b=sspFuqN3S3WXDtPy1ac6YBJXkz7xpJfH8a9FIKrk3EzqbTv5v2wqCqnNZG9iLh2X8lo6XJjLbzEZyjxumORgjsXhhmWsso8lvdi9KL9GCp6YEdZUONozr+u7hN3ad9J3csVTRmaXYM8MP8R/dgH5cIMgN2JImZOA/U7guuwhvRg=
Received: from CY4PR11MB1576.namprd11.prod.outlook.com (2603:10b6:910:d::15)
 by CY4PR1101MB2309.namprd11.prod.outlook.com (2603:10b6:910:1a::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4150.27; Thu, 27 May
 2021 15:22:12 +0000
Received: from CY4PR11MB1576.namprd11.prod.outlook.com
 ([fe80::8177:30c8:3373:c4ea]) by CY4PR11MB1576.namprd11.prod.outlook.com
 ([fe80::8177:30c8:3373:c4ea%12]) with mapi id 15.20.4150.027; Thu, 27 May
 2021 15:22:12 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S53 02/15] ice: Manage VF's MAC address
 for both legacy and new cases
Thread-Index: AQHWjS/4Ifp3/McnmUC0JeCuF90/BKr4/ZMg
Date: Thu, 27 May 2021 15:22:12 +0000
Message-ID: <CY4PR11MB1576E401183BA05F9E34F9FAAB239@CY4PR11MB1576.namprd11.prod.outlook.com>
References: <20200917201347.81570-1-anthony.l.nguyen@intel.com>
 <20200917201347.81570-2-anthony.l.nguyen@intel.com>
In-Reply-To: <20200917201347.81570-2-anthony.l.nguyen@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [188.147.96.41]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8fa4ea98-0417-4402-d992-08d9212333c5
x-ms-traffictypediagnostic: CY4PR1101MB2309:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR1101MB23098EC105F28A1530E24DDCAB239@CY4PR1101MB2309.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1728;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GSZH6BCrqq4H0owFLLKmXOpRw5ZBEhwe12SonnqrvXYM6Ar2x1pRdefRuDBxjxAhVM4FKqfJ4rYqhxMB4vfAIpClmckarUFHJIt4m6lYvO1YF3jgrNAt+ccQ3T3UPN2yj6prqcDSssQW/RCHjYZzpS5E/PwjcozJwVKqBrc6T+kXGTUoB6nySm71O+hhW6nzK23NciGcPxpK9bT9bdpvn7UuuwZYeHsGCf6IHZ54VMxBmdli7oxlG91pf70jo8wER1xTLcs6RwQIaeH2QshstczWRP0sVMGazUD+oTC6aGAQ9XPnCFYh6mT8fxDwBMDEkZSyhJ0bLelOJKsV3zljfygF/d+A7gTqwTZocurQ2/02HKyPQfmWbSdEGgCc8Ea8Di9EnN2UqqPlf6HE9SN1eKtbfKGL6sac0Lvs0wGsWPKaL7Qq+i4dVuu3NoUtVg5wTReaPZ9QzClnQWTxLfRo4RKcLMM2kL/zyRXeniu6ZtDRO8gJ3ClEIxffbUmpkLGeYOL6F1e4HI9vO/smcC2njQ8LxRnyzAB6hoa/xvh1eMba1POkIkDiCa89w97FrQ2JZSUhVa/pxu5fFDf8X7xKuGYT39NiVE83wuGiaX8gmJ0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR11MB1576.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(136003)(346002)(396003)(376002)(39860400002)(5660300002)(38100700002)(66574015)(71200400001)(83380400001)(7696005)(8676002)(110136005)(55016002)(316002)(478600001)(2906002)(30864003)(186003)(76116006)(26005)(9686003)(33656002)(66446008)(86362001)(122000001)(66476007)(52536014)(53546011)(66556008)(64756008)(8936002)(66946007)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?iso-8859-2?Q?+v3FcnnjPJU2NXpbFhqKqD+eGIg+I8SoJ6hEH2IGiR1e0ONBn1upXbHely?=
 =?iso-8859-2?Q?mHVcJ4WsBZr4TFz3Z0q/0EmdVYul7Y921qswBcYCQL1SEAhF0XtQJs+8hZ?=
 =?iso-8859-2?Q?pdaSJl93xmcsWBOfGbY1PnmkWSjijEiEPVx8cf2isrW2CzuTuDgpTn3cm4?=
 =?iso-8859-2?Q?plUR8uXTzCfNL/mx8ECmFBFVhvEwflVI4ZvlmDh8w6xILo4XmFC+luwMeh?=
 =?iso-8859-2?Q?Aei87zOMU1+3CDukxZ+SXUbHZ3779Mvp4YiW14LeW3wbVFk2LLrOA/ubT+?=
 =?iso-8859-2?Q?BYJ5dB0eKG2OSer3kREQYjB4qqIMZPOvClGkqMQI9f2o3924gPbcrDIHJw?=
 =?iso-8859-2?Q?DHTUZr6cjA411XwKTTpoD3tjAxBhEvv6cqynXEVzE/FY4ZBx5U4Qht6RXk?=
 =?iso-8859-2?Q?cvS+M47mJn04kucbQ8A0BIjbHPWgnRLyPUjoOPskMLK0Tqw1LjB5axfopB?=
 =?iso-8859-2?Q?7PG0Tw/mxSApIS8eveECob+N7ERL3O+X3xhW6SuL8/jynAfzJpbl55PVUn?=
 =?iso-8859-2?Q?45dK7VSs1Mptmf7PzlBVmjeOIpH3dL+DuV+oONl2j8W0jasR9l94+MoaOF?=
 =?iso-8859-2?Q?iVSabLErtZoV/Rn+aW14TPUGTWrKzJYVVsYih93cZ/+qrfxRAhJQqedq8J?=
 =?iso-8859-2?Q?trawLyecGdDvyjNsZY3fhwGlMFtqUyX29ogEdGKrOhVSWMxXTNEHhtHpWP?=
 =?iso-8859-2?Q?ZW6rj0MDTmlvcHRV0Z2KCByFhw6+93BI3ErXE6f7MZzNb43MS/VH4i9CqB?=
 =?iso-8859-2?Q?TIiyuzWEqEJtzloYZHIka3IujihHXI4IW3/GKqww4swaYFzRiqYWzKD3Gl?=
 =?iso-8859-2?Q?KAXdnDEBVo76ghnWz7og2POHjeMgurnFPFlMtpqwVk44J/vSK4fq8I+wi2?=
 =?iso-8859-2?Q?Tqq/NKEAqSrjuNsY2fdvHHZKVUYGvO9J1tOiEcV183NSG/sGBa+uNbO1Tj?=
 =?iso-8859-2?Q?6L+jNzVClzYdy7fFIYhAj/nPMrbnZvy48lqzAhUfxRQgpyg7aMzS4DkcpN?=
 =?iso-8859-2?Q?SrOmC+toJj2jBhugMdBEce4YQjUKroto61Wk/uLwC9UPbS/v4b+HEoDMLF?=
 =?iso-8859-2?Q?qv0sUSkx34z7iXxct4bwKG7Y3+RpK8KNGIFDg8GgRLh1HPHU6MKFWJ7c96?=
 =?iso-8859-2?Q?olJBwuPjzzOX2MOVFu2prQYlnnIBVYk4Dyx13YnnazMY1cgvlgibiHyxAH?=
 =?iso-8859-2?Q?yjJMaDc66A0KicYR2BTDhOkBiRn3J5Pl4kXNzJBYHdlLDrtv5xT9AWlbxO?=
 =?iso-8859-2?Q?mPMAsESfQrKQWKrJJ3N+wS/UCG2ekzAsiv0UP1iq8y8yAqOqzWNV4ryR3i?=
 =?iso-8859-2?Q?I+7NLx/0ieITd3p++KU1N9dfbbtj+w4ya4fJG4nZOSHO9To0TFqtQKtmnn?=
 =?iso-8859-2?Q?JWcP3NMU7S?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR11MB1576.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8fa4ea98-0417-4402-d992-08d9212333c5
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 May 2021 15:22:12.4492 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: p0PURTP1itFR9unc42/8pTQkjQA6c+cjTUXDWpitTa/C1D0ZzbrRbq6nnSg8FuHWcKztVntHrMpNZqcItJ8Bw2IsGIzhOliGHhPMEBL9VcQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1101MB2309
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S53 02/15] ice: Manage VF's MAC
 address for both legacy and new cases
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
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Tony Nguyen
> Sent: czwartek, 17 wrze=B6nia 2020 22:14
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S53 02/15] ice: Manage VF's MAC address
> for both legacy and new cases
> =

> From: Brett Creeley <brett.creeley@intel.com>
> =

> Currently there is no way for a VF driver to specify if it wants to chang=
e it's
> hardware address. New bits are being added to virtchnl.h in struct
> virtchnl_ether_addr that allow for the VF to correctly communicate this
> information. However, legacy VF drivers that don't support the new
> virtchnl.h bits still need to be supported. Make a best effort attempt at
> saving the VF's primary/device address in the legacy case and depend on t=
he
> VIRTCHNL_ETHER_ADDR_PRIMARY type for the new case.
> =

> Legacy case - If a unicast MAC is being added and the hw_lan_addr.addr is
> empty, then populate it. This assumes that the address is the VF's hardwa=
re
> address. If a unicast MAC is being added and the hw_lan_addr.addr is not
> empty, then cache it in the legacy_last_added_umac.addr. If a unicast MAC=
 is
> being deleted and it matches the hw_lan_addr.addr, then zero the
> hw_lan_addr.addr.
> Also, if the legacy_last_added_umac.addr has not expired, copy the
> legacy_last_added_umac.addr into the hw_lan_addr.addr. This is done
> because we cannot guarantee the order of VIRTCHNL_OP_ADD_ETH_ADDR
> and VIRTCHNL_OP_DEL_ETH_ADDR.
> =

> New case - If a unicast MAC is being added and it's specified as
> VIRTCHNL_ETHER_ADDR_PRIMARY, then replace the current
> hw_lan_addr.addr. If a unicast MAC is being deleted and it's type is spec=
ified
> as VIRTCHNL_ETHER_ADDR_PRIMARY, then zero the hw_lan_addr.addr.
> =

> Untrusted VFs - Only allow above legacy/new changes to their hardware
> address if the PF has not set it administratively via iproute2.
> =

> Trusted VFs - Always allow above legacy/new changes to their hardware
> address even if the PF has administratively set it via iproute2.
> =

> Also, change the variable dflt_lan_addr to hw_lan_addr to clearly represe=
nt
> the purpose of this variable since it's purpose is to act as a hardware
> programmed MAC address for the VF.
> =

> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 158 +++++++++++++++---
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.h  |   8 +-
>  2 files changed, 140 insertions(+), 26 deletions(-)
> =

> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> index c8b2705a8aed..627c4e36c1bd 100644
> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> @@ -637,12 +637,12 @@ static int ice_vf_rebuild_host_mac_cfg(struct
> ice_vf *vf)
> =

>  	vf->num_mac++;
> =

> -	if (is_valid_ether_addr(vf->dflt_lan_addr.addr)) {
> -		status =3D ice_fltr_add_mac(vsi, vf->dflt_lan_addr.addr,
> +	if (is_valid_ether_addr(vf->hw_lan_addr.addr)) {
> +		status =3D ice_fltr_add_mac(vsi, vf->hw_lan_addr.addr,
>  					  ICE_FWD_TO_VSI);
>  		if (status) {
>  			dev_err(dev, "failed to add default unicast MAC filter
> %pM for VF %u, error %s\n",
> -				&vf->dflt_lan_addr.addr[0], vf->vf_id,
> +				&vf->hw_lan_addr.addr[0], vf->vf_id,
>  				ice_stat_str(status));
>  			return ice_status_to_errno(status);
>  		}
> @@ -1965,7 +1965,7 @@ static int ice_vc_get_vf_res_msg(struct ice_vf *vf,
> u8 *msg)
>  	vfres->vsi_res[0].vsi_type =3D VIRTCHNL_VSI_SRIOV;
>  	vfres->vsi_res[0].num_queue_pairs =3D vsi->num_txq;
>  	ether_addr_copy(vfres->vsi_res[0].default_mac_addr,
> -			vf->dflt_lan_addr.addr);
> +			vf->hw_lan_addr.addr);
> =

>  	/* match guest capabilities */
>  	vf->driver_caps =3D vfres->vf_cap_flags; @@ -3018,20 +3018,94 @@
> static bool ice_can_vf_change_mac(struct ice_vf *vf)
>  	return true;
>  }
> =

> +/**
> + * ice_vc_ether_addr_type - get type of virtchnl_ether_addr
> + * @vc_ether_addr: used to extract the type  */ static u8
> +ice_vc_ether_addr_type(struct virtchnl_ether_addr *vc_ether_addr) {
> +	return (vc_ether_addr->type &
> VIRTCHNL_ETHER_ADDR_TYPE_MASK); }
> +
> +/**
> + * ice_is_vc_addr_legacy - check if the MAC address is from an older VF
> + * @vc_ether_addr: VIRTCHNL structure that contains MAC and type  */
> +static bool ice_is_vc_addr_legacy(struct virtchnl_ether_addr
> +*vc_ether_addr) {
> +	u8 type =3D ice_vc_ether_addr_type(vc_ether_addr);
> +
> +	return (type =3D=3D VIRTCHNL_ETHER_ADDR_LEGACY); }
> +
> +/**
> + * ice_is_vc_addr_primary - check if the MAC address is the VF's
> +primary MAC
> + * @vc_ether_addr: VIRTCHNL structure that contains MAC and type
> + *
> + * This function should only be called when the MAC address in
> + * virtchnl_ether_addr is a valid unicast MAC  */ static bool
> +ice_is_vc_addr_primary(struct virtchnl_ether_addr __maybe_unused
> +*vc_ether_addr) {
> +	u8 type =3D ice_vc_ether_addr_type(vc_ether_addr);
> +
> +	return (type =3D=3D VIRTCHNL_ETHER_ADDR_PRIMARY); }
> +
> +/**
> + * ice_vfhw_mac_add - update the VF's cached hardware MAC if allowed
> + * @vf: VF to update
> + * @vc_ether_addr: structure from VIRTCHNL with MAC to add  */ static
> +void ice_vfhw_mac_add(struct ice_vf *vf, struct virtchnl_ether_addr
> +*vc_ether_addr) {
> +	u8 *mac_addr =3D vc_ether_addr->addr;
> +
> +	if (!is_valid_ether_addr(mac_addr))
> +		return;
> +
> +	/* only allow legacy VF drivers to set the hardware MAC if it is zero
> +	 * and allow new VF drivers to set the hardware MAC if the type was
> +	 * correctly specified over VIRTCHNL
> +	 */
> +	if ((ice_is_vc_addr_legacy(vc_ether_addr) &&
> +	     is_zero_ether_addr(vf->hw_lan_addr.addr)) ||
> +	    ice_is_vc_addr_primary(vc_ether_addr))
> +		ether_addr_copy(vf->hw_lan_addr.addr, mac_addr);
> +
> +	/* hardware MAC is already set, but its possible that the VF driver
> sent
> +	 * the VIRTCHNL_OP_ADD_ETH_ADDR message before the
> +	 * VIRTCHNL_OP_DEL_ETH_ADDR when trying to update its MAC, so
> save it
> +	 * away for the legacy VF driver case as it will be updated in the
> +	 * delete flow for this case
> +	 */
> +	if (ice_is_vc_addr_legacy(vc_ether_addr)) {
> +		ether_addr_copy(vf->legacy_last_added_umac.addr,
> +				mac_addr);
> +		vf->legacy_last_added_umac.time_modified =3D jiffies;
> +	}
> +}
> +
>  /**
>   * ice_vc_add_mac_addr - attempt to add the MAC address passed in
>   * @vf: pointer to the VF info
>   * @vsi: pointer to the VF's VSI
> - * @mac_addr: MAC address to add
> + * @vc_ether_addr: VIRTCHNL MAC address structure used to add MAC
>   */
>  static int
> -ice_vc_add_mac_addr(struct ice_vf *vf, struct ice_vsi *vsi, u8 *mac_addr)
> +ice_vc_add_mac_addr(struct ice_vf *vf, struct ice_vsi *vsi,
> +		    struct virtchnl_ether_addr *vc_ether_addr)
>  {
>  	struct device *dev =3D ice_pf_to_dev(vf->pf);
> +	u8 *mac_addr =3D vc_ether_addr->addr;
>  	enum ice_status status;
> =

>  	/* default unicast MAC already added */
> -	if (ether_addr_equal(mac_addr, vf->dflt_lan_addr.addr))
> +	if (ether_addr_equal(mac_addr, vf->hw_lan_addr.addr))
>  		return 0;
> =

>  	if (is_unicast_ether_addr(mac_addr) &&
> !ice_can_vf_change_mac(vf)) { @@ -3050,32 +3124,66 @@
> ice_vc_add_mac_addr(struct ice_vf *vf, struct ice_vsi *vsi, u8 *mac_addr)
>  		return -EIO;
>  	}
> =

> -	/* Set the default LAN address to the latest unicast MAC address
> added
> -	 * by the VF. The default LAN address is reported by the PF via
> -	 * ndo_get_vf_config.
> -	 */
> -	if (is_unicast_ether_addr(mac_addr))
> -		ether_addr_copy(vf->dflt_lan_addr.addr, mac_addr);
> +	ice_vfhw_mac_add(vf, vc_ether_addr);
> =

>  	vf->num_mac++;
> =

>  	return 0;
>  }
> =

> +/**
> + * ice_is_legacy_umac_expired - check if last added legacy unicast MAC
> +expired
> + * @last_added_umac: structure used to check expiration  */ static bool
> +ice_is_legacy_umac_expired(struct ice_time_mac *last_added_umac) {
> +#define ICE_LEGACY_VF_MAC_CHANGE_EXPIRE_TIME
> 	msecs_to_jiffies(3000)
> +	return time_is_before_jiffies(last_added_umac->time_modified +
> +
> ICE_LEGACY_VF_MAC_CHANGE_EXPIRE_TIME);
> +}
> +
> +/**
> + * ice_vfhw_mac_del - update the VF's cached hardware MAC if allowed
> + * @vf: VF to update
> + * @vc_ether_addr: structure from VIRTCHNL with MAC to delete  */
> +static void ice_vfhw_mac_del(struct ice_vf *vf, struct
> +virtchnl_ether_addr *vc_ether_addr) {
> +	u8 *mac_addr =3D vc_ether_addr->addr;
> +
> +	if (!is_valid_ether_addr(mac_addr) ||
> +	    !ether_addr_equal(vf->hw_lan_addr.addr, mac_addr))
> +		return;
> +
> +	/* allow the hardware MAC to be repopulated in the add flow */
> +	eth_zero_addr(vf->hw_lan_addr.addr);
> +
> +	/* only update cached hardware MAC for legacy VF drivers on delete
> +	 * because we cannot guarantee order/type of MAC from the VF
> driver
> +	 */
> +	if (ice_is_vc_addr_legacy(vc_ether_addr) &&
> +	    !ice_is_legacy_umac_expired(&vf->legacy_last_added_umac))
> +		ether_addr_copy(vf->hw_lan_addr.addr,
> +				vf->legacy_last_added_umac.addr);
> +}
> +
>  /**
>   * ice_vc_del_mac_addr - attempt to delete the MAC address passed in
>   * @vf: pointer to the VF info
>   * @vsi: pointer to the VF's VSI
> - * @mac_addr: MAC address to delete
> + * @vc_ether_addr: VIRTCHNL MAC address structure used to delete MAC
>   */
>  static int
> -ice_vc_del_mac_addr(struct ice_vf *vf, struct ice_vsi *vsi, u8 *mac_addr)
> +ice_vc_del_mac_addr(struct ice_vf *vf, struct ice_vsi *vsi,
> +		    struct virtchnl_ether_addr *vc_ether_addr)
>  {
>  	struct device *dev =3D ice_pf_to_dev(vf->pf);
> +	u8 *mac_addr =3D vc_ether_addr->addr;
>  	enum ice_status status;
> =

>  	if (!ice_can_vf_change_mac(vf) &&
> -	    ether_addr_equal(mac_addr, vf->dflt_lan_addr.addr))
> +	    ether_addr_equal(mac_addr, vf->hw_lan_addr.addr))
>  		return 0;
> =

>  	status =3D ice_fltr_remove_mac(vsi, mac_addr, ICE_FWD_TO_VSI);
> @@ -3089,8 +3197,7 @@ ice_vc_del_mac_addr(struct ice_vf *vf, struct
> ice_vsi *vsi, u8 *mac_addr)
>  		return -EIO;
>  	}
> =

> -	if (ether_addr_equal(mac_addr, vf->dflt_lan_addr.addr))
> -		eth_zero_addr(vf->dflt_lan_addr.addr);
> +	ice_vfhw_mac_del(vf, vc_ether_addr);
> =

>  	vf->num_mac--;
> =

> @@ -3109,7 +3216,8 @@ static int
>  ice_vc_handle_mac_addr_msg(struct ice_vf *vf, u8 *msg, bool set)  {
>  	int (*ice_vc_cfg_mac)
> -		(struct ice_vf *vf, struct ice_vsi *vsi, u8 *mac_addr);
> +		(struct ice_vf *vf, struct ice_vsi *vsi,
> +		 struct virtchnl_ether_addr *virtchnl_ether_addr);
>  	enum virtchnl_status_code v_ret =3D VIRTCHNL_STATUS_SUCCESS;
>  	struct virtchnl_ether_addr_list *al =3D
>  	    (struct virtchnl_ether_addr_list *)msg; @@ -3158,7 +3266,7 @@
> ice_vc_handle_mac_addr_msg(struct ice_vf *vf, u8 *msg, bool set)
>  		    is_zero_ether_addr(mac_addr))
>  			continue;
> =

> -		result =3D ice_vc_cfg_mac(vf, vsi, mac_addr);
> +		result =3D ice_vc_cfg_mac(vf, vsi, &al->list[i]);
>  		if (result =3D=3D -EEXIST || result =3D=3D -ENOENT) {
>  			continue;
>  		} else if (result) {
> @@ -3779,7 +3887,7 @@ ice_get_vf_cfg(struct net_device *netdev, int
> vf_id, struct ifla_vf_info *ivi)
>  		return -EBUSY;
> =

>  	ivi->vf =3D vf_id;
> -	ether_addr_copy(ivi->mac, vf->dflt_lan_addr.addr);
> +	ether_addr_copy(ivi->mac, vf->hw_lan_addr.addr);
> =

>  	/* VF configuration for VLAN and applicable QoS */
>  	ivi->vlan =3D vf->port_vlan_info & VLAN_VID_MASK; @@ -3855,7
> +3963,7 @@ int ice_set_vf_mac(struct net_device *netdev, int vf_id, u8
> *mac)
> =

>  	vf =3D &pf->vf[vf_id];
>  	/* nothing left to do, unicast MAC already set */
> -	if (ether_addr_equal(vf->dflt_lan_addr.addr, mac))
> +	if (ether_addr_equal(vf->hw_lan_addr.addr, mac))
>  		return 0;
> =

>  	ret =3D ice_check_vf_ready_for_cfg(vf);
> @@ -3871,7 +3979,7 @@ int ice_set_vf_mac(struct net_device *netdev, int
> vf_id, u8 *mac)
>  	/* VF is notified of its new MAC via the PF's response to the
>  	 * VIRTCHNL_OP_GET_VF_RESOURCES message after the VF has
> been reset
>  	 */
> -	ether_addr_copy(vf->dflt_lan_addr.addr, mac);
> +	ether_addr_copy(vf->hw_lan_addr.addr, mac);
>  	if (is_zero_ether_addr(mac)) {
>  		/* VF will send VIRTCHNL_OP_ADD_ETH_ADDR message
> with its MAC */
>  		vf->pf_set_mac =3D false;
> @@ -4024,7 +4132,7 @@ void ice_print_vf_rx_mdd_event(struct ice_vf *vf)
> =

>  	dev_info(dev, "%d Rx Malicious Driver Detection events detected on
> PF %d VF %d MAC %pM. mdd-auto-reset-vfs=3D%s\n",
>  		 vf->mdd_rx_events.count, pf->hw.pf_id, vf->vf_id,
> -		 vf->dflt_lan_addr.addr,
> +		 vf->hw_lan_addr.addr,
>  		 test_bit(ICE_FLAG_MDD_AUTO_RESET_VF, pf->flags)
>  			  ? "on" : "off");
>  }
> @@ -4068,7 +4176,7 @@ void ice_print_vfs_mdd_events(struct ice_pf *pf)
> =

>  			dev_info(dev, "%d Tx Malicious Driver Detection
> events detected on PF %d VF %d MAC %pM.\n",
>  				 vf->mdd_tx_events.count, hw->pf_id, i,
> -				 vf->dflt_lan_addr.addr);
> +				 vf->hw_lan_addr.addr);
>  		}
>  	}
>  }
> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
> b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
> index 0f519fba3770..f440b290e02e 100644
> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
> @@ -57,6 +57,11 @@ enum ice_virtchnl_cap {
>  	ICE_VIRTCHNL_VF_CAP_PRIVILEGE,
>  };
> =

> +struct ice_time_mac {
> +	unsigned long time_modified;
> +	u8 addr[ETH_ALEN];
> +};
> +
>  /* VF MDD events print structure */
>  struct ice_mdd_vf_events {
>  	u16 count;			/* total count of Rx|Tx events */
> @@ -75,7 +80,8 @@ struct ice_vf {
>  	struct ice_sw *vf_sw_id;	/* switch ID the VF VSIs connect to */
>  	struct virtchnl_version_info vf_ver;
>  	u32 driver_caps;		/* reported by VF driver */
> -	struct virtchnl_ether_addr dflt_lan_addr;
> +	struct virtchnl_ether_addr hw_lan_addr;
> +	struct ice_time_mac legacy_last_added_umac;
>  	DECLARE_BITMAP(txq_ena, ICE_MAX_RSS_QS_PER_VF);
>  	DECLARE_BITMAP(rxq_ena, ICE_MAX_RSS_QS_PER_VF);
>  	u16 port_vlan_info;		/* Port VLAN ID and QoS */
> --
> 2.20.1

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
