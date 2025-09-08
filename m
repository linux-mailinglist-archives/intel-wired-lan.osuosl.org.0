Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C07ABB48DB0
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Sep 2025 14:37:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0A1AC61BD9;
	Mon,  8 Sep 2025 12:37:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dvv6tETlDJRL; Mon,  8 Sep 2025 12:37:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 308E661C42
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757335043;
	bh=XaMF2EN6rcsQOLcGIu1QI0YrKSi1yzZgzQi9WcAlv5M=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=KtG8w4um9NNXZid8Kw/OCnyK5Oytp7HGkM1gM+/L8OugahQds/1SE+POM3KG6LUuX
	 11aYxzNfGMKFixQQJxw4ugFDOD345Gx4tQBcq5sF85BM0wD8fqFr59Qx5N+VsX+DxA
	 9ocR00YeEbgbvdqIYV5jA6vylzL9rmcxBuYHXMyr4Te+SXZ/2FP9ndwecB2csW09TN
	 270GTsiqexWH0j0qvI4yH8lEGtsjkr+mHdEMu/bdyyi6yyKHGQzpoVIxhiiHfYIgxQ
	 tF07Zd55apZHIOSYJA4eyYCVepwmnnH0U13O3omA4zLlJPc9FzSDhGXaeJbi2Zp20Z
	 aZMoes/voUz6A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 308E661C42;
	Mon,  8 Sep 2025 12:37:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 54076186
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Sep 2025 12:37:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 45B6C42107
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Sep 2025 12:37:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OmhFA0MEDdUP for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Sep 2025 12:37:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 43D7A41FCD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 43D7A41FCD
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 43D7A41FCD
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Sep 2025 12:37:20 +0000 (UTC)
X-CSE-ConnectionGUID: HQ4ROtlZSkKm2xpEVjHLCg==
X-CSE-MsgGUID: bWzPzRz1ScCCPZGwEdXhzw==
X-IronPort-AV: E=McAfee;i="6800,10657,11546"; a="58629176"
X-IronPort-AV: E=Sophos;i="6.18,248,1751266800"; d="scan'208";a="58629176"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 05:37:20 -0700
X-CSE-ConnectionGUID: BfMCwCjmSzCjgxeBfNnpKQ==
X-CSE-MsgGUID: JJ51by0CTf+ipRm30TKaLg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,248,1751266800"; d="scan'208";a="172703644"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 05:37:19 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 8 Sep 2025 05:37:18 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 8 Sep 2025 05:37:18 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.54)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 8 Sep 2025 05:37:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=D+ip4h3aCuOn/kT4dZkgPxHV0Khb2KZGaMhMM1AT6KRNsA6pyFyrl7UJEiH85I2cWjYqXuIh8PdBVcUs+4KakC81ZUmA1cjmq0pQn9kz8uAw+fnb3Y0E4ii028a/IlRNtKQV/SeX4dcquL4I4b4f4xXyDnKkDDNVV+i0PYPJRnyTMaaaPhJzg+V4v3MoMEnXDqmLEXZ8K0Vv9Ohj63hior7UA5jCN+c4edJe84YhhnALcwbQWzAqVRY3Mmzti5sYAANZNKBEiMZZZM/Ohh0elf29+/V5ZoZ9v0DgHOnc7EZH7moKnIbaytcuce9HVwt5ZU71/iBeLx1m2IknnL4DeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XaMF2EN6rcsQOLcGIu1QI0YrKSi1yzZgzQi9WcAlv5M=;
 b=ggrNjPcwuHHISg9e2dFH7CMy3IcLQCh5MCVGJV5+jGCFA96VX5Zo5YZ06LvLFKFurHv/7MNakI0hFIQ8+rSskIGQM5dwbfreOGSsK+Xi2DI5NPen7RqB9fzIQA3/RpYSNS8R787FaBsE4fD6xBk73FBMd2UBfnHNIla7H1ygDuG6XXdK7slFRNadl8mwZ3Vk78G9AIwFkRUgwyYARjsKSAh0QuJqdrrEJ0dm6c1biCH5S2Flx82KH9ljQrr9UZrqMOg7jdJ2wkwldA1D/qSXzXUp+cNuyh+DecH7EQxMr0RR6h5qEGgATaMg+IKS3y6+WtsLLmb3CiY+Nsp1town4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by SA3PR11MB7977.namprd11.prod.outlook.com (2603:10b6:806:2f3::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.19; Mon, 8 Sep
 2025 12:37:16 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%6]) with mapi id 15.20.9094.018; Mon, 8 Sep 2025
 12:37:16 +0000
Message-ID: <9561e65d-0942-49d2-8dfc-790b3b24e9e6@intel.com>
Date: Mon, 8 Sep 2025 14:25:22 +0200
User-Agent: Mozilla Thunderbird
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
CC: <anthony.l.nguyen@intel.com>, <netdev@vger.kernel.org>,
 <intel-wired-lan@lists.osuosl.org>, Koichiro Den <den@valinux.co.jp>
References: <20250908112629.1938159-1-jedrzej.jagielski@intel.com>
 <20250908112629.1938159-3-jedrzej.jagielski@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20250908112629.1938159-3-jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DU7P189CA0020.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:10:552::30) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|SA3PR11MB7977:EE_
X-MS-Office365-Filtering-Correlation-Id: eb68112b-3ee7-4547-706d-08ddeed471a1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bEtWZUkyRUVlblI5NDhZaFpyMVhXYTgyejVmV1ByN1Erak1aZ2poTlpOZ3F1?=
 =?utf-8?B?bEdMb3I5ZUJsNHpFcXA3dEtzSUZmT0NrUGQ3UGg4MHZQUVJJWWRDZncxZXI3?=
 =?utf-8?B?d3M2QTJKeVZwdkFOZStGTVNYMlpCYlorc04rTFJETHVlY1VNa1N0S0Evcy8w?=
 =?utf-8?B?a2l6OE05Tzl6R0hkRmxWYnhodno0c0x0OElESld5ejdQZmFXTGZONUpoUzha?=
 =?utf-8?B?cmxjVmRHRk1WdW4xaFpSTlJoZ3NoQ2VtVXFtcDZEQ2EvZGJNK3R2SmNXMkx4?=
 =?utf-8?B?MUJVbitnRm5zYkpMd2NHOVRKZFFvZ3NPUlVxVFVoSUtaNXBvRGtrS2N4L3Rj?=
 =?utf-8?B?NzZ1aklQc2pTc0F5MzluVUp4aGVTdHZpUmQ1WGhiWDh6Nmo5bUZ0azNiWEtT?=
 =?utf-8?B?dG5BVC9qUmFUMVZ5UVhaanhDYVE3K3VYbnFlVzYrVlIvOEFYVlROREt6TTZL?=
 =?utf-8?B?a3JFNW95VTNhS1lRN1JVUktvZWhwc3JYbkxQWEhFdGdwaDRIUHRRN0lTeXZi?=
 =?utf-8?B?NmZKU0IvcDg1ZTlBZ3UxMVk1ZktaSmhLbW9iczNqWkd4b3VCVkVsSjFCQm93?=
 =?utf-8?B?VThZZ21EQUtxaWZyRTdoc3QwTFBqaTgyTVV2cmlISExwczFwSlBSdHYvOVNq?=
 =?utf-8?B?QkhzTnprK0hmTEtDdGwzZDdsLytxRGVBeVV3SnVRZG5vQnlrRUY1eTZnVUM2?=
 =?utf-8?B?YVBadDJsdDFvZVRCaFBuc3BJN2F3bjNLdDRXWFFSYlg0VGhIc2JEd0NwcVdr?=
 =?utf-8?B?OURyOEpKOFFmU05RQXlqeGQrN1hMRVBBODNjTWtjaVRCSkJkRTNZa09RTGJ6?=
 =?utf-8?B?LytadVZwcGxWNzNaS1FhWlQ2NFNJT3hXajZtNTJRZjZQUmlhV3BCbjFOWndi?=
 =?utf-8?B?eks1ekZNRXE0ejdnVXp2V0UxQkd5Yk9wTEYwU3IvZ0ZyVHhmdkpGZ2NYYngv?=
 =?utf-8?B?ZnkveUV2U1U4eFNMSnh6VjBvVDlueXdkbUx4dTlsVEFKYncwYjB3bnphSkNl?=
 =?utf-8?B?Sm8xWTZPNWpQZlY5ZXRENFZ5eVVldElZSUJiMy9Sc2tkR3hTTDZIbmJxMFFn?=
 =?utf-8?B?d2Zzd3dZTmpCZEMrN1RjSmhpK05BMUg3QTZ0NkhBV2ZCMkIyaTZkcnY0SFRu?=
 =?utf-8?B?Q0kxdHlrZHNvVDdNekdkMDBaTHdTWFkwSDFKSHZVTVlPQnAxMkpFSUhGZS83?=
 =?utf-8?B?aU4wNXJLZng5N3pRWlFLOUlac0hhZEFIaHl5NmhmQStiMjdRSVV4OVBjRTk3?=
 =?utf-8?B?d1JjbEFKL3lTY3FxMUUxcVlPWGxKUGVxYUdWZkRyc2RwckthRjQ1UFZUNldj?=
 =?utf-8?B?NFIycXBiMzJ5QloyNFhZZGNqV0ZIWElMUjcwZmNBVjRNYjZQTjRrQ3RkTDR4?=
 =?utf-8?B?Z0l3Mm9YV0trU3MvaDMyYW1RUkV0QmNMVXdDcGVqWkc0OVVDUjA4YW9DTDVF?=
 =?utf-8?B?a0xlQ3dJYk5SYzBHSkZNNEJWQmswRmxkaHdmamJBcklYdjBVTW56eFVhWThV?=
 =?utf-8?B?N0tqY2ZzNnZRY3Vyb29JMTBic21UbU1leUVNL0ZaK3JOa1hNT1FqRUwrdHAw?=
 =?utf-8?B?czVjYkRLUnNvVk5WdmRTMC8zY3lIY0lSbzJOTFUvNWZlWUVMUHVoZk5CZlRY?=
 =?utf-8?B?SmVHWGVGOUcwS0ptVE01YXltWFR6eEk3bGM4UGdaSXNiYTlsWXF5Y1B6K3M5?=
 =?utf-8?B?cmVNUkxrRVFSRXRxN0ZGd2Zic1JuNnRUODBsUDFFUFFuWC9PVDJsVC85S2Vp?=
 =?utf-8?B?bHBaN0pCZCszdVk4emYvdUM5YXg5bVA0dzRlc3M0Skk2amgxVE93cktxcFhv?=
 =?utf-8?B?MEpNY3FmQ2U3YXptSEFuT0U1YUtTL2c3K1Y1V3hlSGxmQVVMbFVrb0loVy91?=
 =?utf-8?B?eEY1cjZCM1lDTk45QlpHYkFXRFVvUmcyNXBWcFhqbEhoVm1CdGxjTXJoN2xj?=
 =?utf-8?Q?hLsnK0nRDd4=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZDFxS3I1WFg0dmZTSDZWZ0kvd0JFUHFDNXNQYTBKTjNYRHpXY3RuN0ZwTFph?=
 =?utf-8?B?NHVLckZXNzlhR1RHMmhSVHd6OHlFV2gwMkY2RUY0UWcvN2t2dGZNYTJxdmR0?=
 =?utf-8?B?Vm5maWkzNXdRWHR5Z21SQnV1N2s1WGRwbVRQTjNGQjZydmxkbjc5UTZzODhR?=
 =?utf-8?B?U3RlYkdNbU94cHZTcVozcGFUTlZPT2tKemNwcE1WeTdtUW9zQW5iOTduVDVD?=
 =?utf-8?B?YStGeXdvY1BTc0JIUkhWYjFjeDZpaFliZCt4ZkM2VlVqWHhBUit1QThtVk1i?=
 =?utf-8?B?ZnE2Qm01VklOaVZocVFLekMrQlJWcStGc1k4ZUhtcHYrSlA2NkFkUmE1aHlx?=
 =?utf-8?B?dUxWaEppazJQVjl6VkxXbmVBRnJRdzcwaDZlUlQvSHFCMlZGOXpSWTcyTk1V?=
 =?utf-8?B?OVV3YWNKQWxRUitOb1luRk9WTnNhZFJ6K01icDVjdXFpZVhzRDh1WnYxTmVp?=
 =?utf-8?B?L1krdUVNRjc4dnBqUW12TlhLU0dpSkdXMERDaUFGMVlaL2ZCOExNSjQySHBV?=
 =?utf-8?B?NXJRQTkxZWlJT1NFUHJ3MEI5YXJHaERqZk44Q1lEaitHZVBXWVI0WGlxNUtx?=
 =?utf-8?B?VUx3dlFCR2R0QmZFUEFrSGsyQktnWXk5bmMrOXhueFJEQVZzTUNVS0lRc1BH?=
 =?utf-8?B?WXEvTFk4R3ZBbEV0TW0vWXFZSllvM2FDTGFIRGRkVUNJSlY4V0NsU0RCNDhS?=
 =?utf-8?B?cnJTSGgxdkthNEtCZE9ObDFqalZVcEl0LzhPdlArc0NXaVBrVnhrdjFmd0Ev?=
 =?utf-8?B?SUZUZ2w1QmNRSER0My81NURHZk1WNVhBZytRbmZ5NmlyWW1tUm5RVEpORmhS?=
 =?utf-8?B?YnlCNWdTdEZ1U0ZpbVdpSFM3NlhIQzVSNFpQbVhNSEJGbVphNHhFYXg2Uk1G?=
 =?utf-8?B?NldHdnRvZDEraDBpZUNqZmp1aGtnTUZsUmt3djFRUk9BUjlRcFprcVpmU0ZP?=
 =?utf-8?B?UytoMlhqci95aXVMQTUwcXdmcG5kN1lLN3JUSjYxSmJvWnZNMDZmeXNmN0VG?=
 =?utf-8?B?WDdxcXdvYkYrOW5ya0Q2UWxNQWl1RXlPNHlheFBLM3d0REloRmQ4b3dnU3Qz?=
 =?utf-8?B?cWxuNlpWbGhtRWJySWVON2hKNGRKWHFNeG5nT2JwM2hPSnNYUXZjWGpQTUpl?=
 =?utf-8?B?UDdIUHJnZGM3T0hiUjQrTTJnNEk1KzUrQ0FhYTRsakN3RlRUUTBNOUJ3ZnIr?=
 =?utf-8?B?ekhzMGhYUzZlOWRZOUoxY3ZndDZUandkVnFZb0loWWdjMUlPTlUrY29rUTBL?=
 =?utf-8?B?QmgrYWw5cmJsMXNxOU1HUFFFVXdRei9mWTNjbkN4dEd5dC9Lc0psbGRaZHp1?=
 =?utf-8?B?dGdUMzBqZFAzQ3dTc2pucHQwWGdkdDY5R2I4M3BVcVBqM0htWndBVGZ0a004?=
 =?utf-8?B?V0l5UXdOVHI1TGg4OGh0T3ZLSXUxU09ONmp4ZGw3bkoxMzREc0lKWDJpbXF5?=
 =?utf-8?B?bmtsR1d4WDVUZkRIcTJmd3JFUFpTWncxWHZKa0x4RFAzV3hMME4zdjUweXdM?=
 =?utf-8?B?WENxYTlPLzBvelRrSmxKellCNU1jTWpIQnB5Z3U0WmNuaG1TZVFUMjdIYzVu?=
 =?utf-8?B?VGVqOWF4bGNFcG1sNlNIaE5DS1BLZTlnaDU0OThRZzNtY1l4ZytUMGxTc1Fn?=
 =?utf-8?B?V040R0t0MFFhbmlJVFdzTHd1ZFl4RzVVOWNrd3VEMEY3U2pvS3ZMcS9GazBh?=
 =?utf-8?B?dWdTbnRRQ2trL0xuSUMzNVNPZ01sN2F4akVMbkphYXRyQzAxSnY5aERGUnp2?=
 =?utf-8?B?M1Q1NTljR2JibEdEZVUwTWRxaFFXK2hyakJEZGhYckppSXRBMGhia2lxNFp5?=
 =?utf-8?B?ajh1d3RDWkNHL0RpQWc3MytQTklkQURoY0V3bFYyaHkzOUpMSkV3clgzL0U4?=
 =?utf-8?B?cWhUMmYyZzdHU2tKWXdXOHAvOUJ3Q1lRclhMbFBpMENGMzBwclNnVXl3ekdp?=
 =?utf-8?B?R2I2MU5ZQklLVmJIVklzS2RPYmJZRDkrcUJaSHRzS0NpZUJGdDQzR3dPanZC?=
 =?utf-8?B?cUZEM3JiN213d3JlR002VUgvRmovUVc5YzYyS05zMldhd1BKNUd6RGFkQ1BV?=
 =?utf-8?B?WXZZalNRYndLOC9oOTEzK1VyUFk1VFR4UFJTVm41RUVyZDhhM3ZxSHJoVm42?=
 =?utf-8?B?Rm9GamdTVkZMRE1WRWZsbmZROFE2c0tSOG1rWFRLV3NsKzVNYlo5Sk1WUjJw?=
 =?utf-8?B?VHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: eb68112b-3ee7-4547-706d-08ddeed471a1
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Sep 2025 12:37:16.5347 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QAg79enj3Ifug2SrozYOJVG33qYj+dpgaa624ArNRkI8xOnMvFYq9G7sJaBQA12wU6mlRAzh5S783dBHP+oJ/crYhpzzKHs2MrFHfbfIMFI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7977
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757335040; x=1788871040;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=e/k3WdBC0LDMzS5kFhkRODGMQqjF5b39z9+fBEotZas=;
 b=J6y5b3zRzHYcOnHpxgrNgbAA4qifYBU//0kQI56GacZMJZ+ZGlEAIrOh
 wwKR82p1cZu9X4atBpAAbLRTboJYwt8NU8FMLIfSxNwHK1/AFaILrQbPG
 HxhvbJ/11Y35CzxoCTX6WjHQnwCYcA4OV2Q+p7zcfWFfiiO5pACXG+NGM
 RLoaw805uLcaib3HnRBMzxMyokdc77PYFcLzHqHrdTXXJ8hyC+O5d1MFF
 gBEaS9chGmXLO7C0H8WNsPRqE2PtZVDEiW3/VaLyYoKJjeo29ktU6kBTX
 MlhgYeNbZv59oLg3YDJs2slgazPb7GJAUbi5snhsfNdo/bnc1kQ8zIJLA
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=J6y5b3zR
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 2/2] ixgbe: destroy
 aci.lock later within ixgbe_remove path
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

On 9/8/25 13:26, Jedrzej Jagielski wrote:
> There's another issue with aci.lock and previous patch uncovers it.
> aci.lock is being destroyed during removing ixgbe while some of the
> ixgbe closing routines are still ongoing. These routines use Admin
> Command Interface which require taking aci.lock which has been already
> destroyed what leads to call trace.
> 
> [  +0.000004] DEBUG_LOCKS_WARN_ON(lock->magic != lock)
> [  +0.000007] WARNING: CPU: 12 PID: 10277 at kernel/locking/mutex.c:155 mutex_lock+0x5f/0x70
> [  +0.000002] Call Trace:
> [  +0.000003]  <TASK>
> [  +0.000006]  ixgbe_aci_send_cmd+0xc8/0x220 [ixgbe]
> [  +0.000049]  ? try_to_wake_up+0x29d/0x5d0
> [  +0.000009]  ixgbe_disable_rx_e610+0xc4/0x110 [ixgbe]
> [  +0.000032]  ixgbe_disable_rx+0x3d/0x200 [ixgbe]
> [  +0.000027]  ixgbe_down+0x102/0x3b0 [ixgbe]
> [  +0.000031]  ixgbe_close_suspend+0x28/0x90 [ixgbe]
> [  +0.000028]  ixgbe_close+0xfb/0x100 [ixgbe]
> [  +0.000025]  __dev_close_many+0xae/0x220
> [  +0.000005]  dev_close_many+0xc2/0x1a0
> [  +0.000004]  ? kernfs_should_drain_open_files+0x2a/0x40
> [  +0.000005]  unregister_netdevice_many_notify+0x204/0xb00
> [  +0.000006]  ? __kernfs_remove.part.0+0x109/0x210
> [  +0.000006]  ? kobj_kset_leave+0x4b/0x70
> [  +0.000008]  unregister_netdevice_queue+0xf6/0x130
> [  +0.000006]  unregister_netdev+0x1c/0x40
> [  +0.000005]  ixgbe_remove+0x216/0x290 [ixgbe]
> [  +0.000021]  pci_device_remove+0x42/0xb0
> [  +0.000007]  device_release_driver_internal+0x19c/0x200
> [  +0.000008]  driver_detach+0x48/0x90
> [  +0.000003]  bus_remove_driver+0x6d/0xf0
> [  +0.000006]  pci_unregister_driver+0x2e/0xb0
> [  +0.000005]  ixgbe_exit_module+0x1c/0xc80 [ixgbe]
> 
> Same as for the previous commit, the issue has been highlighted by the
> commit 337369f8ce9e ("locking/mutex: Add MUTEX_WARN_ON() into fast path").
> 
> Move destroying aci.lock to the end of ixgbe_remove(), as this
> simply fixes the issue.
> 
> Fixes: 4600cdf9f5ac ("ixgbe: Enable link management in E610 device")
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>

thank you for fixing that!

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

note:
I didn't checked how it goes with git, but on "human level" it does not
conflict with moving devlink_free() to the end too:
https://patchwork.ozlabs.org/project/intel-wired-lan/list/?series=471779


> ---
>   drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 7 ++++---
>   1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> index 18cae81dc794..4aa4ca603584 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> @@ -11891,10 +11891,8 @@ static void ixgbe_remove(struct pci_dev *pdev)
>   	set_bit(__IXGBE_REMOVING, &adapter->state);
>   	cancel_work_sync(&adapter->service_task);
>   
> -	if (adapter->hw.mac.type == ixgbe_mac_e610) {
> +	if (adapter->hw.mac.type == ixgbe_mac_e610)
>   		ixgbe_disable_link_status_events(adapter);
> -		mutex_destroy(&adapter->hw.aci.lock);
> -	}
>   
>   	if (adapter->mii_bus)
>   		mdiobus_unregister(adapter->mii_bus);
> @@ -11954,6 +11952,9 @@ static void ixgbe_remove(struct pci_dev *pdev)
>   	disable_dev = !test_and_set_bit(__IXGBE_DISABLED, &adapter->state);
>   	free_netdev(netdev);
>   
> +	if (adapter->hw.mac.type == ixgbe_mac_e610)
> +		mutex_destroy(&adapter->hw.aci.lock);
> +
>   	if (disable_dev)
>   		pci_disable_device(pdev);
>   }

