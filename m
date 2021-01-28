Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 12F8F307409
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Jan 2021 11:48:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C12E486505;
	Thu, 28 Jan 2021 10:48:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Q90umJKbIGp2; Thu, 28 Jan 2021 10:48:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 175C7864F4;
	Thu, 28 Jan 2021 10:48:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4BA921BF3B9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Jan 2021 10:48:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 46FFC87394
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Jan 2021 10:48:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wTjlEUmer+qT for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Jan 2021 10:48:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CA59F87390
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Jan 2021 10:48:43 +0000 (UTC)
IronPort-SDR: VoW+fyLcfZM3vaTWSNlDkkMvcR4cLsiHDvQeNF+w9t2J6crC3vWtpoOingVfet54VNmooCIaLc
 ICxwuXkjujxg==
X-IronPort-AV: E=McAfee;i="6000,8403,9877"; a="199046493"
X-IronPort-AV: E=Sophos;i="5.79,382,1602572400"; d="scan'208";a="199046493"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2021 02:48:43 -0800
IronPort-SDR: 0oH/aLvRz1KAhd4MvR6FAoDPzPmbn3i+JJiEMwd8UlOXLWzlS3brY/3s1hYwXJCND157idriic
 z0ZLVUQFBvhQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,382,1602572400"; d="scan'208";a="430473968"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga001.jf.intel.com with ESMTP; 28 Jan 2021 02:48:42 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 28 Jan 2021 02:48:41 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Thu, 28 Jan 2021 02:48:41 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Thu, 28 Jan 2021 02:48:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hmgeCG4hooalF5LwJcWv3kkZo/wY354+C03oG9ibZAdO3puwJLqrEDjLRbmKfuRuVc4PFi3PnXPwAAZ7HZ3RicIgBhyL8kxvF/7SPivrkYfnVVfLhIxWxzCPN4VXz5YZicQHTskR3szLprQHnnRI4jJ/G0YrOUqOXiBmI+XMHBMZktpi5AaGjvvmwXC/nAKRD9pO7b+m+YI9yRnEVfY5zohMCKuEJdcEeczaoz12XjZCkGWWmTvZZTgwgrZo8VkzCc/yhJ3QN/oNYcAfP+VShzBAwWgQzD1OIb+ELeKuni2LbhW4zF0PjpZ5obaXpNae39Bbg3T2ruOYoWgqZ825Lw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UpQAPY3AE6w+MY5DeiX/aVdJI/oPdjRniuQqkYn5LY0=;
 b=Bp5sq/ne++zHchs/jOhYHWWTw7bJQI328tixulLKcpSLr09q6yaK1AEsjxKF1FOsHQVo2Vpc/ccZ7u6qjAnzifojC5TArThYOw3gUqEdQ3fP+sfdC5ye4D2dvPIxmxlhXyVpI3b1UMunIV2YLCjmdkC4IiAi2jK5OrQdzP6WkKProMpUML5bBliEnyTUjDoKS/l2sobG+kcjnFB+EztjKHlDxy94jtvzb8GwXZSXP30B1SYTM0OZABLsNeuSWKLUeFONXDqpgB64WoO0p2bV3ecLa+BR3oZPxN1EEXuuNaebpq2jBmyR8GJXurCOzMHM6UMgM7SXsnQS2DNQur++1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UpQAPY3AE6w+MY5DeiX/aVdJI/oPdjRniuQqkYn5LY0=;
 b=bGA5L3sn9+keClwTJdssY6ka7Zrpd0jU3A/cgcyf646asOq45vh14lhCoL5ogGB+qySQA7TT+Z1AoXpL07v0pk8+EfqSM10LX3ULRMfMzCdin2CGUZbbhtpTxH1ImDabRPRBPwR2St33ho4BwGQq3LTSffxCe7TxA5S2mhIu0ic=
Received: from CY4PR11MB1576.namprd11.prod.outlook.com (2603:10b6:910:d::15)
 by CY4PR1101MB2261.namprd11.prod.outlook.com (2603:10b6:910:1f::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3784.16; Thu, 28 Jan
 2021 10:48:40 +0000
Received: from CY4PR11MB1576.namprd11.prod.outlook.com
 ([fe80::e832:8392:8dea:28d7]) by CY4PR11MB1576.namprd11.prod.outlook.com
 ([fe80::e832:8392:8dea:28d7%7]) with mapi id 15.20.3784.019; Thu, 28 Jan 2021
 10:48:40 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v5] i40e: refactor repeated
 link state reporting code
Thread-Index: AQHW9JuIazxUYG1OwEuMJZSWmocapKo83PMA
Date: Thu, 28 Jan 2021 10:48:40 +0000
Message-ID: <CY4PR11MB15762421DD7D7F75A7CFEEEDABBA9@CY4PR11MB1576.namprd11.prod.outlook.com>
References: <20210127105836.18944-1-aleksandr.loktionov@intel.com>
In-Reply-To: <20210127105836.18944-1-aleksandr.loktionov@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [188.147.123.151]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bdcb1574-849f-449f-984a-08d8c37a4608
x-ms-traffictypediagnostic: CY4PR1101MB2261:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR1101MB22613FB1B9D0FAC775BE4A5CABBA9@CY4PR1101MB2261.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1002;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jR/pxVZjj2oRlVuSn9Yb1UDwcDp8vxpxdj2U+ixNEFTfTEGbW9ARLYHVuQ4Lk4Z+HwEFmKGng+z9NrfsapoSqbipLIFWGIsXEdP2AXMDug3anZtC3gqE+bT5m+k+MEJH1voA8BdqtVFda5MQyO+CPocORxFlFwIrr8Va/iPyL1T4ewEIoBYDzPz9vlzB2epW3v8lXrUXVXoRjbADPZJ1M8dseuGAxyhQdhjvz1VztUtUszeLomMH963Cxh8iAV+tz/r1lEvhQ2dIHDet5NbHekDMwkCWcgj+vualm34v5b19PchbGkOFdk6BFOU8ELRbBySZO/ZUl6xF/Us32F2UsXSrz50g3FH+1J464IoR8VrnmbjvxmZixUdtqlCYUJPT2L7QYavWn2yfg3aV8RK0Ou1PR1QMKKGnxLbGSvHsCqvFSeE09a4VaClGFLpdIkTBwwwQJqGzGKE4arLYXUSS+u9AHhl+QyqQXGyfoBoxo1cBpTYmb1z7ssClcQVjk/cV+G4begXpX52nGO7/kG2PtA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR11MB1576.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(346002)(39860400002)(366004)(376002)(136003)(86362001)(4326008)(5660300002)(9686003)(71200400001)(66946007)(52536014)(66476007)(76116006)(107886003)(8936002)(6506007)(53546011)(64756008)(66446008)(26005)(55016002)(186003)(316002)(8676002)(110136005)(7696005)(33656002)(66556008)(83380400001)(478600001)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?iso-8859-2?Q?JX0fJnv7rC0HWMKH4OeXEpl0fuUkvFsldfk9xHNZSlt8D5Zsd2a77MpcGA?=
 =?iso-8859-2?Q?Wx0Lsi1tkyPMEMrSdImnNWlJQqDZJG5eStfOe5tdRQ7nJTpaNYYIv2XTYI?=
 =?iso-8859-2?Q?H/Ogm5s5EXsBi0DAd0do22NLgYbIeb+VrLU4vc56QwMZOq0A1rADNKoCsA?=
 =?iso-8859-2?Q?QJWWVhdACpDAwKiBKGrhpYnDlaDVZv/jQ2RnhnEs9odWLcJjbbWZa+jFdn?=
 =?iso-8859-2?Q?w9uYMce30XKlvsjGOf735sKxUeHppx4tF8f8vtWriiXp/bmtECGVn1+ctH?=
 =?iso-8859-2?Q?kBANsgwaTMd0sSQQHA31u/WEfMfiyFVr0Z/m9i/KusPybyvOYAsPk0DPpZ?=
 =?iso-8859-2?Q?1LzOGF+9o1y+GbjtalR/dT7lpUNpULcM9Kwe/vcb7pLKRSgxoS9DtO7Kvb?=
 =?iso-8859-2?Q?dZOeCwfTD8Qn7UcZZ1TzPhXAwdTkmGaeBwHdqNjB7dGY/LYWoaLZ2fxExP?=
 =?iso-8859-2?Q?ppJwKexxcU7J70H6wkSpXCc54ueBviJFU9van4Y90znltbmjVJ5/wtsrcP?=
 =?iso-8859-2?Q?Rq8vATLtbYgiO8ck8nRT9wDgOUNnKX/SyXam+sKerClOSg/72FvOoSuX1J?=
 =?iso-8859-2?Q?4hCpsY0rSmIacxD77Ot/B7Xh7hGAsM7wLHsjZC6UAYlMoJCxy3JsL4jABe?=
 =?iso-8859-2?Q?CA7G48qg+yGlN2InnczmFjp+H3Oi6RL4r3KmTr1NPZyE6MoHMwfdrKI9Z1?=
 =?iso-8859-2?Q?Ypjs2M8ecJn/g5UGmPshfOV6EdJLNpDSBf87pkbtQ35kcZ/1PU0hx7tscq?=
 =?iso-8859-2?Q?xTFnD5zLusuaKlLTB5hD1pVwUoLb1gZFyUbQ0gSC8R0IdmZeu6NzK3WdlD?=
 =?iso-8859-2?Q?+aD0L4V9j3IPCqYfyuJ4k9Oq409V2sfrzMwEzmf951WdE6tsj8Bl9GlsHF?=
 =?iso-8859-2?Q?UKmFcuF1IJkFDVcwOvvhIesK/7ne8nKgEVc12Lj9/Wu1DMqy1ZMCRP9SFz?=
 =?iso-8859-2?Q?+PxKoW5mYxTSkvjHMB3TSei3FuxTVW/wxMwRELM8jE3QjNDpMC3Q7nM6Jm?=
 =?iso-8859-2?Q?ALlmQEcNuue12bl3/m/s1AwhLvNIO8hRi/kWYgQn8ZaEVuI82LgNJxHbGa?=
 =?iso-8859-2?Q?ydJpJWnKKC5/YkJBtfCxTfg3pwsa9PcOAL0UucztoeJ5?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR11MB1576.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bdcb1574-849f-449f-984a-08d8c37a4608
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jan 2021 10:48:40.0180 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iU8PAH/PtmYq8kL1q4H5Ekc39dOujENfNmnbM6ZnqGFWbfwGiK+b2YV9JBfQ1nC0Om3L289nw2eRlPx3RxJILxBsivB0lotrbvmHtA6rB0Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1101MB2261
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v5] i40e: refactor repeated
 link state reporting code
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
Cc: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Aleksandr Loktionov
> Sent: =B6roda, 27 stycznia 2021 11:59
> To: intel-wired-lan@lists.osuosl.org
> Cc: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v5] i40e: refactor repeated li=
nk
> state reporting code
> =

> Refactor repeated link state reporting code into a separate helper
> functions: i40e_set_vf_link_state() i40e_vc_link_speed2mbps().
> Add support of VIRTCHNL_VF_CAP_ADV_LINK_SPEED;
> =

> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> v2: improve commit message
> v3: net tree target
> v4: split into 2 patches
> v5: separate refactor commit
> ---
>  .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 108 +++++++++++-------
>  1 file changed, 69 insertions(+), 39 deletions(-)
> =

> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> index 1b6ec9b..6621943 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> @@ -39,6 +39,66 @@ static void i40e_vc_vf_broadcast(struct i40e_pf *pf,
>  	}
>  }
> =

> +/**
> + * i40e_vc_link_speed2mbps
> + * converts i40e_aq_link_speed to integer value of Mbps
> + * @link_speed: the speed to convert
> + *
> + * return the speed as direct value of Mbps.
> + **/
> +static u32
> +i40e_vc_link_speed2mbps(enum i40e_aq_link_speed link_speed) {
> +	switch (link_speed) {
> +	case I40E_LINK_SPEED_100MB:
> +		return SPEED_100;
> +	case I40E_LINK_SPEED_1GB:
> +		return SPEED_1000;
> +	case I40E_LINK_SPEED_2_5GB:
> +		return SPEED_2500;
> +	case I40E_LINK_SPEED_5GB:
> +		return SPEED_5000;
> +	case I40E_LINK_SPEED_10GB:
> +		return SPEED_10000;
> +	case I40E_LINK_SPEED_20GB:
> +		return SPEED_20000;
> +	case I40E_LINK_SPEED_25GB:
> +		return SPEED_25000;
> +	case I40E_LINK_SPEED_40GB:
> +		return SPEED_40000;
> +	case I40E_LINK_SPEED_UNKNOWN:
> +		return SPEED_UNKNOWN;
> +	}
> +	return SPEED_UNKNOWN;
> +}
> +
> +/**
> + * i40e_set_vf_link_state
> + * @vf: pointer to the VF structure
> + * @pfe: pointer to PF event structure
> + * @ls: pointer to link status structure
> + *
> + * set a link state on a single vf
> + **/
> +static void i40e_set_vf_link_state(struct i40e_vf *vf,
> +				   struct virtchnl_pf_event *pfe, struct
> i40e_link_status *ls) {
> +	u8 link_status =3D ls->link_info & I40E_AQ_LINK_UP;
> +
> +	if (vf->link_forced)
> +		link_status =3D vf->link_up;
> +
> +	if (vf->driver_caps & VIRTCHNL_VF_CAP_ADV_LINK_SPEED) {
> +		pfe->event_data.link_event_adv.link_speed =3D link_status ?
> +			i40e_vc_link_speed2mbps(ls->link_speed) : 0;
> +		pfe->event_data.link_event_adv.link_status =3D link_status;
> +	} else {
> +		pfe->event_data.link_event.link_speed =3D link_status ?
> +			i40e_virtchnl_link_speed(ls->link_speed) : 0;
> +		pfe->event_data.link_event.link_status =3D link_status;
> +	}
> +}
> +
>  /**
>   * i40e_vc_notify_vf_link_state
>   * @vf: pointer to the VF structure
> @@ -55,16 +115,9 @@ static void i40e_vc_notify_vf_link_state(struct
> i40e_vf *vf)
> =

>  	pfe.event =3D VIRTCHNL_EVENT_LINK_CHANGE;
>  	pfe.severity =3D PF_EVENT_SEVERITY_INFO;
> -	if (vf->link_forced) {
> -		pfe.event_data.link_event.link_status =3D vf->link_up;
> -		pfe.event_data.link_event.link_speed =3D
> -			(vf->link_up ? i40e_virtchnl_link_speed(ls-
> >link_speed) : 0);
> -	} else {
> -		pfe.event_data.link_event.link_status =3D
> -			ls->link_info & I40E_AQ_LINK_UP;
> -		pfe.event_data.link_event.link_speed =3D
> -			i40e_virtchnl_link_speed(ls->link_speed);
> -	}
> +
> +	i40e_set_vf_link_state(vf, &pfe, ls);
> +
>  	i40e_aq_send_msg_to_vf(hw, abs_vf_id, VIRTCHNL_OP_EVENT,
>  			       0, (u8 *)&pfe, sizeof(pfe), NULL);  } @@ -1940,6
> +1993,7 @@ static int i40e_vc_get_vf_resources_msg(struct i40e_vf *vf, u8
> *msg)
>  				  VIRTCHNL_VF_OFFLOAD_VLAN;
> =

>  	vfres->vf_cap_flags =3D VIRTCHNL_VF_OFFLOAD_L2;
> +	vfres->vf_cap_flags |=3D VIRTCHNL_VF_CAP_ADV_LINK_SPEED;
>  	vsi =3D pf->vsi[vf->lan_vsi_idx];
>  	if (!vsi->info.pvid)
>  		vfres->vf_cap_flags |=3D VIRTCHNL_VF_OFFLOAD_VLAN; @@
> -3687,26 +3741,8 @@ static int i40e_vc_add_qch_msg(struct i40e_vf *vf, u8
> *msg)
>  	}
> =

>  	/* get link speed in MB to validate rate limit */
> -	switch (ls->link_speed) {
> -	case VIRTCHNL_LINK_SPEED_100MB:
> -		speed =3D SPEED_100;
> -		break;
> -	case VIRTCHNL_LINK_SPEED_1GB:
> -		speed =3D SPEED_1000;
> -		break;
> -	case VIRTCHNL_LINK_SPEED_10GB:
> -		speed =3D SPEED_10000;
> -		break;
> -	case VIRTCHNL_LINK_SPEED_20GB:
> -		speed =3D SPEED_20000;
> -		break;
> -	case VIRTCHNL_LINK_SPEED_25GB:
> -		speed =3D SPEED_25000;
> -		break;
> -	case VIRTCHNL_LINK_SPEED_40GB:
> -		speed =3D SPEED_40000;
> -		break;
> -	default:
> +	speed =3D i40e_vc_link_speed2mbps(ls->link_speed);
> +	if (speed =3D=3D SPEED_UNKNOWN) {
>  		dev_err(&pf->pdev->dev,
>  			"Cannot detect link speed\n");
>  		aq_ret =3D I40E_ERR_PARAM;
> @@ -4455,23 +4491,17 @@ int i40e_ndo_set_vf_link_state(struct
> net_device *netdev, int vf_id, int link)
>  	switch (link) {
>  	case IFLA_VF_LINK_STATE_AUTO:
>  		vf->link_forced =3D false;
> -		pfe.event_data.link_event.link_status =3D
> -			pf->hw.phy.link_info.link_info & I40E_AQ_LINK_UP;
> -		pfe.event_data.link_event.link_speed =3D
> -			(enum virtchnl_link_speed)
> -			pf->hw.phy.link_info.link_speed;
> +		i40e_set_vf_link_state(vf, &pfe, ls);
>  		break;
>  	case IFLA_VF_LINK_STATE_ENABLE:
>  		vf->link_forced =3D true;
>  		vf->link_up =3D true;
> -		pfe.event_data.link_event.link_status =3D true;
> -		pfe.event_data.link_event.link_speed =3D
> i40e_virtchnl_link_speed(ls->link_speed);
> +		i40e_set_vf_link_state(vf, &pfe, ls);
>  		break;
>  	case IFLA_VF_LINK_STATE_DISABLE:
>  		vf->link_forced =3D true;
>  		vf->link_up =3D false;
> -		pfe.event_data.link_event.link_status =3D false;
> -		pfe.event_data.link_event.link_speed =3D 0;
> +		i40e_set_vf_link_state(vf, &pfe, ls);
>  		break;
>  	default:
>  		ret =3D -EINVAL;
> --
> 2.18.4

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
---------------------------------------------------------------------
Intel Technology Poland sp. z o.o.
ul. Sowackiego 173 | 80-298 Gdask | Sd Rejonowy Gdask Pnoc | VII Wydzia Gos=
podarczy Krajowego Rejestru Sdowego - KRS 101882 | NIP 957-07-52-316 | Kapi=
ta zakadowy 200.000 PLN.
Ta wiadomo wraz z zacznikami jest przeznaczona dla okrelonego adresata i mo=
e zawiera informacje poufne. W razie przypadkowego otrzymania tej wiadomoci=
, prosimy o powiadomienie nadawcy oraz trwae jej usunicie; jakiekolwiek prz=
egldanie lub rozpowszechnianie jest zabronione.
This e-mail and any attachments may contain confidential material for the s=
ole use of the intended recipient(s). If you are not the intended recipient=
, please contact the sender and delete all copies; any review or distributi=
on by others is strictly prohibited.
 =


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
