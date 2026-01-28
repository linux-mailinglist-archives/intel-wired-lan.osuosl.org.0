Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YFKCNGpSemnk5AEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jan 2026 19:16:10 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BAD8A79ED
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jan 2026 19:16:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D28C581285;
	Wed, 28 Jan 2026 18:16:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QnwLPFaUm_7k; Wed, 28 Jan 2026 18:16:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0E6F1812C4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769624167;
	bh=QUi4mP3n6qHD3uWykwIzIx5g7ZEB5UeBee5yAUmObsk=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=gUT4Z9JtLcfXcfU5ZswOn5JgIpejT/ZvsmL9+5LVtXXsuS+UJjepMDprZ9LwmHyuX
	 W7YXO6bS1wjND3+LykCas23Uh4yc1Ui5xAT0jg6maAnfR/WacZ/jlVxEIkoToMt0GX
	 0tyEFEKu+fw0+tWNlg71PrQKFRS01djygC3Bg8k3lqvIoCbiO8OstT8/2qHstVrVtK
	 3/+JMaMjpjIJDJEdkKCx/t9z2AGWLo+3j06FnbFKDR+1ZdSqY9KvYIkKvta7W6znn9
	 4pwT+eBG5P7tLWQFksyzXl7NYXvyZ2Lz6GlQsxGXhYnuvpQJBXd1IKwUVv+xrirpm3
	 lZ/6kYOnXgM6Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0E6F1812C4;
	Wed, 28 Jan 2026 18:16:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 486AB3BE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 18:16:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1AB414031C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 18:16:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nri5ARSqn9Nk for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Jan 2026 18:16:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 34C68400CE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 34C68400CE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 34C68400CE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 18:16:03 +0000 (UTC)
X-CSE-ConnectionGUID: KlXYniDpQ8Ofyf232fdy5A==
X-CSE-MsgGUID: sUi+e9/URqOe79BzsDzamQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="88421805"
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="88421805"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 10:16:02 -0800
X-CSE-ConnectionGUID: D13riIV1SdOzhb7FEdwWjQ==
X-CSE-MsgGUID: wHZU/4uxQLq5viaJhfa/2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="212835507"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 10:16:02 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 10:16:01 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 28 Jan 2026 10:16:01 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.5) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 10:16:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JaZz1mx/Q5wKE8+cyR6Lz8nBxW9ql7IM1+7Bs2AH0aTU7C+sHuVeZ0mcibIce2DOCwXfz4ordF//OiK6aJAiwcACV+Su29tRRxwI60UIKXGgwjpf0kCl1WxPh3JWL2swiwnb7/z7D+rR1xurYt9Ap/hJT6RZ5muk0w0tBpX/kKBJPzIW1PD8jj6s7Sv0dr4cXZsFaZZ9isIW87nKlYq4JedZBCmdgPpaktb7f60kzRhXFjpBkq2o7qXE6N2LWkNfW+5x2qL33Aht8cqOrB/f7djXxYKfQXMm44xbS67IazHd+rUXHrITLIco8iUfbs6xm9/63o4v0radbvp/8F2Png==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QUi4mP3n6qHD3uWykwIzIx5g7ZEB5UeBee5yAUmObsk=;
 b=CSE8W6O7AHEOZ+WeDhUouTCnQ8D7JjgyhVnuuYUiFmONozh6KAFh7LcwtrOH4SACBtmB5Amufm1j0yRaglokpql8vTEY8lD1rjDDXB7rhyibOewVddT1Ew1RxBN6t18nUpppEVv5J2VPoYGkd9OhrC8IdICOORomqw8phzswoTrd4vWNdK/R/zD3MqS0P0nGjjfDMuLsHiENQ7Zf54B1cw1eHij6j/h7sMCwInbGc5JtnC8z3VvlqlyBDLRZbOtDD7iFzUWcwp2H29+ud/431fNufX/gs/LJU4Sd3LY5Ev1cvvVLu6HtnIptLMrtWSbXLgp2KWy85VQpGbqKI79H1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by MW3PR11MB4666.namprd11.prod.outlook.com (2603:10b6:303:56::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.14; Wed, 28 Jan
 2026 18:15:53 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%3]) with mapi id 15.20.9542.010; Wed, 28 Jan 2026
 18:15:53 +0000
Message-ID: <fced629d-2470-4673-ab0b-80de11f0e4c5@intel.com>
Date: Wed, 28 Jan 2026 10:15:51 -0800
User-Agent: Mozilla Thunderbird
To: Jonathan Corbet <corbet@lwn.net>, Mauro Carvalho Chehab
 <mchehab+huawei@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 Alexander Lobakin <aleksander.lobakin@intel.com>, Alexei Starovoitov
 <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Jakub Kicinski
 <kuba@kernel.org>, Jesper Dangaard Brouer <hawk@kernel.org>, John Fastabend
 <john.fastabend@gmail.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Richard Cochran <richardcochran@gmail.com>
CC: <bpf@vger.kernel.org>, <intel-wired-lan@lists.osuosl.org>,
 <linux-doc@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <netdev@vger.kernel.org>, Randy Dunlap <rdunlap@infradead.org>, Shuah Khan
 <skhan@linuxfoundation.org>, Stanislav Fomichev <sdf@fomichev.me>
References: <cover.1769617841.git.mchehab+huawei@kernel.org>
 <87ecn97ild.fsf@trenco.lwn.net>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <87ecn97ild.fsf@trenco.lwn.net>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0230.namprd03.prod.outlook.com
 (2603:10b6:303:b9::25) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|MW3PR11MB4666:EE_
X-MS-Office365-Filtering-Correlation-Id: 56b184da-bf89-432e-df7d-08de5e994607
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|7416014|1800799024|366016|921020; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?R3BycHdPZUU0MkpSR21OSnZtUnhScjdYNVBZOGZUS0FPc1RHbUhVTzRyOTFt?=
 =?utf-8?B?L0xuOGwwc0hnRzUxNVlyM0xJekNrQ0IvTENBZXdQcVRsVGlJYXBESEo2MWlF?=
 =?utf-8?B?T1lucVJ0bGVaZ1dhVWl6Z214TDVMRVl0bjViNllhaDllV1pyQ0VKZmNKYnVC?=
 =?utf-8?B?QW12OHpwSk1RMlVMUlZLR2xqbjQ3di9ZT2orSGZJekFtSXM5Z1hnYU9WNkcz?=
 =?utf-8?B?bDBiRGVwZkVYU29QNlAvVWVHekRmcStYbWhXZEJKVVVYK1A4c2U1eGx2TzNJ?=
 =?utf-8?B?eWlqcHcybWhjZ3drZE9PMmFMNWNEdGVQc2s5RTE5VzV1Y1FudGszMWpBdHk4?=
 =?utf-8?B?YWlibnczYUt2UzRlK2IwRWJObDRDN2cvSHZXTW5SVENqTGw3bkkzNGFtam1V?=
 =?utf-8?B?ZG9xK3JtY3EvYnB1a3dJeUZmRW5JK2tKSVJud1FSSWJTSlF3N1ZNcGFWTFFt?=
 =?utf-8?B?WGdTL3NHQSsvYmQ4cXpmdEtMcHU4WE9YZkxkZGlhODZVb0FWbDJyRVp2b3Y2?=
 =?utf-8?B?Ylk3SkdHVWhsdjhuZkhsVWVUdkpNOU82QUZMSVNDLzJPWWg5NCtCTG9aWjRs?=
 =?utf-8?B?YjRBNFVianh2OG8wRlRNTjY4OUlrY1h2VmhQY3NaT2lxNFNHT0o1SjJqNXlF?=
 =?utf-8?B?R0JXcXpNQ0Z0czFMTDZyblJPUndjV0xFdkVoQ2wycXU3amxTeTU0OUw4bEIz?=
 =?utf-8?B?bS9BT3BHT25BT0hnODZIQUw0N2NwNVRmUVRUakVMOFFDYVJVNGpqc0JrcnlD?=
 =?utf-8?B?emMyWlg1cVEyNWhGR0lHaCtWNkt3REwxbXhZSTV6Y3NyNDZnT3hhRTl1V0Jj?=
 =?utf-8?B?UjRscFJvTTF0VUNQM2FTbjA5UTAyOHNaTEgrV2VJVDR5TTJ2QkN1NU1qWWdW?=
 =?utf-8?B?bzd5YnorWEhNcklZWlN4dUpTVEliZ0cxSXFuOU8zenV0Wk15YnhPU04wRWk2?=
 =?utf-8?B?bHdzSGMyWnNZN014OE5rTTgzL1A2OXorS0tuTVVYSXhsUWJuK3VDcktZek94?=
 =?utf-8?B?WkYvVnlrRDJ5TEQzZlBnbVlmT3Q0c2tsdnllSnY3c3psNU5qZHJFOUJDa2VU?=
 =?utf-8?B?QlpVbjkwZzRJU3VBZWlJWW1KYlNFdSsrcmcvcEFSekpwVDRGWURzWk5UU2Vw?=
 =?utf-8?B?RVhENkc5VGVrVTRtU3hPaVZZYjQycFNhTy9hL2l1TytXM2kvOSs3ZmxPenNz?=
 =?utf-8?B?TndlenVndnBaUHNBM1pKT3ZJU2tqWWpVZzE0emYwUGpxdExmamg1TEJGMXdF?=
 =?utf-8?B?a2pXblJhUnFXTERmVkVXc3FHMzQyQlcwOHV4SEVuK3ZSc21Bazl1T2daWmRH?=
 =?utf-8?B?dlIwMTNvU3l2T2p2eTg0RWduOFNFVzVOTENJSFJuR2l0cHR3V3BQL3VzQjJy?=
 =?utf-8?B?WDRTTEVzZmhrZ2JQTXd0cHpNSTZoYmV1WVBDMDQzbkQyYU9iNlIyR1JrRlVL?=
 =?utf-8?B?cUJJU1ZBYk9yS09kdE9OKzZ0L3VhS0dsbmE5YjFFZzJIUHNrWEpCZll2N1Jo?=
 =?utf-8?B?TWRMM2paSkRZRHhpVkNOeVM0bjZnd1FRNGIwbHJBWXFBWldVOFVWNTRqWG9q?=
 =?utf-8?B?dGxWTzVzeDRlNHdIaXJUY1ZmdEw3YitvTHdGZUJYWGZpbFpyVUt5QVdiNGpN?=
 =?utf-8?B?aHhTTXIyQVh6UDIrSzIrSUNnR1A1QS9IL1hUdFZxcEN5ZkJob3QvRW9Senpx?=
 =?utf-8?B?eU1ONysrN0UvOTdaWkFUTDYrelR0TXlqWEdDUFR1U1h4d1NSQjRHM1hqdjU0?=
 =?utf-8?B?WGxITDVNYkc5N1hiTEVPejFMcXkwUHA4VWFhKzdXVWc2aE9jV1J5NW5oWWhR?=
 =?utf-8?B?RmJMb0k1QThJRDIzMzdrSGtVcDJyZFBsVVIyWUJMTmFMRE5Zc1lIaFloQnpL?=
 =?utf-8?B?RDVOVmYzd05rRGxmbEYySFNSa2w2RmY4bWM2RmFnZkdBYjhNN2xFbm0wRVRG?=
 =?utf-8?B?enpoL0JsdUE4RzRVQ0tDYnJpdjZzamVTMmwwV0ZkUzJDKzZxWGtoS2ZFQ3pZ?=
 =?utf-8?B?dnFzM0dDWUxKdjl3bkJ2K1RlTFFoaTFya0FPOUZUWGgybjhZeVM4Nk5VOFpt?=
 =?utf-8?B?bnFlWFYwNExjMzVIMVp3djJONi9WWDJlSmszU3FoTXRtQmhPaHlUL0JQcXpD?=
 =?utf-8?B?aWttU1dkMHMvUjVmMmJQa2dubkVmUXNUdjk0M01SQkRSTEtaZmVVSndmMDQy?=
 =?utf-8?B?aVE9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(1800799024)(366016)(921020); DIR:OUT; SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RS9EVFREMkRLMDQ0U09kMDIvNEdjTFRhQ0NVQmIwTVMyZE41aXo4SWVtWDJn?=
 =?utf-8?B?akxDYVc3WHlIc3FnSG1UVVhySDZ3bWtvWndla1pPRmhvdUxLaVV5SzFKcVhW?=
 =?utf-8?B?TDBOUmR4Wm1LZTRDMHRoYUIrNDE1NEdONllJVnpjTjJCU29zSEthYThHSmFZ?=
 =?utf-8?B?azRuQzNWaHVFTWttYmtJYzZCWC9yNy8xOVB6TFFTWjhKV2QzUjVRSFEyQjVr?=
 =?utf-8?B?S2RqWVo4WjdCeFZzb01BZ082ak1xSTJST3FWcDdhai9vU1lQYnlJQ3dHckdT?=
 =?utf-8?B?RHN4cXJWY1Y1VTZ5L3k2Q0YzUUFuMEZNS2QzWVFlbjhvcGhOQWVoNldRWXpS?=
 =?utf-8?B?YVRxUmtBMWtXM2crci9INEYwSzVMendxL0tZWlhKbkdhN0Q4cHkxMkxtbFA0?=
 =?utf-8?B?a1NHaE1iSnhSMnRrMno1RGtZK3ZXU0RMZk5TT3R6S0RNUE9WU3VOMmg2TjNG?=
 =?utf-8?B?WWFqV1Bzc2xYRDRNbHgyUW42TmVBb1UxcDVKRHNRbnE0SzVnTG9Ka2Y1UHg4?=
 =?utf-8?B?a2dVVTh4elF0YkhQd0owMGM2bUVtajJCTkp0RE1UQmNQUWFFMkRLWktXOVBo?=
 =?utf-8?B?MU1ZS0U5UkZhdHhmUUFIanljV3RHenJvYTlxVGpSSTZuNy9wZjYvbnl4RDBG?=
 =?utf-8?B?NnBqVFJMQU9XYnhicVdBZ0hFeFRZR3lIV1hGWjdnbUlwRkNYdCt0b2V1WDBB?=
 =?utf-8?B?QjdoSHY4c2Z4akRZVnNkYk1vWmZDaTd2SWs0Z0doVkl5K3BhUlBDS2k2cDNj?=
 =?utf-8?B?cjZHTmxabnhHSTZDS2tkTmhxR0tuVUdzaVUwMWcwcStSSEJENVFpZ09uaTlj?=
 =?utf-8?B?VlcvNmwxUzNzRi9od2tCalBCa1VMNlZrdS9Ga2tFa1dqd1JWMnBwaEE4bEl2?=
 =?utf-8?B?NSs2bEpoK3psZW5XemZGSFpNTUZDTmtvVW9KWjc0K2FoVVdJWWY3Wk0yUHox?=
 =?utf-8?B?cEpqVi9QTUs0R3lIbTVEWkJIaG5iNUdVRzFCSnVEMjNTSkMrUkVWeVFHZUlt?=
 =?utf-8?B?ZzVrMmFsRUV4QTNOMU9OZ0JDa3dKOTBESTU4S0ZNYmdGVUJYK2NNSC9TTVQ1?=
 =?utf-8?B?YmgyaDJ4NHlmenI0T0RMbG5ZM1Z6dFdrQ1BTL2tTS2ZIclV1azhKMlBPQWJZ?=
 =?utf-8?B?RzBoc3NrOGYxcjJUd0tlLzNtZzIydmNvUUF0MzNCTG44NzE2SGNiTjRWZFJv?=
 =?utf-8?B?cHNPamhjUktERG53M09zN0x3eElCWFJHNVBjcUhHV1BVM2xHbVpVREdMcGZs?=
 =?utf-8?B?Ulh6SHNEQWRNQzFyQ0NHeVppSFlVN3JuKzNkU3FwRk5XZUZxUDIzUlNjTkYv?=
 =?utf-8?B?WUtGY0N0TG91ZlllRmcrWFhuR29EcnNOK0RRN3Byc3docm9POVYrZlR3YnpI?=
 =?utf-8?B?SFpjb3Z5VlB4dHpGR0M2dVpBMWZkRnVxWHJxM1JHMDlIS09ocnlxcVovK1RJ?=
 =?utf-8?B?QnY1cW9ETWpmZ3NZSmUyZ0pDTS83UlYyc2FWK2gyUUZNVGRFdGhaZTd4RlVH?=
 =?utf-8?B?ZUNlQUpOV0NpRkxJSWwzYmFjZjdka2tkSjFuTEpONnRvVnNLN1ZRTzM4NDhU?=
 =?utf-8?B?cWtsaGRZMFMzZ1NqTWd1aWd1RnIvVEhhTG5ONmdybkFKSGtLUWdETFZWU3VM?=
 =?utf-8?B?TDExU0ZZdmI0Wk5yMG42N2xwMjR6b3FiQzlFcjFnWEpBa3AyVHhUSHhQN1ZP?=
 =?utf-8?B?dUlwSnlJbVhnQ0c3ajJsRTFrZ0gxSjE0Y09SNWZveVdNZldETSthTUIwZkF5?=
 =?utf-8?B?SXJRUnFJV1p0MGVOMnZvS251bERncFl0aVNXSERGeUNGanF4MlJqWXY0d29i?=
 =?utf-8?B?bGZrZWl5eXB3ZTdiR2Rza0ZQbFBXZVA0ak1FNUZtQkxHZkJHUU5leGQyUGRK?=
 =?utf-8?B?djZRdWFTRE1TNGRmV2RYc2h0YlRYckE1ejZLOThFbGVPMTdOR2U5UFNveWh0?=
 =?utf-8?B?L1RSSTU0RVI2dGlhQzBwZUxTaUxQenBjZURqaWtlL3NsUEpBb0pFajF4bm9K?=
 =?utf-8?B?NnRYQVd2SHZ0SlJuRFY4ckVMclVDaXRIdit3VW8rRVRFQ1FMMkM2V2FON0dK?=
 =?utf-8?B?MDN3VjF5aWRMVHpDbC9VOG9WNEZFL2xGbUZ6Z3pQWmNBbzdKOTF6NWFUK1pl?=
 =?utf-8?B?MWRUbFJ2RWdjVGNVa1VISXFFZTI3SHlhY3N5SEZFUkh3QzN4VU8yY1Irb2I4?=
 =?utf-8?B?KzgxdE0vdFVyQ3RMWTcycTZ5bWFzMi9MK0dZY3ZzWHJSdFIvcUxJM25ONlpi?=
 =?utf-8?B?cnJNaDVzcGdDLzY1NTFjRW1hTGFvNmUxTk01NnJRSHI4ZzQwUnQ3Skhjbmlq?=
 =?utf-8?B?TE5SRVljMVhFaTFHUTdwTFU4dFlpOW5QdzhlVzhKZHlWaW40ZTNHbzBKTHZj?=
 =?utf-8?Q?ao7HVwjAOpYSROhg=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 56b184da-bf89-432e-df7d-08de5e994607
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jan 2026 18:15:53.2592 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Q9iR0IeeaG77vY7M/YMLytLbSMpnzZ0CeTtvKnti+Ct+/V2X9Hbfa+caZWYvZWgHo8Puh+2jtFOS7brDKFCuiZpkZ8eUsF7z6ap92gpFyzU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4666
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769624163; x=1801160163;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=F+FIOUGpt7KQ/tPXwdh8xPVR1F0nMx26tCvCZQPRcJM=;
 b=C5LjqM6iWhT+Wd6aMDpPDNQaV6o9iA6IoYj5BK1cKSCUYA3xK4iwGZTS
 SaHl9aGmUxWSwUtw46wM9fs0IxPDHRFpwDhTq5xJQrMXU7DzCNDe8LHe9
 yxVHXT5HbgnYqV2LM++DH+9OCRgqCJMWajNcLbQWT996RLvWrkprfMXqx
 pLV+ljwM7Lnon4OHW75ZReUGk3Z6NzLHxScTOV8WaMkTcKwtt3igvBFbl
 uyO5iSx+Suu1wH/Xguj3p+SP0DmchbUlwym3iQpSvkYfNmMg621CAFR5C
 N4xRsiVDjOv/GWHOz6/ta9AxROFnpPvMJb/c9kNr7rB6Snn871Pobf9Vu
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=C5LjqM6i
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 00/25] kernel-doc: make it parse
 new functions and structs
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:corbet@lwn.net,m:mchehab+huawei@kernel.org,m:davem@davemloft.net,m:aleksander.lobakin@intel.com,m:ast@kernel.org,m:daniel@iogearbox.net,m:kuba@kernel.org,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:mchehab@kernel.org,m:richardcochran@gmail.com,m:bpf@vger.kernel.org,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:rdunlap@infradead.org,m:skhan@linuxfoundation.org,m:sdf@fomichev.me,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[lwn.net,kernel.org,davemloft.net,intel.com,iogearbox.net,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,huawei];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 2BAD8A79ED
X-Rspamd-Action: no action

On 1/28/2026 9:27 AM, Jonathan Corbet wrote:
> Mauro Carvalho Chehab <mchehab+huawei@kernel.org> writes:
> 
>> Hi Jon,
>>
>> It is impressive how a single patch became a series with 25 ones ;-)
> 
> *sigh*
> 

Splitting things up helped me understand all the changes at least :)

> I will try to have a good look at these shortly.  It seems pretty clear
> that this isn't 7.0 material at this point, though.
> 
> One thing that jumped at me:
> 
>> Ah, due to the complexity of NestedMatch, I opted to write
>> some unit tests to verify that the logic there is correct.
>> We can use it to add other border cases.
>>
>> Using it is as easy as running:
>>
>> 	$ tools/unittests/nested_match.py
>>
>> (I opted to create a separate directory for it, as this
>> is not really documentation)
> 
> Do we really need another unit-testing setup in the kernel?  I can't say
> I'm familiar enough with kunit to say whether it would work for
> non-kernel code; have you looked and verified that it isn't suitable?
> 

I'm not sure kunit would be suitable here, since its meant for running 
kernel code and does a lot of stuff to make that possible. It might be 
able to be extended, but.. this is python code. Why *shouldn't* we use 
one of the python unit test frameworks for it?

We have other python code in tree. Does any of that code have unit tests?

I agree that it doesn't make sense to build new bespoke unit tests 
different or unique per each python module, so if we want to adopt 
python unit tests we should try to pick something that works for the 
python tools in the kernel.

Perhaps finding a way to integrate this with kunit so that you can use 
"kunit run" and get python tests executed as well would make sense? 
But.. then again this isn't kernel code so I'm not sure it makes sense 
to conflate the tests with kernel unit tests.

> Thanks,
> 
> jon
> 

