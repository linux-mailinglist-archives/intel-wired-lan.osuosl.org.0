Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE77F67AB0C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Jan 2023 08:39:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0B0D3404F6;
	Wed, 25 Jan 2023 07:39:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0B0D3404F6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674632376;
	bh=jWoYfCP+300tDlJEhGIeFanwxv8zrexRx6jZpOZWcd8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=c7FF8Dl0KGkssYehsIyR8tCDeRysCU5j0OZEveoyF5+jEnor4AqfdaDYA3AObU2bB
	 22f7nd5pTKBaSEqFeCxAmnGjv0PDkf9p8edoGVWXt1RncsswZqB2CwnvZYm7LKsyuH
	 u0tCYRRWDGUxAy9QcEW632mKAd3a2XA90hx8fN9X+r5cRe83J7TjKxw0b1jAvU6Q8m
	 f3stkeKnC2tgw7hp1Dnf8Hz/gd2MpzGNI88X0ztqr+guheMb895mSGyVroFIz119uI
	 f03fZ5US8Vaw0QyVEBtIonh9PesuG68IGJPMyHaHZyGR80wF+P6FjvKSLs1WMydwuO
	 3wPROd3kvpDXQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id He0Y8S11kjD0; Wed, 25 Jan 2023 07:39:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 35FBD404EC;
	Wed, 25 Jan 2023 07:39:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 35FBD404EC
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B89511BF420
 for <intel-wired-lan@osuosl.org>; Wed, 25 Jan 2023 07:39:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8EEC641761
 for <intel-wired-lan@osuosl.org>; Wed, 25 Jan 2023 07:39:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8EEC641761
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xN7-x-SZPmLf for <intel-wired-lan@osuosl.org>;
 Wed, 25 Jan 2023 07:39:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 82D2D4155B
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 82D2D4155B
 for <intel-wired-lan@osuosl.org>; Wed, 25 Jan 2023 07:39:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="353781059"
X-IronPort-AV: E=Sophos;i="5.97,244,1669104000"; d="scan'208";a="353781059"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2023 23:39:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="612331059"
X-IronPort-AV: E=Sophos;i="5.97,244,1669104000"; d="scan'208";a="612331059"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP; 24 Jan 2023 23:39:26 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 24 Jan 2023 23:39:26 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 24 Jan 2023 23:39:26 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 24 Jan 2023 23:39:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=htABNvv65MTIh024uGd46v72RpzqeYL14Kd2YSiw3VHHc5zxSx3etEty8ta9UHgBguDjI1kPJJKO9wlldfMlT/t/TOR03ceHBacDn+Jlc27RrtOTwKHFsz2cWX7jUdluQRi5lrnT+g250W6M+UYCIvjkO9iHvhvCDkIhOWNsTFDVUW56es84/Tf9QTONbczwsF87ruX1aRHNL2BdGuHM0YGqUUoTRJLlrXRnyNVk4DmdcHLmEltslktqj6GyPSIsSpqrYlNLiFNqpzDgdQYvaNnwtXalwEpuEff5HHYrK/RQRvAXFqIzQmNFW8tjsCwDJm8aPc2klGx6SsjqxJVWOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mo/V6edqClMYm6TNB2pOsrrhfxyXRZiEKUcVQzLZa+g=;
 b=f8TVmE3bz63WytqzykjE2lc+OB+ZWXfBh+3vztsI98WyC8CApQBNObWOnB6s6vWoyMgXMkI8Mcwj3eOguDNHM6pS7ZjCbYzcSW0w7FBrHCsxg+g+T7rUQgb/zCCK8zjqTSZRB2CKaBCQZWjoI/hF6Jp/WQ91v/vV39YDFk2j8jcFEjKqafZ5+gIUGkxDVjLdugsH8RvCGx/M92GwqZoPm3S4kE5pfNBXFkyh4VOoAWwZdZVcnaqUIqyVTdE3ltl0GI27XlObblyjClsdhs+NcI2IXslWjxAqwDHY6dh804wRy/+Qb4ykhlEpLOfVgLQmQQdk0kWtw3hCIqV6jsyTpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB6738.namprd11.prod.outlook.com (2603:10b6:303:20c::13)
 by CY5PR11MB6463.namprd11.prod.outlook.com (2603:10b6:930:31::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.28; Wed, 25 Jan
 2023 07:39:18 +0000
Received: from MW4PR11MB6738.namprd11.prod.outlook.com
 ([fe80::7c7c:f50a:e5bc:2bfb]) by MW4PR11MB6738.namprd11.prod.outlook.com
 ([fe80::7c7c:f50a:e5bc:2bfb%3]) with mapi id 15.20.6002.013; Wed, 25 Jan 2023
 07:38:56 +0000
Message-ID: <b85639cd-5145-e3fb-7e4e-900f8b2bf57c@intel.com>
Date: Wed, 25 Jan 2023 09:38:47 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.6.1
To: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>, "Ruinskiy, Dima"
 <dima.ruinskiy@intel.com>, "Avargil, Raanan" <raanan.avargil@intel.com>,
 naamax.meir <naamax.meir@linux.intel.com>, "Meir, NaamaX"
 <naamax.meir@intel.com>, "Efrati, Nir" <nir.efrati@intel.com>, "Lifshits,
 Vitaly" <vitaly.lifshits@intel.com>
References: <mailman.5156.1673329730.179342.intel-wired-lan@osuosl.org>
 <SJ1PR11MB618069735F4BD2781909EF6DB8C99@SJ1PR11MB6180.namprd11.prod.outlook.com>
Content-Language: en-US
From: "Neftin, Sasha" <sasha.neftin@intel.com>
In-Reply-To: <SJ1PR11MB618069735F4BD2781909EF6DB8C99@SJ1PR11MB6180.namprd11.prod.outlook.com>
X-ClientProxiedBy: ZR0P278CA0066.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:21::17) To MW4PR11MB6738.namprd11.prod.outlook.com
 (2603:10b6:303:20c::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6738:EE_|CY5PR11MB6463:EE_
X-MS-Office365-Filtering-Correlation-Id: 43546139-59da-4a31-2cb2-08dafea73718
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: HrpiROcqs2PaDtwduzILVaKylYbGXBvJ67x7rmHXjw/QH3WnJYyT64JZKkWeHaEKUvmNJOiN3JZQ8v8GG8O1jTpzxKCVZby7SUAkL3qfVGmOEi0aSjDcXFh5bwtqfXYbyjZH+8ce0pmV9THOf1n/4vqN+/5Szf8eKzzuZHf2zlG9Q6Pfle76+esf0Xuohc/hqGaTsf3yQgzoUBmb4UkfOidHPSDI3tWTc2PTHd54UFdnr6xqh/GgJ11mBlkjGxFTUV5I+bpiyp2eAqfOLTV5TYCZZcPzs9ssfscnLYwiws16saeZl7YcjKwE756+90ca/84hy73NiO1FzwbDJ6/BWui3Gmybx1pRYogrT9sPkn4M9p5is72bpYzbBxdBzMoBqiQ6j3OKuaORCCzrG70G0/CEHECfohZxVRJWDfNv9HswQiIncL8uRLmtN1DRKQPASliTkwhcHKGpfjPtrLKrIJEmx0M+Udu/b5Qki4WPUHs2qVqZfrLfBlvptBu22nz2StO7nceNd6pJ63F1o1PPwOMVxwPSSyzh0VuBKcA6k+wg2Z4wyZy4ATxamJF1r5z6BDkqF3X+UDqC5WRaq+1HwYY8gpqi6bynPVgY3HkhJ/FxzoXUOfAdO1stCItz52ulUBOCcG3QQpVWwLR5gyl2aoUsFyKxuGSpn/gx7xzA8LPZU+ZF3YWPaLUlmFI/HKkKhSHJIwQ4BI7I1zNj/MqWf9NodWaqxpz0shBxMP9hRA8LQ5dWV3lQVcrp1tsiiF7D7qypkIB4JxMLGzRPmy2ItvlLMceyZAccGEmRTxMveShO4h7P5JOGYLpq9IIGrzn0
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6738.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(396003)(39860400002)(346002)(136003)(376002)(451199018)(66899018)(82960400001)(31686004)(6506007)(36756003)(6666004)(6636002)(38100700002)(921005)(41300700001)(316002)(110136005)(83380400001)(8936002)(2616005)(26005)(66946007)(2906002)(186003)(31696002)(53546011)(6512007)(66556008)(8676002)(966005)(66476007)(86362001)(30864003)(6486002)(5660300002)(478600001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OU1ZUEgrS2RXYVJ0T1R4U2lJSFgvZFBmUDVQYzY2Z1pNVzNSSXc4MTlhODhS?=
 =?utf-8?B?RXhQMlc5ZEpNVk5scWhYY2V2c251U3V2K1N0bWlZUUxHMzFkSmVEUGFabXBC?=
 =?utf-8?B?YlVScjB3QitzWnRocFhoM1QrVVcvRS9jTEUyQWFJN3lsS2o3akYvZnRMUVZZ?=
 =?utf-8?B?eDVJcXhTallaSmNpUk5COWo2L2RqSDV6cCtGMkJncTlTVXZwQUYxOUFRWVVa?=
 =?utf-8?B?ekdoTE9XeVdKZE52MUx0QlNndWFGcmcxcXpFdWxTaHEyWGZwclg5L2hqOUhF?=
 =?utf-8?B?a2ZvTzRJWHNIWWRNZWNiVDlIV3pBZmF2MEx0WG14UGYyU1JlaWVXWmI4M2hh?=
 =?utf-8?B?NHhOVkxpK3VjZWdXSHFQQ25vdG1vRlg0UkZRWjY2eW40Z1lscVUybHdiRzdm?=
 =?utf-8?B?eVBlcU5WbnVRcGR1MWZGNmpoT3VjRUl1OGlCMFMra0ZEbFdFWExtN0JhZkY4?=
 =?utf-8?B?Rlg1L3p3RzBMbzVQQUI3MzdjUU5MWTdLUzVEbHpXWGRQNW8xMFNQNzhJbWx0?=
 =?utf-8?B?b1h5Nmt0ZlJBUkRTdTYrWGZPaXlmQ0VLbDF4a1VaS2NXeXJ5SUt4bEFyVE11?=
 =?utf-8?B?LzEweFFDSFZXSjQ2RzcwVVV5RXNPY2NrbHBiYnNRci9hSGs1cE1WbE5tNDEy?=
 =?utf-8?B?eGRuSE85U3R1eUtiS2t3VWJrbjhya2xmUkFlYy96QjJMYUVpUW5sRHB5NmR3?=
 =?utf-8?B?aTl1c0tKSi9seGxvOEVrM21xY1hiOXRFVnR0MzhZZXpUUlhiTTlpaVdlc3Jn?=
 =?utf-8?B?U0tyYnUwMDZsVjFpS0E0UHF2eG9May9MeElzQ3dHeXNhTUYwKzZmMGZSQ0hp?=
 =?utf-8?B?UitKVjN3bXE0VW1MWDlhYW0vL1liV3pmbVYrc2Z0KzNsNWdBeUxyMnBRZFph?=
 =?utf-8?B?STZSdllnQnhDcThGMUcrNzZXRFBhSjJ0VkJMV1Y1Z1ZmbXNlS1o0RGhxQzV2?=
 =?utf-8?B?Z0MwWTBxNkVNcWgvQmt3SkxLZnBTdkloeU0xZ2ZvOW9WbTZYVG5QeVo4M3M5?=
 =?utf-8?B?TVh6c0JwTjdqQUptQWNuNFdGVFJkWGNwK0F4ZTV1QVUrV2NGRDlJMldTK0Zs?=
 =?utf-8?B?djNyOFRrWllKamh3cHFSeG5Kbm9scnZid2Z5aTFabEpicEgxckpSNzkrSHdS?=
 =?utf-8?B?UWgyWTEvZUpKOFhNNnhxVUdpdjl6Q281TlY3bG85Y1FBcFk5d0hDWWZDK0cz?=
 =?utf-8?B?aXZ4dWd4K2JvQ0l4bG5GeWhDYVRudVZXajRDck9WbGtWajk1TFVybzZpTlRs?=
 =?utf-8?B?R3MrMWlOMnN3T1NlelZVMldzNnBPR2p6ZVo2aUNjelB1NTcyMnVGZ29OYnNv?=
 =?utf-8?B?RkdSMGpvN1FNS1VYZHBVa2xTaC9PMlNyMFJaMTV2VTZReTA1QjM4cVR4Yits?=
 =?utf-8?B?TFllY0ZqQjg5S2pwVTBhb0hOaWFsajQ1eEN0RHkzdDcxN0xkQUhWRVFXQnB1?=
 =?utf-8?B?TEtrRzE1M25TbFppcHZzZ3YzNWZuVnJLWnZZYWZweEJNV3Q0T21MSEZmdjNm?=
 =?utf-8?B?WUFoczYzNFc4Qm9LMll3NlZoZjkwVVFXaVlXcThPRmlKb3dwbUg3QkhzZUl5?=
 =?utf-8?B?WnZwZ0JOUUZ2Vnphd0tBNFhzSE9iYmFISE1RSXFVT3Zic0U1a3FNK2s3RFlT?=
 =?utf-8?B?N0RLZXhyakVIN2hNcGxBaDZ4YWE0eDFBOU1YOXZ4RUxvY3Y1Ym1NQy9vdXF0?=
 =?utf-8?B?VVdCcnd3Nzd5ZWJ5U2YxRU9KMFZLSFQ3U1BkTm5uUHBCUml0cStmVlJESndr?=
 =?utf-8?B?cGp5MlNkem95bEVVNEIxK1E0NVJyTnZNc2d6UC8vQzJIZXE3ZDBkaE1qaFpp?=
 =?utf-8?B?bWxPMHhKM1FyN0tlWGVXUjZKMDkwS1MyQmpqMWE1Zzl1RjRCYy9TVFplcysz?=
 =?utf-8?B?U0tVWVJTc2VjZXpQMGwrdGtXUFd2dGtGSzhiMnQ4cCsxL2dXSEZCWjErYnJM?=
 =?utf-8?B?bkNJTElSaHAvZVdKNnArU0d6WEkvWmpVSTVOd0JsRlhLeHhlSENjald3L3B1?=
 =?utf-8?B?S1UvTTJ1ekQxdkxkdS9PL0ROb1l3QmhyOVYxOTlndFpLNTN0Y2dFS216VkV3?=
 =?utf-8?B?WnZyQm80b3ZkWnJjNFBqSzZ4WGx4dHo2NTQ3RjZpc2xNR1AyOWVST2FRcmRD?=
 =?utf-8?B?cFF2WlpsOUtNNUNtc2N1aUtwblp4dWVtY0ZLU2dQTEVKdlIvTml4eVlETW9o?=
 =?utf-8?B?UFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 43546139-59da-4a31-2cb2-08dafea73718
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6738.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jan 2023 07:38:56.6795 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BeLOmaAnoCcKVh7Y20Ky0pPGCLx4L6bynSrAn2amG9oDc9z6271WF3FUoy64hWCciwGO3wS4g2///126zZAqEg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6463
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674632367; x=1706168367;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=AQYuNEUiWDnQedyb7sDzpr4gUI+MCPG0gX5UD8AD6mM=;
 b=gTlvqOYuVpLm1i45LQNmdP2SBPT0VZA61mqczkB5g07CT7qfXN9Vq30A
 b3y6xhMqsRAoJgwXfpGHBi3OGzOXI1nLkMceQJ8AaQL4ROeSRDs42/JZi
 SFEyh8FuCJqq+Bea5V5D9lMhmvkD5l1Wafu32ztApKqSVzoncX8FE3jfh
 kO63PU7zS7fCQR/NWRfXSxcTLX+Hn4IU0QUMaQziJDgR7DpjElvzhQZwY
 lhW3X144Jqhrlw0eJ7lqTaD/1BWMIQHUejqrNDUMNmjKjadkc+pxV934Q
 P8Qmbxj9pIGaXuajIAGxJqKcd/+q9WCh+FrldTEwKD/dKjMusXNti/PO0
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gTlvqOYu
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] Intel-wired-lan Digest, Vol 405, Issue 6
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 1/24/2023 16:46, Zulkifli, Muhammad Husaini wrote:
> Hi Sasha,
> 
>> -----Original Message-----
>> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>> intel-wired-lan-request@osuosl.org
>> Sent: Tuesday, 10 January, 2023 1:49 PM
>> To: intel-wired-lan@osuosl.org
>> Subject: Intel-wired-lan Digest, Vol 405, Issue 6
>>
>> Send Intel-wired-lan mailing list submissions to
>> 	intel-wired-lan@osuosl.org
>>
>> To subscribe or unsubscribe via the World Wide Web, visit
>> 	https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
>> or, via email, send a message with subject or body 'help' to
>> 	intel-wired-lan-request@osuosl.org
>>
>> You can reach the person managing the list at
>> 	intel-wired-lan-owner@osuosl.org
>>
>> When replying, please edit your Subject line so it is more specific than "Re:
>> Contents of Intel-wired-lan digest..."
>>
>>
>> Today's Topics:
>>
>>     1. [PATCH 1/1] ice: WiP support for BIG TCP packets
>>        (Pawel Chmielewski)
>>     2. Re: [PATCH 1/1] ice: WiP support for BIG TCP packets
>>        (Alexander H Duyck)
>>     3. [tnguy-net-queue:dev-queue] BUILD SUCCESS
>>        4cb425d20a6ddbf9fd40989c31f5c6f8f304dc35 (kernel test robot)
>>     4. [PATCH net v1 1/1] igc: Add ndo_tx_timeout support (Sasha Neftin)
>>
>>
>> ----------------------------------------------------------------------
>>
>> Message: 1
>> Date: Mon,  9 Jan 2023 17:18:33 +0100
>> From: Pawel Chmielewski <pawel.chmielewski@intel.com>
>> To: netdev@vger.kernel.org
>> Cc: intel-wired-lan@osuosl.org, Pawel Chmielewski
>> 	<pawel.chmielewski@intel.com>
>> Subject: [Intel-wired-lan] [PATCH 1/1] ice: WiP support for BIG TCP
>> 	packets
>> Message-ID: <20230109161833.223510-1-pawel.chmielewski@intel.com>
>>
>> This patch is a proof of concept for testing BIG TCP feature in ice driver.
>> Please see letter below.
>>
>> Signed-off-by: Pawel Chmielewski <pawel.chmielewski@intel.com>
>> ---
>> Hi All
>> I'm writing on the list, as you may be able to provide me some feedback.
>> I want to enable BIG TCP feature in intel ice drive, but I think I'm missing
>> something.
>> In the code itself, I've set 128k as a maximum tso size for the netif, and
>> added stripping the HBH option from the header.
>> For testing purposes, gso_max_size & gro_max_size were set to 128k and
>> mtu to 9000.
>> I've assumed that the ice tso offload will do the rest of the job.
>> However- while running netperf TCP_RR and TCP_STREAM tests, I saw that
>> only up to ~20% of the transmitted test packets have the specified size.
>> Other packets to be transmitted, appear from the stack as splitted.
>>
>> I've been running the following testcases:
>> netperf -t TCP_RR -H 2001:db8:0:f101::1  -- -r80000,80000 -O
>> MIN_LATENCY,P90_LATENCY,P99_LATENCY,THROUGHPUT
>> netperf -l-1 -t TCP_STREAM -H 2001:db8:0:f101::1  -- -m 128K -O
>> MIN_LATENCY,P90_LATENCY,P99_LATENCY,THROUGHPUT
>> I suspected a shrinking tcp window size, but sniffing with tcpdump showed
>> rather big scaling factor (usually 128x).
>> Apart from using netperf, I also tried a simple IPv6 user space application
>> (with SO_SNDBUF option set to 192k and TCP_WINDOW_CLAMP to 96k) -
>> similar results.
>>
>> I'd be very grateful for any feedback/suggestions
>>
>> Pawel
>> ---
>>   drivers/net/ethernet/intel/ice/ice_main.c | 4 ++++
>> drivers/net/ethernet/intel/ice/ice_txrx.c | 9 +++++++++
>>   2 files changed, 13 insertions(+)
>>
>> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c
>> b/drivers/net/ethernet/intel/ice/ice_main.c
>> index 2b23b4714a26..4e657820e55d 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_main.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
>> @@ -48,6 +48,8 @@ static DEFINE_IDA(ice_aux_ida);
>> DEFINE_STATIC_KEY_FALSE(ice_xdp_locking_key);
>>   EXPORT_SYMBOL(ice_xdp_locking_key);
>>
>> +#define ICE_MAX_TSO_SIZE 131072
>> +
>>   /**
>>    * ice_hw_to_dev - Get device pointer from the hardware structure
>>    * @hw: pointer to the device HW structure @@ -3422,6 +3424,8 @@ static
>> void ice_set_netdev_features(struct net_device *netdev)
>>   	 * be changed at runtime
>>   	 */
>>   	netdev->hw_features |= NETIF_F_RXFCS;
>> +
>> +	netif_set_tso_max_size(netdev, ICE_MAX_TSO_SIZE);
>>   }
>>
>>   /**
>> diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c
>> b/drivers/net/ethernet/intel/ice/ice_txrx.c
>> index 086f0b3ab68d..7e0ac483cad9 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_txrx.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
>> @@ -23,6 +23,9 @@
>>   #define FDIR_DESC_RXDID 0x40
>>   #define ICE_FDIR_CLEAN_DELAY 10
>>
>> +#define HBH_HDR_SIZE sizeof(struct hop_jumbo_hdr) #define
>> HBH_OFFSET
>> +ETH_HLEN + sizeof(struct ipv6hdr)
>> +
>>   /**
>>    * ice_prgm_fdir_fltr - Program a Flow Director filter
>>    * @vsi: VSI to send dummy packet
>> @@ -2300,6 +2303,12 @@ ice_xmit_frame_ring(struct sk_buff *skb, struct
>> ice_tx_ring *tx_ring)
>>
>>   	ice_trace(xmit_frame_ring, tx_ring, skb);
>>
>> +	if (ipv6_has_hopopt_jumbo(skb)) {
>> +		memmove(skb->data + HBH_HDR_SIZE, skb->data,
>> HBH_OFFSET);
>> +		__skb_pull(skb, HBH_HDR_SIZE);
>> +		skb_reset_mac_header(skb);
>> +	}
>> +
>>   	count = ice_xmit_desc_count(skb);
>>   	if (ice_chk_linearize(skb, count)) {
>>   		if (__skb_linearize(skb))
>> --
>> 2.37.3
>>
>>
>>
>> ------------------------------
>>
>> Message: 2
>> Date: Mon, 09 Jan 2023 10:22:22 -0800
>> From: Alexander H Duyck <alexander.duyck@gmail.com>
>> To: Pawel Chmielewski <pawel.chmielewski@intel.com>,
>> 	netdev@vger.kernel.org
>> Cc: intel-wired-lan@osuosl.org
>> Subject: Re: [Intel-wired-lan] [PATCH 1/1] ice: WiP support for BIG
>> 	TCP packets
>> Message-ID:
>> <9b68abc5e8613e02207e9c0c3619b1b07bc5bb8c.camel@gmail.com>
>> Content-Type: text/plain; charset="UTF-8"
>>
>> On Mon, 2023-01-09 at 17:18 +0100, Pawel Chmielewski wrote:
>>> This patch is a proof of concept for testing BIG TCP feature in ice driver.
>>> Please see letter below.
>>>
>>> Signed-off-by: Pawel Chmielewski <pawel.chmielewski@intel.com>
>>> ---
>>> Hi All
>>> I'm writing on the list, as you may be able to provide me some feedback.
>>> I want to enable BIG TCP feature in intel ice drive, but I think I'm
>>> missing something.
>>> In the code itself, I've set 128k as a maximum tso size for the netif,
>>> and added stripping the HBH option from the header.
>>> For testing purposes, gso_max_size & gro_max_size were set to 128k and
>>> mtu to 9000.
>>> I've assumed that the ice tso offload will do the rest of the job.
>>> However- while running netperf TCP_RR and TCP_STREAM tests,
>>> I saw that only up to ~20% of the transmitted test packets have
>>> the specified size.
>>> Other packets to be transmitted, appear from the stack as splitted.
>>>
>>> I've been running the following testcases:
>>> netperf -t TCP_RR -H 2001:db8:0:f101::1  -- -r80000,80000 -O
>> MIN_LATENCY,P90_LATENCY,P99_LATENCY,THROUGHPUT
>>> netperf -l-1 -t TCP_STREAM -H 2001:db8:0:f101::1  -- -m 128K -O
>> MIN_LATENCY,P90_LATENCY,P99_LATENCY,THROUGHPUT
>>> I suspected a shrinking tcp window size, but sniffing with tcpdump showed
>> rather big scaling factor (usually 128x).
>>> Apart from using netperf, I also tried a simple IPv6 user space application
>>> (with SO_SNDBUF option set to 192k and TCP_WINDOW_CLAMP to 96k) -
>> similar results.
>>>
>>> I'd be very grateful for any feedback/suggestions
>>>
>>> Pawel
>>> ---
>>>   drivers/net/ethernet/intel/ice/ice_main.c | 4 ++++
>>>   drivers/net/ethernet/intel/ice/ice_txrx.c | 9 +++++++++
>>>   2 files changed, 13 insertions(+)
>>>
>>> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c
>> b/drivers/net/ethernet/intel/ice/ice_main.c
>>> index 2b23b4714a26..4e657820e55d 100644
>>> --- a/drivers/net/ethernet/intel/ice/ice_main.c
>>> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
>>> @@ -48,6 +48,8 @@ static DEFINE_IDA(ice_aux_ida);
>>>   DEFINE_STATIC_KEY_FALSE(ice_xdp_locking_key);
>>>   EXPORT_SYMBOL(ice_xdp_locking_key);
>>>
>>> +#define ICE_MAX_TSO_SIZE 131072
>>> +
>>>   /**
>>>    * ice_hw_to_dev - Get device pointer from the hardware structure
>>>    * @hw: pointer to the device HW structure
>>> @@ -3422,6 +3424,8 @@ static void ice_set_netdev_features(struct
>> net_device *netdev)
>>>   	 * be changed at runtime
>>>   	 */
>>>   	netdev->hw_features |= NETIF_F_RXFCS;
>>> +
>>> +	netif_set_tso_max_size(netdev, ICE_MAX_TSO_SIZE);
>>>   }
>>>
>>>   /**
>>> diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c
>> b/drivers/net/ethernet/intel/ice/ice_txrx.c
>>> index 086f0b3ab68d..7e0ac483cad9 100644
>>> --- a/drivers/net/ethernet/intel/ice/ice_txrx.c
>>> +++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
>>> @@ -23,6 +23,9 @@
>>>   #define FDIR_DESC_RXDID 0x40
>>>   #define ICE_FDIR_CLEAN_DELAY 10
>>>
>>> +#define HBH_HDR_SIZE sizeof(struct hop_jumbo_hdr)
>>> +#define HBH_OFFSET ETH_HLEN + sizeof(struct ipv6hdr)
>>> +
>>>   /**
>>>    * ice_prgm_fdir_fltr - Program a Flow Director filter
>>>    * @vsi: VSI to send dummy packet
>>> @@ -2300,6 +2303,12 @@ ice_xmit_frame_ring(struct sk_buff *skb, struct
>> ice_tx_ring *tx_ring)
>>>
>>>   	ice_trace(xmit_frame_ring, tx_ring, skb);
>>>
>>> +	if (ipv6_has_hopopt_jumbo(skb)) {
>>> +		memmove(skb->data + HBH_HDR_SIZE, skb->data,
>> HBH_OFFSET);
>>> +		__skb_pull(skb, HBH_HDR_SIZE);
>>> +		skb_reset_mac_header(skb);
>>> +	}
>>> +
>>>   	count = ice_xmit_desc_count(skb);
>>>   	if (ice_chk_linearize(skb, count)) {
>>>   		if (__skb_linearize(skb))
>>
>> Your removal code here is forgetting to handle the network header. As a
>> result your frames will be pointer mangled in terms of header location.
>>
>> You might be better off using ipv6_hopopt_jumbo_remove() rather than
>> just coding your own bit to remove it.
>>
>>
>> ------------------------------
>>
>> Message: 3
>> Date: Tue, 10 Jan 2023 13:10:09 +0800
>> From: kernel test robot <lkp@intel.com>
>> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
>> Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
>> 	4cb425d20a6ddbf9fd40989c31f5c6f8f304dc35
>> Message-ID: <63bcf331.kDz0I6QwE35Zcf1P%lkp@intel.com>
>> Content-Type: text/plain; charset=us-ascii
>>
>> tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-
>> queue.git dev-queue
>> branch HEAD: 4cb425d20a6ddbf9fd40989c31f5c6f8f304dc35  ice: fix out-of-
>> bounds KASAN warning in virtchnl
>>
>> elapsed time: 723m
>>
>> configs tested: 84
>> configs skipped: 2
>>
>> The following configs have been built successfully.
>> More configs may be tested in the coming days.
>>
>> gcc tested configs:
>> x86_64                            allnoconfig
>> arc                                 defconfig
>> alpha                               defconfig
>> powerpc                           allnoconfig
>> um                             i386_defconfig
>> um                           x86_64_defconfig
>> alpha                            allyesconfig
>> s390                             allmodconfig
>> m68k                             allmodconfig
>> arc                              allyesconfig
>> s390                                defconfig
>> m68k                             allyesconfig
>> x86_64                              defconfig
>> s390                             allyesconfig
>> i386                                defconfig
>> arm                                 defconfig
>> i386                             allyesconfig
>> x86_64               randconfig-a011-20230109
>> x86_64               randconfig-a013-20230109
>> i386                 randconfig-a011-20230109
>> x86_64               randconfig-a012-20230109
>> sh                               allmodconfig
>> i386                 randconfig-a013-20230109
>> x86_64                           rhel-8.3-bpf
>> x86_64                               rhel-8.3
>> x86_64               randconfig-a014-20230109
>> x86_64               randconfig-a016-20230109
>> x86_64               randconfig-a015-20230109
>> ia64                             allmodconfig
>> x86_64                           allyesconfig
>> i386                 randconfig-a012-20230109
>> x86_64                    rhel-8.3-kselftests
>> x86_64                           rhel-8.3-syz
>> x86_64                         rhel-8.3-kunit
>> x86_64                          rhel-8.3-func
>> i386                 randconfig-a014-20230109
>> x86_64                           rhel-8.3-kvm
>> i386                 randconfig-a016-20230109
>> i386                 randconfig-a015-20230109
>> mips                             allyesconfig
>> powerpc                          allmodconfig
>> arm64                            allyesconfig
>> arm                              allyesconfig
>> riscv                randconfig-r042-20230109
>> s390                 randconfig-r044-20230109
>> arm                  randconfig-r046-20230108
>> arc                  randconfig-r043-20230108
>> arc                  randconfig-r043-20230109
>> i386                          randconfig-c001
>> arm                        trizeps4_defconfig
>> arm                         s3c6400_defconfig
>> sh                               alldefconfig
>> ia64                                defconfig
>> riscv                    nommu_virt_defconfig
>> riscv                          rv32_defconfig
>> riscv                    nommu_k210_defconfig
>> riscv                             allnoconfig
>> i386                   debian-10.3-kselftests
>> i386                              debian-10.3
>> m68k                           sun3_defconfig
>> parisc                generic-32bit_defconfig
>> sh                     sh7710voipgw_defconfig
>> mips                            gpr_defconfig
>>
>> clang tested configs:
>> i386                 randconfig-a004-20230109
>> x86_64               randconfig-a003-20230109
>> x86_64               randconfig-a002-20230109
>> x86_64                          rhel-8.3-rust
>> x86_64               randconfig-a004-20230109
>> hexagon              randconfig-r045-20230109
>> i386                 randconfig-a002-20230109
>> x86_64               randconfig-a005-20230109
>> i386                 randconfig-a003-20230109
>> x86_64               randconfig-a001-20230109
>> arm                  randconfig-r046-20230109
>> riscv                randconfig-r042-20230108
>> x86_64               randconfig-a006-20230109
>> hexagon              randconfig-r041-20230108
>> i386                 randconfig-a006-20230109
>> i386                 randconfig-a001-20230109
>> hexagon              randconfig-r041-20230109
>> i386                 randconfig-a005-20230109
>> hexagon              randconfig-r045-20230108
>> s390                 randconfig-r044-20230108
>> x86_64                        randconfig-k001
>>
>> --
>> 0-DAY CI Kernel Test Service
>> https://01.org/lkp
>>
>>
>> ------------------------------
>>
>> Message: 4
>> Date: Tue, 10 Jan 2023 07:48:41 +0200
>> From: Sasha Neftin <sasha.neftin@intel.com>
>> To: intel-wired-lan@lists.osuosl.org
>> Subject: [Intel-wired-lan] [PATCH net v1 1/1] igc: Add ndo_tx_timeout
>> 	support
>> Message-ID: <20230110054841.1857688-1-sasha.neftin@intel.com>
>>
>> On some platforms, 100/1000/2500 speeds seem to have sometimes
>> problems
>> reporting false positive tx unit hang during stressful UDP traffic. Likely
>> other Intel drivers introduce responses to a tx hang. Update the 'tx hang'
>> comparator with the comparison of the head and tail of ring pointers and
>> restore the tx_timeout_factor to the previous value (one).
>>
>> This can be test by using netperf or iperf3 applications.
>> Example:
>> iperf3 -s -p 5001
>> iperf3 -c 192.168.0.2 --udp -p 5001 --time 600 -b 0
>>
>> netserver -p 16604
>> netperf -H 192.168.0.2 -l 600 -p 16604 -t UDP_STREAM -- -m 64000
>>
>> Fixes: b27b8dc77b5e ("igc: Increase timeout value for Speed 100/1000/2500")
>> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
>> ---
>>   drivers/net/ethernet/intel/igc/igc_main.c | 25 +++++++++++++++++++++--
>>   1 file changed, 23 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c
>> b/drivers/net/ethernet/intel/igc/igc_main.c
>> index 13088b5bcf5b..b1031d5b32bc 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_main.c
>> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
>> @@ -2957,7 +2957,9 @@ static bool igc_clean_tx_irq(struct igc_q_vector
>> *q_vector, int napi_budget)
>>   		if (tx_buffer->next_to_watch &&
>>   		    time_after(jiffies, tx_buffer->time_stamp +
>>   		    (adapter->tx_timeout_factor * HZ)) &&
>> -		    !(rd32(IGC_STATUS) & IGC_STATUS_TXOFF)) {
>> +		    !(rd32(IGC_STATUS) & IGC_STATUS_TXOFF) &&
>> +		    (rd32(IGC_TDH(tx_ring->reg_idx)) !=
>> +		    readl(tx_ring->tail))) {
>>   			/* detected Tx unit hang */
>>   			netdev_err(tx_ring->netdev,
>>   				   "Detected Tx Unit Hang\n"
>> @@ -5083,6 +5085,24 @@ static int igc_change_mtu(struct net_device
>> *netdev, int new_mtu)
>>   	return 0;
>>   }
>>
>> +/**
>> + * igc_tx_timeout - Respond to a Tx Hang
>> + * @netdev: network interface device structure
>> + * @txqueue: queue number that timed out
>> + **/
>> +static void igc_tx_timeout(struct net_device *netdev,
>> +			   unsigned int __always_unused txqueue)
>> +{
>> +	struct igc_adapter *adapter = netdev_priv(netdev);
>> +	struct igc_hw *hw = &adapter->hw;
>> +
>> +	/* Do the reset outside of interrupt context */
>> +	adapter->tx_timeout_count++;
>> +	schedule_work(&adapter->reset_task);
>> +	wr32(IGC_EICS,
>> +	     (adapter->eims_enable_mask & ~adapter->eims_other));
>> +}
>> +
>>   /**
>>    * igc_get_stats64 - Get System Network Statistics
>>    * @netdev: network interface device structure
>> @@ -5510,7 +5530,7 @@ static void igc_watchdog_task(struct work_struct
>> *work)
>>   			case SPEED_100:
>>   			case SPEED_1000:
>>   			case SPEED_2500:
>> -				adapter->tx_timeout_factor = 7;
>> +				adapter->tx_timeout_factor = 1;
> 
> I was running more test with UDP packets with changing of Qbv Gates for TSN Mode.
> The tx timeout factor appears to need to stay at 7 in order to avoid the hanging issue
> for some extremely high traffic situation gate switching. Given that it had no impact
> on the first head and tail pointer problem as per what you resolved in igc_clean_tx_irq(),
> I advise keeping this number.
Hello Muhammad,
I have a concern. Increasing the tx_timeout_factor will delay the 
'.ndo_tx_timeout' report to the 'netdev' and lead to a stuck controller. 
I saw it on production boards (few CRB board with iperf3 tests).Let's 
leave it 1 for now. I would suggest understanding your TSN corner cases 
and directly discussing the solution with Dima and me(Intel).
Sasha
> 
>>   				break;
>>   			}
>>
>> @@ -6352,6 +6372,7 @@ static const struct net_device_ops igc_netdev_ops
>> = {
>>   	.ndo_set_rx_mode	= igc_set_rx_mode,
>>   	.ndo_set_mac_address	= igc_set_mac,
>>   	.ndo_change_mtu		= igc_change_mtu,
>> +	.ndo_tx_timeout		= igc_tx_timeout,
>>   	.ndo_get_stats64	= igc_get_stats64,
>>   	.ndo_fix_features	= igc_fix_features,
>>   	.ndo_set_features	= igc_set_features,
>> --
>> 2.25.1
>>
>>
>>
>> ------------------------------
>>
>> Subject: Digest Footer
>>
>> _______________________________________________
>> Intel-wired-lan mailing list
>> Intel-wired-lan@osuosl.org
>> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
>>
>>
>> ------------------------------
>>
>> End of Intel-wired-lan Digest, Vol 405, Issue 6
>> ***********************************************
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
