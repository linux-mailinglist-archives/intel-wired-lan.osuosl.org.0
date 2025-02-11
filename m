Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A5FBA30E87
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Feb 2025 15:38:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 85537818C4;
	Tue, 11 Feb 2025 14:38:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fsfetEvvhbC0; Tue, 11 Feb 2025 14:38:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CC04D8156F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739284730;
	bh=q7VX3fawoPyMQfvR2zgQEugl+J7BIV/NVVN57P0RjBo=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Uf/YH1gEEZ7U5b4dnZPcXrCNSYfwZEP4KvqIENDF3hr4LDN7d2oIvMs8t52eFE3/h
	 jDdstwTjhEhtHF7Y3NVRVPUQSh5C80kUJquIaelBLuInhieMz7raRD8i4gSMxKI8Kt
	 zyNAjyrYevS6ezmLgcu2zEu3L7H6C3oVD566J5EdRVeKR+UAhKTJH3rGjnSlRiOKCU
	 EnvVejWpbhm1Cnojqf8mFEvAEt/zHIfxgGy/AVVVDHtahjAc/BgBKNOlKrCSa4tQ3u
	 fufYp1XWpRXJJ1KrrhK3YO8meQIh9iaXVUENafHGmE62TWVeA6FXqBoyaXwPVq/G7B
	 TdStJgVLqIBrA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id CC04D8156F;
	Tue, 11 Feb 2025 14:38:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 21E86C2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2025 14:38:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 04A214089E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2025 14:38:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id N0xuefbwo4o2 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Feb 2025 14:38:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 03581408A9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 03581408A9
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 03581408A9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2025 14:38:47 +0000 (UTC)
X-CSE-ConnectionGUID: MCK7U5eVSW+cxpYiAFj7KA==
X-CSE-MsgGUID: U6aCAeawTMqTl3/ClJX+oA==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="51332281"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="51332281"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 06:38:47 -0800
X-CSE-ConnectionGUID: 6VITvU3iRayGD1e0Yih7oQ==
X-CSE-MsgGUID: z/k9kQZkT/CbIy1lDDdq6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="113424457"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Feb 2025 06:38:48 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 11 Feb 2025 06:38:46 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 11 Feb 2025 06:38:46 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 11 Feb 2025 06:38:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UsNq0IeRIq5u9SoSvgVEnFkYmxSFyYl7V/4FAfWyfZEeEM8jKvbWWAmsGeL7M1BzSZoGx0Ajk/r/tYwvShTa65pS8DOxcbDZQT4rtox8owajNQglTGbuODSSoVCJWnR2vhkFX2FQoMMyTUrAUcDSiBcDnJxLXrhdbbZQSZVGdaipQSqwZ3AAC4CFB4TWmmtL3kuMLtiseomqtrJVVL4RCx6452VabDM4EDG34jjEkpgT111lIFBJvOtGO+JpzlV2WfvxQkWZWoDgCL45bl6GsmoIswiMg3vXtF9nflM7bl6HTJOYlLjnZ1G2T4OJCEfc2tykF/xLpz7osFgJXwiCpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q7VX3fawoPyMQfvR2zgQEugl+J7BIV/NVVN57P0RjBo=;
 b=Vmj3cvNbaco1ccPLAWpb24gJPGkK7XVFj2W1UUislBOpWtE8bXtamJPxzr1smwQodZEohlljyS1iwmY2H6DhVQXjQdLpAbTo+m9jmfPB4l5vArY2VQFnLBWSp8hVt9zu2ufCVRdqbQFDqfNVSgdSNeelrRcG8ex+AUQ5EBN7jypVp0+kuJjVndd3zWe+QkePFdk9eEHSEtHaQuY075jKLHgDZFbnw1+zfbFyd2CpqjZhm2/NFvf0J8aaZ9yvyDKuwAtZ0W7I1ZUxKzwBcRU9IfguZipqWFUog5gQACC+y6UZ9t7m58GRsx6v0sEWdTY6EsG+K/zufm//JNjijWjydA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by CH0PR11MB8214.namprd11.prod.outlook.com (2603:10b6:610:18e::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.18; Tue, 11 Feb
 2025 14:38:31 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%6]) with mapi id 15.20.8422.015; Tue, 11 Feb 2025
 14:38:30 +0000
Message-ID: <07f0e1d1-d526-4b35-8958-0abaf7ef4829@intel.com>
Date: Tue, 11 Feb 2025 15:38:25 +0100
User-Agent: Mozilla Thunderbird
To: Jiri Pirko <jiri@resnulli.us>, "Jagielski, Jedrzej"
 <jedrzej.jagielski@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "horms@kernel.org" <horms@kernel.org>, "Polchlopek, 
 Mateusz" <mateusz.polchlopek@intel.com>
References: <20250210135639.68674-1-jedrzej.jagielski@intel.com>
 <20250210135639.68674-3-jedrzej.jagielski@intel.com>
 <bxi2icjzf37njzl4q5euu6bbrvbfu2c557dksqtigtegxcnowo@yyfke6ocrtpf>
 <DS0PR11MB7785B1EF702ED5536D4B4CCBF0FD2@DS0PR11MB7785.namprd11.prod.outlook.com>
 <qmjitflm2k3zo5yiym74c6okjg5skzhb46evfhn6qpzkwch3uc@epvkzeg37n3f>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <qmjitflm2k3zo5yiym74c6okjg5skzhb46evfhn6qpzkwch3uc@epvkzeg37n3f>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR08CA0226.eurprd08.prod.outlook.com
 (2603:10a6:802:15::35) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|CH0PR11MB8214:EE_
X-MS-Office365-Filtering-Correlation-Id: 78d13716-ee97-45c2-58da-08dd4aa9c127
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SVY4WGxMUkUrdUJ1NExlZVJyU0hCUE41TDh6Q3EzTUJaaXlhOTU4cTdUSTZw?=
 =?utf-8?B?VjFUQTI5YUhKYk1ILzQzRlpsV0ZTVHdsV01qTDk5NFhHM0x1S1psd3RhcG9t?=
 =?utf-8?B?Q0FGV3BYT1VHTHNwdHFiN1NTV3c0enVQMTVuZzBIcEVYaWZYdm9HazVBdTBY?=
 =?utf-8?B?bExLeU9YUkgrM002VGM4R25vbE9TTkdYaGhId1R1SkhuNGV2dlBiQWpUQ0Nw?=
 =?utf-8?B?SFFSQTdHeHFzNDdpb1NsNXYxbDZ4Y1hzeGJCc3FoeGUxeUxSZGp1QkN5bW1B?=
 =?utf-8?B?TEEwekpXSkdHS2w1c1NFcE4vWW4zVzJFdHlScHRxMEdsWVVnY1VGMEl1c1Br?=
 =?utf-8?B?dC9yWUZFSVkrUDdLTGxha2ZvN1JwY2pWT1hTMWJYak1RR2t3NlBoa0Z2aTRT?=
 =?utf-8?B?aFpSM1l4TmRDZGhUcVhXaE1iOGVwWlRtbFlMZXNsRDQzL1UzbGk3Z3g3RmxD?=
 =?utf-8?B?bHhHZjdUT1N4Y29rWVlVUFVKMHZhK2hXcTlwdDhKOGdZZ1dubWN4SkhLa1lk?=
 =?utf-8?B?dTl4Nmg0ajhCeHJja1d5NHRWZ21vMVJSVnRzMFo3WHpTWlZkcG9obWp3UXk3?=
 =?utf-8?B?SU1qb2V1M0VZKzlJTkF4TTRvMGdwMGJIRGp1Sm83NXZEU2U0N1pRM05xaG1z?=
 =?utf-8?B?d0JScFh5RXBkRnE4Y1k5TWowTG1HLzg0Sk1GUGc0R1F6ZHNydW9TeGRRbU9R?=
 =?utf-8?B?WlQxZDczc2xFeGE4MTZxU3pvK3p5VXFhUU9NejlQQU1jRTVlVkFPVzNpdmV5?=
 =?utf-8?B?UjlrYVNOcWxyb01uYVRiN0lOUTJUV2tORkVLUnIxNGYzTnpPazViWlZDa0Zh?=
 =?utf-8?B?NHd6VGJwUUpBNjRQcFBSYmx2aVl5Umt1YVdwbjFhSW02a1NKM1BxWUttNmhk?=
 =?utf-8?B?cVk3Um5HSUlESDdqdlIyd0JMY1IrT1RndkU3R1Zrd25IaUEyR2Y5SkFuQmFk?=
 =?utf-8?B?S0FDRGdTZ0RPbVE1NWRCcUhKbExvMWdxZXEveVN3ZVVLUHhxcVp0SEFIOGhk?=
 =?utf-8?B?MC9UNC9ETVZHS0R3ZVA2LzFBK1hweVVDbFB6V0luVWM5L1dvMjFBcWhXaTNV?=
 =?utf-8?B?VDJwT0RIdXl1QVA2UTJGSEFYUTlpeDErWC83Yzl5VlB6SWUvbmdXZUJZcXlH?=
 =?utf-8?B?NTFiUlhGb1dXdnk4UVhFSDJjY2h0YWdWenY3K0hFcnlYaThlaXRaejRQU0ZJ?=
 =?utf-8?B?VUpJQjkvSWVGK3YzTmlGU1Jtdlc1N1pxZG5KaU54Q1RTSUhjTnl2eHpTak4v?=
 =?utf-8?B?WkFMT2dVM2MyRGtvL0FoaWlFOUlxc0FIY2k4NHNJczY2REc5N3dRaUNGTGJw?=
 =?utf-8?B?ZHZpeDllbXdUV2RrMnhpU1hhS1hRRjNSSGNKZ0xTRkczT1lvMUdlVVZpVXQ4?=
 =?utf-8?B?OVEyQWZHUm10eGFEQzZYZzVGNGhGTzlMalRTbXMyMXNxWnBqTkNvdTc3OGxX?=
 =?utf-8?B?WHF1dWFCeXFJdllCcEJqZ3cvUkVJRXFrbmVjaUhkSjFYdTRydVlwS2tCeXFN?=
 =?utf-8?B?QWZpVWZVUmpRdkdBWmlTMzlwUm9SM3F1ejhBNjNEcTh5K0NQdVVLWmR6T3hD?=
 =?utf-8?B?L1VCU1VRbFB4TmFGYzBtd3pEa24veDBkRVhlcWNwdkxFbzY2WlN1eW5TRW8v?=
 =?utf-8?B?ZEtKdTFMQjRoZHNXVUhsL1BGcHBEVmcvbjlqaWViWlk1ODIwTExrWjBqUVVD?=
 =?utf-8?B?SDladGNUcWpPZllTM0RwUmNxa3FyamFSbjkwLzNhN24xNDE2TU1YK09LUGZ0?=
 =?utf-8?B?T3lldWZGOERDWmpHSTBRSFhkTld5cGorVVBJTjAwZFQxSzZweS9oNzUxaHRr?=
 =?utf-8?B?T0h5UDZoWCt6eUNDemlCaHAxV29zUERrT1pTN3dXSUc4VzZTelg1dDd3SEp5?=
 =?utf-8?Q?O6Ia5RoqNwz/D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RXFMangrUTI0aVBwcnNqdWc2Q1RCWEVjajJ4alZlcTJMdXJScmxoZktmSEFP?=
 =?utf-8?B?TUNkaWJQQkg4UGdGYy9SdnJlczVud25Zb081UlZUeXhJS0YvdmhnWndVZlgr?=
 =?utf-8?B?VkJ3aTB6aUE5TUVNZ3RvalR5SzJjd0IxQXM4U1ZXTUVIQjluU0xkc2hxd05V?=
 =?utf-8?B?L2J6bHhWZU1yQ0orM01XQW81VHNrVXp3TlRORlhNSVp3dnpZMHdtbmwvYURV?=
 =?utf-8?B?WHkrY2J3N0YwR2EvSU5BUWFZeVdXV1B4SmxYOWxGZEZiamp2VzlEVE9IL1N5?=
 =?utf-8?B?eDBxd1ExYkdZRFUydWttdkJRMmQwSGR2a1Ryc2NDaDg5czRpSjN5VUNUTVMz?=
 =?utf-8?B?MXdGS3BiTmJJUWZjbUhITHI1d1VNU2p6N0M2RUo1VC92VXZkL3JSN1ZwYWxm?=
 =?utf-8?B?NnphdjZ1aWFiekVzZzliS0FaSVMrK0ptaDArblhTZjRkZWhCSTVuSDhXaDJO?=
 =?utf-8?B?Qmo1M1pGVi9KSmwzODYzeFgyK3NvR3ZLVjVLMnNPUUJENUhNSG9adEpOTGJ2?=
 =?utf-8?B?UGFGYWNkVVBWdDJ3WWtNZWxjUEV5NTkvcE0rSXZwcExUcnV4dUlMTnB2QUtZ?=
 =?utf-8?B?Q2x1ZEs2WDVzKzRIVFhodzE0MDJ3M2Q5TytNTmdjZVNMYmdSdW9vT3hadXJo?=
 =?utf-8?B?ZlJnREQ5dnE0V1U1M0VQZ1dWMWNOUFdheGI2cm1GNHlPRkVCekxiQ3pTWGZ5?=
 =?utf-8?B?QVRvVTY5dE5QVkhBaFZJVE00UEllYW0wMEV0eGsrRXpNMkY1cjJ3NWZ5Wno2?=
 =?utf-8?B?eXlqVWRrVCsxb0FGMW8rL0dGai9YbzNCRlRCVWc2YWJUT25HMlRKd2s0NGgv?=
 =?utf-8?B?SitGbGF3bDBWLzlyaU9BZElNNE5NaHZRZHM0dXFGVllINXd2N0NsbUp3WGw2?=
 =?utf-8?B?d1ZaNE9SaDlOdUVRLytpWVVCaGVmZUN0T1ZIRklRYk9md0FidFFwWDVnOHB5?=
 =?utf-8?B?VUgzc2EwWDB2K1pFaThoYTYrVEYrdkd1VmlnZk02ZmV0eEJaSFlwQ25mOGkr?=
 =?utf-8?B?MDkvM3B4QnhSSy9zQ3F4MnFUTXk4M3VNY3ZBTXdDdFZNMkhHVzZCcnh3UGRn?=
 =?utf-8?B?RkxabE1KU0FBQmFScmZEeDA4SXlRUzZtSG5zWG1VWjRpN0xVRm1xdkxOYlVK?=
 =?utf-8?B?a0xNOHg4YUk5V2hLSk82NUoyWiswVnJhTmZHRWF1cXI5dHFiSVF2V1ZvUkJT?=
 =?utf-8?B?dElSUWIzNkUvd1JYcDRGYUtJQTQxM1hSb2JEaDNVMTBRSlJ4Y1J1YWhRYUdF?=
 =?utf-8?B?bW9SeEFRdEdnV3VxVEE1czBENnhKMksvc2M2YXI3RHl2aW1EcnVBSHZzQ1N0?=
 =?utf-8?B?M2VVdzd6RnJhdjl4TlJaTnlsc1dYelNESHhlZE9iK3dWTUVlZVVrK0R4dktL?=
 =?utf-8?B?Ky8vcVlSR2hKRlU0aDNMQXE2STczTHBrVE1CMThjODRNZUpWUm5DMHcyNWFS?=
 =?utf-8?B?eGFLcFZYbTgwMG5CVFpUT05kSFhQOW5nVWV2YzJ0VTQ1VUdJRmxvbmNSOENS?=
 =?utf-8?B?NGRWOUY5K21MeTA3ZERQcFpIaDFZV1puTW43aUFOQUUrc1pXd3c1NzVUeHgw?=
 =?utf-8?B?cFF5OXFEMEZpdjZmeXkrbGtVWFZkbkgwaThnRmEvcVcrUDFrdHFETXl1QTFK?=
 =?utf-8?B?ZTJncldEMEtGVWs1ZnJFYjZ5TytqMERMc3NVQXlzeUs4cG1OT1k2cERaYWZv?=
 =?utf-8?B?Qmp0Z3p1N0crWFZBd1JVeXNVUGs2RVhSN3luNXZFb09wb280R1pUUnFPK09r?=
 =?utf-8?B?NUJLczdXWUdIT1VNaEh5cW5PeXprSUNUTWlWQnorUjczMGdkQTBBaUU0bEll?=
 =?utf-8?B?cnpHWGY2UHdZOHpvUENYYVJmWUU0WVdnZ2JrUnZhbVpHM2lKWUpGSzBQKytz?=
 =?utf-8?B?cmRtVjNQNDI3NFZudlBrd3hzN05QTXJsdTROWStYUE55V0cxR3FUVHlta0Ni?=
 =?utf-8?B?aVlKRi9wcVVJMjZmVHQ4RzZUZzg1N1M2QUZTaHg5aW5RT0xlcUw4cUZUWGpV?=
 =?utf-8?B?dE00VU9kNVRaVkxYN3U4a3JaR2RMUktJSTVOenVNSmNZd0xrL2YvYTVCQlhl?=
 =?utf-8?B?NmpiNDI0ZFBBV21yQkFVQk1MRXAyVnMxTnpiTHBkUDBEREhkeG5MNFdXd2Uv?=
 =?utf-8?B?alYwalNzWStVWVJ4K1NZTjR2S1JGMU9udFIyWHhtZ09PZzFlSG9OWHdOQ3hQ?=
 =?utf-8?B?ZVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 78d13716-ee97-45c2-58da-08dd4aa9c127
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Feb 2025 14:38:30.8233 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HTA7wWK8F9pw2Ho0MBqlKOCPpZ1nPKJL4CRAN54lo5O4OkBgLoY55kVkzBCWEqEt8Ce+KLXSnGCrC9l/ZKF3bGxUxuZMmxzNG1VHcecj7DI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB8214
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739284728; x=1770820728;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3ntpDAjT+/M/InCyolbuQYZd40I6dbMW4BUbcVJPHhs=;
 b=i3pJWd0e9T+clP0D1XJvKcCC8U/RYPnXEGcyrYhiXk/Dl+OU5IzDZTjr
 Un8PjYkKR9MLYeJJEw1xkir/lUZj+UUgKVSG3etc9zHijWBkUu8qbodJu
 7QVaJuKERbiLMlaGy420YmyGdIDIEOYBEQFtsJgKokfq0itfwcYlM1YJV
 7OgzKXHULZPAkUhATNQnyvKXxnnaTpeCBpbW3omKSnX/ijSIKEeEc/FCg
 kkiSlO1sUIWnp9+jYRjGcNTjQGwjOEzENId2qWSuEBtj5+12iN+WiQdGf
 Az8RUdn0BDoXz17CdQwnSXJIj5wqNcLtcgY5cRYx0dJ3KanV1uy7wQ9wy
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=i3pJWd0e
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 02/13] ixgbe: add handler
 for devlink .info_get()
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

On 2/11/25 13:52, Jiri Pirko wrote:
> Tue, Feb 11, 2025 at 01:12:12PM +0100, jedrzej.jagielski@intel.com wrote:
>> From: Jiri Pirko <jiri@resnulli.us>
>> Sent: Monday, February 10, 2025 5:26 PM
>>> Mon, Feb 10, 2025 at 02:56:28PM +0100, jedrzej.jagielski@intel.com wrote:
>>>
>>> [...]
>>>
>>>> +enum ixgbe_devlink_version_type {
>>>> +	IXGBE_DL_VERSION_FIXED,
>>>> +	IXGBE_DL_VERSION_RUNNING,
>>>> +};
>>>> +
>>>> +static int ixgbe_devlink_info_put(struct devlink_info_req *req,
>>>> +				  enum ixgbe_devlink_version_type type,
>>>> +				  const char *key, const char *value)
>>>
>>> I may be missing something, but what's the benefit of having this helper
>>> instead of calling directly devlink_info_version_*_put()?
>>
>> ixgbe devlink .info_get() supports various adapters across ixgbe portfolio which
>> have various sets of version types - some version types are not applicable
>> for some of the adapters - so we want just to check if it's *not empty.*
>>
>> If so then we don't want to create such entry at all so avoid calling
>> devlink_info_version_*_put() in this case.
>> Putting value check prior each calling of devlink_info_version_*_put()
>> would provide quite a code redundancy and would look not so good imho.
>>
>> Me and Przemek are not fully convinced by adding such additional
>> layer of abstraction but we defineltly need this value check to not
>> print empty type or get error and return from the function.
>>
>> Another solution would be to add such check to devlink function.
> 
> That sounds fine to me. Someone else may find this handy as well.
Cool!

perhaps we could also EXPORT devlink_info_version_put(), that would also
help us reduce number of wrappers (also in other intel drivers)
