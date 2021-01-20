Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F2DFE2FC6A9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Jan 2021 02:28:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5FAD120031;
	Wed, 20 Jan 2021 01:28:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7bQrWHWu0NWO; Wed, 20 Jan 2021 01:28:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5F0E7204F7;
	Wed, 20 Jan 2021 01:28:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AC30F1BF297
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jan 2021 01:28:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A77C286FB6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jan 2021 01:28:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oJ2y+USIpxTJ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Jan 2021 01:28:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9973686FAF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jan 2021 01:28:11 +0000 (UTC)
IronPort-SDR: 5f/rRXM/ZcRpqoEcyqoNVFMcnrRC0gc1ESABF4Qr0ySwl7h+/4nywchJkyejtnOxD0WE3yAI4o
 77rrlTdXYRSQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9869"; a="243096960"
X-IronPort-AV: E=Sophos;i="5.79,359,1602572400"; d="scan'208";a="243096960"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2021 17:28:10 -0800
IronPort-SDR: INpr851RcMiOy3hTqnlpJsD+g9BiNe91nqHa4fC1XwpORXmDuo9z4JybyWBno2KmaSgtQyIDSt
 sZm1ktMiJa2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,359,1602572400"; d="scan'208";a="391331350"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga007.jf.intel.com with ESMTP; 19 Jan 2021 17:28:10 -0800
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 19 Jan 2021 17:28:10 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 19 Jan 2021 17:28:10 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Tue, 19 Jan 2021 17:28:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HnFLL7EsoXgxqQziXyRldvWvltszn0gXwLjzW1Iz3wwv2fpJMI8SOAJ7D3l1pBTLNWpF5D95KiHeiitUgxodUyUmGJXZdvbTMqCRySeae2dfqZNu2Mzx96zbT8Dj0EfpAEweEs9m4GF9rIsR8lP0z6eDkVQ1nLZx1yIzizqlVzyNdnDkwvsDdJysioI4scD66UtqFsOUCME+lHcd/ElzHtOqNejj4Nw4SPzlDy6YHDMd2T798LLrwGlrpOyLC7ASy+ZROH7AKtcd0VRoBV8/pIm671kEELYQmdeqiVXca+96ATSOmOB4mGfcjyGMnPrUXr+7192nJas4vXJuHEmalA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=L3zUze5j+wGGB9mxNwH1+lbkCM75l0qetlLHDK/uHrg=;
 b=BXGt7FbyAzjuaspyZawLZqGdKAsbZJsnWEVwozByfTc52RWMN2wYWle/2hgE1PEonCA5dFreQaXaae1NdTwpqSUJL1KOeqMs5WxtmD/nWTdxXKFSnkaVucsqJiYqdJCxEZhGJr5/Alv+QwVQJQA0DU7WEqYSG3WtkotonqBNoPuRTceF249fWfw4/Zktat+vMGP2bseGhTZ8Zl33dYYhYYSlUmZQI+fRFbNxOr0VMVZpUPqaw27WDmdkdqcwrhNFtHuZzzEYSWELJ2QdGebKGa85qQbxe6cwcNwt2P4s00l9MHK7acpp7OA7MCKpuxdzq9L+akPUKqt/5VRW4cu8QQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=L3zUze5j+wGGB9mxNwH1+lbkCM75l0qetlLHDK/uHrg=;
 b=VoV4jw4raFRdF6f4/my66HWT+NhkoTo6eqJfgO78/qjjpBnjOJm29ZEzXGr6Df/vb8lWMRkLypvmCouXi8aqaFPIL69GTNSlfW0A78kEKiP70a6oTn4myiMbOfnwn28Ls1y+YA2CPQ8U2aTrJps6QlfL4HMNMC8dii2m3ave/eA=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SN6PR11MB2751.namprd11.prod.outlook.com (2603:10b6:805:63::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3784.11; Wed, 20 Jan
 2021 01:28:08 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::fc53:e004:bade:6bc6]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::fc53:e004:bade:6bc6%6]) with mapi id 15.20.3784.011; Wed, 20 Jan 2021
 01:28:08 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v4 2/2] i40e: refactor repeated
 link state reporting code
Thread-Index: AQHW7dIH6wKwJb3BF0CQignBoVEu26ovu16A
Date: Wed, 20 Jan 2021 01:28:08 +0000
Message-ID: <f23fd8587047f3c61a25b6ac5876778ff8ac197f.camel@intel.com>
References: <20210118193454.275037-1-arkadiusz.kubalewski@intel.com>
 <20210118193454.275037-3-arkadiusz.kubalewski@intel.com>
In-Reply-To: <20210118193454.275037-3-arkadiusz.kubalewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5 (3.28.5-3.fc28) 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.204]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a1d51fde-9918-4ae2-93db-08d8bce2a4f7
x-ms-traffictypediagnostic: SN6PR11MB2751:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB27516831C8246E96BA5D71CDC6A29@SN6PR11MB2751.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2733;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: D+vgE6Y6hSUERB60ztijhvYjfWFSju5cviQeCk50tL4GVLVErNKF0FTmExH4mWH6+X105caclnVSdJOP8gEm0nRDQmvx00N1aLQFxu1jI4StEL2oNCuhqwA3n+UTepgLd3/Ep55pA0CL3ZJhFKMih4i4ay8iDCuwNVl88qvy0ktaePT4mtxQv0ECsoOfWLgv4QJg1AqxyckFxY/KHMjUxfpFRGhmgz7GgC3ogi6eugLbxnRYag3S2VkVLyT/om2kkk2GA32hpQbkL4D/79jgDd0oqwY8TgXFy8P0N/XfZzMHOUZzTZGxNhTryPlPvqfq4iTlctsmBvh5WaCKQPgVMbmubHDEP10j17rzjLfOgQQjtyGd7k8p4KT9PP3+cxo44KUE+wYcHqV0oXQG06lO8Vr83xfwThZEDVIE7Mzx0Dxnjl6+Pbz/lNYb3MsqU2hl
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(39860400002)(136003)(366004)(376002)(396003)(6506007)(83380400001)(316002)(2906002)(2616005)(5660300002)(110136005)(8936002)(478600001)(26005)(71200400001)(6512007)(4326008)(36756003)(6486002)(91956017)(66446008)(66556008)(64756008)(8676002)(66946007)(107886003)(86362001)(66476007)(76116006)(186003)(99106002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?WUxzTlhnaFlEQkhPS3YxVkhjcmFEeXR2bFdVUEkrOW91QkJ2RFhKQU9LSGtl?=
 =?utf-8?B?RjczT2lRWEpVS1ZPV1V6NVRkVHlBYnYwTFZTVDdzQW1ESDh3eHYxZEt4WVpP?=
 =?utf-8?B?OVBxK1Q4bmNIazJITjdXMFBSYk1VQjU3RmRDdkRzZStDYi94YXhUTHU0VVpv?=
 =?utf-8?B?aE8zb3RIOG90aGFJa3lzY3piZ1N5L3pnS0Y2ck93clY0cVNiNm1FRWwxYVor?=
 =?utf-8?B?WGpsekFPWWphdjFrYjE4dWd5TXBhYkxmazlJZ3BXVWxUWGpIeU5NcEpsdmZS?=
 =?utf-8?B?ditsVG5Ta0ZDNHdnT2NKaXpSeGZnK1pxYzNxajVvRjV2SVdkdFIrUkg5cmhs?=
 =?utf-8?B?cGhKUzY5bHVCcGIxK1NEajk3RFo1cWVTTkxpVy9WazFEWUtna2xjeVV0NUs0?=
 =?utf-8?B?UGNFOXdNMHJEdGpnR2VvVkdCb29lQmhERk9Lc0dRWkpya0F1K3c5cEU2ejZo?=
 =?utf-8?B?VDFYVnV0bkJoT1dFcCtnYW9FaDQ2NG1kbE5Gak0zM1MzRGxicDJ4NjQxMjRI?=
 =?utf-8?B?OVh3Q3M3RWI0UzI2bWVvL2ZxTUJ1OXgrVTRlZEtPbFZxZFF1N3ZuSUNxOTJJ?=
 =?utf-8?B?aFU4MEVGR1VGMktTZEdSZ1kvcTA3blhPZ2Y4TXFZeXlUd1pzSTVtWm1jTlhB?=
 =?utf-8?B?RGJwQWpwT0x5dHNidVlUaC9xRTh5T1BqdFhPZkljbU9BUzNrQTFhbEhKbVV6?=
 =?utf-8?B?ZE10S2twVm96ekZuM2JieUxUSXMxQTk0MHNwQ2tnRVZDbVhGYUdqNWNxNmFY?=
 =?utf-8?B?d2tDTTVRNFc1MWo3NjJ1SnFjc3A0Z2RwT0RlVFh2azNrMDNMQmxjckI2Zzgy?=
 =?utf-8?B?QVVvc3craDFaN3FCczZuc3JUeDlNTHowZStnL05zL2NzMklMMVZhVzlLRWFU?=
 =?utf-8?B?MVlvT2V4NllSOEZ6Z2FoemJJeXhSZGpGdmtsaFEzd3ZMaTducG5pOVMwMzFP?=
 =?utf-8?B?T0VYZWRBMnd2SjJ0em9TdFBIR1FndWUzUGRsVTdGNll6M2xpbVp4d3lFOThF?=
 =?utf-8?B?YlJsbFd2R3UwdVVhT0hQUXplb3ZrdE00YkVJL0NueHVxUkJHdHkxR1haYUJO?=
 =?utf-8?B?Z2JqTGV4V0NsQ3lJeWpaZUpsU0M3bnJYRjJOZk9GNXRIelk2U2dSbUpSMyt1?=
 =?utf-8?B?a0lyTE5Pa3NvSTFHaXpRcDQ3ai8zTGx0Q0lZVzlhb0w0T3FyVzNpUS80OFNy?=
 =?utf-8?B?RjJxLzQwR1BRTy9DMitQanFxWDZVRWl2cjZvNEpEY242dG5MREVaOEJFWHJX?=
 =?utf-8?B?QWVwQm43TUVUbkVxV0E3OGYrckhLN3pIdFJxRkNOQ3pDVSsvTjJZaHpHbjFO?=
 =?utf-8?B?ZGcwSTZRNUlBVTBXVTJvWlJPYjVnWUR3QU04S0tMOWZNbmNjdWt0RHhDTFBY?=
 =?utf-8?B?QjJmdkNYQUVuamlMSFBZODhOU2NtbmtTMXZNc21LMmVHdHJwVFpXV2xLTVNN?=
 =?utf-8?B?Yk01a2E5YzNYNkpqWlVOZnpaNWpNbGlzRVh1eGFnPT0=?=
Content-ID: <0E2A6D5EEC5E3C44B2BED5A7917E1847@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a1d51fde-9918-4ae2-93db-08d8bce2a4f7
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jan 2021 01:28:08.8445 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LjkNVVvBN5PeV8Pt5z+kZumUa8CJYfUiGiEvvaZsVqXKruz3og4w6dGKJIbofKGdaBe61gVMwzelgE6LACSY6NL1lWlm5TPboq9SWZVSPXA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2751
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v4 2/2] i40e: refactor repeated
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 2021-01-18 at 19:34 +0000, Arkadiusz Kubalewski wrote:
> From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> 
> Refactor repeated link state reporting code into a separate helper
> functions:
> i40e_set_vf_link_state() i40e_vc_link_speed2mbps().

As this is refactoring, this is should be for net-next.

> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> ---
> v2: improve commit message
> v3: net tree target
> v4: split into 2 patches
> ---
>  .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 108 +++++++++++-----
> --
>  1 file changed, 69 insertions(+), 39 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> index 1b6ec9b..6621943 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> @@ -39,6 +39,66 @@ static void i40e_vc_vf_broadcast(struct i40e_pf
> *pf,
>  	}
>  }
>  
> +/**
> + * i40e_vc_link_speed2mbps
> + * converts i40e_aq_link_speed to integer value of Mbps
> + * @link_speed: the speed to convert
> + *
> + * return the speed as direct value of Mbps.
> + **/
> +static u32
> +i40e_vc_link_speed2mbps(enum i40e_aq_link_speed link_speed)
> +{
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
> +				   struct virtchnl_pf_event *pfe,
> struct i40e_link_status *ls)
> +{
> +	u8 link_status = ls->link_info & I40E_AQ_LINK_UP;
> +
> +	if (vf->link_forced)
> +		link_status = vf->link_up;
> +
> +	if (vf->driver_caps & VIRTCHNL_VF_CAP_ADV_LINK_SPEED) {
> +		pfe->event_data.link_event_adv.link_speed = link_status
> ?
> +			i40e_vc_link_speed2mbps(ls->link_speed) : 0;
> +		pfe->event_data.link_event_adv.link_status =
> link_status;
> +	} else {
> +		pfe->event_data.link_event.link_speed = link_status ?
> +			i40e_virtchnl_link_speed(ls->link_speed) : 0;
> +		pfe->event_data.link_event.link_status = link_status;
> +	}
> +}
> +
>  /**
>   * i40e_vc_notify_vf_link_state
>   * @vf: pointer to the VF structure
> @@ -55,16 +115,9 @@ static void i40e_vc_notify_vf_link_state(struct
> i40e_vf *vf)
>  
>  	pfe.event = VIRTCHNL_EVENT_LINK_CHANGE;
>  	pfe.severity = PF_EVENT_SEVERITY_INFO;
> -	if (vf->link_forced) {
> -		pfe.event_data.link_event.link_status = vf->link_up;
> -		pfe.event_data.link_event.link_speed =
> -			(vf->link_up ? i40e_virtchnl_link_speed(ls-
> >link_speed) : 0);
> -	} else {
> -		pfe.event_data.link_event.link_status =
> -			ls->link_info & I40E_AQ_LINK_UP;
> -		pfe.event_data.link_event.link_speed =
> -			i40e_virtchnl_link_speed(ls->link_speed);
> -	}
> +
> +	i40e_set_vf_link_state(vf, &pfe, ls);
> +
>  	i40e_aq_send_msg_to_vf(hw, abs_vf_id, VIRTCHNL_OP_EVENT,
>  			       0, (u8 *)&pfe, sizeof(pfe), NULL);
>  }
> @@ -1940,6 +1993,7 @@ static int i40e_vc_get_vf_resources_msg(struct
> i40e_vf *vf, u8 *msg)
>  				  VIRTCHNL_VF_OFFLOAD_VLAN;
>  
>  	vfres->vf_cap_flags = VIRTCHNL_VF_OFFLOAD_L2;
> +	vfres->vf_cap_flags |= VIRTCHNL_VF_CAP_ADV_LINK_SPEED;

There is no mention about addding this capability in the commit
message.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
