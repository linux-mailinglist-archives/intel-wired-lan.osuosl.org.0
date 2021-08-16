Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 404B63EE09C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Aug 2021 02:00:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C577A80D96;
	Tue, 17 Aug 2021 00:00:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mlunUQ_zE3ez; Tue, 17 Aug 2021 00:00:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B45CE80D98;
	Tue, 17 Aug 2021 00:00:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 38EEE1BF21A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Aug 2021 23:59:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2066B400DF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Aug 2021 23:59:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uCxUs-Uz_KNR for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Aug 2021 23:59:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F2DF440012
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Aug 2021 23:59:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10078"; a="203165518"
X-IronPort-AV: E=Sophos;i="5.84,327,1620716400"; d="scan'208";a="203165518"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2021 16:59:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,327,1620716400"; d="scan'208";a="679695725"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga005.fm.intel.com with ESMTP; 16 Aug 2021 16:59:56 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Mon, 16 Aug 2021 16:59:56 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Mon, 16 Aug 2021 16:59:56 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Mon, 16 Aug 2021 16:59:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dXvCtJMMZgjgw72KS01U3joCZhSHEKzvnYV/8qDIZOTi1ym6o4+bZBw7KBO8ggV7EV6+6dRAfaZ3WxMkwJQNFXe8W4VZEHhZS4Mmyty9h9O6svzcv2LhnOlfIo+WUlInn8ckgo2JxHad/zEcYxo5QHoYeLbulPNS3od/CCe60U1wkhpjdri/INApj606VcO9XIFvE65YDtoAsvl2ix/rTBrluiSalqn+zfKyes/sBDMEpOQMCBCLjUalWbQDar/4wfQ1rxeLrjOv+CnKzJs6xBM6PjCRjPunuOOIWNuVfuh8UBbIy6n4goIn2YzUEvB+5wXtjt+moM7H9aW/y6lKwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aA6zlcma+v2AmjvlYUoZ63KyMh5XW+OMJcWXX1XGHgg=;
 b=Pz2qkFLLjuZrgje6o54fqgn7A/kR7KYszQVOMP6FpOT9114wzltOuYnR0LtSAIbQNtmpCIrGhYHS1ARm7DRVroFOclFN1RIebb0pl5SxXmMXqlTkdaO4f9jSkQw7+HRKaIviMQ6wD3MBvsc2gKoXss1h6VGR3WCamcSj6ihIhWH2H+ceKTthdQNubVvRz5u0PLJ9ACof2TnHGu0lRsWhNc7GFpThVrL1wYvq75Hc31wyOB/e7LtyhKKq4bik1ul9O8NIcV36SWG1qCKmqxGoo2MwklBwafWeBOBHv8BgU9PHuhnL7tYRj5aWbYJ9rgf1PlRtGdG7hCrxJIY/TG0KnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aA6zlcma+v2AmjvlYUoZ63KyMh5XW+OMJcWXX1XGHgg=;
 b=Lnw+obfMkNk7hJ8dUjiY3+cDB1ooH68MG589dRzCoOmI/4lVDL4zhty5SaKt+5/3fiV+b+RrZ/rkjYqWNdSEsKOhZZrKvfHkvm8m8JvA86uXEeSozJ/uLdVKX76TX5ytLAq3JjQ2zE8o1J78r/kQlG72v1Lcp6KJPGXCERUWeF4=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SN6PR11MB3135.namprd11.prod.outlook.com (2603:10b6:805:d5::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4415.13; Mon, 16 Aug
 2021 23:59:54 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::4e0:837:41ee:5b42]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::4e0:837:41ee:5b42%6]) with mapi id 15.20.4415.022; Mon, 16 Aug 2021
 23:59:54 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Machnikowski, Maciej" <maciej.machnikowski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH intel-next 3/4] ice: Add support for SMA control
 multiplexer
Thread-Index: AQHXkouRms8vPNI3gEiRhsab69BQ6Kt20YcA
Date: Mon, 16 Aug 2021 23:59:54 +0000
Message-ID: <27c204aad2d51f207999b4b869805a3dfb6b0b86.camel@intel.com>
References: <20210816102729.1266522-1-maciej.machnikowski@intel.com>
 <20210816102729.1266522-4-maciej.machnikowski@intel.com>
In-Reply-To: <20210816102729.1266522-4-maciej.machnikowski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5 (3.36.5-2.fc32) 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 32e89301-0a56-4af2-9c10-08d96111f1c9
x-ms-traffictypediagnostic: SN6PR11MB3135:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB313516A148253EFB342DCE76C6FD9@SN6PR11MB3135.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zPRH0Xr7rOcjJgMHCmpFkdR3Ue2W8Nww+WU2qXVVgIEm5BecUB0L4elt1axgZHGFv/2KdpYKimpsVkKEs05Fu9IH2NaKcAaBhnXcJJsh+u/OzQkF40bdrLs5uvBzNt9wzM67kNW/FyIFb/H7is5ztiVX6IuIybubQAxXOZoLJnT1he3U7R4I4VnnUvUtlg2e3QzH60t2e0YGWaGN6PQRZW6RKP5tOfs8HpzFTwk20HmY8X3P2Jjei1lxuJ8E2ktGegU3NJeSVpyWSYf2YJownBhfqmkINzhTL6nOSN59k6jrgMucgNmdlI1oxnbtT6OOd1e70RL7oMcPbFiuOsVAj1hNYz7hQ5S7zesNXzsRVE9b8jbj+0Vgz/2bXC79BwetaegmUlwf8m/fr67zXw5w1/YfPvv8G2dxMDCjMa1h+8LjNewAOCAjigUOAhm9+R+RblF+3osDSrHmCeFW5Crqq61KFYJ4LmJPOQMHrBqFZFFU6DGGo2GKOWnAYgd8d3MYGtEpn83S7n2c1UT7LlnxjrPj+BLMG81CzGf8Fx3vln+Rip6Y9gj04l2I4sYztLZz3/eMs+H12VKj30AOTBWgIfn6/PCcvst1pJRlSDS1y67ZYV16/4uFfbk3IWGHWgzqrXs/9JZ8cjA1EX0MwnbthzVHa4zYe31Oyvt7mgYKEG+yOaBs6THwgUUpkxqOlatDiFAqL7GzOqg8uvoa0cygGg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(64756008)(66556008)(66476007)(38100700002)(508600001)(6486002)(66446008)(66946007)(6512007)(122000001)(36756003)(8676002)(6506007)(76116006)(91956017)(8936002)(86362001)(110136005)(54906003)(38070700005)(71200400001)(186003)(2616005)(2906002)(4326008)(107886003)(5660300002)(83380400001)(316002)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VVNyZ2dNRnZKL3lSOXZIZFFpU0wwWjdlZU14b01UNGZRTzhuQXUxUElyMGZq?=
 =?utf-8?B?cnpXb2FjTFErTGVDVDBlM0lhVGlFVmoxQXcweWVnTFg2MHBsTS9GVHpTWWo5?=
 =?utf-8?B?RDBvbHF5Nnp2ZDZDcXdhbDQwcjA0RlB3cWtCR2RTTXJCZmgzaENaR0gwMFpq?=
 =?utf-8?B?dW5CMXNpUlRSMXBiVmZ0OC9kbGo3emFkS3hCOCtuTG5YRHNUQUZwRUs5elIw?=
 =?utf-8?B?UzNNM3JDZzlHeGRhMXJKTWJDRUJ0UDU0Q2pmZVVSU2svalBjem02elBnUXVj?=
 =?utf-8?B?ZzlLSGlMRFFGYmY2a3lvWVk2cFRjQ293c0pVZkp4TjBNNGg2cjZyT25xTWJY?=
 =?utf-8?B?cm1MSEFJT2d0bDRXaXp4MTFXSGtHcmRDYjBzd1pXUFF1aW1JNG4xUlkzZmFs?=
 =?utf-8?B?MWFhYzdpV2RNVFVjYzBvdUFTSTdxUjZqNTJha1VYWEc0ZVFRMG9aZ2NJc0dO?=
 =?utf-8?B?V1lsRGJDLzlHeVd4OUM5cERHNVd4em1DNW5DeE1nT3ptUXA2UU5MQzRKc0R6?=
 =?utf-8?B?Q0pQM2w3UnVjR0xIZEdBQXdHa3JaeXllS2Vsdy80MGxBSWZGMkV1S3JxTWs1?=
 =?utf-8?B?Y052N3dxdjdvVHUvL2RoY2VuLzA5ZjRDSUhlUjM3ZzRQZ0JSSU10bWFtUURP?=
 =?utf-8?B?dFh2aDRXNTBtTUUyM2tUQTJjL1M2c0pFVWh2Slg3M0U0L0J3Y3lFZ01oUkpY?=
 =?utf-8?B?Wjhramt4a3BWL1p5cHJFd3ovM2Q0ZUIwRzhGNXNScis2dXVCMWRDeHFsZUYv?=
 =?utf-8?B?bVdUNGo1TGhBVzdiRWd0RlVJZHRHOUhqSmhlOFVQbmlrdlh1STBYN2N5S3Jq?=
 =?utf-8?B?ZjFndEd0QjBuTWxoTnYyc0lPTENhaG9wRkJlbytlWTZIdWpUQXUzZEtTQUl2?=
 =?utf-8?B?b3ZmMVR0ck04REV6aDNUeUhjOWdoRjJLNFI0TTZ1N0w0aFhrdFYwRCtXdzR6?=
 =?utf-8?B?ckRVVFRwcWpsZldvN0hkUGdMdkNORHJxK0MwZnFTUzB5bVBiR2M1dndodzhy?=
 =?utf-8?B?RlhPV3pERUpUTTFuU0tLZURrcXM5bXpOSmgyVkEwMUpYOXp2ZGJYeUZiNGQ5?=
 =?utf-8?B?MmNSRnM4T3ArcFhISkU3cGF1UzJQNHBGQmFLaE5yTFp6SWQ5SklDajA0VFRZ?=
 =?utf-8?B?SU1yUEdzdU5URWRVVjVyV2p0ZHhia3ZVZm9pbjRnT2RxTk5tNkJSYS9TaTFh?=
 =?utf-8?B?OEZGU1NiTythdnVOdjJBdWJxeVVpT1VxOE1GejBWa1lIKzB2enZyWlVIb3Fn?=
 =?utf-8?B?Q2NvTm9rQThzenI1ZlhSdnJyZSttMFhLZ0MrUmdyQVI0ZDN4U25IdFk3VDli?=
 =?utf-8?B?dGwwOHhuTVk3a1dOWnZiQ0NRSzk3OVg2dnMyeUR4NUxpa2lxOTZYU1VFeU45?=
 =?utf-8?B?YlBDeThYWXduQThXckdmeUwrNlo2NlVMNnpqSnpoSGZOVTJBMTJjUU1LM0k4?=
 =?utf-8?B?aUcxbU83V2tNM2VnNjFCcjFYdGJXejNzeG92MmtuUmF5d3Vjc0ZqSG5XR0xE?=
 =?utf-8?B?alZNZWNxZ0I4MS8wL1U4L3FmMWltVE9tTit3YmxTRm9va3YxalAvVWJhd2k2?=
 =?utf-8?B?MUsxR1dpNy9wWnFoc1BETXlUcW04aXppcFFnZFVrYkpyd1dsLytiVGJFRFZy?=
 =?utf-8?B?dlpjQW9nYi9LYkhWR3ZOdi9Ob2taSUo5UDFWK2ZLRnZQSDFQb0xTWkdCdlVw?=
 =?utf-8?B?RmJJZ2RJQWxmU201bmN0dVd3MWh5Y2ZnQVZkYjUzTkNBNURBQ2JiN3RVSEpo?=
 =?utf-8?B?WHZxVk9pdDUzZW4rdGxjcXIvOVArRzhnQkw4dU1EWUNYVUZoSHpvTldUSk9a?=
 =?utf-8?B?Q0EyeldPRUFuTnd3K1FHdz09?=
Content-ID: <85B7CCD65B1C3C4BAF9CB269659CF5DC@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 32e89301-0a56-4af2-9c10-08d96111f1c9
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Aug 2021 23:59:54.7726 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Qy0Etr7lThyq9T4xMZU2bGpj6Xfx+qGcW16vSnb6iyxS80F2grFAdFHFCt5AyNdiZRsV8oT3aZTSQnZKs3wTqVAX9LMlXIduVOu7KjXX5tQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3135
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH intel-next 3/4] ice: Add support for
 SMA control multiplexer
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 2021-08-16 at 12:27 +0200, Maciej Machnikowski wrote:
> E810-T adapters have two external bidirectional SMA connectors and
> two internal
> unidirectional U.FL connectors. Multiplexing between U.FL and SMA and
> SMA direction
> is controlled using the PCA9575 expander.
> 
> Add support for the PCA9575 detection and control of the respective
> pins
> of the SMA/U.FL multiplexer using the GPIO AQ API.
> 
> Signed-off-by: Maciej Machnikowski <maciej.machnikowski@intel.com>
> ---

<snip>

> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> index 0e1567e4296f..ebbd5e074297 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> @@ -3139,3 +3139,158 @@ int ice_ptp_init_phc(struct ice_hw *hw)
>  	else
>  		return ice_ptp_init_phc_e822(hw);
>  }
> +
> +/* E810T SMA functions
> + *
> + * The following functions operate specifically on E810T hardware
> and are used
> + * to access the extended GPIOs available.
> + */
> +
> +/**
> + * ice_get_pca9575_handle
> + * @hw: pointer to the hw struct
> + * @pca9575_handle: GPIO controller's handle
> + *
> + * Find and return the GPIO controller's handle in the netlist.
> + * When found - the value will be cached in the hw structure and
> following calls
> + * will return cached value
> + */
> +static int
> +ice_get_pca9575_handle(struct ice_hw *hw, __le16 *pca9575_handle)
> +{
> +	struct ice_aqc_get_link_topo *cmd;
> +	struct ice_aq_desc desc;
> +	int status;
> +	u8 idx;
> +
> +	if (!hw || !pca9575_handle)
> +		return ICE_ERR_PARAM;
> +
> +	/* If handle was read previously return cached value */
> +	if (hw->io_expander_handle) {
> +		*pca9575_handle = hw->io_expander_handle;
> +		return 0;
> +	}
> +
> +	/* If handle was not detected read it from the netlist */
> +	cmd = &desc.params.get_link_topo;
> +	ice_fill_dflt_direct_cmd_desc(&desc,
> ice_aqc_opc_get_link_topo);
> +
> +	/* Set node type to GPIO controller */
> +	cmd->addr.topo_params.node_type_ctx =
> +		(ICE_AQC_LINK_TOPO_NODE_TYPE_M &
> +		 ICE_AQC_LINK_TOPO_NODE_TYPE_GPIO_CTRL);
> +
> +#define SW_PCA9575_SFP_TOPO_IDX		2
> +#define SW_PCA9575_QSFP_TOPO_IDX	1
> +
> +	/* Check if the SW IO expander controlling SMA exists in the
> netlist. */
> +	if (hw->device_id == ICE_DEV_ID_E810C_SFP)
> +		idx = SW_PCA9575_SFP_TOPO_IDX;
> +	else if (hw->device_id == ICE_DEV_ID_E810C_QSFP)
> +		idx = SW_PCA9575_QSFP_TOPO_IDX;
> +	else
> +		return ICE_ERR_NOT_SUPPORTED;
> +
> +	cmd->addr.topo_params.index = idx;
> +
> +	status = ice_aq_send_cmd(hw, &desc, NULL, 0, NULL);
> +	if (status)
> +		return ICE_ERR_NOT_SUPPORTED;
> +
> +	/* Verify if we found the right IO expander type */
> +	if (desc.params.get_link_topo.node_part_num !=
> +		ICE_AQC_GET_LINK_TOPO_NODE_NR_PCA9575)
> +		return ICE_ERR_NOT_SUPPORTED;
> +
> +	/* If present save the handle and return it */
> +	hw->io_expander_handle = desc.params.get_link_topo.addr.handle;
> +	*pca9575_handle = hw->io_expander_handle;
> +
> +	return 0;
> +}
> +
> +/**
> + * ice_read_sma_ctrl_e810t
> + * @hw: pointer to the hw struct
> + * @data: pointer to data to be read from the GPIO controller
> + *
> + * Read the SMA controller state. It is connected to pins 3-7 of
> Port 1 of the
> + * PCA9575 expander, so only bits 3-7 in data are valid.
> + */
> +int ice_read_sma_ctrl_e810t(struct ice_hw *hw, u8 *data)
> +{
> +	int status;
> +	u16 handle;
> +	u8 i;
> +
> +	status = ice_get_pca9575_handle(hw, &handle);
> +	if (status)
> +		return status;
> +
> +	*data = 0;
> +
> +	for (i = ICE_SMA_MIN_BIT_E810T; i <= ICE_SMA_MAX_BIT_E810T;
> i++) {
> +		bool pin;
> +
> +		status = ice_aq_get_gpio(hw, handle, i +
> ICE_PCA9575_P1_OFFSET,
> +					 &pin, NULL);
> +		if (status)
> +			break;
> +		*data |= (u8)(!pin) << i;
> +	}
> +
> +	return status;
> +}
> +
> +/**
> + * ice_write_sma_ctrl_e810t
> + * @hw: pointer to the hw struct
> + * @data: data to be written to the GPIO controller
> + *
> + * Write the data to the SMA controller. It is connected to pins 3-7 
> of Port 1
> + * of the PCA9575 expander, so only bits 3-7 in data are valid.
> + */
> +int ice_write_sma_ctrl_e810t(struct ice_hw *hw, u8 data)
> +{
> +	int status;
> +	u16 handle;
> +	u8 i;
> +
> +	status = ice_get_pca9575_handle(hw, &handle);
> +	if (status)
> +		return status;
> +
> +	for (i = ICE_SMA_MIN_BIT_E810T; i <= ICE_SMA_MAX_BIT_E810T;
> i++) {
> +		bool pin;
> +
> +		pin = !(data & (1 << i));
> +		status = ice_aq_set_gpio(hw, handle, i +
> ICE_PCA9575_P1_OFFSET,
> +					 pin, NULL);
> +		if (status)
> +			break;
> +	}
> +
> +	return status;
> +}
> +
> +/**
> + * ice_is_pca9575_present
> + * @hw: pointer to the hw struct
> + *
> + * Check if the SW IO expander is present in the netlist
> + */
> +bool ice_is_pca9575_present(struct ice_hw *hw)
> +{
> +	int status;
> +	__le16 handle = 0;
> +
> +	if (!ice_is_e810t(hw))
> +		return false;
> +
> +	status = ice_get_pca9575_handle(hw, &handle);
> +	if (!status && handle)
> +		return true;
> +
> +	return false;
> +}

A couple here as well:
> ../drivers/net/ethernet/intel/ice/ice_ptp_hw.c:3227:46: warning:
incorrect type in argument 2 (different base types)
> ../drivers/net/ethernet/intel/ice/ice_ptp_hw.c:3227:46:    expected
restricted __le16 [usertype] *pca9575_handle
> ../drivers/net/ethernet/intel/ice/ice_ptp_hw.c:3227:46:    got
unsigned short *
> ../drivers/net/ethernet/intel/ice/ice_ptp_hw.c:3260:46: warning:
incorrect type in argument 2 (different base types)
> ../drivers/net/ethernet/intel/ice/ice_ptp_hw.c:3260:46:    expected
restricted __le16 [usertype] *pca9575_handle
> ../drivers/net/ethernet/intel/ice/ice_ptp_hw.c:3260:46:    got
unsigned short *

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
