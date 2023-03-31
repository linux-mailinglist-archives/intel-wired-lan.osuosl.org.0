Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA8966D21D0
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 Mar 2023 15:55:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4529C420FD;
	Fri, 31 Mar 2023 13:55:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4529C420FD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680270946;
	bh=Gj9aaZCekqh/ykm3doQzm5K8ZfxkcPDaA5vQFRRFlFs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ABHQmobjmkeQ62RqFOpT13JrQou1j6fxq8QpHJFsbkX/U+Nv15JZ9bGW6zC0HVU4j
	 urvMUWisnur3MLIrZfSKFR0zzEQ/A9y88oVrMzHloNo7gEl/F1arv14WZk1vY3ShLQ
	 bQLpoZOH/TmZnOx3vpJo46L+88HzpwK5578j6GxixDtLYU3vEqutHSY+6qc8j0TwJm
	 vbFTsq3vLVzFSkDziFNUu9/L62S0W4BVVX3pWsG40HPKbWQCwv38o3zOhHSrbToAgf
	 JbLHqOAan3ARkYIncPvgRFkQM1pKI8qPZQlFewIS7dyzmYO5ue25n6eKrUR0GAcayS
	 F6w7Otq4nhGLQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KLl88odswTxQ; Fri, 31 Mar 2023 13:55:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 76D4B42104;
	Fri, 31 Mar 2023 13:55:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 76D4B42104
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 536DB1BF2CC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Mar 2023 13:55:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 373B1420FC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Mar 2023 13:55:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 373B1420FC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ApBAIhBD0Nuh for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 Mar 2023 13:55:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0875B40600
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0875B40600
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Mar 2023 13:55:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10666"; a="406467193"
X-IronPort-AV: E=Sophos;i="5.98,307,1673942400"; d="scan'208";a="406467193"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2023 06:55:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10666"; a="1014835455"
X-IronPort-AV: E=Sophos;i="5.98,307,1673942400"; d="scan'208";a="1014835455"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP; 31 Mar 2023 06:55:36 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 31 Mar 2023 06:55:36 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 31 Mar 2023 06:55:36 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Fri, 31 Mar 2023 06:55:36 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Fri, 31 Mar 2023 06:55:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G5jJEqtf/OBNcoovYJaN0bheL0/lZTkZstk8w5Pa+uYP5/oKshK056OEFv0PXS7PVWsyN3iTufoP5v065J/nAKWk4+us443wiVPceP+qlM1a1pLXKR3YcqDJmcQmb514oTWIbD+YIdIV4wer7JribkGzORBJpD+LjL5X4B0Y0Rb+FEh9VmBvOv7RZ3In68Xmhv6ACZjwSp3aX3SSkm7afOcXjuc69CewaE07zgL97ShKruvuit9zCV8fiVCpdnJgFt3XF47Ko6E6rC8p2safVkf2xzTqEmD0STBg3/zf0J0rvVMBIdkL0O0oth/WSi55jSUdGHLB00DUR8snJsMl4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AXamCLPBbUcDFQZp2UImIjXSBprCF+XCD8ZDqzJyd3E=;
 b=N1RZby0oJDj906gr4HbBSy2TXxO3El6vb3CwH2apQf/aW12INPyacaa5SOuGKr8+WO/ElbBpY27jeMtZybvACqHsth8yT8Qb5XhttI3RJAsOKDloNKxQaSR8NAGMy6h0rYfagpuIDs1I/hAFPByQbY+dk51HT7pOfYgajqMxMMLXRH2pGr6KTJ7DhW81o3GQhNHvokmifhIFK/ZQ4Eb681YP4GeuYrQ7LUUhmiVr1De4I7zQA8sN3T7fwHIL8gIhfu4lEofEz4OXtaNI1gUjlJIz9fW5a3gHeWxk7XuwEIBZvR8WZLM3Rf4rOtxf4XCY81+I92v0fhMpTXmyFMqRBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by DM4PR11MB5972.namprd11.prod.outlook.com (2603:10b6:8:5f::6) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6254.21; Fri, 31 Mar 2023 13:55:31 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::7911:de29:ded:224]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::7911:de29:ded:224%5]) with mapi id 15.20.6222.035; Fri, 31 Mar 2023
 13:55:31 +0000
Message-ID: <117610ba-8d8d-7abb-6895-67ac914d7a1a@intel.com>
Date: Fri, 31 Mar 2023 15:55:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Content-Language: en-US
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
References: <20230330192049.18549-1-jesse.brandeburg@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <20230330192049.18549-1-jesse.brandeburg@intel.com>
X-ClientProxiedBy: FR0P281CA0223.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:ac::16) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|DM4PR11MB5972:EE_
X-MS-Office365-Filtering-Correlation-Id: ab6288ff-0332-43c9-185b-08db31ef96de
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4IN5qoSDdyGm+4Hpc8W0YQYJEiXxJnebB5IyPkQsFCQVeJHEe1eGNEIoGEZsyMgZPs3zzafi1nrlujSPwBGBMdF8j06XLRy+Qug1Zcls+/QTKbP28aYrMEYodUyKSwx+6zVs6uwt62ftiRwgq1dh9ryO61dkf+5KYPGh14cl4pNnFfi6GVcNIaRhcLWEa1LN3c+gAas3+IwwYWj/7l3We3ABoNpBX+DmFUlQxTm/DkD36ih9fyQBTKkHcJyZgGB4GHwvGYYav8TCmpWVFkOMcH8sXhQI6QAHf5+yGJpOY35zOMBDuZJ1QVMA5eBjlWbiWWRHiaaIohnRgsjQkHWJxbF6TY4oZU4gPpCWm1JNx7grMGlEy6EPgLvKHNlsKmVJAvTpTJ0OpytPl29AmoxveVj/CWEuT2ZMs5Ujecs89NqQXsJIcjxuCe3y/giWfJJHYoTfSOxtY3U4XwHjsKxTpCEf1m9FCeB6D5StyBh2RrdWTpQNBNmtWQxg/T6zAL4NZNP8HDnfqE7MvcOhCBYQiYRCj/nznYbZAWmeh3qPXB3ywNJaKnryzqGiAGwfEGe0iae59Sy01et+Bgm3USToOwEvrxn2p21S3cywDFTGC2nIcRUGi9qR4KayPkPKGWwC8X7cutS1O/mq52rVGGktfn7CiMphHkqZeo6R+9wpLw9RsOoVGvvkOWUh2hrS3Kpz
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(136003)(39860400002)(366004)(346002)(396003)(451199021)(31686004)(38100700002)(4326008)(6862004)(8936002)(36756003)(5660300002)(2616005)(8676002)(86362001)(31696002)(82960400001)(66946007)(66556008)(66476007)(41300700001)(966005)(6486002)(83380400001)(6666004)(2906002)(37006003)(186003)(6636002)(6506007)(478600001)(6512007)(26005)(316002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TjVJRVF5ZzlBa0JWbEZ1VENxWEhyRFlzVXZHcGl5MHpqeDY3djdZYnd1VlhG?=
 =?utf-8?B?WEEvYXNXcXh0TVhpRDZ3dEVCVzU2SEpyTnVPd3JPQTBkU2RHbEg5UHh0MEJp?=
 =?utf-8?B?aHRLMUtDYmVsbnViVit0azUxdWkrdjhTZTRUS3h3V0NkemJjeXIrK0VGUGVH?=
 =?utf-8?B?ZlcyeUhacjE2VmcwSzlleW1DN1hzbzhPWWhvcURRczVta0cwc3pxUjQzVmJF?=
 =?utf-8?B?U1c4ZXprdDljekxNRWttMHdKTjI0c0xsRGEwSSt4Vk9wVDVOblN1alhmS1RK?=
 =?utf-8?B?WWdkaVkyaUdZaURRZi9LUHBZUVpBNlRsYSt0eGIvdjhJdlQyQllIRDhkMUJJ?=
 =?utf-8?B?amp1SitNcGxhSzVnRE5ZWG1Yb00wMVJjckZodW5CYTRVYkJLU0V2Tzljd0VN?=
 =?utf-8?B?eG01ZmlLRHU5Z1lhY2F5RTVYNzlkd0RiMzk2bnVTMFhYa2ZQc0RSMG1vYkxu?=
 =?utf-8?B?WXBENnhsbVlwb0h5ZW0rK0RxOExuOTVhelBjWXBsME9JZVAyM3NyQkpEQ2Rj?=
 =?utf-8?B?amg5VzlyTmlPKzIvbDVZNDd1TU55NUp6ZG9KejE2ejArYk9tT1N6WHdJVnJq?=
 =?utf-8?B?WXpMRlZXbDlyMjN6VGppVmV3eDl5c1JjUjdCMTdEaTV2elgycE5jVGo3WDFF?=
 =?utf-8?B?eHZRa3RXTUdoOGZKUzNnWDhCbDZERlVVcENSZTNQOFhOSDVzM3BRVnZSa096?=
 =?utf-8?B?RW9ET3RGcG00Nm92LzAyNE9KTS9nc1FIRnIraDhOS1FjU1RCNnJEaURuQy9Q?=
 =?utf-8?B?MGxqS2wvK1gyUmU4bEw5TjdUcnA1dmhocnFvR04zTWlhR3RiY0xZU25LOXdL?=
 =?utf-8?B?NHkrVDhsNlRxRHZIckY5Sm9peCtQMkJOazRQZmlEcmZYcENsTy8yemtqOUg5?=
 =?utf-8?B?dWpnTEVLbGJOL2VhangrOEdUQmdqWGdJeTlvNTBVbktxOXJCZXl0b0VOQ0gx?=
 =?utf-8?B?OSs2RXZoNXhTN3ZjOTgvamR5dUJVbHZYWSs3ZDc0UW02QTRzU3YwbXR3Q1Rs?=
 =?utf-8?B?WG1udmlNUldLcHY3bHUweEFFQ012TFlNQVVGZ0EwcEtLSjdQTzkvcVdnTTNF?=
 =?utf-8?B?MDBjY2ZaK0lHYVl6andBSG0ycjFHdTRQTGgyWjFuUUpYZHZLTjNua2F2d2pk?=
 =?utf-8?B?dUJBTGJ6Qk1QQ014dVE5SEJOVk5kcjF4WGV4cmZnaUtkZFVyaFBZZFh5OWJU?=
 =?utf-8?B?MWU0K2w3QlNiQzk5MmZpc2w1YkRUN1pYRStSZlo3WXNMbWxYQVB4azAxMEJO?=
 =?utf-8?B?WkR3T1pRMGkzVEJzYjRncFl2YVJQd3BVc04wV3pCQWY0cHdpMyswc29sQkFI?=
 =?utf-8?B?Y09FRWk3bzdyY09WaldCckNqTGFCRVlXNTJaVEdmTXlOdnNFRU1XbS95aDI1?=
 =?utf-8?B?VjRXeGlzSFJreWlWMGRmNndyVkFYTGpyeHQyZTg4YzNKQ0I2L3VCUVdUcHp2?=
 =?utf-8?B?Z2RlWExUS0xUV0JjcmN5bVZmYUYzOWNPYkE0bFFCeHdRS0tXUVhjeVVvVXhr?=
 =?utf-8?B?NjRrNThVZVFNc2MwVUZNQzdSS0p6Tm42QjRPcnhka2tNR3VjdU8wZktqWlho?=
 =?utf-8?B?dU9xRmF1M3hnQlUrUEgwWE5kYXcvODc4L08yc3ArZXhwUWpWVU9EaERKUkJR?=
 =?utf-8?B?N3E1dXlyU1hVaFBTRHArcjdVREh5a3R0SXVPbzRkalJPVkwvQzZqVmRIZE4z?=
 =?utf-8?B?Q1hXMllBNnFKNVhya0Zjb3NKTDRUYTY4d3V5OG9zWTNXS29DN2M0VVpsRFdi?=
 =?utf-8?B?YTZJU0VNYlFHbXBERE9Tc2h0TytzdkpGVUNFODNCR3FGUEExRkxYYWExSUZS?=
 =?utf-8?B?MXNjRjd1S3F5NWRVdXB0bDVObkVYbUlZTUJ4ckFNOU5TeldrNEpiNFJVTUg3?=
 =?utf-8?B?T056bjVYVWdoOG4rcWVlQlhrandmV3FMTnlwOGxpTVI0VTZ5emV5QnlzcGcy?=
 =?utf-8?B?emM3RmNkbVN1SWRBTHM1L2JkbXJ4WTE4RG50RzNILzEydDRRNjZjWi9BUlhB?=
 =?utf-8?B?THVYUDJkdGZqMTExRmhCT0ZFaDlkazZHeE1TeStyejBiNk1kd21LdjFack84?=
 =?utf-8?B?ZmV3S0FISW1VMXp3Qmt1aXlxbE9CQkFHU0V0U1oyNkxjOUM5d3JBZDRPMlNw?=
 =?utf-8?B?NzJnRENhc2JCNythR2hkWTN0Nk9lVDJPR3R0ZStLSVcyaVFIcnNsWjM5UkJC?=
 =?utf-8?B?Nnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ab6288ff-0332-43c9-185b-08db31ef96de
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Mar 2023 13:55:30.9580 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xEUiA8WqvdzcWeDRQSMp13kRO8EFNok/jX/VtMZHa6LTS/GLBfkmjiVNClWP4tv9qllf4MPmEjiQ4lRzCVZfpUSpmgQaN8o2gy7abPOBVAM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5972
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680270938; x=1711806938;
 h=message-id:date:subject:to:references:cc:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=nmRV+sq5769JcBdHehVddP1w9tFDUDVTaN01hU8+KlE=;
 b=Y84vdYNUCUYxE3F3p2/MN98DWXJvb/PWq3iGoGMsEwrsIs0LzBJtVhqj
 PfB5O14Dv2eE/FcnXaiJOwLMxqJOyPUM7YC41PD8RnkY7ax0fMWV+/jzi
 5yrvumKwJDkx58JbTDWhAr7fZfF6YddZUuuXpymxpIUQIzaNUoMvC5K71
 hyPHjRM4t9boeC9fbNy6YvQywsxnhMHy0sCd7KGW/qeqT8T4d5IpRvoUL
 3BNYVxmru3HZIReKqFEihc5KdvWt6Nnr3KhyT4zchBa9gxhQ+7ko9A51F
 ENqCYK5ZPojo3cMJZr/3rSNWvRDG/fFVckzjDHR2DCLsTuhCqBKYPh9Ah
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Y84vdYNU
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: refactor to remove not
 needed packing
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJvbTogQnJhbmRlYnVyZywgSmVzc2UgPGplc3NlLmJyYW5kZWJ1cmdAaW50ZWwuY29tPgpEYXRl
OiBUaHUsIDMwIE1hciAyMDIzIDEyOjIwOjQ5IC0wNzAwCgo+IEFmdGVyIHRoZSBjaGFuZ2VzIHRv
IHRoZSBzdHJ1Y3R1cmVzIHRvIG1ha2UgdGhlbSBmbGV4IGFycmF5IHNhZmUsCj4gcGFja2luZyBp
cyBubyBsb25nZXIgbmVjZXNzYXJ5Lgo+IAo+IHRvIHJlcHJvZHVjZToKPiBtYWtlIEVYVFJBX0NG
TEFHUz0tV3BhY2tlZCBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlLmtvCgpXaGVu
IGhhdmUgd2Ugc3RhcnRlZCB0byBmaXggaHlwb3RoZXRpY2FsIGN1c3RvbSBjb21waWxlciBmbGFn
cz8KYC1XcGFja2VkYCBpcyBlbmFibGVkIG9ubHkgb24gYFc9M2BbMF0sIHdoaWNoJ3MgY29tbWVu
dCBjbGVhcmx5IHNheXM6CiJsb3RzIG9mIG5vaXNlLCB5b3UgY2FuIHNhZmVseSBpZ25vcmUgdGhv
c2UiWzFdLgoKQW55d2F5LCBzZWUgYmVsb3cuCgo+IAo+IEluIGZpbGUgaW5jbHVkZWQgZnJvbSBk
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2NvbnRyb2xxLmg6NywKPiAgICAgICAg
ICAgICAgICAgIGZyb20gZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV90eXBlLmg6
MTQsCj4gICAgICAgICAgICAgICAgICBmcm9tIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lj
ZS9pY2UuaDo1OToKPiBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2FkbWlucV9j
bWQuaDo2MTg6MTogd2FybmluZzogcGFja2VkIGF0dHJpYnV0ZSBpcyB1bm5lY2Vzc2FyeSBmb3Ig
4oCYaWNlX2FxY19zd19ydWxlc19lbGVtX2hkcuKAmSBbLVdwYWNrZWRdCj4gICA2MTggfCB9IF9f
cGFja2VkIF9fYWxpZ25lZChzaXplb2YoX19sZTE2KSk7Cj4gICAgICAgfCBeCj4gZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9hZG1pbnFfY21kLmg6NzA1OjE6IHdhcm5pbmc6IHBh
Y2tlZCBhdHRyaWJ1dGUgaXMgdW5uZWNlc3NhcnkgZm9yIOKAmGljZV9zd19ydWxlX2xrdXBfcnhf
dHjigJkgWy1XcGFja2VkXQo+ICAgNzA1IHwgfSBfX3BhY2tlZCBfX2FsaWduZWQoc2l6ZW9mKF9f
bGUxNikpOwo+ICAgICAgIHwgXgo+IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2Vf
YWRtaW5xX2NtZC5oOjc2NzoxOiB3YXJuaW5nOiBwYWNrZWQgYXR0cmlidXRlIGlzIHVubmVjZXNz
YXJ5IGZvciDigJhpY2Vfc3dfcnVsZV9sZ19hY3TigJkgWy1XcGFja2VkXQo+ICAgNzY3IHwgfSBf
X3BhY2tlZCBfX2FsaWduZWQoc2l6ZW9mKF9fbGUxNikpOwo+ICAgICAgIHwgXgo+IGRyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfYWRtaW5xX2NtZC5oOjc3OToxOiB3YXJuaW5nOiBw
YWNrZWQgYXR0cmlidXRlIGlzIHVubmVjZXNzYXJ5IGZvciDigJhpY2Vfc3dfcnVsZV92c2lfbGlz
dOKAmSBbLVdwYWNrZWRdCj4gICA3NzkgfCB9IF9fcGFja2VkIF9fYWxpZ25lZChzaXplb2YoX19s
ZTE2KSk7Cj4gICAgICAgfCBeCgpQYWNraW5nIGhlcmUgaXMgY29tcGxldGVseSB1bnJlbGF0ZWQg
dG8gemVyby1mYWtlLWZsZXgtYXJyYXlzLiBJdCdzCmFkZGVkIGJlY2F1c2UgdGhvc2Ugc3RydWN0
dXJlcyBhcmUgc2hhcmVkIGJldHdlZW4gSFcgYW5kIFNXLiBJbiBzdWNoCmNhc2VzLCB5b3UgbmVl
ZCAxOjEgbWF0Y2gsIHNvIHlvdSBjYW4ndCBhbGxvdyB0aGUgY29tcGlsZXIgZG8gd2hhdGV2ZXIK
aXQgd2FudHMgd2l0aCBwYWRkaW5ncyBhbmQgc3R1ZmYuCkVhY2ggYF9fcGFja2VkYCBpcyBiYWxh
bmNlZCBoZXJlIGJ5IGBfX2FsaWduZWRgIHRvIG5vdCBibG93IHVwIHRoZQpvYmplY3QgY29kZS4g
VGhlIGAtV3BhY2tlZGAgd2FybmluZ3MgY29tZSBmcm9tIHRoZSBmYWN0IHRoYXQgdGhlcmUncwpu
b3RoaW5nIHRvIHBhY2sgLS0gdGhlIGxheW91dCBhcmUgb3JnYW5pemVkIHRoZSB3YXkgdGhhdCBl
YWNoIGZpZWxkIGhhcwpuYXR1cmFsIGFsaWdubWVudC4gSXQgZG9lc24ndCBtZWFuIHRoZXJlJ3Mg
c29tZXRoaW5nIHdyb25nIHdpdGggdGhlIGNvZGUKYXQgYWxsLgpCdXQgaWYgeW91IGhhdmUgYSBy
ZWFsbHkgZ29vZCByZWFzb24gdG8gcmVtb3ZlIHRob3NlLCBwbGVhc2UgYWRkIHN0YXRpYwphc3Nl
cnRpb25zIHRvIG1ha2Ugc3VyZSBlYWNoIHN0cnVjdHVyZSdzIHNpemUgaXMgcHJlY2lzZWx5IHRo
ZSBvbmUgdGhhdAppcyBkZXNjcmliZWQgaW4gdGhlIHNwZWNzLCBvdGhlcndpc2UgeW91IG1heSBm
YWNlIG9ic2N1cmUgYnVncyBvbmUgZGF5Cm9uIHNvbWUgd2VpcmQgYXJjaC9jb21waWxlciBzZXR1
cC4gQW5kIHByb3ZpZGUgYmxvYXQtby1tZXRlciBzdGF0cywKd2hpY2ggd291bGQgY2xlYXJseSBz
aG93IHRoYXQgcmVtb3ZpbmcgYF9fcGFja2VkYCBpbXByb3ZlcyBjb2RlZ2VuLgoKPiAKPiBGaXhl
czogNmUxZmY2MTg3MzdhICgiaWNlOiBmaXggYWNjZXNzLWJleW9uZC1lbmQgaW4gdGhlIHN3aXRj
aCBjb2RlIikKCkRlZmluaXRlbHkgaW5jb3JyZWN0LCB0aGlzIGNoYW5nZSBkb2Vzbid0ICJmaXgi
IGFueXRoaW5nLgoKPiBTaWduZWQtb2ZmLWJ5OiBKZXNzZSBCcmFuZGVidXJnIDxqZXNzZS5icmFu
ZGVidXJnQGludGVsLmNvbT4KPiAtLS0KPiB2Mjogc2VuZCB0byBuZXQgaW5zdGVhZCBvZiBuZXQt
bmV4dApbLi4uXQoKWzBdCmh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4L2xhdGVzdC9z
b3VyY2Uvc2NyaXB0cy9NYWtlZmlsZS5leHRyYXdhcm4jTDk5ClsxXQpodHRwczovL2VsaXhpci5i
b290bGluLmNvbS9saW51eC9sYXRlc3Qvc291cmNlL3NjcmlwdHMvTWFrZWZpbGUuZXh0cmF3YXJu
I0w5MQoKVGhhbmtzLApPbGVrCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9z
dW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
d2lyZWQtbGFuCg==
