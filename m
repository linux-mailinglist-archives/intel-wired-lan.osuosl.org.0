Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B0FB23934BF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 May 2021 19:27:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2B08D4068C;
	Thu, 27 May 2021 17:27:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7N8wueN4JjpC; Thu, 27 May 2021 17:27:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 85E804068B;
	Thu, 27 May 2021 17:27:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AE7811BF341
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 May 2021 17:27:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9D8D7402AB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 May 2021 17:27:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ir-6eiEvWdXV for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 May 2021 17:27:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9268C4019A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 May 2021 17:27:14 +0000 (UTC)
IronPort-SDR: ogEZyzfmMWBtH4znq28+2w88XhRpD+t8CCijvUd9N3GfwhJQ9aA9S76Y/D/2SuF39rxr1d/5Lw
 s3ZxWeu0eCfw==
X-IronPort-AV: E=McAfee;i="6200,9189,9997"; a="189909385"
X-IronPort-AV: E=Sophos;i="5.83,228,1616482800"; d="scan'208";a="189909385"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2021 10:27:10 -0700
IronPort-SDR: yN+g/J5kKUriXTTkoG0WHzFhfAF8XWutOHX9bdpgF2MroIlqc4mHfU/dN9E5mXcli/KNdx+3Eq
 6iCTvumpU5LQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,228,1616482800"; d="scan'208";a="443662083"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga008.jf.intel.com with ESMTP; 27 May 2021 10:27:09 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Thu, 27 May 2021 10:27:08 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Thu, 27 May 2021 10:27:08 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Thu, 27 May 2021 10:27:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kf5m04BpE+KvQ6QEq3DP5VafeVpIW60uzS5Edk9Lc1OPE9lE/+8vDBN8XJCR6UbMwO7sh5k0SGqwn3MP8Y6dhoyfw9i1CsY7hrai6lkSgHjloS+i9BcFCb+m1m8K3ziAKWgP9C7K6YZPvk5aJsO39GVyq1wkXUpJIW1NAh8/MQZKbwP6I0oajQj373bF2PtSv8Hng5xiBcIvKcq/UVYv3lZtHqRgJh2poR1qCUGcBPuYXQobfhEP/rHSrzpGuQ7QufbfVKcAYjP4l2ETRsIsYKNY2G6qr5F8XvPMgO5DxErrIbBkR7RAttS8UeMQavK2Q00EeU6B8So/kPYIrHkghA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SLpadN1MoXfsQoU8kRinTlKwNR39DXwRK3Ahxc/GJMA=;
 b=GpXahJGroGPx2MkeIkng3jIhV/mual5qfO8qWuS+nSijzi6Zv23rORm8x2WFQlLNbIf2uLsjLB+KY6HwCfR9DhV3tooOVOGa7eZ+1QTMqAMy2Rvg2vp3n7SV6+9UV7IVnCeoaOyLOaJ5QL/OA/Iz9C9xfs27hFW9dVD1Izj9K8XIMZPwXA/AriX4Il0Pf/KQVr5HElSHGUqiTWI3X4FOBG8e8GyUCI1maa4wKDPzrg6nO3kmG6PlsCMISlxRoFyhPCTilMm3eNfWnSZpC4UoJv+8DD3w1cBM0KQg5oVUz3BMWl80Bn5w13hdIG701HN45Sy0aYdXxtCqwEv8GzbZ5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SLpadN1MoXfsQoU8kRinTlKwNR39DXwRK3Ahxc/GJMA=;
 b=kY3tJD17+bL6z0u0a0nIBQrCgH1AnVLdJNdi+2PA9QN/gHYscuYY59ukQs3kMWeuw8GdpOIXA7Y7vW0sxU4NndDOinKs9tfvBzdP45rPFs1HeaexGn+5EonXBxMN3IdhnENVkpO4jl/FnMi6Sy1doM7iHxzlrdVDYkqmsLoUi9g=
Received: from CY4PR11MB1576.namprd11.prod.outlook.com (2603:10b6:910:d::15)
 by CY4PR11MB1623.namprd11.prod.outlook.com (2603:10b6:910:f::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4150.26; Thu, 27 May
 2021 17:27:06 +0000
Received: from CY4PR11MB1576.namprd11.prod.outlook.com
 ([fe80::8177:30c8:3373:c4ea]) by CY4PR11MB1576.namprd11.prod.outlook.com
 ([fe80::8177:30c8:3373:c4ea%12]) with mapi id 15.20.4150.027; Thu, 27 May
 2021 17:27:06 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S53 03/15] ice: Save VF's MAC across
 reboot
Thread-Index: AQHWjTAXzjTH5ZfQy0yJnBOSB3erTKr5IIkg
Date: Thu, 27 May 2021 17:27:06 +0000
Message-ID: <CY4PR11MB1576A358E7CCD6D2ECED4CA7AB239@CY4PR11MB1576.namprd11.prod.outlook.com>
References: <20200917201347.81570-1-anthony.l.nguyen@intel.com>
 <20200917201347.81570-3-anthony.l.nguyen@intel.com>
In-Reply-To: <20200917201347.81570-3-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: aee9365e-5541-4e19-26b0-08d92134a680
x-ms-traffictypediagnostic: CY4PR11MB1623:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR11MB1623A5D30E76A68895697C17AB239@CY4PR11MB1623.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DmvTyw0K9t+TUz+LsK8WkLwrZJW7DtdViF9bsTkrPOd9rz8MizfYke93U4Z3/NaO8HTT20BLYg/KgXLANgJ9HLDxWK52sZX29+/SUipDs8csZIgOZdku1LR9YHdIByc0lREz3bN2c4hepxe9yxp0Rm+ekfvYlmxRaeSYAriELe6f2u6hF0kA/KAHweVrRyAsclpfZ+/JzMyF0Y6L7QWFqWjb8tAsPHONvkj7VMYe+r+yiUxAta/MAh5XXUx97Vgo/+STsqG7/LYwW7SZLQ7Oz3tvpQFi7SDubLkWBtGbjav1g98jEnJdQhOHffagE6GlJeWzc+s1AQ+WVXHtI8lvl4VXRHk9LS2AeCGNHXvtDhJ8O+eoSSJMZZr4PF5WaQAOcEUpAkafPcrynowbEtWbi+0ljgQkSatmqevL362QFkQd31T0khV1iya55shRpzNeC8aUFjsjZh/HjeWBJP6WJFe5ZFkEgnUCPhusIz1OfY+6qLzkgoChRRU+SDUBOA+B9amalEoggVsK13+iWCy//25ymw9rdLLiCwrKU8s6TW5fqZY3aFxDF1G/q6TYzeHIypNXOLC+JNdN++OZxbJm8a6GfY22tnta9k+Qeym7wYI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR11MB1576.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39860400002)(366004)(396003)(346002)(376002)(136003)(316002)(7696005)(5660300002)(186003)(76116006)(8936002)(86362001)(55016002)(38100700002)(110136005)(66556008)(66574015)(52536014)(478600001)(83380400001)(66476007)(122000001)(64756008)(8676002)(33656002)(26005)(9686003)(6506007)(66946007)(2906002)(66446008)(53546011)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?iso-8859-2?Q?G8W9ejqyZuO9LHAynuEbJR25nwgMAVuGHND19OfRSwM962t8lY3TJy2MEU?=
 =?iso-8859-2?Q?qZkcgcDi6Yhb8yJm9NVJUYQOObXJL+pjks6yx27DY6r9GUd8uprZNsKKBR?=
 =?iso-8859-2?Q?CYxifaNt8bRjNevdVp3qH98eDv0ojxRDSYJha0tY+fl75rxpOuBKci9aJY?=
 =?iso-8859-2?Q?KiuxXqnG93vA6OXxCRgm+qrqyGmSC+6gI8Eu45JuiG6jbBtYAjIsqsj1tb?=
 =?iso-8859-2?Q?hHb9QpBd0Rk36fKGylzae824K7V/pmeniqXn26+yk6M2MSwEJnfcR/nArV?=
 =?iso-8859-2?Q?hhEdVyay6P+VCZ4UVKjcm378ZEZpZco8BMIoGJdg2NHZ3nVtfA45cDcI8u?=
 =?iso-8859-2?Q?PvxgPpcptztWtCn2oyl/amB7o6G9N0hY8OYAXutYcwzVttiruA9tLwT9l5?=
 =?iso-8859-2?Q?xxARRrtbTT6yBZNIhsalmV+AKTZo5makGAaYZ+BgohRTbj3gZ/LbxKPXbO?=
 =?iso-8859-2?Q?5l7rzDQs8tbYOmBAYVtWJ8o2Vmw+AiIjzaTAJqKeEe/FLAyv7uYfHw9zcF?=
 =?iso-8859-2?Q?s80nORSe4XjDG6dYNTmgMGIY5z6oEj0BP8gSNorsI8AflTIvgHjoud9ARz?=
 =?iso-8859-2?Q?DtD5RnAusTAj7ZHngB9alATscwN/aN7tx5IbqGSJA4rUKTBVmx8SNBS/6V?=
 =?iso-8859-2?Q?BU6WrO5KqylB8yXweFaJOGCsqGYwo9w4Kt53SIuJej8hcp2AK2HhPk6CcV?=
 =?iso-8859-2?Q?Yrs5UBYbChJHWT+OP599Sy0zHUMIni/YA9dsI3n1p18cV6r1GBMR42YkRu?=
 =?iso-8859-2?Q?lLjsl1KVD8IkdwVUKfoOOnMLxFXhQyvwQD9jyyh73alMuGS3oxQbjueN4G?=
 =?iso-8859-2?Q?yqu3pc2NVNxE94D4iQJKniKHHaS9xeawMsbD2tVrs1gbSHIFv2j2chBAKu?=
 =?iso-8859-2?Q?HgSvxn/ei9YEXzlf5afseOR+qWvCX7HqEBf2UdY37lO3oPjY7W8OsfwgOx?=
 =?iso-8859-2?Q?EeH8AIhs6qFXHnS4kL8xPs16Kw/0IJ3UAa2VSs+dArqX4FOhQI0r36D/mn?=
 =?iso-8859-2?Q?qLeSguSbq/AVQEnriMv9ni7XPMSvcG8RNmygNLoMNx7LUK/uU/kmy24YCC?=
 =?iso-8859-2?Q?FvHWtehcebaFm8mJdltKc6AZ47YKLAbvy+kHUNL3bOEKulFsBJgMUk5XlI?=
 =?iso-8859-2?Q?hjp9n75ILbfE/OTzseB6rC6NpIfC8ZOJv3q7Vk3hy5zeWTe5eZKwgUrw/U?=
 =?iso-8859-2?Q?qJI2f3OEI8ZyToYVGXn/EY5jeSzRV/ShP250FPWk5DdFMggPtUbSRU1t6R?=
 =?iso-8859-2?Q?86tu61LcVIZ9wYTGVPxOVNENtAwwJVtaSzzZdiF2ncY7rTD440j2cRy3dL?=
 =?iso-8859-2?Q?IID38lOax5csqOJZ9AV/0JlfQTqGsMGO3ELSVsmCnE3YUb1n/FxOoqkS40?=
 =?iso-8859-2?Q?KVNCC2oLPS?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR11MB1576.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aee9365e-5541-4e19-26b0-08d92134a680
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 May 2021 17:27:06.3618 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: y1sae3XWxp0wKaHTgLUL2zG6urK7LxIHeGgV/kDAvxkGFF31BzErNtSVJhBGP80hXTG6v8j+3GbbZcEiy9fFhwp8N2qQX299DybgRyWWdFg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1623
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S53 03/15] ice: Save VF's MAC across
 reboot
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
> Subject: [Intel-wired-lan] [PATCH S53 03/15] ice: Save VF's MAC across
> reboot
> =

> From: Brett Creeley <brett.creeley@intel.com>
> =

> If a VM reboots and/or VF driver is unloaded, its cached hardware MAC
> address (hw_lan_addr.addr) is cleared in some cases. If the VF is trusted,
> then the PF driver allows the VF to clear its old MAC address even if thi=
s MAC
> was configured by a host administrator. If the VF is untrusted, then the =
PF
> driver allows the VF to clear its old MAC address only if the host admin =
did
> not set it.
> =

> For the trusted VF case, this is unexpected and will cause issues because=
 the
> host configured MAC (i.e. via XML) will be cleared on VM reboot. For the
> untrusted VF case, this is done to be consistent and it will allow the VF=
 to
> keep the same MAC across VM reboot.
> =

> Fix this by introducing dev_lan_addr to the VF structure. This will be th=
e VF's
> MAC address when it's up and running and in most cases will be the same as
> the hw_lan_addr. However, to address the VM reboot and unload/reload
> problem, the driver will never allow the hw_lan_addr to be cleared via
> VIRTCHNL_OP_DEL_ETH_ADDR. When the VF's MAC is changed, the
> dev_lan_addr and hw_lan_addr will always be updated with the same value.
> The only ways the VF's MAC can change are the following:
> =

> - Set the VF's MAC administratively on the host via iproute2.
> - If the VF is trusted and changes/sets its own MAC.
> - If the VF is untrusted and the host has not set the MAC via iproute2.
> =

> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 45 ++++++++++++-------
> .../net/ethernet/intel/ice/ice_virtchnl_pf.h  |  1 +
>  2 files changed, 30 insertions(+), 16 deletions(-)
> =

> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> index 627c4e36c1bd..ed5cca603949 100644
> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> @@ -647,6 +647,8 @@ static int ice_vf_rebuild_host_mac_cfg(struct ice_vf
> *vf)
>  			return ice_status_to_errno(status);
>  		}
>  		vf->num_mac++;
> +
> +		ether_addr_copy(vf->dev_lan_addr.addr, vf-
> >hw_lan_addr.addr);
>  	}
> =

>  	return 0;
> @@ -3068,17 +3070,19 @@ ice_vfhw_mac_add(struct ice_vf *vf, struct
> virtchnl_ether_addr *vc_ether_addr)
>  	if (!is_valid_ether_addr(mac_addr))
>  		return;
> =

> -	/* only allow legacy VF drivers to set the hardware MAC if it is zero
> -	 * and allow new VF drivers to set the hardware MAC if the type was
> -	 * correctly specified over VIRTCHNL
> +	/* only allow legacy VF drivers to set the device and hardware MAC if
> it
> +	 * is zero and allow new VF drivers to set the hardware MAC if the
> type
> +	 * was correctly specified over VIRTCHNL
>  	 */
>  	if ((ice_is_vc_addr_legacy(vc_ether_addr) &&
>  	     is_zero_ether_addr(vf->hw_lan_addr.addr)) ||
> -	    ice_is_vc_addr_primary(vc_ether_addr))
> +	    ice_is_vc_addr_primary(vc_ether_addr)) {
> +		ether_addr_copy(vf->dev_lan_addr.addr, mac_addr);
>  		ether_addr_copy(vf->hw_lan_addr.addr, mac_addr);
> +	}
> =

> -	/* hardware MAC is already set, but its possible that the VF driver
> sent
> -	 * the VIRTCHNL_OP_ADD_ETH_ADDR message before the
> +	/* hardware and device MACs are already set, but its possible that
> the
> +	 * VF driver sent the VIRTCHNL_OP_ADD_ETH_ADDR message
> before the
>  	 * VIRTCHNL_OP_DEL_ETH_ADDR when trying to update its MAC, so
> save it
>  	 * away for the legacy VF driver case as it will be updated in the
>  	 * delete flow for this case
> @@ -3104,8 +3108,8 @@ ice_vc_add_mac_addr(struct ice_vf *vf, struct
> ice_vsi *vsi,
>  	u8 *mac_addr =3D vc_ether_addr->addr;
>  	enum ice_status status;
> =

> -	/* default unicast MAC already added */
> -	if (ether_addr_equal(mac_addr, vf->hw_lan_addr.addr))
> +	/* device MAC already added */
> +	if (ether_addr_equal(mac_addr, vf->dev_lan_addr.addr))
>  		return 0;
> =

>  	if (is_unicast_ether_addr(mac_addr) &&
> !ice_can_vf_change_mac(vf)) { @@ -3153,19 +3157,26 @@
> ice_vfhw_mac_del(struct ice_vf *vf, struct virtchnl_ether_addr
> *vc_ether_addr)
>  	u8 *mac_addr =3D vc_ether_addr->addr;
> =

>  	if (!is_valid_ether_addr(mac_addr) ||
> -	    !ether_addr_equal(vf->hw_lan_addr.addr, mac_addr))
> +	    !ether_addr_equal(vf->dev_lan_addr.addr, mac_addr))
>  		return;
> =

> -	/* allow the hardware MAC to be repopulated in the add flow */
> -	eth_zero_addr(vf->hw_lan_addr.addr);
> +	/* allow the device MAC to be repopulated in the add flow and don't
> +	 * clear the hardware MAC (i.e. hw_lan_addr.addr) here as that is
> meant
> +	 * to be persistent on VM reboot and across driver unload/load,
> which
> +	 * won't work if we clear the hardware MAC here
> +	 */
> +	eth_zero_addr(vf->dev_lan_addr.addr);
> =

>  	/* only update cached hardware MAC for legacy VF drivers on delete
>  	 * because we cannot guarantee order/type of MAC from the VF
> driver
>  	 */
>  	if (ice_is_vc_addr_legacy(vc_ether_addr) &&
> -	    !ice_is_legacy_umac_expired(&vf->legacy_last_added_umac))
> +	    !ice_is_legacy_umac_expired(&vf->legacy_last_added_umac)) {
> +		ether_addr_copy(vf->dev_lan_addr.addr,
> +				vf->legacy_last_added_umac.addr);
>  		ether_addr_copy(vf->hw_lan_addr.addr,
>  				vf->legacy_last_added_umac.addr);
> +	}
>  }
> =

>  /**
> @@ -3183,7 +3194,7 @@ ice_vc_del_mac_addr(struct ice_vf *vf, struct
> ice_vsi *vsi,
>  	enum ice_status status;
> =

>  	if (!ice_can_vf_change_mac(vf) &&
> -	    ether_addr_equal(mac_addr, vf->hw_lan_addr.addr))
> +	    ether_addr_equal(vf->dev_lan_addr.addr, mac_addr))
>  		return 0;
> =

>  	status =3D ice_fltr_remove_mac(vsi, mac_addr, ICE_FWD_TO_VSI);
> @@ -3963,7 +3974,8 @@ int ice_set_vf_mac(struct net_device *netdev, int
> vf_id, u8 *mac)
> =

>  	vf =3D &pf->vf[vf_id];
>  	/* nothing left to do, unicast MAC already set */
> -	if (ether_addr_equal(vf->hw_lan_addr.addr, mac))
> +	if (ether_addr_equal(vf->dev_lan_addr.addr, mac) &&
> +	    ether_addr_equal(vf->hw_lan_addr.addr, mac))
>  		return 0;
> =

>  	ret =3D ice_check_vf_ready_for_cfg(vf);
> @@ -3979,6 +3991,7 @@ int ice_set_vf_mac(struct net_device *netdev, int
> vf_id, u8 *mac)
>  	/* VF is notified of its new MAC via the PF's response to the
>  	 * VIRTCHNL_OP_GET_VF_RESOURCES message after the VF has
> been reset
>  	 */
> +	ether_addr_copy(vf->dev_lan_addr.addr, mac);
>  	ether_addr_copy(vf->hw_lan_addr.addr, mac);
>  	if (is_zero_ether_addr(mac)) {
>  		/* VF will send VIRTCHNL_OP_ADD_ETH_ADDR message
> with its MAC */ @@ -4132,7 +4145,7 @@ void
> ice_print_vf_rx_mdd_event(struct ice_vf *vf)
> =

>  	dev_info(dev, "%d Rx Malicious Driver Detection events detected on
> PF %d VF %d MAC %pM. mdd-auto-reset-vfs=3D%s\n",
>  		 vf->mdd_rx_events.count, pf->hw.pf_id, vf->vf_id,
> -		 vf->hw_lan_addr.addr,
> +		 vf->dev_lan_addr.addr,
>  		 test_bit(ICE_FLAG_MDD_AUTO_RESET_VF, pf->flags)
>  			  ? "on" : "off");
>  }
> @@ -4176,7 +4189,7 @@ void ice_print_vfs_mdd_events(struct ice_pf *pf)
> =

>  			dev_info(dev, "%d Tx Malicious Driver Detection
> events detected on PF %d VF %d MAC %pM.\n",
>  				 vf->mdd_tx_events.count, hw->pf_id, i,
> -				 vf->hw_lan_addr.addr);
> +				 vf->dev_lan_addr.addr);
>  		}
>  	}
>  }
> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
> b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
> index f440b290e02e..f379d13acc97 100644
> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
> @@ -80,6 +80,7 @@ struct ice_vf {
>  	struct ice_sw *vf_sw_id;	/* switch ID the VF VSIs connect to */
>  	struct virtchnl_version_info vf_ver;
>  	u32 driver_caps;		/* reported by VF driver */
> +	struct virtchnl_ether_addr dev_lan_addr;
>  	struct virtchnl_ether_addr hw_lan_addr;
>  	struct ice_time_mac legacy_last_added_umac;
>  	DECLARE_BITMAP(txq_ena, ICE_MAX_RSS_QS_PER_VF);
> --
> 2.20.1
> =


Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
