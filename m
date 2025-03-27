Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E9CFCA72DAD
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Mar 2025 11:23:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 05AF78490B;
	Thu, 27 Mar 2025 10:23:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zuz8SODOhPzd; Thu, 27 Mar 2025 10:23:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4BBF384910
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1743071009;
	bh=+QVH+ICcNrDI6utBpdohH2q4MXRb7cgV0T5MBQNNb5g=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yLoz6imzIMInv1Su3zKmEgn1Ct9ecudTo5PuB3p8iEYH4K87+kolOCraf5CbGXJCw
	 D0L6jqO0BYQsqjCF1HpCKVv5vcMcXK3qlQLxqUtClaETJkID6O+/kpfQMDKea9JLlb
	 10ejSchLfPN4GIAoGf130BcADEYplYrZaS2imwn26ruWYVbaxX1wqByDjHk8hq7s5v
	 9DafnIPCby+7ORfv1LPzUHk/Ulzw4A1lHRCrN5xlgSPa7n0lKJLNvJq0YWqbHLVXXj
	 KgJihLthsEciMFO2boEUugzkw8RBygO3g55wv3tS9R+snkgL2dV9+eSYveWUqVykvT
	 UGb2ZiC8nTnxw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4BBF384910;
	Thu, 27 Mar 2025 10:23:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id C8C2019A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Mar 2025 10:23:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B92FD42D51
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Mar 2025 10:23:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xM33GWCGRIRl for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Mar 2025 10:23:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D6D0A4238A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D6D0A4238A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D6D0A4238A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Mar 2025 10:23:25 +0000 (UTC)
X-CSE-ConnectionGUID: Wydfe31yS/SIRNpiQyYdCQ==
X-CSE-MsgGUID: bUNsiDsaRIy7xwjhO3jX1A==
X-IronPort-AV: E=McAfee;i="6700,10204,11385"; a="55761733"
X-IronPort-AV: E=Sophos;i="6.14,280,1736841600"; d="scan'208";a="55761733"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2025 03:23:25 -0700
X-CSE-ConnectionGUID: XYyvZSl4S5CcHf+RErwDEg==
X-CSE-MsgGUID: cL1c9rS7TQydGjMgylBP8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,280,1736841600"; d="scan'208";a="129780058"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Mar 2025 03:23:24 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 27 Mar 2025 03:23:23 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 27 Mar 2025 03:23:23 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 27 Mar 2025 03:23:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vWYyO8XN9xtVURbcxBWRLXFCxokdOpCz6Davz5ILPw8OgOOzq9fYM+0w3kuI41aFwQdIQ3B6iXPneVCL/pBBQ0295kAHtdf+c6PTTly2/7XwQY36itjFfAWGQ52Povr+epVOAL6WPWTLk3QLleg6kfZH+hbi9NSWR/uqJF1WI7dBtaN2aw9nEDGJzNem94TCutbDOmEZv9m7Xda+BgRAbry+qjQuN1+OV+JkXKvx39lZ1ggWYp3nIEE3A58AnN2Ld8bBsh79IUcNJ+9IDUJzC+G9m7Sf7TfztOEbH2r67+AVSuiBBBNzXbP9R6PpVSgvi+O7PVsM6FwelnyGJK/Qdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+QVH+ICcNrDI6utBpdohH2q4MXRb7cgV0T5MBQNNb5g=;
 b=R6RJ/zGSQJXfjRAQy046F/UvdO5oxkxh3QMcs4nR8znclAFgCTz8mUg5ihoivPchOm5JRIIdd2D/N7oshrtt7mWjRsYdMqZQgNr3DJ2skB87nlzXNQwyTcF7JD0tL+ylOTHQ/Y/W9O4GxW/wvHACiiKS8Gm48EexQ6NVLIsPONQzGhAu1t3DXVxgD5fgtHcWhAGi4E8vHpG035CzKSPIVwcRNI2uoU2FwEw6Uc/wB2OPC6Qdvw60XKSh7MTv5cMw207s7Jqwyd+h6Cu9tSIaNeBl95KmvDyFCfNknMnRZEclyu9ANa3ko3U8xHr0Y3a8cIdtcxiD6cN5jvgFBNKGqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by SJ0PR11MB6693.namprd11.prod.outlook.com (2603:10b6:a03:44b::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.44; Thu, 27 Mar
 2025 10:22:54 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%5]) with mapi id 15.20.8534.043; Thu, 27 Mar 2025
 10:22:54 +0000
Message-ID: <4a960ad6-6118-4db8-9511-a1e3bb5b66f3@intel.com>
Date: Thu, 27 Mar 2025 11:22:50 +0100
User-Agent: Mozilla Thunderbird
To: Xuanqiang Luo <xuanqiang.luo@linux.dev>, <anthony.l.nguyen@intel.com>
CC: <davem@davemloft.net>, <edumazet@google.com>, <netdev@vger.kernel.org>,
 <intel-wired-lan@lists.osuosl.org>, Xuanqiang Luo <luoxuanqiang@kylinos.cn>
References: <20250325020149.2041648-1-xuanqiang.luo@linux.dev>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20250325020149.2041648-1-xuanqiang.luo@linux.dev>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: WA2P291CA0022.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1e::24) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|SJ0PR11MB6693:EE_
X-MS-Office365-Filtering-Correlation-Id: 78feb17b-2368-4e30-60f2-08dd6d1955e7
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?b2pyaDVnZ29HaWFxeGt4N0tuZU1yam9FQ1NJTDZqZG9qbUpKMUpwSmpadHRX?=
 =?utf-8?B?ZWRyQ0FmTUZHRWhSdmh4RWdDZnlMQmFvVTRIeFh3NEdSSXY1emdrdUJkSG9x?=
 =?utf-8?B?ejQ1bzhWdHdrL1dqWjNVN3U1NkJqMWJ6d3hyVGJVbFNkLzdHZkJpaVVHaUhN?=
 =?utf-8?B?TjhtblgxL1NSRlhNOWlBMVFPbjhhQTFsU2IvMjlQR1JKUHhLZmxseEN3TU5i?=
 =?utf-8?B?N2hJcWgybjFsMUN5UFpPeHNYcU9nYldaSk9MOXRNM01PN09Fcld3elRKYTdR?=
 =?utf-8?B?aytXSktRRzY5K3dkOUlIbXl5RGt2NGtEdndwMUZRYUszWGhOUktuNllmcG9D?=
 =?utf-8?B?LzZNRERtU29hbW9BRURURFA3QVNlak1JQ0ZqZUxncUhGcUd5SUJQamk2dkY2?=
 =?utf-8?B?dUhrcHEyeXYyZ3U1QXZ4cHh0MFpqTGZSVkZ5d3ZPbjhVYWI1NlUrRnhGL1hV?=
 =?utf-8?B?NWVIT2tsMlBEaE5MeVdaWFVaMm9sTmtBMEJpMWx6NWFhc3FDUWNkS2orZUhT?=
 =?utf-8?B?MFFSVkxWWGhSYWUrSmVNeWl2QTB4eTM0SlE3OUR5cGZzOTk3RTNoVnVqMG1E?=
 =?utf-8?B?M3p4THBFaDdwSmwxdHF6ek16Vm1wcEZQNVVvaDk2eHFRUlR6V3MwYTRXcGZt?=
 =?utf-8?B?dVEvNDNUOVdOTXdDTlhwRkZKT2hpdHVTK1pWNE94NCtxdU02K2d4TlljMUNO?=
 =?utf-8?B?V3RpU0NsT0t0a2RPSGdJQVpWYm5lWHRvb0x1SzRnUkNqQzVkaFNXRFV2djhT?=
 =?utf-8?B?V1BkaXFWV1hUc3dZQ0RHU0FzRXJCeVZnbjdQa1NaNUNMMXpabjJySkRMR3lX?=
 =?utf-8?B?a0p2SndZOVo2cFNRRVlVTCtWNDg2NTJOckJacmlNbTBOVXRCQ1ZZeU1yS2Za?=
 =?utf-8?B?SEt6eWw2WGVvTkJyaVNxV0lKT0syR2RMeUQ3MkRWVXdkbjdkWlhESENJQmZ4?=
 =?utf-8?B?U2VSemZNSEZ1allBQmNGTWtTVzB3dFI2alM4SUw1Ung5Y09EMWNuekoyeUNV?=
 =?utf-8?B?SVhuWmFqQzlhc1dWQmY0cHdReUUrOWsrdXpuQW1zR3RscWhSbEpCcFRLWkpa?=
 =?utf-8?B?YWhHb29SdDhXRXJjdjR6UWFiZHlsaGxzMmQzV3RnT1FoTmVFaDhlM3JEaEps?=
 =?utf-8?B?STEzK3EycEpKdWlFR25WaWd2U2daQzJSVGlZVk0rQTJ0VmNtVHEzOUltbHda?=
 =?utf-8?B?QWVSNVlhdzVmSVlpcmZQUWpJNTMxeWFpMDVjcFBlamFQNDdPL2dtb2hpTFNQ?=
 =?utf-8?B?clJ6VHZiL1ZmdXJEMWxraHZmN285ZXBXY0x6eklhQ3Q0WER1M1VZdmtZeit3?=
 =?utf-8?B?N0NzL3lRT2tmZFV6WmplOUtEL1gzcHpoeGFFbmRwZzdDMGVkTVlNVndOQndh?=
 =?utf-8?B?Y1hsK0VONk8rbVIwUytiRnJHbHpodlNWZHNKTmRBTVNSczZmOTlDVHFLV2hH?=
 =?utf-8?B?SWRqTXZHUWZaKy94QUluMzA1QlFvajNTdjVIUG9XRHpoYXNpRU9DSk96bXdZ?=
 =?utf-8?B?L3NhaWExeS9EL2J3eTNuWjhtSC9RaU1tS3dMYVZiWGpVUnI1UGhSbmgxelNR?=
 =?utf-8?B?MVV2ZXd2VXlKU011ZlM2QmxSMGpWaDFxVW94TjV5ZWJNQXhtOE5Sa1FmRGVs?=
 =?utf-8?B?SEVhYkQ5YjhSaGVlT2VjNFIydHFORUw2djIySXIwWEp6QjVaVmI1YklsSEt4?=
 =?utf-8?B?c2NFTkJqYmRWalpOWDRSQ1hYZGs2NjN0MlA2T0hGTWhobUtBUzJ4SjVKMnRK?=
 =?utf-8?B?VmtZSkVIaHNUNWQxQWdrYlVoc2ZEcmc4VE95MnpSVmtNUWFPZjdoWFR6UGdF?=
 =?utf-8?B?c3FPNUxtWEJjNytCanVFWXU5bnVSWUxweHZ0YmkzaWt1bG1veVFIQUh3enRS?=
 =?utf-8?Q?/W/8xy39a0Rdz?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?L0Q5cDBUTCtyS3MyNHVFckZSenBWdlJjTkNYNStEbHc3RDVHemlCVXZEUnhK?=
 =?utf-8?B?eDFWa3BRS0tGY2NWWkxzcXFTOGcrVEU4RHlpWEp2Y2dvL2xuNWJtaEZja29U?=
 =?utf-8?B?dkRlUlA5QmQ0emNTcE95ZEhSMzZXd2JTSjV2T2llOHNOVmlCa0IzaU1xK1Zq?=
 =?utf-8?B?OG9YU2RHSVJOeU4raXNNRE9SMXZCVlVsdjFpV3QrdjJsZVlDbnVvRmNLWmh0?=
 =?utf-8?B?RjE4ZzYreVp1S28xSHFxdWlTVUtHMVU1UFNZMlk1eHdtQkxWazVZK3YvUER6?=
 =?utf-8?B?djNIVEJCWFFiQVFLaVBMWjVhQTR0QUNDNVN5S3lPNWRSdVZ5UUFYdTlibHVV?=
 =?utf-8?B?aDQrM3RrRTBjZ3ZETWJwMFdaRzVKNUI2cjVzTjAwdlRUNlJML0dVN3o2bjFy?=
 =?utf-8?B?RVQrY2Nvb0U3bXRrSGFNYnZvcUFoa1h3QmRhUnNmL3IzQUp2RDQrS2VnTDVq?=
 =?utf-8?B?ZVJJckR2aGorb3ZSMkN5ZXRsSXUvZCtUOGVIMHczNDJJSjAzbDBZQVlqRksx?=
 =?utf-8?B?L2ZMWlZPb004TEJQalZWZGZYZitSSndzMUFrbUtOaFB6ZVpQK3ZmVWRoSDRj?=
 =?utf-8?B?L0prQ0dMRDlubW1nYStPZVFrbXJ0SEYwRlRYbmZyRmNPZEtEVTNoVW1NQkE5?=
 =?utf-8?B?eElHdE5SaFVSaUdvN1Y4RGFwTUtjSkJZVnZsUml0OG5ScFRleFMrWkZkajBP?=
 =?utf-8?B?VUMxTHAyUHBiY3QrelZONjNFYzU2VzJETTZ5b0ltQXVoejFtejBMRnBwSXd1?=
 =?utf-8?B?QzQ5WWpuOVZ2VkU2QSt0T2s3YWZ3OGVzZVNJZitkOXZ1UGhPMk0yY1ZYbXU0?=
 =?utf-8?B?TFNnODhjTEFMOEwzcG81ZjhKWjFBWGhUZTJKWnNWYXluWDNRWXdRREZHUHdE?=
 =?utf-8?B?RkVQYUhUemRoNEhQS2hqZ2xrYlBURUdIdlFFZmF1ZXRxbzMxaXhBYlRDYkg3?=
 =?utf-8?B?YWM3WWRxMmpIUTR4TktpTTBQb2tSQVBXZ3FXdmlEZk9KSDhlbmxvME1mMUdE?=
 =?utf-8?B?NkwyWnc0RndvY1J4WmwrRzZUYzBhMHhPL1phWFVLaXpJTnVhRDhNUXhHdEdp?=
 =?utf-8?B?dU4yNWdtNmY4eGNDckh4dUk4UW5lZHZqTUFzRmZYSnp3RFBUU2RlWEFSZC9w?=
 =?utf-8?B?MEJ2elBRcFJIL09jUnM1ZEdjOUJPeXRQSUlOUkVrRitSNmNmak1UREs0cGRV?=
 =?utf-8?B?Y3ZUUmRYMjc3ZEgzMGhvS3VhcStYWjFEdUx6S2U5UXMrMy9LQzc3Y2tubWlC?=
 =?utf-8?B?SHl2aVRobXA1dzg4MkNJVDdiSUI5bzlTeGlwNlJ0NWhhcExiZktzOHJiVkNQ?=
 =?utf-8?B?OUVCeTV6SndJQzhDT0MyakhWKzdkUGsvRjR3eG1Yck1XUDZQd3FMQm53dkdQ?=
 =?utf-8?B?eGtSNnNudXdkMUVqUnptdlhWWFFJOGs2S3lBZGFEbytsVnJxUEtZSkRENHd6?=
 =?utf-8?B?aGt3NjBVa3hMWW5UMU85N216c2hoZ0dxN25rRkVOMzVXakhUeGhmZThjKzEv?=
 =?utf-8?B?UWZiV2hXL2hoR0NVbnZOZDIrNk9WcFdhUzhaWHkwSUpOTmgxY2xFcXg5M0J5?=
 =?utf-8?B?MzdUK2grQTdLK2lNYldqamVWa1h3MG5YODZVanRONVFIc2xRa3ZtMVI3QWZK?=
 =?utf-8?B?OER5aGhOelVhMkJJejhZUDRhM0lYUzQ4R3N1WnpFdlJiZTdrTWZlQ3hDNFQv?=
 =?utf-8?B?amVQL3V3bWFHT3Y1Mzd2V3lKdXloeU4wYUtpeXM2MjU4K1BIbjBaTmg1d1lw?=
 =?utf-8?B?VkR6eEZkS0xuYVBLMWNFQ3lRVjJOMEIrbTNQK294SmVRckxWeUZIbENqaCtl?=
 =?utf-8?B?Y3plakNOQ2M0Z2xCZGdYeGRWdGNvZmhRZCtuMklmaWFZcEQybThlRC9mQ3JD?=
 =?utf-8?B?ZHhLQ05FNnR5VFFSOTZpTllHZlFSSTJ4dGhBVnlxLzZaNUdpNTdLZnZWZThO?=
 =?utf-8?B?WVh1UnR6eE5DdmV3cjI4aHRhTzFWNjdSUDRLTHR0S0szaVcwcUFHVnE5MHlj?=
 =?utf-8?B?SEF2Q0ZoYkYrclJleFpuTDZuVlREQVdNNGlzYmpoUHBBYnY2RWFZSWx2c2Fo?=
 =?utf-8?B?b3JWdm5lSnVFZ21SRDc3M0VwbnJYbUNsUHkwNnB1YkswNlVRaldKZldNdDhv?=
 =?utf-8?B?MGI3bnlSaCswYjF3THdyeFF6OEN0U0lFVkVOUVZMb2NjaUhudnN5YldVU2F2?=
 =?utf-8?B?TVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 78feb17b-2368-4e30-60f2-08dd6d1955e7
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Mar 2025 10:22:54.1338 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lfhIW4GjulVDLuBvYKEPoOSjjSq3Jdp8MPEQ8BCTYjt/aRAKKPWqL6MqNyt4+z/grshlp1oxY7sFpADjYztTCv+lsp6aYKd4v6n+0zW1HzE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6693
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743071006; x=1774607006;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0/UHF7szeyeysAVv2BdGHm8u2hGBpsdTEMAkpQq63FA=;
 b=Y/nYlcn644/GOLcwh4ERvkueq+7Lr/ryVXwM4ZtaY7Na5k8cCXqOlsqL
 QqPzvTXFaFrinct32LgHjK1Jva7+67IUnB2MLI3FOJaEEvwFCIS59qNLG
 yRmJd52Nb85/EsQ4jE5gMGOOihUVNLJaMU8Fd1kktt+SgCgzU+dKpA+r7
 t0xngSl6rLtlpnQDlBPlIdWAZyOd1uhSZvlEk3akpDwqGLoES5bgz83Mq
 Orp2gbDwmGsgsG5OKKk4kwU7NUqN1Ti4B80JqrWYLu7k3xAmexqjSSTyt
 bfpXIR7+EfWARt/ZOjiub+1kVbz09ePhU65esQwfURGRTUL9oBDlWEFhT
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Y/nYlcn6
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: Check VF VSI Pointer
 Value in ice_vc_add_fdir_fltr()
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

On 3/25/25 03:01, Xuanqiang Luo wrote:
> From: Xuanqiang Luo <luoxuanqiang@kylinos.cn>
> 
> As mentioned in the commit baeb705fd6a7 ("ice: always check VF VSI
> pointer values"), we need to perform a null pointer check on the return
> value of ice_get_vf_vsi() before using it.
> 
> v2: Add "iwl-net" to the subject and modify the name format.
> 
> Fixes: 6ebbe97a4881 ("ice: Add a per-VF limit on number of FDIR filters")
> Signed-off-by: Xuanqiang Luo <luoxuanqiang@kylinos.cn>
> ---

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

(technically the changelog (v2:...) should be placed here, with 
additional "---" line afterwards; no need to resubmit just for that)

>   drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c | 6 ++++++
>   1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> index 14e3f0f89c78..53bad68e3f38 100644
> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> @@ -2092,6 +2092,12 @@ int ice_vc_add_fdir_fltr(struct ice_vf *vf, u8 *msg)
>   	dev = ice_pf_to_dev(pf);
>   	vf_vsi = ice_get_vf_vsi(vf);
>   
> +	if (!vf_vsi) {
> +		dev_err(dev, "Can not get FDIR vf_vsi for VF %u\n", vf->vf_id);
> +		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
> +		goto err_exit;
> +	}
> +
>   #define ICE_VF_MAX_FDIR_FILTERS	128
>   	if (!ice_fdir_num_avail_fltr(&pf->hw, vf_vsi) ||
>   	    vf->fdir.fdir_fltr_cnt_total >= ICE_VF_MAX_FDIR_FILTERS) {
