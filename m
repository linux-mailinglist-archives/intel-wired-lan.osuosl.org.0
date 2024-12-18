Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 47C8A9F69B3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Dec 2024 16:14:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EB10984F77;
	Wed, 18 Dec 2024 15:14:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id s8TPMnTLowqY; Wed, 18 Dec 2024 15:14:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3A11D84F78
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734534855;
	bh=+HCDnTSolRIK4wu0aEyNe8f6a+1kz+VxDvdgkTqpe74=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=B1NrFmjXSYZ5lVqgEu6byYRbE9oQfIkWFyy8lHnvxn2V4xi2ahessEcfuRrTQnoaB
	 iY/am2tiO6HcH2cUCGad39SWZEgIZ9f2MpISZspw2WPzqHg8tXtKT6UGhSm73FzzmW
	 4HYQX2rRzGYPQH2YVzNzIXM4TTnWs7ZW16BOwqWP9d086PnWYc+wuag2TmzPhn+3ub
	 qbWbn2pgzUa890L3TDR3r8KDHnDdUhczRx9HfN/nXV9Ptyl7nqOg39kPAn5EEnOR8n
	 mReMDRjmGY45kYEvXR8BvbOmg9nMgs4Ndzjq1s14DaGLUtINkhCRISMAde5tKDxXlN
	 mzT2gtaZmzAfQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3A11D84F78;
	Wed, 18 Dec 2024 15:14:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 0DC0CC0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 15:14:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E854C42498
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 15:14:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Go2hVh_Yl8qv for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Dec 2024 15:14:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0D5254248F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0D5254248F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0D5254248F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 15:14:11 +0000 (UTC)
X-CSE-ConnectionGUID: TqThSfy6T06Chdw4yr3bMg==
X-CSE-MsgGUID: xm/88GcTQ5+6nXnlQypoGw==
X-IronPort-AV: E=McAfee;i="6700,10204,11290"; a="34341459"
X-IronPort-AV: E=Sophos;i="6.12,244,1728975600"; d="scan'208";a="34341459"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2024 07:14:11 -0800
X-CSE-ConnectionGUID: qWBbevMNSFii1jMlUTWuBg==
X-CSE-MsgGUID: YTS45L3RSraP/3emz74n8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="135223575"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Dec 2024 07:14:11 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 18 Dec 2024 07:14:10 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 18 Dec 2024 07:14:10 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 18 Dec 2024 07:14:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pIgt0mYHd700MgU/QvT9hGAp+oabWxcEA3dFNxiKsQPVPTnjz5TeyD2efbbxof3t+W0ZG6LpI/B43sYel1piBz5k32IvR65iRDWP8EKx+404xrKWO9n22hyxRHME84rqb4ocaDB/9iqMIracn9RkYqwKpiJB/JZwXrPuUGOseJmMWP/05wJRk4bgDjLwPdN2OYgiQi50O4DO40abVdLGBgMmB2OZByK0Ja4VGBYOFZHj2ru+f7F9sEI+HvaYl/nWttcs6OwXaODUJpJGXFrepV5xhwNDWbwF2chh0I6f5SOEwENEDhXjgxEuITXAJF/KJOwdmgWZVp1pbjTvZyUAVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+HCDnTSolRIK4wu0aEyNe8f6a+1kz+VxDvdgkTqpe74=;
 b=LFH3GXBXS541eXoEp+BCMbzCB0yWwqEMqkQRdlt3yYtTSm4sPzsw89YxEwiSkz5ZM13zHl5hV43PvKVeYQsSP5Huj1J+dU77TTTP36syZLQLQr83K1/y2itGPLFPxCzs81URVeWASqp0z+7SPRp6pw324NZYJ7XIsB2IPDfVoxIBaUF3OHKR2W6tgpwHTR0I0dBrBmUtjcyh2puHJsy+OG3t8sXqysqBzOndofllLvc++Yxjw0vIV8AbmiMoIU/spsHjUWRyyOLETptUzfPCxIbZIMnCNIyJFmXlofdU9TaIB6BTyJqezr6V4Wj6SvVWIJ+wIlOvHvoth5aMqXfc2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by IA1PR11MB6220.namprd11.prod.outlook.com (2603:10b6:208:3e8::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8251.21; Wed, 18 Dec
 2024 15:13:52 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%4]) with mapi id 15.20.8272.013; Wed, 18 Dec 2024
 15:13:52 +0000
Message-ID: <1102746b-58a8-44fb-98a9-a96db1096fe4@intel.com>
Date: Wed, 18 Dec 2024 16:13:22 +0100
User-Agent: Mozilla Thunderbird
To: Emil Tantilov <emil.s.tantilov@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <larysa.zaremba@intel.com>, <decot@google.com>, <willemb@google.com>,
 <anthony.l.nguyen@intel.com>, <davem@davemloft.net>, <edumazet@google.com>,
 <kuba@kernel.org>, <pabeni@redhat.com>
References: <20241218014417.3786-1-emil.s.tantilov@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <20241218014417.3786-1-emil.s.tantilov@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR07CA0159.eurprd07.prod.outlook.com
 (2603:10a6:802:16::46) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|IA1PR11MB6220:EE_
X-MS-Office365-Filtering-Correlation-Id: 89d1c697-06e9-4641-34f2-08dd1f7694d9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?a091OEZEa0x2NUJCeXRzaG5UaTlOcWNDYS93d0Ewa3hsWWJNVlJXNEhzQWVQ?=
 =?utf-8?B?b0hFTWVGa1RpWXVBU1p5UlZ3dGlRdndCTnV4RE0zVDNueDAzYlQ4ZXZ0NXlW?=
 =?utf-8?B?Mm12ODN5OVhPYkRmL1ppalQ2dk9mTXljK2VqOXlZR2ZBZ3VPaFdCNlBTc2VL?=
 =?utf-8?B?QkgxMUUxMnNOMU1XelY1K1ZiZklPSmZvelJtVmdxOUtRbFV2MWlOTEVrcmJI?=
 =?utf-8?B?ZktCR1EyT1JOV2g2cXVjc3VqZkpYOERrRXdIYzlxVUVSZFo0cEJkU2VkRmt6?=
 =?utf-8?B?THA2ckkzaXFNS0lYRlZ3R0lhem9GZHl6V0NHWi83N1dBbUhxMlY1OXh1bUIr?=
 =?utf-8?B?b1htSkIxL24wRytZaFF5R1pINmNNTFhyOHRJZE15Q0xFNmJRWEdvM1FYcnVF?=
 =?utf-8?B?QjVGSUNZanJrK3FBYlVMMGlLdEh1UGd4bVlCUDJ1a2RyVVlCdWV0WThHRkp1?=
 =?utf-8?B?K1FQenJ1RnhoQkdJT2p1aTM0Ri9VSjJOV1hZRkU1K3FmbndXWVBBYWNqK1NM?=
 =?utf-8?B?RUQrMjNrZXhtd1RvN1dGMWc2M0g1WWFreDIwM204WlREenNHeVliM0xhK05r?=
 =?utf-8?B?UTlJaFB6MUFiZjRVMWJ4MGZ6WHdWUjRCOTFoUjdQUWdvOVpzQUNFVDQ5eVJa?=
 =?utf-8?B?aWJqSm1HZUE4QTNlWk8vYjRLL1pZTSt6cjBNaGtvVmpQdnVzdHFjalVmcElQ?=
 =?utf-8?B?VUxDZ1dHb01PSnhYcmMxNmUwQUY2cVUxVEcwdnZCRWlNcGx6UC9mRHVoelVx?=
 =?utf-8?B?eE1WUUFqYU5MQXpSdFNvdGVqKzBUVXlLNHAyU1BUMEtHNXMwZEpLcWVxMjhT?=
 =?utf-8?B?MFoyZGhvem5OYWh1S1pRWWtWZ3BXMThReEsrcFVESklLck5jZzB1djBoZHc3?=
 =?utf-8?B?Yk5mNnAydWkvQkx5Skh4STdsSnk3OG9WYkVHK3VLTFNVQkZmTVpzc0JnSnJX?=
 =?utf-8?B?QnRQSHoxWlZRM3U5YWg5YkNoU0FNT0hqT3RaTmtsdEtSYXRLTzQ4bFVLMkZV?=
 =?utf-8?B?MW9oQ1IxK1daZlJKOVREMWZ3OXdHVE4ySFArQ0tSWHVmOFhFL1Y1alVwNG00?=
 =?utf-8?B?WW9LYVRFR21SdlRnN3FnY1pxVmJ2OGNCdW90RmhpTVk3a3NlTm5RdENHVXNU?=
 =?utf-8?B?RzFKVmY5NFgrTm0wZ3ZZcmpGeVFickhQWkNsQnR3eHV6UENTaVd6TGcwVFlr?=
 =?utf-8?B?Z2pqQ3oxaE5CYUdEc0xqS2NiVENtY2MvS2oxUjZMWThnekQ4eFd3UzRVcVVv?=
 =?utf-8?B?MFVJcFI5Qm5kQitqZmxsMEJpTU1vbHlFZTMzVFBPUHZhbjFKSXBoSG5YRWpn?=
 =?utf-8?B?MzNNMWw4WldtM2p4VHp4N0RObHR5UXV6OENFb3BWVzFjZGxBdjlsdUlKZWE0?=
 =?utf-8?B?Z0ZEVkQxT2c2ZnJkYXFiT0RCK0lvRUlKMElBUzlXdjAzOGZYVlE2cUY0bHky?=
 =?utf-8?B?MnRoNC9FVG9PM0NNMm1XanZkNkxxVVFNeFhwUzBtbHovUFlaN3J3b0VEaWMz?=
 =?utf-8?B?M0Jhb2k3RFFKdnlMVkxqaFhkWWtLaldUMUdOY0E1eDNKRE9xTTk5a1l2aXpN?=
 =?utf-8?B?Zkd3V3ZDVk1DYmhndjloVkJPalhGYzh3V21CcXMxckZaSEl0dC95eCt0cjdy?=
 =?utf-8?B?cEQ3L0x2VWo3bTAyU0hvaEVJSStTSEYzb2FRNDlOOXh0cnk4WGR1SUZSN3hu?=
 =?utf-8?B?S0hDWE5Qdko2MmhqNWZ0L1prMTl1S3N2U3hQZ0Z2cGwwVGp6WisyU2dkV1hW?=
 =?utf-8?B?ZXhYSGw3cTl4UWJxeG5GNWp0b25rc0MrUnhzM3F4d0tkMzc4N0MvZUlnZ3ll?=
 =?utf-8?B?eHA4VDhCc2hjODZYR2hCL2NNSU51azc0KzlvcHlmWGZQdmxnMjhzMkMwaS9X?=
 =?utf-8?Q?xroWnJbFfWR0e?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MWRMYUJkUVRNeGp0SmNsWEtCYzU4MEhvM0wyVVNVTWJmWVBGczA5aTMzb1N4?=
 =?utf-8?B?WVh3WTlsb3Raem5mL0xpa2RiMUQ1K2lvUk5XTUUwMzczRjQ4ZU9SYWJ5Tkxz?=
 =?utf-8?B?UjliL0ZheitFREQ0RU5JR2pMRmRCbGU2Wk5zM0Fhd1dHK1pQeEtab1lURnBZ?=
 =?utf-8?B?YVI3aFJ1ZTFkWEUrK2ROYVk1Slp4VVNibjB6bW9GUkxzVHlzVWlrK3dpSlpo?=
 =?utf-8?B?MURoK2cyZTFFUmlDZEdkUlJpWWh1aUlVYUcrM3hGU3dDNU1IMXd0MEt1R2V1?=
 =?utf-8?B?TkxSMENaa25pRll6Vy9oY2MzR0w1VU1oQVNsSUloS2t3RXFxbXp4bVVPWmht?=
 =?utf-8?B?c2ppNnVVWFlTZnFISjF6aDd4Wi9MSDR5NUdHYkoxZTNPNEY3RkkraHlQZDc1?=
 =?utf-8?B?NFNJSjlyeFBRdUs2VHVZcTZrSllVWjVHaGx5TURGSEZxVnpRREtVaXV1Q3VW?=
 =?utf-8?B?eUVOcEh0NzBDRVBJWHRGRlUxUURuakVnb0doMmtHMUY3YjFMd0J4R3ZjbzVV?=
 =?utf-8?B?RnhURmlrTUt0NzRwYS8xTjgzWHh1SEdVUldOV0g5KzBJVjlPNW5JYi9sR2N4?=
 =?utf-8?B?NE5QbjZqbzRmUDBWKzZ1Q2RubFFMTU1wYTRmN1ZLc01YZzZ6TlI5c3FUUDd5?=
 =?utf-8?B?SXJ3VUtNRS80ZXJFbXV4VUpvQldENkoyZlZQeHV5akRjVXpWN1ZLMUplQVcy?=
 =?utf-8?B?N0NhUmJMcmVvU1kxMnFTdmpaYkd1Z20vRGZuRC84T2E5bnJwZFM0L3haRE42?=
 =?utf-8?B?L0NuVzBudEhWRS9rNG1iak5Wa0xBUi9hTk13aGlRYmhWaS81UnhFQURvWjY3?=
 =?utf-8?B?dmxhN3VBSTloR2FkdzRzZitpeUpnZmxvQ29JS3VaMlpVSW9HeFBVRnUvaVYw?=
 =?utf-8?B?WWNNYnV5M2kwWHJLSkliZ1ljdFhveElGQkxaSVZUaktxZXdFQS8xblZqd2N2?=
 =?utf-8?B?dG1RSTA4MnZXNFdQeVhvRFRNV0ZVTWhpdWFNS1Q0WUI5cEhXeWFGZm5ra3Bo?=
 =?utf-8?B?RGlLUDFDazVhMmpFWWJEUGpoU0plRFNweUNVeE94SkU4N1RQK2psLy9hSmR0?=
 =?utf-8?B?R3VuV3R4R3Njc0wyMjZOTU0xYXp2YlNyWE1XdVJlbGx3NU9oL0IwQ2F2Tndt?=
 =?utf-8?B?empWbDRCeFlpWTVvUW5Xdkl5QlRRMUR0Mm9jQTVPT2JRKzlta1JLMjFHTGxh?=
 =?utf-8?B?eHAvTC8xRFVyVkZnVEJITEtsMGZSMUZEeXdRTmN1NllCRk11VnZTUFI0clpx?=
 =?utf-8?B?NjUvYk5hejhrU1RvWW9pR25qU2JybXFrTml1SWZ0Y2htM2UwaDRGM1RSdjQ5?=
 =?utf-8?B?eHJiTEczd1ZReHhHZ3d4NnR2OTVtTnNMdjBRL01yUlh6Vk94cFIvRzFxMWNy?=
 =?utf-8?B?K2pReEtBMUJ2dERMV1VMamU3Y1FxS1FoRVZGTFl6OVZYMGl1UnhsZXhHRG13?=
 =?utf-8?B?RHNIWDJTdjI0Q2lzSE5hYWsvRHcyMGZWRmdETWVnZlh0WVkwT0t2Yy9KelRC?=
 =?utf-8?B?QXZDVGtJU05iUW02N1VHVzlCaTBTcndia0VOUGxqMXZDbXdVenNPQlo0YWJy?=
 =?utf-8?B?M2hmZVJxcFkvOGc3N05md3liQUJrZFZHVDhQNnN1UUtqZFRRRTlhMTNJYlky?=
 =?utf-8?B?ajBJUEo1bDg4NjdLS2dyUWdYUlZTTnN2WHF4VGRGVEZwYVdOUHdBaU9KbkE4?=
 =?utf-8?B?K0RJdG1rYWtQcExGbnVYTmdVazBQTDQ5MWkzZ1kzMjBsWmc3VmR0dGVyUGlk?=
 =?utf-8?B?K1RvRG5oMmJ4bnZxQnVHeHJPeG14bjArazErbjhkakljYnorRDJNMXFNdGoz?=
 =?utf-8?B?cWkxWkVURXZNTHZvZW81OU8wNHBaYjBwcnBnOHlTYXkrU1JxamlmcndFOUox?=
 =?utf-8?B?NEI3alF6TkNpM2FKZTNxWWlwRk5UL3l6eW5Qa3JtcURLWUtjQWt1cFV3OS9m?=
 =?utf-8?B?TjVHUExZNG9LVy9EY0xadW1KMmF0WVAybHpRbjhaZkNLSmVpMGtGZlRlMENl?=
 =?utf-8?B?SlNXRFpBVFAvZjFLakROcFhxWmMwRjZiTDRpcTdzaWdONGFxS1NPc1dvbWFx?=
 =?utf-8?B?S1Y2NGFEOXpxd29LRzUzempFemh4djVYUVM0TU1wZVNxbG5wdWNncEhHTTNt?=
 =?utf-8?B?TjdqL3YyaWk0TWtpT0FTa2JsVUlSRnhVVVVvSG11dWMwY3hzLys3ckRMN0xG?=
 =?utf-8?B?MUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 89d1c697-06e9-4641-34f2-08dd1f7694d9
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Dec 2024 15:13:52.3153 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IBz6Y+sCyHT3PVKfklfQGaFZaP9lQ9Hfe4Z6u4kl+FfEngN5aDBEugEx6klfq62CJIFwjiKeN3CVG444H345WUEdWq+L1J1rrUcGVDbWtAQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6220
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734534852; x=1766070852;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WbnqYMM2lR8Y4KCHJQnKjNwlN+lP3gBrYzhe8siP1VE=;
 b=EI0hG1vFp0WP15Ip743GElR0viR7D0d1Y9BLq61gFYz77pg6ngEi/gSj
 53KezBpuDUSMeSXPCI/Y1DpLYVew4zrmZalVSlsxNMBfkQHPrYIFrDq8r
 okkQJHQ58O+hTuELkMJ9Ydezu0wZZKW/cdbEIziLfhXFJeyf347JsFn+d
 66QbtSzVjL2zxUKGEINXrLJAhiFHDUYlguecT6M5IK05lAmUVlq7Ij/tS
 diQaeLh2CToXFUYPdgjjsG47y5DC6Vb1PhWH8+uaCFQ2yXWYs26Zqj7d/
 mPlTk0rt9pR9LL8Nr/bUD+U1YiZsq/kzqkzOvgdv1e+Jal0qjpKvgC/lt
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EI0hG1vF
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: fix transaction
 timeouts on reset
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

From: Emil Tantilov <emil.s.tantilov@intel.com>
Date: Tue, 17 Dec 2024 17:44:17 -0800

> Restore the call to idpf_vc_xn_shutdown() at the beginning of
> idpf_vc_core_deinit() provided the function is not called on
> remove. In the reset path this call is needed to prevent mailbox
> transactions from timing out.
> 
> Fixes: 09d0fb5cb30e ("idpf: deinit virtchnl transaction manager after vport and vectors")
> Reviewed-by: Larysa Zaremba <larysa.zaremba@intel.com>
> Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
> ---
> Testing hints:
> echo 1 > /sys/class/net/<netif>/device/reset
> ---
>  drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> index d46c95f91b0d..0387794daf17 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> @@ -3080,9 +3080,15 @@ void idpf_vc_core_deinit(struct idpf_adapter *adapter)
>  	if (!test_bit(IDPF_VC_CORE_INIT, adapter->flags))
>  		return;
>  
> +	/* Avoid transaction timeouts when called during reset */
> +	if (!test_bit(IDPF_REMOVE_IN_PROG, adapter->flags))
> +		idpf_vc_xn_shutdown(adapter->vcxn_mngr);
> +
>  	idpf_deinit_task(adapter);
>  	idpf_intr_rel(adapter);
> -	idpf_vc_xn_shutdown(adapter->vcxn_mngr);
> +
> +	if (test_bit(IDPF_REMOVE_IN_PROG, adapter->flags))
> +		idpf_vc_xn_shutdown(adapter->vcxn_mngr);

Why test it two times...

	bool reset;

	...

	reset = test_bit(REMOVE_IN_PROG);
	if (!reset)
		vc_xn_shutdown();

	deinit_task();
	intr_rel();

	if (reset)
		vc_xn_shutdown();

BTW can't we just move that call unconditionally?

>  
>  	cancel_delayed_work_sync(&adapter->serv_task);
>  	cancel_delayed_work_sync(&adapter->mbx_task);

Thanks,
Olek
