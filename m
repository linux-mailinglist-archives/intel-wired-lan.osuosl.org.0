Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6472286E270
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Mar 2024 14:42:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0CBBD8347D;
	Fri,  1 Mar 2024 13:42:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Wr_8BzQnUV2D; Fri,  1 Mar 2024 13:42:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8B58D83404
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709300531;
	bh=ZVimNKgylIPSsL+s5NqMn5hHA7ezIb5kcDdrpWYnZpk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=f1LCWdRDu/zsQMlI2E+GhYWJfU90Bf7RAaNW3D672xyIhqXTe+7EAmdUFO28Vk5yg
	 aGzvrZ1cwaytggB6+5bbiigZ2adBTQcCus59rF9VdxTJoW++QKzC73e52iISFrLtbk
	 tzKRpe6oUNd8hH+DvetUDq/FNTajeoIOncZk8MPSAW0NdZw8rggQPzADNRMzUgWhwt
	 /GBXPE15PynYyEaLjGZ44ItWCCN9daPXYzQgFPKAX28vvhLH25yvY9BcU6uHCkbfcy
	 a44N0hzm2mDN4Y2sW7YUGUfDPqaqLn2l12dbtUPFqRw9aXc+2D/YJKkwIlPHBQXrvz
	 9UuXWjsS9I57w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8B58D83404;
	Fri,  1 Mar 2024 13:42:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E78E01BF2C1
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Mar 2024 13:42:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D3FD483380
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Mar 2024 13:42:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3BhmKMjqD98h for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Mar 2024 13:42:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9087183336
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9087183336
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9087183336
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Mar 2024 13:42:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10999"; a="21376933"
X-IronPort-AV: E=Sophos;i="6.06,196,1705392000"; d="scan'208";a="21376933"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2024 05:42:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,196,1705392000"; 
   d="scan'208";a="8338153"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Mar 2024 05:42:03 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 1 Mar 2024 05:42:03 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 1 Mar 2024 05:42:02 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 1 Mar 2024 05:42:02 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 1 Mar 2024 05:42:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QHQWMEODIAP+hNlfAO45EQ7ERkVv1HmWm4QSqhVXVNcmGrgfEeRhQdVQHjZD787dr5Xa9qq5duZwYykD6WvShNneNuA/e2Pf64V25DL1rvjXNBacHtxVfXEAqVo3m1+ZhEuIDtBvMsPZdLqn07WhmKwuObUw1ReQdKjQ/2IhMxMjp1LsIIR6hzXuM8yy3Lodd8HQpIZeiVLQuXK9JqumCqb3h6HdOvIU4BhQjTSKXoD77wu1Okux4fepeiNU9SdeUVLSYpYP4huYoTJCtPuAoWiU/RG6KHQ8bVRB0BrK1LyyvSWODP7hHFRZyRKjy2NKvJv0OPO3bMNtThC/jQ3bXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZVimNKgylIPSsL+s5NqMn5hHA7ezIb5kcDdrpWYnZpk=;
 b=HbSMogJL0TL79Bw7hXegk/xJTuaGid/bjcsk9P8HxK5V7q/XOKX2uzY1Zid5pvKPni/U3x9hjv+FHjuGgrCSiFeFB+K2u+aJ8lI1cSFzq/7Lp5Jqx8E7Hy7oe43t+GKZsgdRSjhqNAw97LVDIJ7zxqDfSLcnva+IYwuVmA1RJ1l0W4qoAyrZuw3+lHp0DDyaqwIfC1HjC07jE5j+nHOTFdM7fTDXmVUjSOp/wTLbsirt39ZOKLp+KCnY4vImE5Laj7E1Apv9V+qgG9sqIi5SxXmJIC7TPTmf6u4686ks83YYE3NRKNVhklQp2yntzFrsGJqhbv8Uo72otFK4FDz/AQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5399.namprd11.prod.outlook.com (2603:10b6:208:318::12)
 by MW3PR11MB4666.namprd11.prod.outlook.com (2603:10b6:303:56::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.18; Fri, 1 Mar
 2024 13:42:00 +0000
Received: from BL1PR11MB5399.namprd11.prod.outlook.com
 ([fe80::1de2:160a:9f9e:cb68]) by BL1PR11MB5399.namprd11.prod.outlook.com
 ([fe80::1de2:160a:9f9e:cb68%3]) with mapi id 15.20.7362.010; Fri, 1 Mar 2024
 13:42:00 +0000
Message-ID: <f776a527-bfd2-45de-bace-1b1c3f9dcb68@intel.com>
Date: Fri, 1 Mar 2024 14:41:56 +0100
User-Agent: Mozilla Thunderbird
Content-Language: pl
To: Jiri Pirko <jiri@resnulli.us>
References: <20240228142054.474626-1-mateusz.polchlopek@intel.com>
 <20240228142054.474626-5-mateusz.polchlopek@intel.com>
 <Zd9X5GPEZEIOIyWs@nanopsycho>
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Organization: Intel
In-Reply-To: <Zd9X5GPEZEIOIyWs@nanopsycho>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: WA2P291CA0008.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1e::21) To BL1PR11MB5399.namprd11.prod.outlook.com
 (2603:10b6:208:318::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL1PR11MB5399:EE_|MW3PR11MB4666:EE_
X-MS-Office365-Filtering-Correlation-Id: e8925954-7bdd-46cb-2600-08dc39f55ecd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9wOTZX55AQThjVUtevfMLz50X30ZINnJNTmmSl8oQhxVELzxzU8TX8RgjTHK3vI7Q5wPqg1+tG8w/9NEZhp+lEn9XZoNFk8qqAiV+Tky6PKfiMyw9Bws5HJl7gvhXKoTTtbJ3aSA9u5NXdX4N+Mivt+0ghkqb1xzoV9Kjzwez3szvA4aGb4A7nrYxBNypGa9ZzI74/QLJkUSZ/r2/MKDof4eDQUIjkEX6+ENySIuCec+bJRV1rIh2Jo8BOIJSyjqL/VoSOPbKHeCQEG/YnNK5yQCB3Zekk1nhNiJbmHdRLW94rjkj0eafm0i6Gi8TYkgI3tgaw8aIHsUV0HkbQ2GwFqYQMMghjFIUl6e/FbTm60u7hbYi7VzSOH+mwZ0A317E3FWKKa7La+ATIs654AGmt9njwzqwnAQVPga3ersvT8f7evZdgtZ9dVtBlVnKoC23VhHASC8MRFUaUdveQm6i0U8+UVYYRBXQzyrICEm2ZvQBhfXxGC2azIw1UlWOi705LV4GxwYJjDNJbgxdzM9TOHxc+dNmN73MgCRxPKP6S4GdMpzZT1pOVnSdCYQpwVuTEkZtuLFyl1/rI1BgIfOMS2zZEHJ0JGWA2E6n+Oo/4+f62x3X+FACQDp0QfWxrspmfdA1+miUbE8dy7Dezngig==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5399.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UU95c3dETnVVL3VQVjJLbHdRL0NuN3VISGU2dUhORDFGeEFVZHhET2tEdGZ0?=
 =?utf-8?B?dkhyWExzUnppNlFieVMrSGNGSFA0Z1YvbFNzQXpHaENkSnRmQzR0ZXY2L3Zl?=
 =?utf-8?B?MFhTeWgwUmUxYUpJL0YzZFJoc0RvU1JCL2IrTHEzemU1NGhDN2pHRHJQRFlz?=
 =?utf-8?B?d0lnOVZZNG1leUt6OEpmZUU5Tzc0dmFZcTkwdUtHMzVzNU90R2p1UlcyR3pG?=
 =?utf-8?B?KzlVNW5IOE1ST2ZuZHFMaWhVOWV0ZGlGMTJpb29QTkVYSnhiZHU2N3F4Umow?=
 =?utf-8?B?UTM3dDRxOFdiVENMZ2FjTXpMSVJxb1IxaFVpRk9HcTVaMVRpaHliNll6N3pv?=
 =?utf-8?B?K0ZtdTJlWUM0elZLNmh3eXNvL0RucFRyVld3aWNMRjR4enc5UnJGU1haOGlj?=
 =?utf-8?B?RGdDcTBoVkcxRkwwL011Q3krUlNCL2lxbTJPM25EUllMTWZ5d3BsWVRYZ0ds?=
 =?utf-8?B?NXJNc043a3kxSjNyQ2N3TFpTRGZ5N3VDQ1FSMVBwN3U1RE9yOGpVQjE3K0NC?=
 =?utf-8?B?WTM0ekZlNHJxelpvRTVyZ2gvMnpPcFNNUXl2WS9nZGdFd2x3OVIzdGQ3WjRw?=
 =?utf-8?B?ajF2WnJOT1c1d3pobi9MczJlNGIzeUNBUGFoYUxIZC9SWGptcGNVUnVDVEMr?=
 =?utf-8?B?c0taWGpabHhsWU5wMkw1eC8vVzVBc2ZwYkVhUlJrTERqQXU0WDRXYzdqL0lW?=
 =?utf-8?B?bHBxaDFMTDVuSXFMTmtwbjlLWm1zSXpFZG9DcHJjQzFPUG1icUp6TloxRWFi?=
 =?utf-8?B?dC9USGVBM09UK2x6b2paak1uOVYydXV5enB4M1JlRFJ0WE82TXU4TXJiWlZo?=
 =?utf-8?B?dkRlQmtZWWdDZjA5eE1qOFJBb1g3ZHhheWd2c1JtQXNCQVdSRFF4V3kyYkht?=
 =?utf-8?B?YWIvNkJMaFNnbEsrTmROK3ZVNWRXenRTeXJZbDU5MnFVZDZJYXB1a0h0Rms2?=
 =?utf-8?B?aHlONGhFVTJoMmRPYXNZNkNzQ2xpWk80VEZ2RnB4bGhDOVJpL2JhZXRvY21i?=
 =?utf-8?B?bFdkM1ozeVhUeWthSFFZTUc3Tmg2LzlpMW1TUExXM3VFK1BVUFdKUlV3cStP?=
 =?utf-8?B?bkdQUm90eGdDaU1WZjJvTlE3U3RRSGxhN0piUjhQRmtBNGFNZnROQVhBRTFy?=
 =?utf-8?B?ZkVyMjFNQzBjN0xlZjhBZitJVDdURGlUY25uQlZjNTJNckFWK0VST0FGYkdm?=
 =?utf-8?B?bE1PTE54M3VtcFBSTkU1V2VWMXp0S3ZOQTVQZXpmcjV5d3RqdXEyUGE5VkdP?=
 =?utf-8?B?b1ViTnNkYldnZTJZUnVpb1pvK3cvVGYwZnNWQ29jYVJiK3o1V3ErbHlxaXdH?=
 =?utf-8?B?QXREbXNHZkRQQVFTcmhBcEFEMG1hODJla0o3b29iNk5vODRiYVQxY1Q0bVYx?=
 =?utf-8?B?bWVNRE5PTnZxV2JxTHNJMEdPQ2wzS0hvMVJIbkc0UUdFTS94OThJcDBoL1A4?=
 =?utf-8?B?MXJGOHlvRmFVM05yV2E3QjhXcFFwcUdYTEh2Y3AraU5TQ1F1dm5ram5Qekdw?=
 =?utf-8?B?dzZnLzBhc3g2eHNxSE42Wmk3Q1Qwa29NZTI4L0c5bVNETHVlb3VtWU5TZDU2?=
 =?utf-8?B?MzlqM21MNkRMdlR4UVNNYTJiWlR0Mm5DVDRJRkpFNHRGNXVmRzJLNVY5OENS?=
 =?utf-8?B?WDJuWU9ieEhtaU14SFRUZVgvR2NsQ0MzQzdWSnBkdngvUDdwTUxRRnVyeXVr?=
 =?utf-8?B?WnoyT3ZyU25RWU1EaE9XQkpNOW5UdEtLb0E0VllDZCtzVTVRSU5ucG1kSXBo?=
 =?utf-8?B?UnR5N2lMUDZpQWNHZVpqUVVlRGNoRDdaeGtzSVE3RDBuVmFsYkdmZFlzYzB2?=
 =?utf-8?B?YVQ0RnBIUnBQWXNYeXJHbzVSaTNybC9BVVdrY3dON3dlYm41dG5KWEpIUFFW?=
 =?utf-8?B?SkdvSEw0dm5UMlRHdlpGbzJ6QU9DbEJTMldpbEV6WkxTckpVcE9nM2d2cllQ?=
 =?utf-8?B?SDlwZitGcjRqNzdpV2ZuRTBwb0hDaFFNN0hoaUlRbTk2c3g5NFZtTk52blln?=
 =?utf-8?B?MU8yYXgyRUhOOFpsNG1Bc1hUdW51RTBvcmJiN3dQZzd1SEhlZGN5RGdWbno3?=
 =?utf-8?B?T0xwV2RJT2d3NkZvaitHYmJFd3lLcEdzeUZ4dEgvVndmem5LejgzTjNUTkFi?=
 =?utf-8?B?VEVnMjl0QU5xK3VJTmhGK2UyV1E2MktuNElFZ2MzSVJ0QUtIak0xcERwNzNx?=
 =?utf-8?B?WFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e8925954-7bdd-46cb-2600-08dc39f55ecd
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5399.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Mar 2024 13:42:00.2037 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: p2BI944P2F9R64EG2KaStpDMzCNROkhummiYAZ4cYLvgtnFMMwo+zxDsriMz9i5MUPU76R06Vo2gdn1cpX06Gxxm68SylocGls1IsV2ySwk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4666
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709300527; x=1740836527;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ey5RByv2vAxeeV6f4H64fovKsKSZcwCjBEGu0tQdrMA=;
 b=ZBqdoUokjpzIK/VFf+ksP/aftDcRElnlZ7fFcPHtMc5eHOC79HPsbcGp
 Ou2ty/gB+ZCTz3iTY0jz2TpUDjFBhzyAKCNwLWWpvLTu6WPcJkwRwiJXP
 8/l7LaV0MNius8m/yaKbJiPfkPt+nJ+gFN7X333D4j/OqavD4WUsp9FIk
 8AKmh/w4fiI7rmSz0iMuxcVdkgCoOtdxVFnxHQYGsEkafC9KHDuBuOiH+
 XvGNgKEEIpNCfYQxOXiBvOGLWFzmCBkdQoBx6bct9hN0h8hAp7lPfqVnb
 0pvAIHxggYHpk1c3ah61eJwoym/LUNjcWa3JGVE5hsoxsK3zXOVv8JAGx
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZBqdoUok
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 4/5] ice: Add
 tx_scheduling_layers devlink param
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
Cc: andrew@lunn.ch, michal.wilczynski@intel.com, netdev@vger.kernel.org,
 lukasz.czapnik@intel.com, victor.raj@intel.com,
 intel-wired-lan@lists.osuosl.org, horms@kernel.org,
 przemyslaw.kitszel@intel.com, kuba@kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 2/28/2024 4:57 PM, Jiri Pirko wrote:
> Wed, Feb 28, 2024 at 03:20:53PM CET, mateusz.polchlopek@intel.com wrote:
>> From: Lukasz Czapnik <lukasz.czapnik@intel.com>
>>
>> It was observed that Tx performance was inconsistent across all queues
>> and/or VSIs and that it was directly connected to existing 9-layer
>> topology of the Tx scheduler.
>>
>> Introduce new private devlink param - tx_scheduling_layers. This parameter
>> gives user flexibility to choose the 5-layer transmit scheduler topology
>> which helps to smooth out the transmit performance.
>>
>> Allowed parameter values are 5 and 9.
>>
>> Example usage:
>>
>> Show:
>> devlink dev param show pci/0000:4b:00.0 name tx_scheduling_layers
>> pci/0000:4b:00.0:
>>   name tx_scheduling_layers type driver-specific
>>     values:
>>       cmode permanent value 9
>>
>> Set:
>> devlink dev param set pci/0000:4b:00.0 name tx_scheduling_layers value 5
>> cmode permanent
>>
>> devlink dev param set pci/0000:4b:00.0 name tx_scheduling_layers value 9
>> cmode permanent
>>
>> Signed-off-by: Lukasz Czapnik <lukasz.czapnik@intel.com>
>> Co-developed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
>> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
>> ---
>> .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   8 +
>> drivers/net/ethernet/intel/ice/ice_devlink.c  | 169 ++++++++++++++++++
>> .../net/ethernet/intel/ice/ice_fw_update.c    |   7 +-
>> .../net/ethernet/intel/ice/ice_fw_update.h    |   3 +
>> drivers/net/ethernet/intel/ice/ice_nvm.c      |   7 +-
>> drivers/net/ethernet/intel/ice/ice_nvm.h      |   3 +
>> 6 files changed, 189 insertions(+), 8 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
>> index 02102e937b30..4143b50bd15d 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
>> +++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
>> @@ -1692,6 +1692,14 @@ struct ice_aqc_nvm {
>> };
>>
>> #define ICE_AQC_NVM_START_POINT			0
>> +#define ICE_AQC_NVM_TX_TOPO_MOD_ID             0x14B
>> +
>> +struct ice_aqc_nvm_tx_topo_user_sel {
>> +	__le16 length;
>> +	u8 data;
>> +#define ICE_AQC_NVM_TX_TOPO_USER_SEL	BIT(4)
>> +	u8 reserved;
>> +};
>>
>> /* NVM Checksum Command (direct, 0x0706) */
>> struct ice_aqc_nvm_checksum {
>> diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
>> index cc717175178b..db4872990e51 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_devlink.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
>> @@ -770,6 +770,167 @@ ice_devlink_port_unsplit(struct devlink *devlink, struct devlink_port *port,
>> 	return ice_devlink_port_split(devlink, port, 1, extack);
>> }
>>
>> +/**
>> + * ice_get_tx_topo_user_sel - Read user's choice from flash
>> + * @pf: pointer to pf structure
>> + * @layers: value read from flash will be saved here
>> + *
>> + * Reads user's preference for Tx Scheduler Topology Tree from PFA TLV.
>> + *
>> + * Returns zero when read was successful, negative values otherwise.
>> + */
>> +static int ice_get_tx_topo_user_sel(struct ice_pf *pf, uint8_t *layers)
>> +{
>> +	struct ice_aqc_nvm_tx_topo_user_sel usr_sel = {};
>> +	struct ice_hw *hw = &pf->hw;
>> +	int err;
>> +
>> +	err = ice_acquire_nvm(hw, ICE_RES_READ);
>> +	if (err)
>> +		return err;
>> +
>> +	err = ice_aq_read_nvm(hw, ICE_AQC_NVM_TX_TOPO_MOD_ID, 0,
>> +			     sizeof(usr_sel), &usr_sel, true, true, NULL);
>> +	if (err)
>> +		goto exit_release_res;
>> +
>> +	if (usr_sel.data & ICE_AQC_NVM_TX_TOPO_USER_SEL)
>> +		*layers = ICE_SCHED_5_LAYERS;
>> +       else
>> +		*layers = ICE_SCHED_9_LAYERS;
>> +
>> +exit_release_res:
>> +	ice_release_nvm(hw);
>> +
>> +	return err;
>> +}
>> +
>> +/**
>> + * ice_update_tx_topo_user_sel - Save user's preference in flash
>> + * @pf: pointer to pf structure
>> + * @layers: value to be saved in flash
>> + *
>> + * Variable "layers" defines user's preference about number of layers in Tx
>> + * Scheduler Topology Tree. This choice should be stored in PFA TLV field
>> + * and be picked up by driver, next time during init.
>> + *
>> + * Returns zero when save was successful, negative values otherwise.
>> + */
>> +static int ice_update_tx_topo_user_sel(struct ice_pf *pf, int layers)
>> +{
>> +	struct ice_aqc_nvm_tx_topo_user_sel usr_sel = {};
>> +	struct ice_hw *hw = &pf->hw;
>> +	int err;
>> +
>> +	err = ice_acquire_nvm(hw, ICE_RES_WRITE);
>> +	if (err)
>> +		return err;
>> +
>> +	err = ice_aq_read_nvm(hw, ICE_AQC_NVM_TX_TOPO_MOD_ID, 0,
>> +			      sizeof(usr_sel), &usr_sel, true, true, NULL);
>> +	if (err)
>> +		goto exit_release_res;
>> +
>> +	if (layers == ICE_SCHED_5_LAYERS)
>> +		usr_sel.data |= ICE_AQC_NVM_TX_TOPO_USER_SEL;
>> +	else
>> +		usr_sel.data &= ~ICE_AQC_NVM_TX_TOPO_USER_SEL;
>> +
>> +	err = ice_write_one_nvm_block(pf, ICE_AQC_NVM_TX_TOPO_MOD_ID, 2,
>> +				      sizeof(usr_sel.data), &usr_sel.data,
>> +				      true, NULL, NULL);
>> +	if (err)
>> +		err = -EIO;
>> +
>> +exit_release_res:
>> +	ice_release_nvm(hw);
>> +
>> +	return err;
>> +}
>> +
>> +/**
>> + * ice_devlink_tx_sched_layers_get - Get tx_scheduling_layers parameter
>> + * @devlink: pointer to the devlink instance
>> + * @id: the parameter ID to set
>> + * @ctx: context to store the parameter value
>> + *
>> + * Returns zero on success and negative value on failure.
>> + */
>> +static int ice_devlink_tx_sched_layers_get(struct devlink *devlink, u32 id,
>> +					   struct devlink_param_gset_ctx *ctx)
>> +{
>> +	struct ice_pf *pf = devlink_priv(devlink);
>> +	struct device *dev = ice_pf_to_dev(pf);
>> +	int err;
>> +
>> +	err = ice_get_tx_topo_user_sel(pf, &ctx->val.vu8);
>> +	if (err) {
>> +		dev_warn(dev, "Failed to read Tx Scheduler Tree - User Selection data from flash\n");
> 
> I wonder why we don't propagate extack to these callbacks. Care to add
> it and use it instead of dmesg please?
> 
> 

Good point Jiri, but it is 'get' (in 'set' the same situation) function 
from DEVLINK_PARAM_DRIVER which defines that in 'set'/'get' there is no 
extack parameter. From 'get' function I can probably remove this message 
as it is not so important and just return error code...

>> +		return -EIO;
>> +	}
>> +
>> +	return 0;
>> +}
>> +
>> +/**
>> + * ice_devlink_tx_sched_layers_set - Set tx_scheduling_layers parameter
>> + * @devlink: pointer to the devlink instance
>> + * @id: the parameter ID to set
>> + * @ctx: context to get the parameter value
>> + *
>> + * Returns zero on success and negative value on failure.
>> + */
>> +static int ice_devlink_tx_sched_layers_set(struct devlink *devlink, u32 id,
>> +					   struct devlink_param_gset_ctx *ctx)
>> +{
>> +	struct ice_pf *pf = devlink_priv(devlink);
>> +	struct device *dev = ice_pf_to_dev(pf);
>> +	int err;
>> +
>> +	err = ice_update_tx_topo_user_sel(pf, ctx->val.vu8);
>> +	if (err)
>> +		return -EIO;
>> +
>> +	dev_warn(dev, "Tx scheduling layers have been changed on this device. You must reboot the system for the change to take effect.");
> 
> Reboot the system? Why not re-plug the whole building while you are at
> it? :)
> 
> 

... but what about 'set' function? The information about reboot has to 
stay and still - there is no extack in 'set' function.

>> +
>> +	return 0;
>> +}
>> +
>> +/**
>> + * ice_devlink_tx_sched_layers_validate - Validate passed tx_scheduling_layers
>> + *                                       parameter value
>> + * @devlink: unused pointer to devlink instance
>> + * @id: the parameter ID to validate
>> + * @val: value to validate
>> + * @extack: netlink extended ACK structure
>> + *
>> + * Supported values are:
>> + * - 5 - five layers Tx Scheduler Topology Tree
>> + * - 9 - nine layers Tx Scheduler Topology Tree
>> + *
>> + * Returns zero when passed parameter value is supported. Negative value on
>> + * error.
>> + */
>> +static int ice_devlink_tx_sched_layers_validate(struct devlink *devlink, u32 id,
>> +					        union devlink_param_value val,
>> +					        struct netlink_ext_ack *extack)
>> +{
>> +	struct ice_pf *pf = devlink_priv(devlink);
>> +	struct ice_hw *hw = &pf->hw;
>> +
>> +	if (!hw->func_caps.common_cap.tx_sched_topo_comp_mode_en) {
>> +		NL_SET_ERR_MSG_MOD(extack, "Error: Requested feature is not supported by the FW on this device. Update the FW and run this command again.");
> 
> Drop the "Error: " prefix. Does not make sense to have it. Also, "Update
> FW" remark looks quite odd.
> 
>> +		return -EOPNOTSUPP;
>> +	}
>> +
>> +	if (val.vu8 != ICE_SCHED_5_LAYERS && val.vu8 != ICE_SCHED_9_LAYERS) {
>> +		NL_SET_ERR_MSG_MOD(extack, "Error: Wrong number of tx scheduler layers provided.");
> 
> Drop the "Error: " prefix. Does not make sense to have it.
> 
> 
>> +		return -EINVAL;
>> +	}
>> +
>> +	return 0;
>> +}
>> +
>> /**
>>   * ice_tear_down_devlink_rate_tree - removes devlink-rate exported tree
>>   * @pf: pf struct
>> @@ -1601,6 +1762,7 @@ static int ice_devlink_loopback_validate(struct devlink *devlink, u32 id,
>> enum ice_param_id {
>> 	ICE_DEVLINK_PARAM_ID_BASE = DEVLINK_PARAM_GENERIC_ID_MAX,
>> 	ICE_DEVLINK_PARAM_ID_LOOPBACK,
>> +	ICE_DEVLINK_PARAM_ID_TX_BALANCE,
>> };
>>
>> static const struct devlink_param ice_devlink_params[] = {
>> @@ -1618,6 +1780,13 @@ static const struct devlink_param ice_devlink_params[] = {
>> 			     ice_devlink_loopback_get,
>> 			     ice_devlink_loopback_set,
>> 			     ice_devlink_loopback_validate),
>> +	DEVLINK_PARAM_DRIVER(ICE_DEVLINK_PARAM_ID_TX_BALANCE,
>> +			     "tx_scheduling_layers",
>> +			     DEVLINK_PARAM_TYPE_U8,
>> +			     BIT(DEVLINK_PARAM_CMODE_PERMANENT),
>> +			     ice_devlink_tx_sched_layers_get,
>> +			     ice_devlink_tx_sched_layers_set,
>> +			     ice_devlink_tx_sched_layers_validate),
>> };
>>
>> static void ice_devlink_free(void *devlink_ptr)
>> diff --git a/drivers/net/ethernet/intel/ice/ice_fw_update.c b/drivers/net/ethernet/intel/ice/ice_fw_update.c
>> index 319a2d6fe26c..f81db6c107c8 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_fw_update.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_fw_update.c
>> @@ -286,10 +286,9 @@ ice_send_component_table(struct pldmfw *context, struct pldmfw_component *compon
>>   *
>>   * Returns: zero on success, or a negative error code on failure.
>>   */
>> -static int
>> -ice_write_one_nvm_block(struct ice_pf *pf, u16 module, u32 offset,
>> -			u16 block_size, u8 *block, bool last_cmd,
>> -			u8 *reset_level, struct netlink_ext_ack *extack)
>> +int ice_write_one_nvm_block(struct ice_pf *pf, u16 module, u32 offset,
>> +			    u16 block_size, u8 *block, bool last_cmd,
>> +			    u8 *reset_level, struct netlink_ext_ack *extack)
>> {
>> 	u16 completion_module, completion_retval;
>> 	struct device *dev = ice_pf_to_dev(pf);
>> diff --git a/drivers/net/ethernet/intel/ice/ice_fw_update.h b/drivers/net/ethernet/intel/ice/ice_fw_update.h
>> index 750574885716..04b200462757 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_fw_update.h
>> +++ b/drivers/net/ethernet/intel/ice/ice_fw_update.h
>> @@ -9,5 +9,8 @@ int ice_devlink_flash_update(struct devlink *devlink,
>> 			     struct netlink_ext_ack *extack);
>> int ice_get_pending_updates(struct ice_pf *pf, u8 *pending,
>> 			    struct netlink_ext_ack *extack);
>> +int ice_write_one_nvm_block(struct ice_pf *pf, u16 module, u32 offset,
>> +			    u16 block_size, u8 *block, bool last_cmd,
>> +			    u8 *reset_level, struct netlink_ext_ack *extack);
>>
>> #endif
>> diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.c b/drivers/net/ethernet/intel/ice/ice_nvm.c
>> index d4e05d2cb30c..84eab92dc03c 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_nvm.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_nvm.c
>> @@ -18,10 +18,9 @@
>>   *
>>   * Read the NVM using the admin queue commands (0x0701)
>>   */
>> -static int
>> -ice_aq_read_nvm(struct ice_hw *hw, u16 module_typeid, u32 offset, u16 length,
>> -		void *data, bool last_command, bool read_shadow_ram,
>> -		struct ice_sq_cd *cd)
>> +int ice_aq_read_nvm(struct ice_hw *hw, u16 module_typeid, u32 offset,
>> +		    u16 length, void *data, bool last_command,
>> +		    bool read_shadow_ram, struct ice_sq_cd *cd)
>> {
>> 	struct ice_aq_desc desc;
>> 	struct ice_aqc_nvm *cmd;
>> diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.h b/drivers/net/ethernet/intel/ice/ice_nvm.h
>> index 774c2317967d..63cdc6bdac58 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_nvm.h
>> +++ b/drivers/net/ethernet/intel/ice/ice_nvm.h
>> @@ -14,6 +14,9 @@ struct ice_orom_civd_info {
>>
>> int ice_acquire_nvm(struct ice_hw *hw, enum ice_aq_res_access_type access);
>> void ice_release_nvm(struct ice_hw *hw);
>> +int ice_aq_read_nvm(struct ice_hw *hw, u16 module_typeid, u32 offset,
>> +		    u16 length, void *data, bool last_command,
>> +		    bool read_shadow_ram, struct ice_sq_cd *cd);
>> int
>> ice_read_flat_nvm(struct ice_hw *hw, u32 offset, u32 *length, u8 *data,
>> 		  bool read_shadow_ram);
>> -- 
>> 2.38.1
>>

Other comments will be resolved in the next version.
Thanks
