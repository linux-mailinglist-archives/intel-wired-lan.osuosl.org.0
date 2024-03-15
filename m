Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 093E587C8F6
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Mar 2024 08:22:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5FC7B41706;
	Fri, 15 Mar 2024 07:22:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ge-8NW2yhQdf; Fri, 15 Mar 2024 07:22:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8A2124042A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710487362;
	bh=+RwzC5vNI/qEDXgvuvSQcev3K5/uRHqHVYOob2S9pE0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5SWTuY6STzvaFh29VTnGvt1UibATyrjq+L2MrM8ieG0TBChd2hm5MbS866lV7RmO1
	 WrVGFWz/QetVpIpiIixB9aCELiBj/R32rpUTmcLBIU9tBtpon3ZitJHlcbpAhRoxv8
	 e1I7WTSkMa5GkVttSG1KvaJwaVwynReiVSp9QSUkpFwNdKkWMjZhqgN/dQp8sf/V0r
	 DR7/XF+hXmSvf0xNtfTvBGuTg/qQ3aJ9Hx/moGqpk1AIgt1IQyJn1SgJsgzSyapXTR
	 gQi5Zd17D7F3a1czKDwq4+hPSfSWsc7E8nIVtdfg3S57B85DfNtb4XRkCwYvjVd1kD
	 e1paIrXpdFu5g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8A2124042A;
	Fri, 15 Mar 2024 07:22:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D03B31BF21A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Mar 2024 07:22:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B97414154B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Mar 2024 07:22:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JRZtEpOQjY3m for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Mar 2024 07:22:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A5E7441528
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A5E7441528
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A5E7441528
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Mar 2024 07:22:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11013"; a="27814267"
X-IronPort-AV: E=Sophos;i="6.07,127,1708416000"; d="scan'208";a="27814267"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2024 00:22:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,127,1708416000"; d="scan'208";a="43605714"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Mar 2024 00:22:37 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 15 Mar 2024 00:22:36 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 15 Mar 2024 00:22:36 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 15 Mar 2024 00:22:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LNp2acbP1LQM5OR+TTwI5nA4UqwouhJzublhLiQuNi3UwDLIkeUNeeLMSeMr5vJuX+jPtKNiKq0J1WJBkvfr09cAg6xS5es8ng7lF+nzagQBejXEX+vwKPmxRwxPR/K+QB/d3YzL/DXGrrf0Di+jDgICGRFFnpGFtvrAx9B/TYWt+rWv58/ZTmY36tCgIYGfHwSnA5Li+x7p5DWpP9/n68ATKpxcvskc+iJ2+nGI0mpLsaija2co+VYgq8h0C7msF5GvNmqzpoJcuEIYWNerGe76QAo4ptSI6vVC4LIg4DY0uOjeW5XRHR4CgZN+oI3+zuf6xmStRq74QEGBQlhCmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+RwzC5vNI/qEDXgvuvSQcev3K5/uRHqHVYOob2S9pE0=;
 b=TVa9+9E66LdsIR3jC6cChWtM2SwPj6LbRz0q0g8mY7L4dIL+D8BL4sDmcn/nuxKHeSeDZCuYGoYTI5zizAfQhERvPWRFuWJE8cRlpa+dvJJQBXLzKgljPc2UroYXgPEPN60iCNMacVCo0cqutawHRuokRBHYJpDaGJn34MQMDQw4eO2BLs2RJCjnBP0eczGYGPOP0hTamcRnyuk5MPBMJ+a755ueLDD9Vx4/T0uAepr2Fm4ciliFBKkjCbl8yI4mq+UcZikBmUiX0ozdsWd4cN/8QMcGYwQhAhVFPh/CL//v9UUbugtixmtmm6BsZenmPUhS4s6K9RflOf3YbsKFog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by DS0PR11MB7530.namprd11.prod.outlook.com (2603:10b6:8:146::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.17; Fri, 15 Mar
 2024 07:22:34 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::618b:b1ee:1f99:76ea]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::618b:b1ee:1f99:76ea%5]) with mapi id 15.20.7386.015; Fri, 15 Mar 2024
 07:22:34 +0000
Message-ID: <a52cfb3e-dae5-4f23-8625-2e489281f0e8@intel.com>
Date: Fri, 15 Mar 2024 08:22:28 +0100
User-Agent: Mozilla Thunderbird
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
References: <20240313-igc_txts_comment-v1-1-4e8438739323@linutronix.de>
 <d87f0752-a7ea-45b6-9a79-aac0c6cac882@intel.com>
 <20240314103545.Ljj-g-iS@linutronix.de>
Content-Language: en-US
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20240314103545.Ljj-g-iS@linutronix.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: WA2P291CA0017.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1e::17) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|DS0PR11MB7530:EE_
X-MS-Office365-Filtering-Correlation-Id: 8e4e9727-91b2-4e25-3c5d-08dc44c0aeea
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: RmIq+YjPTNGvpZ/b2LjSH4pmbZiHw79GpXdf7PMCeWi63SavyVUw6ScGMinlL8qRQyZdA9L4alNkFqEY7TkTmDNVr9wOpo3baWVo5mNSrgSffsE4UM/yWCe3UeM5ro8TDbpCQcDDy1BeetDM/PV56dJA3WTSuVBv9LafgRJzNKwUA7bto5oZcwMYM8UJRTxu9pNi16VybkDAqmB1RVQi8MSwwy05ViU169olAj6IzA/2N4srQdR8tcVpLTscYUZU1zHdxjl6fwGAIraaWT48UAYhieBMGzXIOTquZpSnND3oZV2CHqskeWMQrAxjs4icDx2Mkrfi19IiR74cjbVDHLpm2+yYUBQLsxAxAXa4zGqGQTDD1CYmksDKV6APlvwmIbT0IwSubxAZCE3RTPiLpZkCqkqsUwzzmbev3JaLnES4MyfnnfCPyy44eZiU6f5PYlR8dWlFyiAA8iXfoou2DQSZSlavZaXEbI2HEUP4BamwVN9V4eRUhdlYhyGXhd8463wmsRp62HEKqyBhZOqmjSQfsa+dhmleEgoE4n227K9xtNMDGGj9qJW+yKzaqG+Lz/U4A8JCf/HNd/pr1WsjJMziU0TvhJ/GZZ0z50330qFTeeZukFpMIgElf73DKDa28QXmVRbSP/0+6rnx3GX3V63vAjn8sxqVeC7EZb88CA0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MFBmbndnamdCWTlQdjM0K3JoWEI0VjBKdVF0MnZjeUwwYWk0dlNMK2RuNExL?=
 =?utf-8?B?dWRxNWV1M3lBT0VxbUxjOHZ1WnNpcm81TGlDaTF3WGV1RWJDdC9CUDVmdzU5?=
 =?utf-8?B?V1N4Wmc5WG5lZ1BtNWlMS0pLZVVIQlJsVFQyRjVLZlYrNEk5VHFYT0JSZ0VT?=
 =?utf-8?B?bXM2OFcwVWVHTGJNRjNKS3VPcG4vZENzUjhaa0plVTI0WkF5Z3puQlMvZDhO?=
 =?utf-8?B?T1pobmE3U2w3WW8vbnBnbkZSQU1XUUhBVDB4aElQdjM5akNOallCd1RNNFFu?=
 =?utf-8?B?RytrdTYxM2J0VmxVVTNxNVVtbzFkd1BJc2NrdExuR1UwZnJnZnoyZW45eUlF?=
 =?utf-8?B?eXl1MHpsR1VjaWJDbE9MV0hEQkRaenhwTXFYeDczeDM0Z2VPM0dKeHBudkFI?=
 =?utf-8?B?eFpYbm5ZSEhyTEtDcTVGcGxkMUsyenJyd0sxbEQ4dFZqa29YSWQwSXNUU0ox?=
 =?utf-8?B?Z3gyVStDUjR6SjBxbmZqejFqbktaT003clRSR0tSOEgxdzJLT1J1Tm1ad2Fy?=
 =?utf-8?B?eUp0V3dHVVlRMHoyNGdYZi80TVZmTnpiamIreXJWVHBBOXFEcHFjblF2ZS9S?=
 =?utf-8?B?KzdsdjhPcmtiVGRPRzRnMHhiVVk4YUxnTXU4bDlLNk41ZjFkUGdTKzM5aGQr?=
 =?utf-8?B?eWpmOVMvMVptVnFCQThCWjFrSGx1UHlGcUkrQWszTURRV05ya28wbGNNbmd4?=
 =?utf-8?B?SXRVNFRXaGZOWjNkTzVOdXFaT0lGR2JUOWVBS1RpcGc1cU45SHBBcXY5c1dv?=
 =?utf-8?B?TjQ1UDR3aWVCd3hyRjlkL2tSNzlZR0wzZXMvS0Vlb2YwNGRiZFJSTVVuVmZv?=
 =?utf-8?B?RklkL1RiSkZCZm9EVTFhOUVYVERHQkl6TGN5Y0Z3MCtuVWtTOXY2L3IrUnpB?=
 =?utf-8?B?UWlMTzdMTWJBY0U2Sk5pNEFjRHl6ZXFWajVPbEJHRUswUjRXbVk0MlpUelFr?=
 =?utf-8?B?QXVwV3crUTIxY1NXaW10RmdMcTJoRFdYenVVdU95ZU1Vd24wTmRpOThOUDZZ?=
 =?utf-8?B?aWpZVHJxSnVWWmhNTzRFM3VtbnJjRnBVbFJ5cWE2d0hRNE94QUh2ck4zcHow?=
 =?utf-8?B?UW9PcE5hSitnUjhVd2syekplYXZ6dFJJOWwyTEIwcnZRU3FVUXQxMWZodUlT?=
 =?utf-8?B?dXJwOE5JSGMrcHJNV3VYaG4xaVNjRjNZV0R5b1FIQmx5ZlU3SmNmMHNUK2pU?=
 =?utf-8?B?V3lNdmNHMHMwK3V4TE1HVlBkZjJTaWZyNFd6c2hGbENVdGp3NGNGSWN4RnJy?=
 =?utf-8?B?ZGZYcm5kQkt0bnY0b2M0bTJjcUJza05ZekdoclZzTEJXZkswaVR5ZXA3aUky?=
 =?utf-8?B?THVWdFZCYmFJdFR0RU5oNVNvR1RNbk8xWk93ZTZUQ29oL1V5WGRLL0NEVDFa?=
 =?utf-8?B?aUVrZFlraC9kMEdYbkZVazNzaFRzMXZiWXRkUVlIaHBVQXIxbWV4bEVISDQ4?=
 =?utf-8?B?K290Y3BteXhWODgwcGE2ZmJFa0ZLTFQ4Ymd5UGdBMUo0aVZNSUM0OVFLU0xx?=
 =?utf-8?B?SjA5dFFLWmxNTjdpTS9ER0VmTmNsSDExdEl2VEpBdGFiOWpyaTNhTklXQVRl?=
 =?utf-8?B?cGJQOXdDVzZSNzFaN3J5OGlvM01DSDJaT1pKb0EwM21nb1krcHA3OWJSU3Q4?=
 =?utf-8?B?TGlnVnB6SXBZeUZ3aGV6aVNLTG94bytrcG5Cby9JWFV3aDlIbmp4V3N5RHkz?=
 =?utf-8?B?RjJqTWMzb1Y1aTZxZHBBS3U3UWxFcjMwSlNFMS9ORW5NeXFCWnpJU2cyd1dn?=
 =?utf-8?B?b0JGQWRVL0h4RndmMnhmaWRSRVhqMUZDT0l3a0FFYjhLRndYNmY3SXhsUUhs?=
 =?utf-8?B?a2lqY2VmVit5VkVTZk96SXk1U1F5R3ZzZlpUWE5IWTdxUnJlK24xdzRETTRO?=
 =?utf-8?B?RUt3bjV2QjZqTGN6MGdkeVFMNDAzWk5NekJ0K3pYU2VicVovZGhMMThJdGJQ?=
 =?utf-8?B?ZDVRdnR1cUlnNXAxcFBTMmtlL2FCb2ErdVNZZW5uTGRwT2VzVjA0SHlmV0Jt?=
 =?utf-8?B?VWg5U0RhN3JPRWozWlBPY0J3d1N2UU9RejRuWUdDQnl4UitteC9PNmVFMmhr?=
 =?utf-8?B?YkFEL3F1VXJuWDlMV3hFOWVXU082ZjhWYVVyRHBabHVKQzZFTjNXaldxZ3Z3?=
 =?utf-8?B?Ukh4VzdMbG1EcEhFajhBMWdEbFpNM3dDcW5qTEVnZWVSYjluTnV6eWpWcm40?=
 =?utf-8?B?V0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8e4e9727-91b2-4e25-3c5d-08dc44c0aeea
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Mar 2024 07:22:34.0062 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Wq8EToJgp/We4lhTRuZY0uZrqm8qFISzAgOZWyNfRa0Gv7wSaXj3WU4XDustkg8AkdoDfyFrrBWh6q4DAkd/DmKS7xsrMkkE6/bR1aVdJUs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7530
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710487359; x=1742023359;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5Z5+YtKomzlNWDmiIdg0lO0RvT1nj0Zt7mLyigMAbMQ=;
 b=SbvE5SvNKcURayKtLLGF1Gp3R16MYhYanB69pZs11QiiV6F8ezrs2vvu
 EQ6ur6gr5OaihmNlunHnfWbUiqSf5DoqA/fS/QjCgBIGW1UelnWMvJ9ZU
 tFqj3ujT+uUq/d5zpcQa8GEepaTsDfYVUv7ng27d3u0dyEII6VBmTAM6K
 eniZJt54tEjoj7JikGsICXUH49AiuM2WFJ1GIdzA1/GgUFRS3u4z05JLN
 OrvPwh4i1K4ifCjYEcT0YnT01qJE3Jt/2WBblyEQPpbQ4B3Bpaq1gJh9w
 XkfKWLEZTuNn71DRgw7Bjahb9yA82tMWecjmC6gQFQJ/p6qOoMiHklTrx
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=SbvE5SvN
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] igc: Remove stale comment
 about Tx timestamping
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
Cc: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>, Vladimir
 Oltean <vladimir.oltean@nxp.com>, Kurt Kanzenbach <kurt@linutronix.de>,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 3/14/24 11:35, Sebastian Andrzej Siewior wrote:
> On 2024-03-14 11:21:38 [+0100], Przemek Kitszel wrote:
>> On 3/13/24 14:03, Kurt Kanzenbach wrote:
>>> The initial igc Tx timestamping implementation used only one register for
>>> retrieving Tx timestamps. Commit 3ed247e78911 ("igc: Add support for
>>> multiple in-flight TX timestamps") added support for utilizing all four of
>>> them e.g., for multiple domain support. Remove the stale comment/FIXME.
>>>
>>> Fixes: 3ed247e78911 ("igc: Add support for multiple in-flight TX timestamps")
>>
>> I would remove fixes tag (but keep the mention in commit msg).
>> And I would also target it to iwl-next when the window will open.
>>
>> Rationale: it's really not a fix.
> 
> It is a fix as it removes something that is not accurate. But it only
> changes a comment so it has not outcome in the binary. I think what you
> mean is that you wish that it will not be backported stable. Still
> people reading the code of a v6.6 kernel might get confused.
> 
> Sebastian
> 

You are right that this will cause no harm to backport it as is too,
I'm fine with that after a second though, so:

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
