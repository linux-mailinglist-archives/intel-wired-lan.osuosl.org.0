Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 331DC2CB168
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Dec 2020 01:22:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6AA2686CFC;
	Wed,  2 Dec 2020 00:22:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BA21Iai2ylbB; Wed,  2 Dec 2020 00:22:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5DD6B86CF6;
	Wed,  2 Dec 2020 00:22:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DEAE31BF983
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Dec 2020 00:22:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B22352E239
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Dec 2020 00:22:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vGay7blkcz3T for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Dec 2020 00:22:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by silver.osuosl.org (Postfix) with ESMTPS id BDF3F2E215
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Dec 2020 00:22:22 +0000 (UTC)
IronPort-SDR: la3J+Yurz67rb59vPS3uTOg3ROdYsd1Vl+KZ6GnifKBZfJrSVh0uUHlK9XBWmEVW1Oga9MF1EG
 t5cHw3YZZYFg==
X-IronPort-AV: E=McAfee;i="6000,8403,9822"; a="170364584"
X-IronPort-AV: E=Sophos;i="5.78,385,1599548400"; d="scan'208";a="170364584"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2020 16:22:22 -0800
IronPort-SDR: LnotwsoiPBxwXJB6Ydsn4ZkhRNABLd098v5w1wc78ouWa3EVr2wyPHB7iuv/6zdAST3Hf6yYFp
 tJeiKKycWvhg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,385,1599548400"; d="scan'208";a="549798469"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga005.jf.intel.com with ESMTP; 01 Dec 2020 16:22:22 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 1 Dec 2020 16:22:21 -0800
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 1 Dec 2020 16:22:21 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 1 Dec 2020 16:22:21 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Tue, 1 Dec 2020 16:22:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=juxVfGYNkyIb1OuXbFxgKVk6rfC68qENHnq/IUuXCRTsQCWof4TZkLdIoOVt/GXl+Xsc5Zc3Hd1pGR67fz07h5lkoPbH8RPwP2Eds8tgUg1Qy3OL2C3YuE53Chm2nOvwALh8WAWmlUREQxi7y6e1lmsrRoPVyt+r8WP1gNq6D0DYi04KPBAfDfToToNXFPBfGyVm5C4UnVzDO6keHn1mgIEcxMUCyTGF0S/R2R/OoTXJFZNvS4ePD3/f0l8ZeI22eiVZvtJjxGlueF8SWoqBZnnmOHrwsA3o3DCYBtiVWnscqZ5d5Qc58i2c3kLeOr8MTngaqIS7PeSYWRwRztSy+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mpeeLdj1mKAeSnW3l1eA+/fpU5t6U/XKTdi+lMox3vo=;
 b=MASyg6/oP41lfb5y0QVw7JvMYzyRWsVcQcOVNntvwCyN3e/MX90JM+TdWuUnhB/wam0t9SBiqTSF0g4fsTfQ5TgtQejBqQosEMitMu6VBzAmMCbrI05JKXbjMofVNe56nwaH7zoP59896KcwvM2E7Ts/qs/IaazbKBauuJyHGFX6zhHMiFTR9z6ahwjMhM0QgOGoUyw8s38WxaQIQUsBriVxHtJsOA9BDVQ6/Ou2E/y8H3chbdrSqZVnF+Lp4EJq20WwjXi07Pv2jISB5X3bmJYWvqT6vk0DKRyjBTGYoxy5IUqUHWdaG8ouwJcAuaFoWYz6/uN2Q0iQ7UgVbXNBpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mpeeLdj1mKAeSnW3l1eA+/fpU5t6U/XKTdi+lMox3vo=;
 b=bOO4jvv4yUNlBFzqmfVV32XgCzyNvU9E3jwGtTFn9GHsYT/qKfNuuC4kYLHt2EJq7GYLEz32/8f9zEY0EtYKUQQSi2nEw8p+7hVNGktboXN4Ilh6vNxgl/eR5zoPv4ynVTHLCTiqakdLbSlymnAjoWtQSTq4T6ijFthuG/9PSuA=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SN6PR11MB2927.namprd11.prod.outlook.com (2603:10b6:805:cc::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3611.31; Wed, 2 Dec
 2020 00:22:20 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::5c92:dd20:ec58:76da]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::5c92:dd20:ec58:76da%6]) with mapi id 15.20.3632.017; Wed, 2 Dec 2020
 00:22:20 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Palczewski, Mateusz" <mateusz.palczewski@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] i40e: Fix check for PF state
 (vf disable)
Thread-Index: AQHWwadRXQfU8Q6lO06dCaJ3GXFGkani/xQA
Date: Wed, 2 Dec 2020 00:22:19 +0000
Message-ID: <7c6c477abb7dd93d02f091797362895e3a86f18c.camel@intel.com>
References: <20201123144517.15180-1-mateusz.palczewski@intel.com>
In-Reply-To: <20201123144517.15180-1-mateusz.palczewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5 (3.28.5-3.fc28) 
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [134.134.136.204]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6d2d1c69-b33f-4906-ca03-08d8965854fc
x-ms-traffictypediagnostic: SN6PR11MB2927:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB2927CB452D4422D4881D8DDCC6F30@SN6PR11MB2927.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dozTFGswk9jBDT4keNuafXCFlDjLJ+r3lxEDdhWdjxO0QP7PInZh16N4DoN7YVbNk5ZIUayT5/ywWiUkgH3OMcetGMtFqVEJJBZ+3bz5zXicJi2Twr8kdOKzv+kv4PrFvd01ijQdha4gJFZ/bZ0+BSjSpgc9SmqOXLPl9RC0jqjEeWmOJeYTbljLP0Ah8S0ackr/AkkMeQdz/PwqOuPyJXtiaH/AkeI5arLeiMaXl9kT0vwJwat381VwBuY8u1osdq0yzy5Nx4eI4LnmWy6GItUFNyKPvtTTQrKUKFokAjWEF2Mqhg3coMWFq6QwH7seaYx3H/ii//1RSsFSnljyoUwyCf7cgh6pKWwd44/uoS3Hsgtldv1uKThLzDcz232R
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(136003)(346002)(376002)(366004)(39860400002)(66946007)(76116006)(66446008)(8676002)(5660300002)(83380400001)(6636002)(8936002)(107886003)(36756003)(2616005)(6486002)(186003)(2906002)(86362001)(4001150100001)(66556008)(91956017)(64756008)(26005)(66476007)(110136005)(4326008)(478600001)(316002)(6506007)(6512007)(71200400001)(99106002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?VHVRWTBMTjc5YUJKdDcxaWZwdDdPMHpOQUJaVTNPRkhmZHJVSUVyY0N2aHNv?=
 =?utf-8?B?Y2MxZ2htMUJxZVlxaVR2R0xCY0N0cU1BdUx0N3VlRVZuS0ZkSDlBeFg5bVRh?=
 =?utf-8?B?UGdPM3BWckhPdk00cU9ndDYya252dTlTTGVjempnMnNwMGZJTDJxcVFVcmVF?=
 =?utf-8?B?UlpuSHVoRmUwSGRZeVUzMVZkNE8xeWRNUS9maEFjQlZLVEU3WlNlbG40UUsy?=
 =?utf-8?B?QXM3ZUpUcHQ4NWpyY1ViNWdvYUZVVzMwSUxUdnFtSUpxS0VUbzhXY3FlZzhi?=
 =?utf-8?B?dkZjekpHb3ZqZXNNVnFJeXMwODNPV3NOdElMSGZ0NTVMSmlyUzRKNE5seXVa?=
 =?utf-8?B?aFZ1ZFFJNjVaN3JXdEtvUndPUk9JbTJxcWljWkgvMmdQZ1ltbEE5TEpxSTk5?=
 =?utf-8?B?alRYVkZnN0tiMTRIRWdWbFlEOExyb2FuUGdDV1FVVHc4Znk3TkFVVW1XR0Zl?=
 =?utf-8?B?bnhNb3ZuSmRYRzNqd1lreUM4clZFdzJlMm1JODh4cUhrbGVURThuZCtrTHJG?=
 =?utf-8?B?emRERHlwak44eHhyQ3JlVm8xY2dJT0JCbmp5QUR1MGE3QlNrZktRWFVoZ2ll?=
 =?utf-8?B?ZktCUm1xQklXcktTOGc5OUJFeGs0Y3BnOW1VV0FqTlRNdGZ3Nmh6RHdwZ0Yv?=
 =?utf-8?B?Q0hIclE5K3lWaGZCR2FTUG15aXJoTWh5aGorQy91TnQ2WkJuWlhYd2hUNjdL?=
 =?utf-8?B?RzQweUZacHUvc1RMa1NuOExIbGt3VnplSExxTXNLOEFqM3hWVGVhOGcwcndG?=
 =?utf-8?B?VEEycEt2Zm9JM1AxVEZEbTJoK1c0eVRRa1VVSkxZUm9aZUdCQTVjNXFZd0R0?=
 =?utf-8?B?TTRMeWx2S3NGa0NFc3p5cUxrUkN1ZHpBZTVKYWxhQ2g1ZHhyR0RXTUFzcGEv?=
 =?utf-8?B?QnNsKytVbWpIbklJeFJ1aXJiaVNjUU1GRHBlTlAvUlRNK3ZsUUhHYlEvOERw?=
 =?utf-8?B?dGozOG5LSEJSWng4Z0NRbEpNWTVSMDRKYUFwcVJWQUZhTFBUV1FSeHE5Snds?=
 =?utf-8?B?ZHl4dHQ0Nk0xOXJ5SDlwQmZyQVprT2hnbEFIV1FYR1dQemJSdVF2dVRHRUhx?=
 =?utf-8?B?OUpiQ1dKS1NwUzVWMWZKVEhJQmdTLzNwVWxQY2RWTlgxSlljVHlXVEtnOTlH?=
 =?utf-8?B?MktBaFZMQXBpQ25MNGE2VXhWNlNPaDhsWG80NTNCT2R2TG01L1lweG4yTmVq?=
 =?utf-8?B?djcwQXFBd2YwdDBoZzRaOW5LOGJIZ3lUWG5TcWNieVVtb2Jtakl0WjRRT2NT?=
 =?utf-8?B?TmhOVENGaWpiajVqNmNGVm9GTXN2UDlHQTdFTUFDNENrWU9mZ3lUWEFTVHFV?=
 =?utf-8?Q?ePqDu0OSpWV9oTDHFp+6RNaeohjUrE13ST?=
Content-ID: <F9BE54479D4BFB4F9AEE47625D9C85D0@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d2d1c69-b33f-4906-ca03-08d8965854fc
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Dec 2020 00:22:19.8557 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: y+jQHsvPdSEvXq3jPLSFt0FaLztwsBekX3XK+LR4PlO0khHwXBwKtTRKnGiq1JYxcQdqZBArMpE/KFffAMnR2iab5p0HKGgAL1l5yOIN8rU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2927
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v2] i40e: Fix check for PF state
 (vf disable)
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
Cc: "Laba, SlawomirX" <slawomirx.laba@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 2020-11-23 at 14:45 +0000, Mateusz Palczewski wrote:
> Adding missing comments to previously applied patch.
> 
> When PF state bit for __I40e_VF_DISABLE is set,
> it doesn't mean necessary that the VF called in
> i40e_reset_vf is disabled. It is rather impossible to
> call a reset on a disabled VF, so return false and
> repeat the request after a while.

The title and description doesn't match the patch. The description
isn't really explaining the comment.

> Fixes: 8d38e0cd5211("i40e: Fix removing driver while bare-metal VFs
> pass traffic")
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> Signed-off-by: Slawomir Laba <slawomirx.laba@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> index 8951740..d30a57f 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> @@ -1423,6 +1423,8 @@ bool i40e_reset_vf(struct i40e_vf *vf, bool
> flr)
>  
>  	/* If the VFs have been disabled, this means something else is
>  	 * resetting the VF, so we shouldn't continue.
> +	 * This is a global state of a PF, so it is possible that
> +	 * a different VF is in reset.
>  	 */
>  	if (test_and_set_bit(__I40E_VF_DISABLE, pf->state))
>  		return false;
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
