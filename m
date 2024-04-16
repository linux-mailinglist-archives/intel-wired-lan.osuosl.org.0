Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 766E98A7952
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Apr 2024 01:46:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6FE224054A;
	Tue, 16 Apr 2024 23:46:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OYYvoCVXmzrB; Tue, 16 Apr 2024 23:46:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E2F0240562
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713311205;
	bh=yU6zQIPjap/NdKI6ybbDUptu1a8FPo0wrTlH73QdMzw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=R/T+fSVzqGsP25F8j9FWnQ5+6dC6BYRQ6A5eWEojKW7Mpb26s3gN7ptRNPqQbfQ7q
	 fab/7Tn5rveE0uMrMHGGlJw4Pwwu0aVsugMoZiw90zJsqHBsQJH4mk31uN9b1dTwXa
	 20C5ITy3cEPrehXZOn8NmzAk6XmgC6JYu4saav6N3QYFdoLtLja/y8hb/k1uyM+seV
	 iGHAVpBa31v7uSFb2Ad3JAav53JQ78xpjtlKlSiCqv44UliV/Z33TNfsy2hF62xoss
	 GPlZ0JgHSFOjFohMQVCHNvq7acNjI/6oR4W9jJgxpNXEeIidNQYeC0kfV5lQ2yxGN0
	 khTm1vIDr0cRQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E2F0240562;
	Tue, 16 Apr 2024 23:46:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 595FA1BF4E7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Apr 2024 23:46:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 42BFC81959
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Apr 2024 23:46:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cR1-HNbXc16F for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Apr 2024 23:46:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 19E7A818BE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 19E7A818BE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 19E7A818BE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Apr 2024 23:46:41 +0000 (UTC)
X-CSE-ConnectionGUID: wt6/sirYS2Kt0masy1erfQ==
X-CSE-MsgGUID: HukqQ9yCSXus+XgB0DhDtg==
X-IronPort-AV: E=McAfee;i="6600,9927,11046"; a="19930825"
X-IronPort-AV: E=Sophos;i="6.07,207,1708416000"; d="scan'208";a="19930825"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2024 16:46:40 -0700
X-CSE-ConnectionGUID: Y3hETt/URomCEPm88IGpUQ==
X-CSE-MsgGUID: LCSTmhTkR/e2W0eOREYHgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,207,1708416000"; d="scan'208";a="22430737"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Apr 2024 16:46:40 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 16 Apr 2024 16:46:39 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 16 Apr 2024 16:46:39 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 16 Apr 2024 16:46:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LtO1hnSvzChxtgx253rUwhqcfb40XP1DghwjNXAiUjYhnjmg2OMPprtfy1I7CDorzzPQZUZWbMoSZYhDmalzAoCvRQJknKxQO2/woaNu70CvLqi51UvjwwU3yNFP1XfSMTV8Dxy7NTX+R4W+X/btXOM7Io3/vED0kDQoRwNv4wsJoS10BIZhEcIeId3MD+P4I8tpQcUQFB/7VTArMQcWOf2mgYuUiE+H0/0S9/DzFgOBxs62ZwlXZTv5/t8A1nUWNjsGif/Otm6iFvPzO7p0lyVFWLVahER71Ydh45MbSEAGz7sOcjgQDbtZpjBYEDGoLrIYCqMxctOv+Sckx7AAnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yU6zQIPjap/NdKI6ybbDUptu1a8FPo0wrTlH73QdMzw=;
 b=kAn7vpHAYopp7gfIQifqt/WBEuoSLzZAvbwkyfpguuXWy2izDIVk5btWfQj5Zk94Nhxlkdl0CKFaCuXpg6cUiunXRUJG6hYi5ebEoukZ3/ZFwsl7umgCdAN1ie+i853MnlNpQ6VVNFDBPzFAZkpqx0uU9WdxlYli+82nqAh2uoJBRF+PO/nA6K+KFTEx8+XNr0lOpntd4ed96PxoGuhr+bngktCYTh8TPHtBDOxAAPC+cd7yyR3ThApT85NbsWEG6Ou97uAZs8WJwZfUJmfbTwf6SpxEzBRSq7pjfVta32fEEFhChekJcrM1trQLVanUl+8sdpNHkT1VZgjdb9TcYQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by PH7PR11MB5960.namprd11.prod.outlook.com (2603:10b6:510:1e3::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.50; Tue, 16 Apr
 2024 23:46:36 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::9c80:a200:48a2:b308]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::9c80:a200:48a2:b308%4]) with mapi id 15.20.7472.025; Tue, 16 Apr 2024
 23:46:36 +0000
Message-ID: <0471f360-3305-b58e-3cd4-6bcb78f73bec@intel.com>
Date: Tue, 16 Apr 2024 16:46:33 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Karol Kolacinski <karol.kolacinski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20240412131104.322851-14-karol.kolacinski@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20240412131104.322851-14-karol.kolacinski@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0247.namprd04.prod.outlook.com
 (2603:10b6:303:88::12) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|PH7PR11MB5960:EE_
X-MS-Office365-Filtering-Correlation-Id: 4b94eb50-e237-4efe-e476-08dc5e6f73df
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Bh9dcBbFARnf4UBntt+/mZcWD2wqnjKcAWKA5DsoQS4Jf1PfFCpSIeGJ/Ri93+Cc57NMjWE8/lfzMcmAiGiyO7t1Df6/Kr06Ge/eJ/QS4/E57DVr4sgkurFk0LdpzUifZpuQ66BUy1MdWuCr1BcldcYTYTvhoSdK+IgHSKHsSIB7X6/Hbo2vjpFOZR58AzQzNdvwm7stFTP/vTog4e59z5ZZw/+AWr+ryCzRz5QxGGtgrNffQNsCL6TwBAEnHDd17koQ1ab3xMJUi0JVN6phrXKVk2txStSmn/DF/MpxpBkL3UoJr7pba5T3dkvcVwJnywna7wIqdUvO3D5HrbSEo57k3RxTurspXv76zZjhPrN0dWkj33ImwKMr+Hz7BBZntIR9UGaRpfa1YRtCDab6ojRegkHf1iVOSVP5oREtRr2kx07FREeV+H0w3t0mVLPz5PjPmegdh1z2T2iaIq4mT8cg4Q2Zi1LqoVOr0ZttRWPppN94Lgaykly8gXHB36W0Z2QJCi4C+Ae1bNL8AqaRn5OcyKKS7VY9P4Ont9HgTpQt7ohR9W1mwKYvZTqrRv0HgzHV0jLqI5Z+Rm5FJJFjOKqu6bDLU5tUHX+E/EYHJHWT2vf0SYfCyLf6PXRNrTOgBx3mzCU00+Y4FLjikOtoUzf+EoitA92RmITS7FpCl9w=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WVFWMk9wQkhxYWFYd1JZMzQyTzJYeVBoU2dvczczRTU0cklNMi82Wm9naFVu?=
 =?utf-8?B?S0FscjFaZm1CVnNVcUVYaTRYeUZ3WkFOMmFHcTNtcWlmaGxmVkZoeno2RVVt?=
 =?utf-8?B?Y2lEdUdwRndIc1hZY2N2STBsSXVCdjRoT1dPSWttY3BXQjREajJ3eTYzbDBY?=
 =?utf-8?B?ODduajNOK01sTlBJcTBOSkM4c1J1L1FhQS9FNEN5ZzFXWDdNOE9NSzV0UkZP?=
 =?utf-8?B?T3NEc1R6azdOYmJ4Vmk1NEEzWldYek13M04zWnMrM2k0TXhPa05aL0JESEcr?=
 =?utf-8?B?QVFzTUM3OUQ0YmJIUXFKckdEYk1jK29hQWs2Y3F0REFuWGlIRFBjMkF6UUw4?=
 =?utf-8?B?QnVFODUzc2pZWDQ4STNtS21WSDJRK3JGZlJGZHdlVkV0akpHS2gvSWdRcjNF?=
 =?utf-8?B?R2tKYnBQa3JrSmpWd0xKcGFKQVp4dzBIRGlHWkZaeGpMRHdKd1JTbk1VMUND?=
 =?utf-8?B?SFcrVVlzdkl1NGtFQXRRRmNBWURYRTc4cGcrU25tL0tNWmFzakU0K2dqemEy?=
 =?utf-8?B?ZEZyNkwvVThsTTJocXpqMlcxNDJoOGRKRXZoVnBMTG56TTNuS2djc21BcFBx?=
 =?utf-8?B?SE1FUjdWelNRc01lamRWejBreHdvakZ1YXpMdEJ4VG9XRTQrd0tTaVczUDZj?=
 =?utf-8?B?UGdncldsb05wWG56ZWQvTm01Rk5UemNBYkcxeDgwSUw5REVnR2tXK3BDSEdW?=
 =?utf-8?B?TzU4WkpqdENESXZzbXRtTk0xci9ab2hTeTcxNVFseUNzOTZMS3pucnF3SDNh?=
 =?utf-8?B?V1FYWXFOVzI3bUcxU3JpM0VqTW5CY1Q0QnM1OTR5OVJmanFRS2dtTkZ3dlJB?=
 =?utf-8?B?ZVFjYVAvYWdxQ2IydHIydjZ4eUtBVmszbkVYWVVYV1lJekIrLysvY1UzWWZ3?=
 =?utf-8?B?dDc3U1RhNU5rZk5IYkhFTUNUUUljN1pydWkrcmU3TXcwN0xtZVhJUC9Vb2xv?=
 =?utf-8?B?bENZS0E4QzRyeEh4ak9KcGhCKzFja2MrdzYySGxycXNBSDBOM1dwV3VySEdi?=
 =?utf-8?B?WWZybjZkVHkvSUwwQmtSYkVlSURpcmtoMGhQUy9laCtvZElaWEdPbXN6NUV1?=
 =?utf-8?B?WHhPNnl0T2lTZDNUY3dTUVQ0QnFxS2tWY2IwUzBNYVUyV0tzaHVMb1dPQU0z?=
 =?utf-8?B?L2N1ZUo4eTMrY0VKOUpYeHIrRHZXeXJlSXdtSm5hSnRCWVpLRUZyWUIzdWhl?=
 =?utf-8?B?QThJSmJ2Nnd5UlJpOW00SUVBK0xnNXZLKzd5TmY0dGYvOEtCYm55d3NiMk54?=
 =?utf-8?B?SkY4dXc2K09PcU5nRm13MTJwR3owbmUzVWJXYUhDV0NQbWhRRSs1YkNCelcx?=
 =?utf-8?B?am1BZmVyNGV0SCtvZktMcVBJK3lRM0twNWtTQ0hacjBwczgvMGhORHBSVUV2?=
 =?utf-8?B?bVdRUmJzL0d6by95VkdkanRVRFdMUDZRaktCbHRmNlJqdjhyenBuR1BSSTNy?=
 =?utf-8?B?U21uakg3K2tRVWJkTkFiVnJQTERJekxOZlVpMFV2K0x3UVNPbzMyeVBER2pH?=
 =?utf-8?B?K3hsL0EzTGpVbWV0NlY1TEt5YnRhc1dCb2tTVUpOSDlnTmQ4a1ZKckJZWFZt?=
 =?utf-8?B?MXZXVXNNdWc3MmNWS053eDBvc2NQSUFMQy9FcFEzV2FKTmpDellmbXFBb2pK?=
 =?utf-8?B?UDVzems3cThHSkZxUkNDTWZZQ1BXNTNGVnp5RlJDWWZvUnZUWFQzTE04QnZs?=
 =?utf-8?B?dHRwSm5CTzQ0bEkvSTNaOVp1VERFdWZsWHl1ZzBmYW0rQ2FGeFVEMjd6enBB?=
 =?utf-8?B?ZVplaDU1cUZpN05Qd1VmY1VhT1RjeXlnZ0haMDR5T3JyZHQvZ0Z5M2JDVzJO?=
 =?utf-8?B?b2w4Vks5cmYrUnB6YkZaSUdqdFEvbU1oV1lydUZOZGw5YnA3ODBzUkdXL0c4?=
 =?utf-8?B?NzdHZy9ubEp4cTFkNXdXUUlNQktHa3RuN09BZTBXR1VRc0hhYnNxdGgyUlp3?=
 =?utf-8?B?ZGJJczE4QWJRRmRZVHc4OUl3bkR6clJiWSszbkw0QmhTRkZ5UXcyTnJRRUpU?=
 =?utf-8?B?aGE3WlpHZDJYWE9Ia2hzMFZ6SUMzeWdGNEVaZlJpQTBwQUxkaWRPcjNMMnRT?=
 =?utf-8?B?Y3hzUGV4bjAxYmdJSUIzYVZsdE9GRGNYQzlWWFhJbWdiaEJUcmJKRVdXQ0Jz?=
 =?utf-8?B?OHpwckl1ajg5bHFjWU9ET0hEYXoxQ2ZYT2Z3QnhIdHd4Ukh2S1hGWEowNFlo?=
 =?utf-8?B?RlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b94eb50-e237-4efe-e476-08dc5e6f73df
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Apr 2024 23:46:36.0025 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: x3O0WMUJNxjXK+GPzexsmMn5LeReStDwAzOaLbB+avkwXrTL4juWsIq/dvEGMDtUGQltNfc4tmnVPTlQt7TOX2zl7pZr+qXJojh88tCg+uk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5960
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713311203; x=1744847203;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fdq+GEMa/XOwnVr0MPQ87H89YWt5xrFmCZVnS6SGLjk=;
 b=BOno4vEBr1IueNdmlvt5LuLsWu3cbGGX/oM/WF1KeeHvr1bi4ykJBZPR
 7Z5eeKGXunRn/hqIgwg23WMh8DLrUzNKfucxx1bqzwZVIz2TbjxnngLph
 yUOoy4wwa0LprFtr4NfkO+MAgHjro0FLThiW93nLE8dPrVWc0q+kHc94r
 ro7jMLKYg+mF/C7NUK9m3tKmRjTfPak6EQ++cGqlI0oS6iSheL8Gw+5+J
 Xl3S6nShd8iH6k4dN47/r/vmPsapHsGQLlEImtYGFc0GZ8WJNruN9Y8yw
 pchprcfBV3sK4LWwewJaKt/KeLTfPWRPWS6jxFLfYFO+QCeVi/beotMMH
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=BOno4vEB
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v8 iwl-next 00/12] Introduce ETH56G
 PHY model for E825C products
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
Cc: netdev@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 4/12/2024 6:06 AM, Karol Kolacinski wrote:
> E825C products have a different PHY model than E822, E823 and E810 products.
> This PHY is ETH56G and its support is necessary to have functional PTP stack
> for E825C products.

Can you clean up the new kernel-doc (-Wall) issues that these patches 
are introducing?

Thanks,
Tony
