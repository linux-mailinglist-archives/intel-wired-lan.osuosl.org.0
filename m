Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B669069B176
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Feb 2023 17:54:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AA16140448;
	Fri, 17 Feb 2023 16:54:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AA16140448
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676652884;
	bh=POKF47u58dbFhK8ILyS5mZkRxC/SQpnRTntR7g7TwaE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wgRjZj2vxq5RlIGOHRdCYBXfNeF7WkAD2ffpEpPKA2ZhG7MxsQ36mEtSWRKicsAWq
	 /xI3FGKgKxSfqCF15QKM3MzS02e6CfnByi4IZZQKlG8tVXf0aItdi1uS6jAp06B/10
	 IPB141+dqcwDAIZXYJGUQluqwkDvuOSeAp3QdQcwQK/C4Khl2sY9x6zYmzZ4qe4zfo
	 4mwprw0Ke8YSzRMWmY3TS5lLv58cWxxof8KD21Wk/ztRgnacRIWIB/+WGz8ri/yCFC
	 +/QDsCLtBNAR2xKPto4csiQ41g89QZP7/WEGVXZm/04xtXmnwkaIz5R4bVwqruy4ci
	 4FX8CSStmcemA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a9OrXmRYn6FM; Fri, 17 Feb 2023 16:54:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A3BED40323;
	Fri, 17 Feb 2023 16:54:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A3BED40323
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F27AD1BF2E4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Feb 2023 16:54:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D705661AD5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Feb 2023 16:54:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D705661AD5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZfQYtcjwM1u8 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Feb 2023 16:54:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A7E6161AB6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A7E6161AB6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Feb 2023 16:54:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10624"; a="311660209"
X-IronPort-AV: E=Sophos;i="5.97,306,1669104000"; d="scan'208";a="311660209"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2023 08:54:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10624"; a="663921882"
X-IronPort-AV: E=Sophos;i="5.97,306,1669104000"; d="scan'208";a="663921882"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga007.jf.intel.com with ESMTP; 17 Feb 2023 08:54:35 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 17 Feb 2023 08:54:35 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 17 Feb 2023 08:54:35 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 17 Feb 2023 08:54:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JsR3tl475/W8ALCml7GVvPuSf5OZViH/L51Ud1JcrJG/NObiNs4R2NjcgrEGJOuD5sO4qHz2vzn816dGD83QCuFGBAPa7QBqrVScWWl+y5xDEsaxHXcKOeXoDnvne3bF0iQX4xSl1nEfLTjvIP6ZrcY2/A3Ymph+Mb4rZFgAeu5F4PVunb5RN+O8sH3kuI+xIAElFT+E5Jp0BVJuklC6eYWTtbpp7mi8OIBN8QRwLdciS9JMBaaDQtOdP+hkVmPCDr86KZSIaaOhN9TOOTLzTnxaE9yiVdZqBTi2KNnKUzGf7ozcDhxbNkFy5CCdeXvmiN3Rn1oUVNcQtlvhB3foNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vMW6jsuWfyDz/EAe7cxzuvhWIKDBrC97VywywUvOLzk=;
 b=EeqvEahOmiiKhF6CfKot+JaPjrX2Yvxu6CRKmZIlLGqP1RnVLHLDDF3oTTUpLSX+ide7fRwiArm+HvOR5DI35bIIdQnWsjOY1/7Fp+J/kygNKqPyBVKKqAs13DPwAC2A+iHdDLDopyRjfWesklGuuUVwm+xvOyUF4RdPetBirWCIquK8lKuHkIP7+FEi920SMLSWXmWjqknAX1R839QuTw7pyfpCZ+ubY/YSMrIZBlP07aLAI+y1i0SMA5iZmxj32+w4nYitC/v97MODqfPNkHFC9Zdb++uEqAxY+oLUhXz+2k+Ofndlu3YqAcLwOw6bTP9bitIEuhIsZi9L5vsYuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by CH3PR11MB7347.namprd11.prod.outlook.com (2603:10b6:610:14f::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6086.26; Fri, 17 Feb
 2023 16:54:28 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::cea8:722d:15ae:a6ed]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::cea8:722d:15ae:a6ed%4]) with mapi id 15.20.6086.026; Fri, 17 Feb 2023
 16:54:28 +0000
Message-ID: <13f2708c-8e01-4db1-826a-353968115d33@intel.com>
Date: Fri, 17 Feb 2023 08:54:23 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Yang Yingliang <yangyingliang@huawei.com>, <netdev@vger.kernel.org>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230217093625.420984-1-yangyingliang@huawei.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230217093625.420984-1-yangyingliang@huawei.com>
X-ClientProxiedBy: SJ0PR03CA0117.namprd03.prod.outlook.com
 (2603:10b6:a03:333::32) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|CH3PR11MB7347:EE_
X-MS-Office365-Filtering-Correlation-Id: a6192ad7-192d-4f88-a70d-08db1107a18a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3242p8a6E+N6/hQtqlg08cAu/oKwb+ZZwBod9gUbYzgKsQdIOxyBqX6QlIRWURzGTabvOw1yFD20MsBejKUBWnKqHiojhJYBLOgkOqpjZ4g5aoXg8ifHfD2B5znYVCaUcXPsJOPaRGGqMh+AV1CK6M6oNAukiKEK18LD+Q0k0AFTglJxQn6tXirYlQK7D9c/jVLKSTKNfoErTl11ykIyXFZ7i9HVNCUXxYVNSMndia7a/6TNF5R3/rITH1F+2UNIZdr5+5TruIyrlDxKm5FUOH+bsb/0YMDijo5R/jDvYo/r/X551gnJD8rzi2pItIiI9yFs6EG2tUG62nI7nhF+JGGq+vS+C7GDe/BPccIs57VoxTabnr/EtT7pDy5sw2vzjGbfEERTxEmz6Vsb+gmos5v1/128YcKM8xJT5pk0DEtKZdAhCzBSZYJUdKK+aSR/my9qABp6LiYEkQ/GR1CC6Zas421LRyD8rpTqRvVYvsuAJI5fJJ8nCuy5Ffhw0S/r3Ho7yYzqJ1/OVZ3XoiYj/xj+0ZpkwMZv64k/p/FjVH2ay3wTIV3wBhEptYWAhSMoKcm+6R+Bz7iyTZR7knW4UsktpDMD8CAsoMY94U+C9vOyFYCyk6hmerHOZ1IaCS1jmEXPzBNvq2ovfHeGRxZTu9KwH9A5UJRfXiBp8nefb8GwA1u/qTStMwe8q5uJV9wMUyc79N3PeKF6NC2p5Hw3X5yxoB399t5ZS+TOtpeZtoY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(376002)(39860400002)(346002)(366004)(136003)(396003)(451199018)(966005)(186003)(6512007)(478600001)(6666004)(6506007)(38100700002)(53546011)(82960400001)(6486002)(66476007)(66556008)(8676002)(4326008)(66946007)(8936002)(41300700001)(5660300002)(4744005)(31686004)(2616005)(86362001)(31696002)(316002)(26005)(36756003)(2906002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bFRXM0NGVnZLRUc5cTROQS9HRUh3cGF6MU5LRm9qbFhWa1N0bWJpajVxYkEv?=
 =?utf-8?B?ci9STFlGTHVwRlY5U2Nnb1RvMjcvbi9yekJCRmFKeXpOMThjQTMyOS91VnNU?=
 =?utf-8?B?bWwwMHNDYkNQYXJLMlNnd1QrTlRDUnIrWC93N05CTkNrKzd2WUh4emlRa2dN?=
 =?utf-8?B?VHNSMEtzL09qRVRTczFHWTVoTWk2K0g0MFFDR0VBbWJNQjFITzRsMXJmc3pq?=
 =?utf-8?B?cnBqWUJOdTQydkxWcnNzVnV2TFpTUTJwZ094ZC9KSDZqSUNLNzlyek0rbVdF?=
 =?utf-8?B?ZStqYzFpZ3VaVVYzU0NOeGZnbnRydUtheWtYVGc1aHl0NzlDMFUwOFY1eHZy?=
 =?utf-8?B?aDg1V3FISU1zdkFuZHQ2T0NLSm9TelAyNzJNRnpyenVhMFNPc3VjTnNzejJQ?=
 =?utf-8?B?b2JNZWlRT3lkQXgxVGdrbW14djgvR3RrSDlBaWtub2JpM3dHTG9CTjJFVCsw?=
 =?utf-8?B?b0MydUpvT3hwOUI4SzlZd3E0eXFUVEpKM3Ewck0xNTZmMlNiR2dXU29TUU5W?=
 =?utf-8?B?M2FBcWI4NmI3RFg0VFYyYm9RZ2JjdTVzOGVtanFkVTBIMTZYcndVdzVVbWx6?=
 =?utf-8?B?YUwzTzg5eFVLMjVtK1RuSHorNUtUTmVXZGUyVnVTMUx4U3VlWWVkMUpKR2kw?=
 =?utf-8?B?dlNLNUJQR05WTndmeUVQcnF0dDdSbW1ubWY4d2lpQ3lMSEF4cXZqTWk4UEdC?=
 =?utf-8?B?RGczZCtrQ0xXdldIR2ovTjVpZGw4STZrcXVOMzBhRzdPTlhoNFU0RTdoZ0RY?=
 =?utf-8?B?c0FUN3hHOG5naEdPSUVONEE2bjczakU4TWxaNDM0RklZaVY0eUNSRUowWldm?=
 =?utf-8?B?WVdpNHoySWFGaGN4MUlncGl6UzRHRnNUcm13NG5KZzRTTVlUc3U4TTBGMjAr?=
 =?utf-8?B?RUZvUmJqMitNVDBZSk1IbjUwWkVjWC9LVXAvcDc2eURpV0Z1bW5SeVhxQU95?=
 =?utf-8?B?bkxHUFpoLzVSV3pRa29oRmVFOXovSUtqWlRDTFBDVm0vUVpHL0R6OWk2ZnAx?=
 =?utf-8?B?bUlGQWNrWjVNTlRVK1hRQlR5TVRFVEIrWTEzK0pxdGJBZUROeXh1VVUrZEdX?=
 =?utf-8?B?N1NneU54dCs1ak9MbFVPSXBOOXdEaTJycE9JdTFmUXdYVzB1VmF2a0dtcVFs?=
 =?utf-8?B?TzlSZ0pJaStaSEpNSnRwRFZoY0Ria05MSzY5aENUb2VLMkhVN2JyV0hnNHhr?=
 =?utf-8?B?QytBTGt1cGhZUWVhaUpOcmU0UlhuNGE2cUZYNWdKVE9mRjZMN0pyandKdkZF?=
 =?utf-8?B?WEpwUUwzRUxlQTQ1N1hzUXVTM051b3VyZU1US2VOK2xhSnpVcWZlQXRUU1M5?=
 =?utf-8?B?N3ZybDhrb3hWVERENXA3TnRxNTRuMmtKdEt6enJpeUxzaTNEMUhiZ1RGZWxZ?=
 =?utf-8?B?ZXpUQWdoRjVhVHpnYWc4NXpaQU1GWWFMR1kvUzRhaDR4RklMaGtBTjh6YkUw?=
 =?utf-8?B?TjNwUHRDNGpHZE1OMjF0TjZjWkVobDk2a2ZMa1ZudGRlUFAxd05PaU84VktX?=
 =?utf-8?B?ZHZaZ2V4ZUtSNDR6RTczc2xzOWgrUDJXbzZoczF1RjRJWitpRStUeFIzV3lo?=
 =?utf-8?B?a0laN09VRTVXb2ErWEhEdHZxWFVENW1kb0wrN1k3bnN6R1kxZmIzZGZ2aHpz?=
 =?utf-8?B?MXMxMUcrbDdMeTNiNWd0RnE3OEtOZjd6LzJMUkdMeDdhL00ydmZuclp3eFd4?=
 =?utf-8?B?T2syWm1IcHpQV2dGa1Nyd3p3NEtmV1JyUXl1a2JuUG5YeThYYWc4U1lZQ0Za?=
 =?utf-8?B?bkRhQmxVT3RtcUlJUzdFeFYrN014aWhFNzZ6MW1TVkNYTUZkeWRzb0t0dWdn?=
 =?utf-8?B?M1ZzY1RLd3pDMGgwRDJZRklLb0hvN2JLUHEyZnoxZEtVcFhoVk9XckpSREJY?=
 =?utf-8?B?c1p5bE1UdURJWlhwM0twajM1ak4xdXJWeTJZY3RObUdGM3FCMlpKeWdNa0JL?=
 =?utf-8?B?WkNvMTlkNnpyZ25ITUlBTjhjdVJQYmpSYy9FZTYxZnRCUU92YUNmRHpUNkV6?=
 =?utf-8?B?SStYNlF5S1pyYjkyMHFxRTZHVXE0dlhGMVJzU20yMFVLeUpjc1VGekFzRWl0?=
 =?utf-8?B?WmpVdDBHbkNiU1lZTFdFUlAzV2lDdTc3cVhDcnJxMHU3cUdhUmhGc0VFVnMz?=
 =?utf-8?B?cjBsdjZvSEVIWDFDU1ZNMGF4UDQ5eFJnV2NqU2xkL1VadFVGZlJUYndac2dM?=
 =?utf-8?B?R2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a6192ad7-192d-4f88-a70d-08db1107a18a
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Feb 2023 16:54:27.8374 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DurlJ+Mohil5Ni+2CmhjW2B2jlFIw8xJ1ZB2m+J9TfrPdkIeSFoAFY6nGzZWyjxpgIFyfnUqmrvscnf019twgasz/wNJwZ+tTQIFE7xs2wE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7347
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676652877; x=1708188877;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=beAX7mxrEkWtExatXVpnz2sLDbUOjMk3D7zc3iacw+E=;
 b=bz797pVL4CXtGtf6sCBOG+fYvY21IXfxmlFq0W3HKOloyvrScCx/5s+k
 SQkilL89MjRcGBatFuSn/dsGlOHxfcxOLgSyrqtnKsVrZQCErwqQsXwHy
 5uXZNrOJ/U4o3K8zjCuZjjJVIxLTbkFjVjZAisRh4ny8eeWnXeIy9Djre
 ejVQFCcrWCZ01nqoCfrvHOPJpC0iplYxFiWpCxg6iQuP4Ri0BQJtq7lC8
 ukNzUaEhm19BDytoXC+nCNRj0vtcO2TsuPcNZA0cCUlhgemMWsZ7NUeji
 Z6v8FBP/pT4v0gzE6dY92cX/O+l7o+30wt5TrCa/Hyac5kCeaikt/KJ+K
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bz797pVL
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: fix error return code
 in ice_vsi_cfg_def()
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
Cc: jesse.brandeburg@intel.com, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, liwei391@huawei.com, davem@davemloft.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2/17/2023 1:36 AM, Yang Yingliang wrote:
> Set the error code when ice_vsi_alloc_stat_arrays()
> or ice_vsi_get_qs() fails in ice_vsi_cfg_def().
> 
> Fixes: 6624e780a577 ("ice: split ice_vsi_setup into smaller functions")
> Signed-off-by: Yang Yingliang <yangyingliang@huawei.com>

Thanks for the patch Yingliang, however, there's already a patch with 
this change and more.

https://lore.kernel.org/intel-wired-lan/20230213112733.12570-1-michal.swiatkowski@linux.intel.com/

Thanks,
Tony
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
