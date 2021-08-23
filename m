Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98DA43F53B8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Aug 2021 01:44:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E1C9B40366;
	Mon, 23 Aug 2021 23:44:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jKhlXY8OZCWj; Mon, 23 Aug 2021 23:44:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7397840367;
	Mon, 23 Aug 2021 23:44:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 379431BF3AF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Aug 2021 23:43:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2AEDF60807
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Aug 2021 23:43:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3c4m1q7iG6nP for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Aug 2021 23:43:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4DDDF607D1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Aug 2021 23:43:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10085"; a="204337946"
X-IronPort-AV: E=Sophos;i="5.84,344,1620716400"; d="scan'208";a="204337946"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2021 16:43:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,344,1620716400"; d="scan'208";a="526361263"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by FMSMGA003.fm.intel.com with ESMTP; 23 Aug 2021 16:43:48 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Mon, 23 Aug 2021 16:43:47 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Mon, 23 Aug 2021 16:43:46 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Mon, 23 Aug 2021 16:43:46 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.172)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Mon, 23 Aug 2021 16:43:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JQ5UduUhT2/MHw3AEFspzlxBfVCiL0UkGrEcWRwn9L4EpA5uqmC82X2qtsReeEtpFk3atsquLt6zYsREBEwLaZyirz6JvF0yApoumsr8af4k69xJjhpPGFrljBeRvzwI1adnPuNhgvG8MXrkroRljmyaKAVwLQhXDj27OunmEFD7oqCncsXufGas/FjBmg3Imsj6aagkCwMI1xwAyaYfi8YMZV4owe/DfCkfuQXlF8L4S0DMS9R9vh528erlFKDZSY+/3QDqwQ5/MLbC+umoNEzJCQ/F3MWd0WGl2cA8jxk5wMLs6EgdBLpPhlBhFodyxYfKS1yaiGWyRSAO9kjt2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a47VPlMhoROC453sUk45fM2q+kk7/jRu/HOv6XWrq8E=;
 b=RzPjRN2diyNKvnnQUAfE8iP+1eTOuCctMKbsWMXVrF0PTQDwsuKUmkSuSQ06/ul32KzztX3bP+dalHo5ZMmogrZmWygONh72Wwuio3J6voO/MN8rQpwEMG6fdYuQe3lhnIqKLhorx3bQVFY1JqAB1nLRumuehlMog2D8/LVybGVCpDpQ7dWLUaVfhTv0w3wHf+BQZJ4eNxaN+s7cMNcnDqtAEBBlvMkewoL5BtdXGqqo7Hlz7bHiMp4cyHy1UNMd/l/bPSFrwyLJ10iL6SdfzJ8wjV00uQRz7bYxwQdVoOB32wlktYRnuYEfJYssDkDak6pRRYhvpZsTj69iRKHHLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a47VPlMhoROC453sUk45fM2q+kk7/jRu/HOv6XWrq8E=;
 b=ahz/7geJgi1r2kVrlNBup+ON/x7IQFQu0DxEGJANGv4+CzFSYqQ7OA5iZk1QVwj5lmeIRbR06I4XYWYmCFs1kcELmYZUQk7K1w1VtH/ZgD24Qm2XMNVXVpx31cuX1m5X0Ex0ibfo3VqfvFZRolSJ3qicPEsLklGa4JmLU4g+jYQ=
Received: from PH0PR11MB5095.namprd11.prod.outlook.com (2603:10b6:510:3b::14)
 by PH0PR11MB5096.namprd11.prod.outlook.com (2603:10b6:510:3c::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.19; Mon, 23 Aug
 2021 23:43:40 +0000
Received: from PH0PR11MB5095.namprd11.prod.outlook.com
 ([fe80::247e:267b:c4a1:3d3f]) by PH0PR11MB5095.namprd11.prod.outlook.com
 ([fe80::247e:267b:c4a1:3d3f%7]) with mapi id 15.20.4436.024; Mon, 23 Aug 2021
 23:43:40 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [net-next v3 10/13] ice: implement basic E822 PTP support
Thread-Index: AQHXc4mTI+4lLNRbdES4VSFMQTol+auCClAA
Date: Mon, 23 Aug 2021 23:43:39 +0000
Message-ID: <14819520-4ecf-85da-915d-2f384e275fe9@intel.com>
References: <20210707234108.4071506-1-jacob.e.keller@intel.com>
 <20210707234108.4071506-11-jacob.e.keller@intel.com>
In-Reply-To: <20210707234108.4071506-11-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ea4c82dd-841d-4fa8-c5bb-08d9668fd5ae
x-ms-traffictypediagnostic: PH0PR11MB5096:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <PH0PR11MB509601FE8D32CCA15A96DF07D6C49@PH0PR11MB5096.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2043;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CU1J0W9/5JvBDm/KC8S5iqUOX+5rjNrriYqL80fR+ZG2WcnQiYLgqKzia16kdewhRFQFfImo83YTLBMphzxsDyFFdWjTBId0wrww0Jh/VL1NS8K5V6A7Tq0NYoxTfd8VkuUA/AGTQSz4IulIChTYFcgM0v11G8LDZppAvZ6omYVRIl/a+qDEW7SywWBf2TbChYA5Kko2puhLo6X73N8SwVKmL4iZp/y72CvHlRO6/aDo542TOoGjosQkihkCpN+ZQw43XffmbBxlEz7hKqrd7zs/xJ//rz/zn56SEkYBU+eMONoGdzjRPcsYeS2r7wgu4Y4+cK+BEOZOE7gDekZPCKf2HMKdz7UPKkhqjx4+wsmZj3RlbcbgkXE5gPO5/daLoRZVN2grIEg491X7Kvej8/Lk+FOyLRnuNnoYqLSJvPBUCvOOe8whcerS80DtIsek2ZI9BuPkzVJwhLV+QvykMav3l4VX7X4XUsgSEbwGxba2IKviGG+Ct//hhqwW6FiAsX7h0krFbAYC9+DVjwJBWsoeskPPwqBAOw+vfeu8tVQPKjMpOxO3uE3HxpiWMhTwm92sJl5FLdW6TH4sCQRqWdvH2fdGpyHBfOAjcOzLf71jQEk5vOgVhb8Eq8AHBHFH2D/nK2ngzKKOy9RHlnGoW3yx/JlfovYDRSVhVjxyvk2xhbGK3Imcl+6xiyNYb7oDiwyTfF/UPvIxoP6pylDXLPnhNzOuHRyZDrry79xUJjqmlV0HhDzuWl8coPukdmy0
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5095.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(2906002)(71200400001)(6486002)(6512007)(6916009)(316002)(66946007)(508600001)(66446008)(66556008)(76116006)(26005)(2616005)(53546011)(107886003)(4326008)(5660300002)(31686004)(36756003)(38100700002)(86362001)(38070700005)(31696002)(122000001)(6506007)(83380400001)(186003)(91956017)(8676002)(8936002)(64756008)(66476007)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WDRlZC9LZ0MvYU5MV0x5akVZNG1nVzJNcWYvLzJ1YnZrcU5abFVBVUR6V2JL?=
 =?utf-8?B?eHdSY2FKUGo1VlVkbGlib05QZU1HUXZDYVdvS0hrODhjbWhBdzAvNVZWV2VM?=
 =?utf-8?B?aHY1QnF2VzZXZWtLQWxpQ3MzTjhaakpJMFdnemxHT2RzUjhTVFd3ZTVhaER3?=
 =?utf-8?B?WG5EMXF0dEZRWUsybUtwUjdOVlBzangrdEN6cXR5cmFpVTJOWlk2NW9ubGh4?=
 =?utf-8?B?eVpwdk5CN0NhVzdGWUhqcFZibkk4VnlZOHZrV2JTa1AwWWVobXVSOUJ2NGM3?=
 =?utf-8?B?a2xZRGsyS09JU0oxODRSWTRORlpYdjIyZzVFMVd3L09MKzJnM1BZbjVwUm5s?=
 =?utf-8?B?ZDJ4RG5NdzhOZzRiN28xZWJyN1JjbE9OTWwxV2lXdnFLbWhoOTBTZGovaHlh?=
 =?utf-8?B?bnhrWlpXNlBOY09jNGwwbmRZOEtBSU1FRjZhUFRCNnAvL1p1K3RYTzJDRUN5?=
 =?utf-8?B?c2pqNkhXNjJ0T2tENU9FcjFrTXJrcWpOSHJhaU1sYlMvK2ZmaDVBZUM5L0JK?=
 =?utf-8?B?blVhM2JMM2ZzNW4xeldIMU01Qk5yQlhSaWhXY3FMb2RTQ3J0blBrTUxXbjRR?=
 =?utf-8?B?TXZuWGJBaUlWY1Bsb1UvZkN2c0RmRXFKbGR5SE9ueXdDbTZBVDcrNUpKdXlR?=
 =?utf-8?B?ZTRzVzNHWVFkSFhGTHRNVkl5eDhxVmp2dlBRMmdFaVNVRTVLRlQ4NUZReEE4?=
 =?utf-8?B?bmxwTHllek0rM2NCQmRYTC9vMWF5ZG9Rc2NURFNiM0pIZmFKTWJ0T1BCdEUx?=
 =?utf-8?B?OE1WQnlONWZXeWhSOGtsMWxaYUFlN0RvMUxORkdRWk5tTHJUR1dQcmJJbGdP?=
 =?utf-8?B?bE9DWUpqVm1IU2ZmWkoxL1V1WGEvMUVod1ZTSkJvcStmc0wyRjFRTVVma1dN?=
 =?utf-8?B?MU11WmZtOUVMWkdUWmt1bkRLaHpQc0g0U3ZyZm1BakZBQkMyQjBQcE5VQUxj?=
 =?utf-8?B?cHhSVSt3Z2kwOXZPeEQxMThEWitwMnBMQWQ4NndlRmJCcHhBclJ5b3p4cGpa?=
 =?utf-8?B?R2ZOQ0tESW5qT0tFM0pQTFVVb0tVYm5BNmE4RXdvd3FuVmlmaEMxYU9mcG0x?=
 =?utf-8?B?REEwQzcwaHdsa2RXY0EvUVA0YURtTHpodXdPZTJ1VU5IcHF1c05rWWkyNFRO?=
 =?utf-8?B?alJhVVphaWRMdi9HVUM3YUhBUXNNdkhZVWxkZXpoK0tzVzRSZllqRWExaUJS?=
 =?utf-8?B?MnhBZzgyRFNGVmk5UXR5Y1FoOHVrUVQ4WTNWL01NWThHdjhTdzc3VklBT3JP?=
 =?utf-8?B?YTlad2wwaXJBSVhuWlliRnNEQzRqbGlDUnh2RHAwRkdpdHhQbEF2Z2tsaHh2?=
 =?utf-8?B?cWtUa1BJNGE2RUtEblpldDgxSzRWRTZmVVNJOHc5cjdra2ZzSlRTODN3VWpW?=
 =?utf-8?B?cmxGaVZETDJ1NWk3WnljSWZnY0hrMjZFdzZKaVlGdm4xSHd4a2gxWU5qTmdS?=
 =?utf-8?B?Q3RMNjZrRTIxL1ZzM21kRzBPcjJocGU4VEpBOURZNGlmSGJUMDdjdGJaY21W?=
 =?utf-8?B?SE1kRUU3NUNoUnFuZjJVNzVJQ1daNHRXa203ZUZHcXFWY3NZTXBFZEtRVFl6?=
 =?utf-8?B?dUFIQ3BwM0JPVWpvSXBOZDNWUzZabWE4R1c3cnhoZzE0VXFRZjk5M3dFYk9S?=
 =?utf-8?B?bTlhMjRRUklsYWk4QlVkZS9PZ3psSytobGxGSTQ3MWpTWk5VUnpaMHhELzZU?=
 =?utf-8?B?S3NpN2ljMVcvTG5seGExL1lXWTY4U2ZvMFN5bU4vcWNJeGxMN29BVzlOWlNu?=
 =?utf-8?Q?hjoA/wFhaUkhjCtb1k=3D?=
Content-ID: <DE3FB82878409F48887E365AA7D76D89@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5095.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ea4c82dd-841d-4fa8-c5bb-08d9668fd5ae
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Aug 2021 23:43:39.9221 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: X81rLdsOcV1YeI5FUIpb32GPm6ZM2CJzrR1SfvTvZn23tbWD53ZZlHxeJ3LJTKE1BNOqWjPwRpleBB7HznTk3nUJ+SkiFhdh8Hol0XtyTQY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5096
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-next v3 10/13] ice: implement basic E822
 PTP support
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

On 7/7/2021 4:41 PM, Keller, Jacob E wrote:
> Implement support for the basic operations needed to enable the PTP
> hardware clock on E822 devices.
> 
> This includes implementations for the various PHY access functions, as
> well as the ability to start and stop the PHY timers. This is different
> from the E810 device because the configuration depends on link speed, so
> we cannot just start the PHYs immediately. We must wait until the link
> is up to get proper values for the speed based initialization.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---

This patch has a bug, unfortunately....

>  
> +/**
> + * ice_ptp_init_tx_e822 - Initialize tracking for Tx timestamps
> + * @pf: Board private structure
> + * @tx: the Tx tracking structure to initialize
> + * @port: the port this structure tracks
> + *
> + * Initialize the Tx timestamp tracker for this port. For generic MAC devices,
> + * the timestamp block is shared for all ports in the same quad. To avoid
> + * ports using the same timestamp index, logically break the block of
> + * registers into chunks based on the port number.
> + */
> +static int
> +ice_ptp_init_tx_e822(struct ice_pf *pf, struct ice_ptp_tx *tx, u8 port)
> +{
> +	tx->quad = port % ICE_PORTS_PER_QUAD;

This quad calculation is wrong, it should be:

  tx->quad = port / ICE_PORTS_PER_QUAD;

This causes the incorrect quad number to be used for all ports except
for port 0. Because of this, Tx timestamps only work on port 0.

Can we fix this and have a v4? If not, a fix commit will be required.

Thanks,
Jake

> +	tx->quad_offset = tx->quad * INDEX_PER_PORT;
> +	tx->len = INDEX_PER_PORT;
> +
> +	return ice_ptp_alloc_tx_tracker(tx);
> +}
> +
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
