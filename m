Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 713BC96AF4F
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Sep 2024 05:30:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 755EE40A7D;
	Wed,  4 Sep 2024 03:30:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3M957rBm5wJE; Wed,  4 Sep 2024 03:30:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1FE91405FD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725420603;
	bh=YJkDgI5JS2Uju1uwd1e5gLn8gmW6eomJ9fccxHWR9G0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=c9HSkuv0E/cyNaxuyHJ4dkOa/NZ03DTPL91i1jdxqG2X9jFk+eBx835NyE8HOsB3k
	 bP/dN/izOWPrrBTloybm4vQ3D+7OUWM5nvCPm+VVwxACtFC3glzMPF6/knaNAQQgkn
	 x4KR2zfZg4yb4R06Ejd15erZCsgVJ8/Su3aNRATjkJG6FLWJybkEJ4wG7bFx1ZEMzi
	 r5dYaeAN1zfJszJoz/f77mxE4+p0T6SCYqX8FTjqDwbsFFyNaf+O29B+pg542G6dmI
	 lW1wiVUYYNj1CIXVg9ukpAJunDM5H07u2u9JiAkcqpqOgmMv13tSjgGol9Wq4wI9Ks
	 hzr+v97U3xJ8A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1FE91405FD;
	Wed,  4 Sep 2024 03:30:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4F6641BF573
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 03:30:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 382A460818
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 03:30:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JdB7a9zwR7K7 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Sep 2024 03:30:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=paul.greenwalt@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org DDB0E60817
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DDB0E60817
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DDB0E60817
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 03:29:59 +0000 (UTC)
X-CSE-ConnectionGUID: AGVRWCcoSPmbciy5g5LXIw==
X-CSE-MsgGUID: pvRuN6JYSRelYnlJhHmLrw==
X-IronPort-AV: E=McAfee;i="6700,10204,11184"; a="41526518"
X-IronPort-AV: E=Sophos;i="6.10,200,1719903600"; d="scan'208";a="41526518"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2024 20:29:59 -0700
X-CSE-ConnectionGUID: IUCObTsEQkGLn+HtJ9eERg==
X-CSE-MsgGUID: TeEMza24QO+coyGRrQUrsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,200,1719903600"; d="scan'208";a="65634379"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Sep 2024 20:29:58 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 3 Sep 2024 20:29:58 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 3 Sep 2024 20:29:57 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 3 Sep 2024 20:29:57 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 3 Sep 2024 20:29:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IBdOodkFkOQvJWFJb/C6FByLR3xiIbH3fie/nG1tTxMFW5Mprtyj5RHzc4AJnlV+AHRAtS61mRWJuCtODnwPA1WypJCNtNYxQLstsERBjoqX2oIuvtJzeCimU7rJTsmCOwMu00SZzme/Y/THAF87Hw5nj/YWiOLOnBnlfrTdMoNAzfdFdbXrtrX8Twg/LRgh6kK59uOBFw2UjTwa44MLLEXIkTrD7fOIwNU1rRgCNONQkQPC+EXS1DaXIyjUb7VK9AEw1o2Sm/G0XU2mmnrVmMXvntiLM+0xUG8Zg2TaGiKIz4L2X+p0cvguH7cEmrvwlUR743aBCCVtkxDD/lElXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YJkDgI5JS2Uju1uwd1e5gLn8gmW6eomJ9fccxHWR9G0=;
 b=MXp/W2GuYFNf+55TJPA3L5Bgf0bLHJk8CF/DhThqeG4Gy21Rw6ZGa/25LTRectdXWSERJLOHqOW9Hb/CNulpHZ6qem/ldHEWkB0NkJQb6G6P33ikV2qMSR4gWqaH1Uqt9ufvskgg3WpoFpCCZ2SrFz19xRTEFi2M97sWGDQuKwRKXjj+0ZPeq+uhRFv1LLHThXFXysEJNQOeS3wmRl1hQL8OaZJeLK7ym8aP9Uk6L89blQHId0LyDFGJH+PxRVGpbumJsT44sNCx0xqfdBr1HC9fGKsRzZGSHKVw1O1jbVf9lTbq5Y6YVDV+JkNk9lwQk7hGFSG4Tqw3NItbzXcaww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5140.namprd11.prod.outlook.com (2603:10b6:303:9e::21)
 by SJ0PR11MB4847.namprd11.prod.outlook.com (2603:10b6:a03:2d9::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.25; Wed, 4 Sep
 2024 03:29:55 +0000
Received: from CO1PR11MB5140.namprd11.prod.outlook.com
 ([fe80::6a5:f5cc:b864:a4c0]) by CO1PR11MB5140.namprd11.prod.outlook.com
 ([fe80::6a5:f5cc:b864:a4c0%7]) with mapi id 15.20.7918.024; Wed, 4 Sep 2024
 03:29:55 +0000
Message-ID: <a2a7f63c-69ca-d7cb-8a1a-935403cb3d8e@intel.com>
Date: Tue, 3 Sep 2024 20:29:51 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Alexander Lobakin <aleksander.lobakin@intel.com>
References: <20240826173916.1394617-1-paul.greenwalt@intel.com>
 <9cde2efc-b298-4621-9935-73b6bf9c113d@intel.com>
Content-Language: en-US
From: "Greenwalt, Paul" <paul.greenwalt@intel.com>
In-Reply-To: <9cde2efc-b298-4621-9935-73b6bf9c113d@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR05CA0019.namprd05.prod.outlook.com
 (2603:10b6:a03:c0::32) To CO1PR11MB5140.namprd11.prod.outlook.com
 (2603:10b6:303:9e::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5140:EE_|SJ0PR11MB4847:EE_
X-MS-Office365-Filtering-Correlation-Id: fa6596e2-3f41-4487-ed22-08dccc91d843
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VUtaSEdyeEJmZW9vVHpyQ1VXVFhTM1pQQ2ZlZi84anpyQ05ncEF6VU5UQmJZ?=
 =?utf-8?B?VXZnQlVDeHduOE5FOWl5VUJKSlJTNHpldERqdVJ2SW0zcVYralM0Umh2VTU2?=
 =?utf-8?B?aW1iZXFMSnZCRnFmbWlZYWNYOExGT3g5Q0hnYnRYL253N2thKzVrVkRRaGI4?=
 =?utf-8?B?Y1FUamVmaWwrOVlDZk40ekZJWUYzdmFNcFNBT1JBTG15SjRKbGlGQjE3R3BU?=
 =?utf-8?B?bEp2RTJpeFRZYWJWbUVJRisyeGRnc0c5SHFiVjllRThIblR2NGZJZGdydW9s?=
 =?utf-8?B?ZXB3RUVOZk51Y0psdlZWOXJGZHc1Sm9PRHM1RzNtZkRqa3lEQkpTSVpjZEtX?=
 =?utf-8?B?VUQ3TkNqZXhmMi9MRHY4YmlHbmFYaS9pQTc0WldQNjh5VSsyeXVPNWlKRU1i?=
 =?utf-8?B?alFOQk0xZlQrdVA1T1ZCRWJUa1lhN3V6SlVEUzlLRysyL05lb3AySHJLOVJi?=
 =?utf-8?B?c2MwYTNBWkNlSlA5dmQrdzNKbkdXSmRyZGE5WHNmbXFGZk1aNVNYbkExek1S?=
 =?utf-8?B?dGQ1Q3R6TFV1V2xiRTR1SStrcmxOdnpoc3dlMU8yM3ZEcnVFYm42U0VzTVQ2?=
 =?utf-8?B?VEFKSmlZM1RXMGc3czFCbkgrNVgvTkg4Q1ZZamNoZXpkeGtOR2FkSTJHSHZ0?=
 =?utf-8?B?cnZXbTBlbUx4bER2dGtiQTFWZCtFUzFYVzVxWlZKYWxIdkJXbnRyMWJYVnpG?=
 =?utf-8?B?THg3TERUYW9EdDZvZklsMGRIRWxURXdDam9VV3lZb3JiaHA4ZTRlZjhqSGNp?=
 =?utf-8?B?VTl6ZjVSaDZndGFHQy85Qkh6ZkNpY21PQnZuc0V2V1IrZEpBRjZRcE9BVTNF?=
 =?utf-8?B?cWh4U1NzaDNVWHNLSkR2Z2lzdDkyMlFjcUFwdWo3cSsvZkZQSTlLZTZkdXJw?=
 =?utf-8?B?RVJDQ3UzZytOenhaNWZXOGtNQ2ZHUzdKeW02TTNPb2lUVHVHSXp2NEg4TU5x?=
 =?utf-8?B?VUVwTEZ0MG83ZVU5T3ltUUp5YkttczNXcytIUWNDSSs4VWUvVzFzU2lkek04?=
 =?utf-8?B?REtTZkJIS3M5NUJvRGpXeXRQNWVwZFkyeDduMzhMYnpsVXBaK3hFMndlQ3FN?=
 =?utf-8?B?dDZUYVFFdW8vbm9vQTJQVUg4blFzT2RBNjdsSXpWaTY1TFdQblAzSm5sdTdp?=
 =?utf-8?B?V25pYnZ3d2FuSVpyYTk4VWh6dXNNT0F0dWo3Z2JWeHNhc3JYL0JHQ3pVQ1dK?=
 =?utf-8?B?WFdTdDFWbUg0R2loMHRNeC8rZHZLNmFqeHF5dGRtTVk0STI5NnNiMmlJSDlq?=
 =?utf-8?B?Ymd2Z2ppTXYwRDRTdHNaVG1xeXdVVVZEMDVGZStFUkZsa3oxczAyajQ4Umph?=
 =?utf-8?B?eU9ZKytRS0NuZjdZV2dCS0hWdS9leTBUSngxYUFkQjdyQThFRXBhc0VxQnNT?=
 =?utf-8?B?RWIvYUs2UFpoajlRZXlxd2xPTFBwai9HeGhMTWJhdmtOVkVVbVZPL0JCOFMz?=
 =?utf-8?B?MjNZS1BRbTR6YUJFUVJ0MndVYnp6NVdBMTBQVjBQb2JDTTRubjlhcDZmdW5Q?=
 =?utf-8?B?QThXRnJkSkMwUTMyaWMrNm9oZFJQTk5FVHBBWnUwK0pWUDk2ckQzeEdLZDZy?=
 =?utf-8?B?MldpQ294ZTVSQ0dSUk5iaVR0ckNCVHVHWFovTytHYlA4ZWdsSDZNTnNTN2pD?=
 =?utf-8?B?b1ZaeER6S2hEMGdTZW84Nm9WVE53RldtZXNCOVlEUFVOVGNlSmo5clBIMGxo?=
 =?utf-8?B?Z1NPMy9wdzFpcW12MU9WdEp0OXBCdTREUkg0dVJGY2V3Wkt6WDZNeVZpZENI?=
 =?utf-8?B?VHQ3U1hPZE1CajF2NWRncEhraC9uZXJKSm9IQWVDbnArZ1cxTTNMYnBvdWpS?=
 =?utf-8?B?VzhhU0JvZHVXcnd5cWxWdz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5140.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TVoyN29vaDJIMnRDc2ZTMmRiWmFsYW5GaXg1Tmw2UnVYcmpzOFBhOFBiTWhR?=
 =?utf-8?B?YXRWbUpTMWJNTnJLTW5IYTl4bW9Uc2ExNHlzN0dlL01XdVorZWU3N0JqSGVJ?=
 =?utf-8?B?dVZqb1JFbG14b21XcHZhSTl6SW9IZEZ3OFVzM0NDZVkxa1ozbUNVTHZuTExk?=
 =?utf-8?B?dGJtbmxtRnM0T0JlVU1TQy9LdEl5Z1ljTEVDOGE1anZOVzdwclVNb0owSXVu?=
 =?utf-8?B?UWRzb1JTN1U4RGl1NXY4T0ZXWlVnVnBrYUwzdmFtTlhIdlhkUFFNRGQvVkFU?=
 =?utf-8?B?cmQ0ZHBaNXVqY0NWMjRPNkdUT1hNV1p4Nng5L2xlVkxHckhDZEJqV3lVNjN1?=
 =?utf-8?B?M2JzT1BaY01zbHBzd3NVUXM2UFBTdExBaFc5c01sbjBWWS9KQ3piblJNL1p4?=
 =?utf-8?B?M2lhQTNyNnNObFNWNkEyTnREM3BBUEpXMW0yRmVud0ppY0RDbTc2VTJiVEFi?=
 =?utf-8?B?MEtMLzVCeW1IYmkyQ3l0c2VrRTM5OTFBWXQreklrWTJFa3IvM2N3QkZvWjc1?=
 =?utf-8?B?aXJiaFVxcS83OUJCWHQxejV1NkRUNjY3d2hxR0lLTVpMKzhGSXQ5MnQxQ1pV?=
 =?utf-8?B?TTc2RkJqbTEvZUUxQXV3YVR6Y0RQU1I1dkZkSHdUWFJXUXhDZlpld1diaHF1?=
 =?utf-8?B?Uy9zd3B0R1pLcFJ0dWpSQjRCazNyZktpbVBIbHJ1NXMxWG0wNUZWS1hJNklX?=
 =?utf-8?B?SjN4V1QyQTA4UHRaS3RRMDZzelJtVktNczl2ckF0RS91N0J4RGVQenlOOUlJ?=
 =?utf-8?B?V0Z3clI5dEEzZ1B1UHpRMWlNcFNlQkFISTZGOTNCZXF4NUVLeFJCeWtreUF1?=
 =?utf-8?B?eWJmd1hSMHBOemMvbEFrb2Q0cThYQXlFVkhnVm10YXNhUktIVTQ0SVlWa1Fl?=
 =?utf-8?B?SlAvdVQyc1RtSTFRY2NTNTJvbi9rMUtyRUNxVkF6cTd2d1A5czl4ZW5MbU5Q?=
 =?utf-8?B?cUowS3NGU2pZL2ZaTXIxSlZHblgrMnljV05vQ0ExVnBoVVVOeXFhUnRxUTYv?=
 =?utf-8?B?QVlhNGkzK2Y3ZG1TM0ZVN2dMcW9uczFIZi9zdHYvZEJKWXZkZENpYmxNQ3BY?=
 =?utf-8?B?aWZKeWZzbW5UdFNLZUFEdGlkRFVKdkt2VFdHSHA1TENVaFJydTlZT283amJB?=
 =?utf-8?B?aDdDVVkvcVFyTzNzWFdlQzh6bzlCeC9lNTR5djF1WUFscWp2dXRQNTVqcHNN?=
 =?utf-8?B?WDVGa3ZEVk9sK01PdmhUcU9uOVdUQnl6a0hIZkw3eEgrT21uVUhPSEtRWjMv?=
 =?utf-8?B?ZWpoQmx1WDB2VEJmTUg1MFJSamloamxEZWtrcjdBcEoyUkhZcm5vbXVpcGd5?=
 =?utf-8?B?QjJjZEFxY041Q21wbituNzJFQVVQV1ZjQ3UvZDdRWC84L09HSUlBK3lic3ZB?=
 =?utf-8?B?MlJFQ1RrdVp1N0tWZ0dXby9zVzJJK0pPZGp3YnhQRkxicU1FVlZ0ZVFrWEQv?=
 =?utf-8?B?Yno0UmdEVlJ1U3pvNE42L05nYjd1M2JKRVNyRlVSbHZCWlhCb25JV3BYdFc0?=
 =?utf-8?B?S0F6VjJTOEt5SzBPRkVETWc5T1c2TmZDTU50eEF1bCtCTHBJTDJWazNWUWNq?=
 =?utf-8?B?MzhQU0lTMC9zeUNHcVNDYncvYVVNVWgyRmZBWFpMMW5uaHk4Q0pPOHlnOTRT?=
 =?utf-8?B?NlJtYldoc1ZPMDRncFN1N25FVXFXbXErdUhLQkhxWHYzMThtZlEvMm5lTWJ4?=
 =?utf-8?B?aUMrVFhiNHdDcXZ1UUhlN1pYT1J6RTdMVGVTVjFZQksrb3pnNEh6aC95WUJj?=
 =?utf-8?B?VEttMGdMRTVrU0pUYlZJYTlGUHgzcW83S3BhL3NaM3BZSStBVWFpTGxCQmRq?=
 =?utf-8?B?T0FGeVZ6Q3lKRUNndmtoOVhxOG8wN3ZNb3BJbGRQRll3V0tGWmVzK2ZmcFlv?=
 =?utf-8?B?TUVXdEFtZzRrdTNxNXE0dXlyYXV1ay9DL0dSd09JY3BjcGE3VmpNTStlNjlE?=
 =?utf-8?B?YVVablZUTWhHSjh4WXRFSmlwZTgzZk8xeDZMZFNqZVBoSFppUmtCSHZlcHlE?=
 =?utf-8?B?YzVSalhlckRka2tHNFdlclpXZGkyaFJzbUcvbTdCVlRRT1ZyYlBWSjlnZ3Iv?=
 =?utf-8?B?VEZaMVhmcW9OZ1QybEo4NHo3dURLcmwrTGdOTE9xVXV0VmJUNHAxSnVHbXhN?=
 =?utf-8?B?QXN3UWNlVEE4MGFlU2FIZ3M2WFM4QXZQMG9ZVytvWkIzYnU5QlF1ZStLYW5D?=
 =?utf-8?B?SEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fa6596e2-3f41-4487-ed22-08dccc91d843
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5140.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Sep 2024 03:29:55.1681 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cWAglZWRw3IHrRx7cJC4tx7K6jUqB9I+TnrSpsutaXD3cerB22MCcNOBFxiiUPWwMTsb0AMR1rTVAGwztIqNMndFmhrhB4AFNZ/BcwaJVFc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4847
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725420600; x=1756956600;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DEkZ/udsjJ+II7JPS1bEg6Uf01vkLdcuUB9sSdSvj0s=;
 b=hMemnFjzj55qwrbWbX7z0WfxOjh4lIAp8IR1CKsCGS02KpaulHSQZUy1
 K33++9YCBA/343Hw+osG/9QseBDXl3CIdqOd3JV8SNiVoTPpYpFD0EBtO
 SW46vhITWVxsqvRhjeShT9UL6yPnjPML+RtFV2uq1PU9I9N9HShABhWd2
 fJ6Fzgf4Kpr/dVSa28ifKlPnvjc+h3JBbRARGmzjKOVIBqXlwWDH+kEuO
 HWQA30eRhh4jUKo8l+XZR0Zj++NxD8KuWKPnSLbcTvy501/47fmUZPC6O
 VttkWWhtHNe2JDvfGlCKigzCXL/bIpSzBBsjEfjjlUk6/+4q6sNjhL48D
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hMemnFjz
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] ice: Add E830 checksum
 support
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
Cc: Eric Joyner <eric.joyner@intel.com>,
 Alice Michael <alice.michael@intel.com>, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 8/30/2024 6:30 AM, Alexander Lobakin wrote:
> From: Paul Greenwalt <paul.greenwalt@intel.com>
> Date: Mon, 26 Aug 2024 13:39:16 -0400
> 
>> E830 supports generic receive and HW_CSUM transmit checksumming.
>>
>> Generic receive checksum support is provided by hardware calculating the
>> checksum over the whole packet and providing it to the driver in the Rx
>> flex descriptor. Then the driver assigns the checksum to skb-->csum and
>> sets skb->ip_summed to CHECKSUM_COMPLETE.
>>
>> E830 HW_CSUM transmit checksum does not support TCP Segmentation Offload
> 
> Why is it so?
> 
>> (TSO) inner packet modification, so TSO and HW_CSUM are mutually exclusive.
> 
> What is HW_CSUM in your opinion here?
> 
>> Therefore NETIF_F_HW_CSUM hardware feature support is indicated but is not
>> enabled by default. Instead, IP checksum and TSO are the defaults.
>> Enforcement of mutual exclusivity of TSO and HW_CSUM is done in
>> ice_fix_features(). Mutual exclusivity of IP checksum and HW_CSUM is
>> handled by netdev_fix_features().
>>
>> When NETIF_F_HW_CSUM is requested the provide skb->csum_start and
> 
> "the provided"?
> 
>> skb->csum_offset are passed to hardware in the Tx context descriptor
>> generic checksum (GCS) parameters. Hardware calculates the 1's complement
>> from skb->csum_start to the end of the packet, and inserts the result in
>> the packet at skb->csum_offset.
>>
>> Co-developed-by: Alice Michael <alice.michael@intel.com>
>> Signed-off-by: Alice Michael <alice.michael@intel.com>
>> Co-developed-by: Eric Joyner <eric.joyner@intel.com>
>> Signed-off-by: Eric Joyner <eric.joyner@intel.com>
>> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> 
> [...]
> 
>> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
>> index f559e60992fa..118ac34f89e9 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
>> @@ -1380,6 +1380,9 @@ static int ice_vsi_alloc_rings(struct ice_vsi *vsi)
>>  			ring->flags |= ICE_TX_FLAGS_RING_VLAN_L2TAG2;
>>  		else
>>  			ring->flags |= ICE_TX_FLAGS_RING_VLAN_L2TAG1;
>> +
>> +		if (ice_is_feature_supported(pf, ICE_F_GCS))
>> +			ring->flags |= ICE_TXRX_FLAGS_GCS_ENA;
> 
> An empty newline here, since WRITE_ONCE() is not related to this one?
> 
>>  		WRITE_ONCE(vsi->tx_rings[i], ring);
>>  	}
>>  
>> @@ -1399,6 +1402,9 @@ static int ice_vsi_alloc_rings(struct ice_vsi *vsi)
>>  		ring->dev = dev;
>>  		ring->count = vsi->num_rx_desc;
>>  		ring->cached_phctime = pf->ptp.cached_phc_time;
>> +
>> +		if (ice_is_feature_supported(pf, ICE_F_GCS))
>> +			ring->flags |= ICE_TXRX_FLAGS_GCS_ENA;
> 
> Same here.
> 
>>  		WRITE_ONCE(vsi->rx_rings[i], ring);
>>  	}
>>  
>> @@ -3896,6 +3902,9 @@ void ice_init_feature_support(struct ice_pf *pf)
>>  	default:
>>  		break;
>>  	}
>> +
>> +	if (pf->hw.mac_type == ICE_MAC_E830)
>> +		ice_set_feature_support(pf, ICE_F_GCS);
>>  }
>>  
>>  /**
>> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
>> index 6f97ed471fe9..67e32ac962df 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_main.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
>> @@ -3678,6 +3678,12 @@ static void ice_set_netdev_features(struct net_device *netdev)
>>  	 */
>>  	netdev->hw_features |= NETIF_F_RXFCS;
>>  
>> +	/* Mutual exclusivity for TSO and GCS is enforced by the
>> +	 * ice_fix_features() ndo callback.
>> +	 */
>> +	if (ice_is_feature_supported(pf, ICE_F_GCS))
>> +		netdev->hw_features |= NETIF_F_HW_CSUM;
>> +
>>  	netif_set_tso_max_size(netdev, ICE_MAX_TSO_SIZE);
>>  }
>>  
>> @@ -6237,6 +6243,7 @@ ice_fix_features(struct net_device *netdev, netdev_features_t features)
>>  	struct ice_netdev_priv *np = netdev_priv(netdev);
>>  	netdev_features_t req_vlan_fltr, cur_vlan_fltr;
>>  	bool cur_ctag, cur_stag, req_ctag, req_stag;
>> +	netdev_features_t changed;
>>  
>>  	cur_vlan_fltr = netdev->features & NETIF_VLAN_FILTERING_FEATURES;
>>  	cur_ctag = cur_vlan_fltr & NETIF_F_HW_VLAN_CTAG_FILTER;
>> @@ -6285,6 +6292,29 @@ ice_fix_features(struct net_device *netdev, netdev_features_t features)
>>  		features &= ~NETIF_VLAN_STRIPPING_FEATURES;
>>  	}
>>  
>> +	if (!ice_is_feature_supported(np->vsi->back, ICE_F_GCS) ||
>> +	    !(features & NETIF_F_HW_CSUM))
>> +		return features;
>> +
>> +	changed = netdev->features ^ features;
>> +
>> +	/* HW checksum feature is supported and set, so enforce mutual
>> +	 * exclusivity of TSO and GCS.
>> +	 */
>> +	if (features & NETIF_F_ALL_TSO) {
> 
> 	if (!(features & ALL_TSO))
> 		return features;
> 
> to reduce indent level and avoid huge `if` blocks.
> 
>> +		if (changed & NETIF_F_HW_CSUM && changed & NETIF_F_ALL_TSO) {
>> +			netdev_warn(netdev, "Dropping TSO and HW checksum. TSO and HW checksum are mutually exclusive.\n");
>> +			features &= ~NETIF_F_HW_CSUM;
>> +			features &= ~((features & changed) & NETIF_F_ALL_TSO);
>> +		} else if (changed & NETIF_F_HW_CSUM) {
>> +			netdev_warn(netdev, "Dropping HW checksum. TSO and HW checksum are mutually exclusive.\n");
>> +			features &= ~NETIF_F_HW_CSUM;
>> +		} else {
>> +			netdev_warn(netdev, "Dropping TSO. TSO and HW checksum are mutually exclusive.\n");
>> +			features &= ~NETIF_F_ALL_TSO;
>> +		}
>> +	}
>> +
>>  	return features;
>>  }
>>  
>> diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
>> index 8d25b6981269..bfcce1eab243 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_txrx.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
>> @@ -1792,6 +1792,7 @@ ice_tx_map(struct ice_tx_ring *tx_ring, struct ice_tx_buf *first,
>>  static
>>  int ice_tx_csum(struct ice_tx_buf *first, struct ice_tx_offload_params *off)
>>  {
>> +	const struct ice_tx_ring *tx_ring = off->tx_ring;
>>  	u32 l4_len = 0, l3_len = 0, l2_len = 0;
>>  	struct sk_buff *skb = first->skb;
>>  	union {
>> @@ -1941,6 +1942,29 @@ int ice_tx_csum(struct ice_tx_buf *first, struct ice_tx_offload_params *off)
>>  	l3_len = l4.hdr - ip.hdr;
>>  	offset |= (l3_len / 4) << ICE_TX_DESC_LEN_IPLEN_S;
>>  
>> +#define TX_GCS_ENABLED	1
> 
> This must be somewhere where the offload params or descriptor values are
> described, i.e. next to the related definitions.
> 
>> +	if (tx_ring->netdev->features & NETIF_F_HW_CSUM &&
> 
> Please give bitops a separate set of parenthesis
> 
> 	if ((features & HW_CSUM) &&
> 
> etc., below as well.
> 
>> +	    tx_ring->flags & ICE_TXRX_FLAGS_GCS_ENA &&
>> +	    !(first->tx_flags & ICE_TX_FLAGS_TSO) &&
>> +	    !skb_csum_is_sctp(skb)) {
>> +		/* Set GCS */
>> +		u16 gcs_params = ((skb->csum_start - skb->mac_header) / 2) <<
>> +				 ICE_TX_GCS_DESC_START;
> 
> This must be
> 
> 		gcs_params = FIELD_PREP(GCS_DESC_MASK, (skb...) / 2)
> 
> 2 places below as well.
> 
>> +		gcs_params |= (skb->csum_offset / 2) << ICE_TX_GCS_DESC_OFFSET;
>> +		/* Type is 1 for 16-bit TCP/UDP checksums w/ pseudo */
>> +		gcs_params |= TX_GCS_ENABLED << ICE_TX_GCS_DESC_TYPE;
>> +
>> +		/* Unlike legacy HW checksums, GCS requires a context
>> +		 * descriptor.
>> +		 */
>> +		off->cd_qw1 |= (u64)(ICE_TX_DESC_DTYPE_CTX);
> 
> Redundant cast.
> 
>> +		off->cd_gcs_params = gcs_params;
>> +		/* Fill out CSO info in data descriptors */
>> +		off->td_offset |= offset;
>> +		off->td_cmd |= cmd;
>> +		return 1;
>> +	}
> 
> [...]
> 
>> @@ -366,6 +367,7 @@ struct ice_rx_ring {
>>  #define ICE_RX_FLAGS_RING_BUILD_SKB	BIT(1)
>>  #define ICE_RX_FLAGS_CRC_STRIP_DIS	BIT(2)
>>  #define ICE_RX_FLAGS_MULTIDEV		BIT(3)
>> +#define ICE_TXRX_FLAGS_GCS_ENA		BIT(4)
> 
> As Tony said, RX and TX features are now separated, just like Rx and Tx
> ring structures. Please define them separately for Rx and Tx.
> 
>>  	u8 flags;
>>  	/* CL5 - 5th cacheline starts here */
>>  	struct xdp_rxq_info xdp_rxq;
>> diff --git a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
>> index 2719f0e20933..a344886d2129 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
>> @@ -80,6 +80,24 @@ ice_rx_hash_to_skb(const struct ice_rx_ring *rx_ring,
>>  		libeth_rx_pt_set_hash(skb, hash, decoded);
>>  }
>>  
>> +/**
>> + * ice_rx_gcs - Set generic checksum in skd
> 
> "skb"
> 
>> + * @skb: skb currently being received and modified
>> + * @rx_desc: Receive descriptor
> 
> Lowercase for "Receive" I'd say.
> 
>> + * Returns hash, if present, 0 otherwise.
> 
> The function returns void.
> 
>> + */
>> +static void ice_rx_gcs(struct sk_buff *skb, union ice_32b_rx_flex_desc *rx_desc)
> 
> const union.
> 
>> +{
>> +	struct ice_32b_rx_flex_desc_nic *nic_csum;
> 
> It's a descriptor, not a csum. + also const.
> 
>> +
>> +	if (rx_desc->wb.rxdid != ICE_RXDID_FLEX_NIC)
>> +		return;
> 
> Redundant check since you're checking this below.
> 
>> +
>> +	nic_csum = (struct ice_32b_rx_flex_desc_nic *)rx_desc;
>> +	skb->ip_summed = CHECKSUM_COMPLETE;
>> +	skb->csum = (__force __wsum)htons(le16_to_cpu(nic_csum->raw_csum));
> 
> htons(le16_to_cpu(x)) is the same as swab16(x), have you tried it?
> 
>> +}
>> +
>>  /**
>>   * ice_rx_csum - Indicate in skb if checksum is good
>>   * @ring: the ring we care about
>> @@ -107,6 +125,21 @@ ice_rx_csum(struct ice_rx_ring *ring, struct sk_buff *skb,
>>  	rx_status0 = le16_to_cpu(rx_desc->wb.status_error0);
>>  	rx_status1 = le16_to_cpu(rx_desc->wb.status_error1);
>>  
>> +	if (rx_desc->wb.rxdid == ICE_RXDID_FLEX_NIC &&
>> +	    ring->flags & ICE_TXRX_FLAGS_GCS_ENA &&
> 
> I'd reorder these. 1 flags, 2 flex.
> 
>> +	    (decoded.inner_prot == LIBETH_RX_PT_INNER_TCP ||
>> +	     decoded.inner_prot == LIBETH_RX_PT_INNER_UDP ||
>> +	     decoded.inner_prot == LIBETH_RX_PT_INNER_ICMP)) {
>> +		/* ICE_RX_FLEX_DESC_STATUS1_L2TAG2P_S is overloaded in the
>> +		 * rx_status1 layout to indicate that the extracted data from
>> +		 * the packet is valid.
>> +		 */
>> +		if (rx_status1 & BIT(ICE_RX_FLEX_DESC_STATUS1_L2TAG2P_S))
>> +			return ice_rx_gcs(skb, rx_desc);
> 
> ice_rx_csum() is void. Please separate the call and the return.
> 
>> +
>> +		goto checksum_fail;
> 
> Why fail? If there's no STATUS1_L2TAG2P_S bit, can't there be a usual
> checksum status?
>

Hi Olek,
I'm preparing a v2 based on yours and Tony's feedback.

I will need to check into the conditions that can lead to Rx flex
descriptor valid bit for Rx checksum not being set
(ICE_RX_FLEX_DESC_STATUS1_L2TAG2P_S), and if it is valid to check the
protocal checksum.

Thanks,
Paul

>> +	}
>> +
>>  	/* check if HW has decoded the packet and checksum */
>>  	if (!(rx_status0 & BIT(ICE_RX_FLEX_DESC_STATUS0_L3L4P_S)))
>>  		return;
> 
> Thanks,
> Olek
