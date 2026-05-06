Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YCofFVq5+2kiEAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 06 May 2026 23:57:46 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A55784E0F44
	for <lists+intel-wired-lan@lfdr.de>; Wed, 06 May 2026 23:57:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B7BE241010;
	Wed,  6 May 2026 21:57:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4_209_jxxOyj; Wed,  6 May 2026 21:57:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4247C4100E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778104663;
	bh=d8W/mesTDn066aYhmIIdUuxbRzsC3cXLDwABf3TglY8=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7FlPcrJAtgzaaCsvF2RJLgh4wq6VXNqP8B/Y6Gr9Yfc7a+XLu/nWUTAcCAJAE9M1p
	 2qwJAZ2itESPKdhvWOO1wnsST9X56cmE5d1ykso1cR5KXMPTRvRp9fSGIskSri077p
	 sNRY/DgHuojS1Ovr3ngFbZjLL0x9Y3l0mztL9pn5/5uqjxpEIauqe3wCJfwo/+P9n7
	 SRBESoL9f2P6X5TP454uKlgj7fpGFLqz54myHwmID6b3oO7yg8qJZQQrBDwCZ4meih
	 45EjwZFB6nlUbuIvdt9tbgcH+kirzIqcEb5sYxlrLKE5dVWZwDgCDjUNRrQIfqC9ZS
	 b+/OMnQw3vGtg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4247C4100E;
	Wed,  6 May 2026 21:57:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id CC96B317
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 May 2026 21:57:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CA4A64100C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 May 2026 21:57:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ulxpvSgZSJFM for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 May 2026 21:57:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org DC9D34100B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DC9D34100B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DC9D34100B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 May 2026 21:57:40 +0000 (UTC)
X-CSE-ConnectionGUID: gY45of/rQjyizlGw/gKIwQ==
X-CSE-MsgGUID: 0TIXs7XnRS60diKKuUmXNw==
X-IronPort-AV: E=McAfee;i="6800,10657,11778"; a="82670770"
X-IronPort-AV: E=Sophos;i="6.23,220,1770624000"; d="scan'208";a="82670770"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2026 14:57:41 -0700
X-CSE-ConnectionGUID: 300aEURKSS22KNyz8v0NgA==
X-CSE-MsgGUID: p0bCjK2KSeuox16cXdVSzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,220,1770624000"; d="scan'208";a="236189347"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2026 14:57:40 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 6 May 2026 14:57:39 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 6 May 2026 14:57:39 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.46) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 6 May 2026 14:57:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=L6UdEfN27STc/+Gb44PXDDonvxhs1TjjFbjHC14TTY7cTe+1PC/55ljAyyOkBq4oO0+ZmyyWO4e6PJyh1LkU0UtYz5orm6xH3j/DNtKlzM1hYSqKaTa/MAKY3mjgU2NH2lBnYTD1u1Hg+FH/w9eKlXdb4Kh7VgGcGq+MFroa/HTOrbct5nKgkPtUcFK8pa/E/oM1b0rwTwyRMVA72JaNP/cs3jCGoT+2AnjwWKV4VFvAkLGKXviyAzumR/e8KQrEeUuQHnoarAjMntjASE5iTaytNs0u/LTi7OV4n+Nuh2VqAUeMKUhtNvMnLgFfnZT/T3LGfg8uAt5gaub7IrHAHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d8W/mesTDn066aYhmIIdUuxbRzsC3cXLDwABf3TglY8=;
 b=mqodHeKAxM1MSB5YMMlmZQjoz88Ogg8T1Ttc1Q4wYFNeuN/ST1AcSxX8D/xq9HsgcmMES8mXlDSkqAz58MiO7L30aTy4zq1j3Dy0/09oJ/dotvJjkdwQvjuRtASIx3OknFPbaF/FuW6Yt3Ykx1Y0aR9+PZOiqJjhsfUeEgGiqeJxHVEb1Sie/hNj0Cirro706HnsZPzqGOmDON5uxH+7hykiBu1cf/CKa3kwWm1e/ouEgjGwuAVzoLzmewOXJ4cpKBaZH/JrQBtTCKnEqBfpXVyZk/NqQ32WLMiyulP6OnwsxVvsvsp/FuwFnrZDcL8kEkYt2c0M5qU0AGIwg0kLyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7592.namprd11.prod.outlook.com (2603:10b6:806:343::16)
 by PH8PR11MB7141.namprd11.prod.outlook.com (2603:10b6:510:22f::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.15; Wed, 6 May
 2026 21:57:29 +0000
Received: from SN7PR11MB7592.namprd11.prod.outlook.com
 ([fe80::3e09:8700:df72:37b6]) by SN7PR11MB7592.namprd11.prod.outlook.com
 ([fe80::3e09:8700:df72:37b6%6]) with mapi id 15.20.9891.008; Wed, 6 May 2026
 21:57:29 +0000
Message-ID: <10637b35-766c-454b-b9fc-ac9e6df36da5@intel.com>
Date: Wed, 6 May 2026 14:57:26 -0700
User-Agent: Mozilla Thunderbird
To: Mohamed Khalfella <mkhalfella@purestorage.com>, Paul Menzel
 <pmenzel@molgen.mpg.de>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, "Paolo
 Abeni" <pabeni@redhat.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>
References: <20260428181450.2622899-1-mkhalfella@purestorage.com>
 <558971b7-caea-471a-8fe2-73ba6cc0790a@molgen.mpg.de>
 <20260429165229.GF2686-mkhalfella@purestorage.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20260429165229.GF2686-mkhalfella@purestorage.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4PR03CA0218.namprd03.prod.outlook.com
 (2603:10b6:303:b9::13) To SN7PR11MB7592.namprd11.prod.outlook.com
 (2603:10b6:806:343::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7592:EE_|PH8PR11MB7141:EE_
X-MS-Office365-Filtering-Correlation-Id: 2a0157f9-e5b8-46f4-5eeb-08deabba778e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|56012099003|22082099003|18002099003; 
X-Microsoft-Antispam-Message-Info: vdmKMnT6wOrSYFc7nr6dUneV2QQF3Gj+AyC1Cc13OtsL4OZ7WWUNOU1oxUNW+AXnUtQx7DtLOP9C7wrer5JrpIqmvFmTqOltGT39Q56HEi8oA+MSpRgIolIumQu8WI/OFbsNmizb5BmaAJbQxg0eEKIBxRMIKqWQrFmNMVQ1ZPSrkoavtD8COVzdRvn2bwwhSh3fsPOoJQuCnvPcbLpdOQEuOojQTHoMQtddYL79xSI80qSSOW8X5+WDiUe1w8PS4V4EXt8ewUIS2qa+Z1y0LiIWM18g0Uj5gY9EswODlMeEA842fZpcrkod7O46Ya7E9ooGT20q8IYe8foZTZwxNSvwXpL2I35tz3+W+03L5TyoGQwmnZm4MxgIiDZY0gkKTq5mtp0o8wj+xm5/4x02bRrGgImRgQgCPc20c4l7sU8FYApxgiPQjiSxroGrdIrS4ndv8ugzM0EM4b1WLcvMPvHBmwcUeodCk1FXOWRp2kN9n107e0nf45QNG6jMpBBfFkL441veR+1XK8NMnHlZxqgvCeZoMVQSuUGcphIMKB/Ned5KrLtVNR5CFn51jI7yoDsWCshDHprty3VymzmSXF3H9RGkpDnSD+RwIbAlc/8ByKuHZxBJ3JTArfatqz12ATeK0Z0Z6i6cP4WgOuerAzD+HNpJ2vD7z8tl+Lc3ZUUAiVj0dfSf4V42dhkLiVEU
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7592.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c29ScStmenV6TkpoVmVEWTFIQ3VrenVMTVRBMzlpRjZJdVBlTFUxWnBBRndV?=
 =?utf-8?B?RFdKVUU0T3NNUjRxd3p0czBwWStOTXo5akJJQ203dWNpM3ZnS0JScFZFYVNQ?=
 =?utf-8?B?WTZySXRGZEg4OEZpanhmRUlkV0NTR1VhRHcwZXRNeUc2azNTMEZQbzZ6MS81?=
 =?utf-8?B?S3VDbU1kcUQrWUMyN3hHU1R3KzJ2UHdwWTdjYWdKRmZZVFlBSitnZlBjVnpr?=
 =?utf-8?B?VmRjY0tPU29UWmVNNHNLYXdEZWRhNmtaMHduNS9nK0xOTjdwMUpmcjlMYkk4?=
 =?utf-8?B?YVJoeGlkNWRFdEFYRkFDUHpBbGtFYXVMWlNaWDQ2ZXhFUzJ6d3JpbldVZVN3?=
 =?utf-8?B?V0lWV0h5WWdGenhkTWtTWURCK0VtZTVmeXJJOXc0RWJhKzJVdks3eDM2a0JG?=
 =?utf-8?B?cjJ2dnErdWpRNHlwRnNZbnZwNjFmVU53QmRxaTdUekFsak5PVWlDSjlybElL?=
 =?utf-8?B?ZFo1aE8rQ1dvajdWNGlnMlkwMnlZcG80ZXBPOHBRMXl6VkpWVUZHeUJWaGFh?=
 =?utf-8?B?Yi9VdXRsckZHeVU5R2FPM2l4azVkcUZNN0xycjl3emFOeHZZTlN2MFo2dWdI?=
 =?utf-8?B?ODdhZi9RcHFJUE9ObGhtdm1WdzM4LzRzaGcyTjVidVhYUXZRdjJTd3U2eko3?=
 =?utf-8?B?c0ZUbnh2VExsN2taQkRMRVdhQkRFU05IU2hZOVBJVzVCSmhMZk80bFlUblhj?=
 =?utf-8?B?NkFkODBDNUU2R1NRK0Zxc2MyNS82S29HWnlhaWdvN200S0ZocEY1dWU0V0NM?=
 =?utf-8?B?dWdiaTNuOG5NdWdtVFlwdWIyZndHVTJkUW5ScVhLdGhTanVXTDlxdm82enVV?=
 =?utf-8?B?UWM3MW1QQzlsbk5rUUsrc1lUc2Zvd3ZlbVk2RTRvSnJBdzhocG1OTnpCNk9w?=
 =?utf-8?B?NFZzYTNpNlJCcW9Qa0JUeVRKNERpSjBQa2pYdW9Xd1Nha251cUJqOWNPMW5a?=
 =?utf-8?B?cW83VHdmYzhsWTJuTHFhckJYekFKaDhIUUtLUlQrZU9CanJFZmZGb1F1RXJz?=
 =?utf-8?B?UHgrQjJ2akhxQ1J6QjhEYThzZlZZSEVvM1RXa0xWR2srWHh2YzFtTHBLMksv?=
 =?utf-8?B?YUx5U1U1Q00zaCsycDZYMTE4QndVcG12NXBkNzJrSmpvQkp0RFZNOW0xa0Yx?=
 =?utf-8?B?bnVTaUlKMC9BdEJuaU1TdG1Yb3U2ak5CSTBnUlFtcVJpbnFoTUZ0ckh3ZjJM?=
 =?utf-8?B?elY1aEVRUW1LM1k1bWt2UXFNRXdXRkJWRXV0UUc3djk4ZUptRFVibzJybWVZ?=
 =?utf-8?B?eGs5SUg0a3JKOXpISS84K3J3eUxLMWxuRUlKZVIxOWVWUWZJQzR1ektwUzhT?=
 =?utf-8?B?eWpqOGdLaE5SMEo1L2VRQklpMmhheHpmay9qMVU0bUlTNlRvbmtJMVF3bnZQ?=
 =?utf-8?B?WE0yUTFsa2F4K2RsWjhueWRrUlFQNjhRb3lBT2ZzMTFEajI4NjV3M2RzOFBK?=
 =?utf-8?B?LzFXZEk1eGwrUXlmNURIZWwyaURMSEdJSnJXUzRjVXZjcDJPWDBjS3lFUUVa?=
 =?utf-8?B?aFNyWWVseHBYWEdZOGxPSTVzWmZqbk5WWG53bEg3cUJrNTVjWnFRcFQ5WDN2?=
 =?utf-8?B?VU83dkhuNitqV2NJcnk2THBjSy9rL0FoVm1NVE1uZWdoYjR4c0NuN3VHNDVq?=
 =?utf-8?B?NkFJTHJrcEZFclVIK3c3dTA4ajg5SFY0clNsdUJYRHMyK2VyeW13ZjhWTm9o?=
 =?utf-8?B?ekZzYUdWZTZjbHFRWlh0aE5nUExnM0VFYUkyU3lNUWp2MndVUms0YVNQeTRj?=
 =?utf-8?B?UVErUTQ3T2VzN085WTcrMllaT1pRREYxUFk5UGhFcWRjenluK3l6YXAxY01H?=
 =?utf-8?B?SVgrcnZtcWlHSm5NNE1TcHpXS0ljclQzSXpWM2V0WjRNRjFPN1FvdWw3b1VY?=
 =?utf-8?B?NkNIRzVCMktzaGJXemcvaVlLUGY2VU5CZGp4QXFHQ01ZVjE5TjRiV2tjYng1?=
 =?utf-8?B?ZU1uQWpLN2k0YWg1ZXJxN0tpYnR3em5YR0NNQTl5ZGtZTk5HbjJrRzNQMEpB?=
 =?utf-8?B?SjczOEszSGplUzBRaDk5d20vbHpXRVZZcW5qM2NTb3NpUkVHZjg0YU5vc3g3?=
 =?utf-8?B?Rk1xd245S3VaaVY0bFgzZ2FJQlFNSXJjUWFzZmI4TklKbmtQbU5adGFUblZk?=
 =?utf-8?B?SzE2UkFtaURKNW1zOEJISmozRHpHemVrVGh0ZEo4QXBjc3hYM2VQVFpUbEwv?=
 =?utf-8?B?cFlSUzYxWnd4VmpRVWlMVm1yZEgvNjJ6YXFlU2xiK2hrRUxRUnJUbzlxTzV0?=
 =?utf-8?B?ZDZqWHhlNmtIdGU5Qysza1BkU1g4V2VTVnYwZUlYaERwbGVpRE56WE5SN01L?=
 =?utf-8?B?RHhzRUVpUzF5ZWd1NS81WlhnMDFZM2RqNzgxVno5Zk1SYnJ2blo4bWM4alh3?=
 =?utf-8?Q?bAcOiEx00JuQ47Hc=3D?=
X-Exchange-RoutingPolicyChecked: DR0eMgdt9wQQRws5CpI1P+7qFQXOLZFZUBYXMOYEppZBWnlUTvF6Uk71xMEeVYFd7uPHb6H2jl8IlFndOsRaEGjXHj2ai8d7qz69rCKm+rvEPCjO0TM0EpSLuPToyAp+H51g576DQCo7tkYRHy20dEy+fZ/2YXEUKTyKpyljo7g31YtcTkcTMl6VuOEFpmeNw76qNiSNKXa91ApbRRXTHwg1zvBQNHQKjlofLS7K5saEmhd8SsGWlDmQSVUg/pfy5mIjZMnU6DXaAa6R+l37d3Oy1Hp0AfDExMtDvtKr73iCy9n/+r89nyrVNLIOPRVwkLxEw9iSl0AgHoMrYHiyow==
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a0157f9-e5b8-46f4-5eeb-08deabba778e
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7592.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 May 2026 21:57:29.3439 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GwTl3Ica1+36/jccyvFXzLWBnCzVlpmmy2qt4s4xTRYr+NJsqdih8VSVjR/UKwUSOnld9o4KYqE7uoiNJgZnyPQl4fTxd46G6BmFwHEbGiM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7141
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778104661; x=1809640661;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PehinhY0Zda3wcBuhZydbsQ41LPSBLN0k2rC8sv67hM=;
 b=M3aXWcVS7JLdQ4uwg4k5DyD9HJKefeT/kIAFr0x284r2MzirOxUAhRw3
 zm6AhBoHRfkDyJhFhHy8nIFqknJK9PLVB7M1/BxUzCvB8CIvwqH/9IuAl
 MiA2oOsYGVV3+cFn2nZRJOeGEcqnSwLYlEYgpLbH6DtS4n+/lRaToD5yl
 XnFbhX3DtO+qLSvcU4dFK2/zZPCnV0md/BcPidMVh5aFCOjA0kio26ARJ
 +Cp6ENIzKBv5ctI71vBqY7iVO9eQ4Nq4q4/Le5ASPhFhUV75a7tnXZF8T
 XL3Eb67EihY1Y8edtkuumGKB6z36dZ+YYL0ZjaI5Fxfh8qfbVQCqNcXTI
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=M3aXWcVS
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] i40e: Fix i40e_debug() to use struct
 i40e_hw argument
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Queue-Id: A55784E0F44
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [8.39 / 15.00];
	URIBL_BLACK(7.50)[osuosl.org:dkim];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	BAD_REP_POLICIES(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	R_DKIM_ALLOW(0.00)[osuosl.org:s=default];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	GREYLIST(0.00)[pass,meta];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:mkhalfella@purestorage.com,m:pmenzel@molgen.mpg.de,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-0.866];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCPT_COUNT_SEVEN(0.00)[11];
	R_SPF_ALLOW(0.00)[+mx];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,osuosl.org:dkim]
X-Rspamd-Action: add header
X-Spam: Yes

On 4/29/2026 9:52 AM, Mohamed Khalfella wrote:
> On Wed 2026-04-29 13:02:00 +0200, Paul Menzel wrote:
>> Dear Mohamed,
>>
>>
>> Thank you for your patch.
>>
>> Am 28.04.26 um 20:14 schrieb Mohamed Khalfella:
>>> i40e_debug() macro takes struct i40e_hw *h as first argument. But the
>>> macro body uses hw instead of h. This has been working so far because hw
>>> happen to be the name of the variable in the context where the marco is
>>
>> marco → ma*cr*o
> 
> Good catch. Also 'happen' should be 'happens'
> 
>>
>>> expanded. Fix the macro to use the passed argument.
>>
>> I’d add a Fixes: tag, but the maintainers might have more input.
> 
> Yes, I should have added Fixes: tag. I will leave it to the maintainer
> to decide if v2 is needed to fix the spelling mistakes and add Fixes
> tag.
> 
> Fixes: 5dfd37c37a44 ("i40e: Split i40e_osdep.h")
> 
Please send a v2 with the fixes tag and typo. It will make it easier to
avoid losing this data.
