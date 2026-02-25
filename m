Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aLUfCaDmnmkCXwQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Feb 2026 13:10:08 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 135CA197093
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Feb 2026 13:10:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 05E5141EA9;
	Wed, 25 Feb 2026 12:10:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Qtr2C-v4Wct3; Wed, 25 Feb 2026 12:10:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4FE4A41EBD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772021404;
	bh=OB4rOS0AjA86HV+adGMCj4BTgaAiBHGb8gWlLtiMQxo=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=cJBbrfszs3X150jqpA8fGjE17nNbvfxou9dxo+jQZFUSBHL0hyM+hb+3hTjfLNpTq
	 pefgyCzfoOw6V/7geSnvaRGKC82nSVXpHp7jhtd5h1F1NG5tB5k0aaJ0w425JD5Zfr
	 f+xUeUQp/TqyKrR6Fwu1nEYET4CE8nMzASTy33UL8x5qfwP/vqZUf7XsiQJC4W7eIi
	 Cz5dhky6vO5jeziM8/Bwh0uTExA9BD322Ny1Md1ge+UotF3eLE0oii8RHkbfWs4EPe
	 qXUH23DsnOEUeT/61zSg7qu41ve2srAc9YlqUVTV2n+HLwBvP9Fen7uMAcDtawCqP6
	 6EsF4T4OK+sPA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4FE4A41EBD;
	Wed, 25 Feb 2026 12:10:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 58FE824E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Feb 2026 12:10:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C3AA541EA0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Feb 2026 12:10:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IAYFij5zzioV for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Feb 2026 12:10:01 +0000 (UTC)
X-Greylist: delayed 428 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 25 Feb 2026 12:10:00 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org F04AC4072E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F04AC4072E
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F04AC4072E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Feb 2026 12:10:00 +0000 (UTC)
X-CSE-ConnectionGUID: nKqWEDCiSk2Y1TypOK4dyg==
X-CSE-MsgGUID: q1z0ZWbNQH2ZZ3uPFwqV6Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11711"; a="90471012"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="90471012"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 04:02:46 -0800
X-CSE-ConnectionGUID: ggLK5R4vQSCNmjbocgN1sA==
X-CSE-MsgGUID: dgv8ejkwRKq+wktfr+OBwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="220707313"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 04:02:45 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 04:02:43 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 25 Feb 2026 04:02:43 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.0) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 04:02:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=a5KW1eYiKcwIS4DPCQsypAmO2n6qe/8srsDEMhYia5JoelRMTM/f1ntfMYcbxYKRZ2ec+HkW2ZEE/fjTGExUzwkK2BU1yH9CYXk4UJBEPSpntpW+jfckiW/UmV/z3xjNudzbPNsIDe0Dpyt89jS3vqbERuyVfN5VahxiUtTHFVXPiFWidRa/U32YdLJ3R02rLxTC1vyV7iHO7lhL9zg1L7WSVVZDiTaqhNzy+XIqS4H/KWxjqLPLiEROsq0TYfFxJUF2Zl5M1aGwp+tHPR0Sj1Pp7A+zx84NlKCR25vDqDk7EstvUsefcBdFS3XIUuBq2rpNeq50Vzy1eDgcATNNyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OB4rOS0AjA86HV+adGMCj4BTgaAiBHGb8gWlLtiMQxo=;
 b=OvWj2LPqoVpIih88wnLTavDaBDE0ip/zn8alh7l9B8qVvJHdC1KldKh9kovHHyYgqS4ng8RrHtRIHdysDQhSSfcI9q3QeQ5wk1WFdIVXJEILPz4+oTcKZh3NxjoiGE7E1Jvz5ijAV0FLuKZmqDX71NYOQDGD6wmI5ovUEH8Mtr3+lZlBh7Xg7OxTdkdPtEUX5xitInbCOUu2jOFCODnu+1VPvdeeYvxGP9QUyF0bCLFNg+f/Xrm/nzaScKl9b1/CBMPjLMMQXmMVyEB5pIDDmPyXA6gaPfpVa0q1+zu0l+5DvyM8WZi5ESoKvIkxlS9ZneY2eFOgksQaO9EY4yjKzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by PH8PR11MB8062.namprd11.prod.outlook.com (2603:10b6:510:251::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.23; Wed, 25 Feb
 2026 12:02:41 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::8d98:e538:8d7:6311]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::8d98:e538:8d7:6311%5]) with mapi id 15.20.9632.017; Wed, 25 Feb 2026
 12:02:40 +0000
Message-ID: <7e4e207b-e839-4cfd-941b-5bec7a9ebff4@intel.com>
Date: Wed, 25 Feb 2026 13:02:35 +0100
User-Agent: Mozilla Thunderbird
To: Yury Norov <ynorov@nvidia.com>, Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, "Paolo
 Abeni" <pabeni@redhat.com>, Yury Norov <yury.norov@gmail.com>, "Rasmus
 Villemoes" <linux@rasmusvillemoes.dk>, Andrew Morton
 <akpm@linux-foundation.org>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>
CC: David Laight <david.laight.linux@gmail.com>
References: <20260225000007.255837-1-ynorov@nvidia.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20260225000007.255837-1-ynorov@nvidia.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DB8P191CA0026.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:10:130::36) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|PH8PR11MB8062:EE_
X-MS-Office365-Filtering-Correlation-Id: a3d1338f-af06-4dc2-ed71-08de7465c6b0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7416014|921020; 
X-Microsoft-Antispam-Message-Info: C6eC4VEPukiU2EXUtX9mpveYWcC6mDwGKZfvaMgb2wprYIEG0yKF7p06gG9QcVRP5d69txsxULUBnd08WGpxuZfP30O3pwijKdo9jXYqBmuv3qr49Ki+VwDYRkLx6vBQk5Y8h0eQ9OJ+h6x1buLoCIYFmqh25LrzyC1Umk+cNi7e5KltYn/gcKThQeWaSM9lpG0P5Cc1C9hyF9mK7keG/eQZzFzdmjUeWik94A7VgEedtsGKey4SR0/Q8bJheycJL209KW8Rbc8iacbUSbfij241jjA0E83jfBFUHMGS1XQiXo9LyueyFsyoUhjWbvi/oi5T8PXk53oOnEc2LLTNObkYHnW6CjLTOsbHZZod7wSpQMwp2E8VJYvkUNo8I/ELy6P4CM+kggBNu8SHFZRub3W0IgNa97E2S+zSZofIPrI1m1DyuArFupM5LerrgzgJoDvtaFYc1/W1T3LduC8Shcj1/MAOYWxcMu2lv+qC/jWeFqE31G36ZIXVvH179wsJYHVuUIof3JH9Wukd+uwGcu/4jADnf3d9TRhT2Wx6BTx11c7qgoowNIWJBi77zJmhfDLziPO6+rBKXAtmbVStuv5CObyvjbK9OxSRGcrqeFPUrhhl4J/C0PO2cl5DOOAmNGSXt9bv3udPyXHWjBf4ndowBgvNJEfgofsedwq3piEe2ZI78leywye+96afbkCLJLcsTEPoNOvgZ3j01lcsn5sS1pg3S/HQQhK6Aaj77O/r1WSvjMaOlvl/OH3wiVEAXw+D5UxjfHd2DyMJhFjdCPXznc3LHNqX6uME20r/Q8c=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7416014)(921020); DIR:OUT; SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OWZyY1krdDZBaU5sVVFIRnJRajVscHEzU0pCdmlqaWV3dFNTL1FXVys1NFpt?=
 =?utf-8?B?bDI3VmpTaWg1dXRLMzJ6dGpzSjZyaFFsUEJnNWdzMjIxZmt3bDBSODNwNEQ1?=
 =?utf-8?B?ZlBpeUtwa2huRVNZanFEWUpJMWlvZm1udWdJQ0ovMVdjMVJRak1EckVJdGNN?=
 =?utf-8?B?WlZhZ3Bib0UvQjdpeHBSRnFkbE9RZzRwbEd5NVIxNWZoNitZMUxMbVRNTUtl?=
 =?utf-8?B?dmM4N2lSWjB2MjVoc2xQNGhSa1dWeWVPcVRhMkQ5cGVnbktXRDJ0UHlUa3Zk?=
 =?utf-8?B?WEpBTkJEWWZNM2Ftd3p0Nm9EbTBrVGw2eVFnMHNCeXlFSG5STE5ibGtXMGpE?=
 =?utf-8?B?ZytnZ2pWdHVRc3IxUzhIY0FDbGIyMStSUWc3ZnE2bS95RmQ5ckd5SFRuajNX?=
 =?utf-8?B?NFgwY2FpOGZHSkpBM1ZXdU9nY3dLd0pnMG53Umx2VnZjOXUxdXZpbjhkVDE3?=
 =?utf-8?B?Y1RLcGNvYXQ2b2c0dHF6THlreVUxZHU4cENxc21Sc3JIOVNWRWhSZ1hkdmpB?=
 =?utf-8?B?bzN5YUFPKyttYXBoajZBSzhXblJYUmZ4NGVLdWgzeDhMY0J0QVgrWEEvWXZi?=
 =?utf-8?B?MXdaai84Ny9OREp6czNSR2ZLY0V2VVJMaG1hMi8yR1hTTGdOWDFLckxrdVVS?=
 =?utf-8?B?Q0V6MjhYbDVwUS9lV01CWVFQd3duTlFaQ0lnUS9vSDREa2FyNU56TW9tdVAy?=
 =?utf-8?B?OGt3ZzZGVjYxTWtoT3RWWElabEJtdkUvVUVFL00zY0xEQ0tRS1F6L0NvYm1T?=
 =?utf-8?B?YW9xVnlHZ3lFSmJ0VVd6aEJFT0g0WTJGZnhwWWhMWHFGVnRIZ093WEhlZWJM?=
 =?utf-8?B?b2pSV21xdEhJVm01aDJsVnovRnZTM1kweGs0L1Fxd2pRbmV2amlnbFdVWWhD?=
 =?utf-8?B?U2l1QWcyYTI2STVOS3NHYUo0NzFyUENrYzdjQkJXajcvdHB3Z3NHbXR0QXQw?=
 =?utf-8?B?Qk8vc0FHTC93YSt1M1FNVzdyRjM1SStVd1ZRYVZKOVRRTGVSRHdPZkUxeE1V?=
 =?utf-8?B?YlM4T0pCRy9oNElmNHMxcE4wU20wU3kwQ2RJN213RnZxTDl2WkRBYlZyU3ls?=
 =?utf-8?B?TmppUlZJVVg5WG1QejVUaVdIUDJoUldFQmwrb2R6SGZ3TS84TzMwOWlnWGJT?=
 =?utf-8?B?aHprSlFjSXM0emp2QkxHd0ZlenRsejA2VFdUeHo0MTExbTA4VGtRd0lFMzlF?=
 =?utf-8?B?VTVWMGp2OWtwWEFOTXZEVnZSR1BPZktBM1c1R0YrRXRYQmVTUXVKMVltRVkw?=
 =?utf-8?B?MUsxaGtranVSYlQxWlphRjRHMm42ck9hRHYzMi9pME90VGJpZkE4SzVhT2Rt?=
 =?utf-8?B?Ympuai8reERkUVJSMWl4Yk5pZlM4V1MxdlhUclY2WVNRNUF6NXlTc1U0aW9w?=
 =?utf-8?B?K3RlQVJFZWVSYVlZVGIxalI3SkdEMTMrS1BhSkdGRCt0VmFQR20yMDIyNkVZ?=
 =?utf-8?B?dzd2OUpUNXdzeGZzcVV2b21GdEtlS0NvWmFXZURPcERvYWFRbGVBam8zQ3VO?=
 =?utf-8?B?eUdmT1dSTzNDc2RaT2h5UDUralBFV1hCM1RjSitmNkFITDh6SzNmYVg4a0NR?=
 =?utf-8?B?SVU1RXV2blRzSUtTbHFxVjZ6SzBkcndxcXAvT3VTcUJURFIyUERyRmJlT0RN?=
 =?utf-8?B?M3dvSkFWNjc0T3hXWUdPYUlMOWlTeXhuUGVEWXRFMFo5S1RwbDEwREVOL0pt?=
 =?utf-8?B?Q3VFS3Roc2xubE9ZcDdxS2srek1vTkJDRVJsb1RNejl2VUNBTGhTY0M5TThj?=
 =?utf-8?B?bXZlYTlYUTk3ZStkZ2ZCNTBsajZwVnZtbHpSWGRkQUJJR2hBc3ppdWRMbmRB?=
 =?utf-8?B?RElRTUNhTmtsRk43anNacnV2REc3UkV1Ynh6ZXFBR1llOHBHUjZTclUvaHZx?=
 =?utf-8?B?cEtSVDVJOWkveVdDOWl0ZlJoUko5VnIrVDZqTE9SdXJIVDJwSUY5Vk12cERo?=
 =?utf-8?B?RVdZekdOdHBSOEszaCtoT1NnNXB0NnllYWV1Q3ZhM3dwb2l0UWZMd2RJamNL?=
 =?utf-8?B?cis4d042MGF6WHBFTkFiSzRuN0l2VTdML1ZFS0tVV3FQQmNCcnlqTFF4cjNx?=
 =?utf-8?B?VFhMa0N1eVlDN1pFWDZTSi8wT2JhVlMvV2JaVGJQL05COEkyNmMyTWNJTlhW?=
 =?utf-8?B?RU56NTA0Qm5udFhKUjRMM2VNaWx5Y3ZnTGpFR2tXRjYwU2ZLd1JRN3Jqd2Fo?=
 =?utf-8?B?eEdOelZGUS9jdS9hcVJON3ptTXZNcVpXT1ZyUkV4N1gvY0U5dG5yMnlvaXhi?=
 =?utf-8?B?Wlp0dDA4aytNVE9ZV3ZkK0hsckFSd2lyK1p1ZlVaWFM2dzJtRDVlQnlEbVpk?=
 =?utf-8?B?R3dKVXBXRTVsbUVjcXJ5K21Udk5qUXJUUmFJU1ExM1dQeERidVQ1cDJsWFF6?=
 =?utf-8?Q?aH4AlbW76pEOH0cc=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a3d1338f-af06-4dc2-ed71-08de7465c6b0
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2026 12:02:40.8739 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1QeCKo/y6FAAhAoope1GwZ0TqIrcDG+1f8zZDnXAri7d1uq07nOJZQYfdfdAvRmIAm+n8cp5RpP9k3CInbUSxz2VwP50n5vvH0vQzN/NHME=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8062
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772021401; x=1803557401;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=TUTO/8ChlOQ+NdrWaod1wvQK8tC8TfEitf3gcc4kUUQ=;
 b=Mw5VqaNDmhkTsG1bdy4ccWHTTjenIylC8qlpFuFVLu8YxGi4pfeMVJI1
 fUWZRmKlzhwsWY2lGwMpwKbcw+MQV+2my8GP/36iWvx2do2qe38IP92Mc
 4oUqI4tygWujLZlHXI3Vy9fZj1y1tM0d8afCzQljCeZek2CXFv5D/8M72
 iHkGQ27Dwv07zlCFfSsP4QHDUl7Vsgicxnx9NAbKfX4HJiXe+bzsIH1cQ
 Zk6xWc/keXimiTA1jxJS6oDXNTUuSZ/UlyJfBsKA7iPYMxFBQ/64sNOLf
 GdSs1su/1SPYOu1B8AjixgLpoNfUj+psWDzUwqoeIUczMpdhWbiq2MZuf
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Mw5VqaND
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH RESEND 0/3] ice: use better bitmap API
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:ynorov@nvidia.com,m:anthony.l.nguyen@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:yury.norov@gmail.com,m:linux@rasmusvillemoes.dk,m:akpm@linux-foundation.org,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:david.laight.linux@gmail.com,m:andrew@lunn.ch,m:yurynorov@gmail.com,m:davidlaightlinux@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[nvidia.com,intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com,rasmusvillemoes.dk,linux-foundation.org,lists.osuosl.org,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-0.936];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 135CA197093
X-Rspamd-Action: no action

On 2/25/26 01:00, Yury Norov wrote:
> Use better bitmap API where appropriate.
> 
> Original series:
> 
> https://lore.kernel.org/all/20251223162303.434659-1-yury.norov@gmail.com/
> 
> RESEND: rebase on top of v7.0-rc1
> 
> Yury Norov (3):
>    bitmap: introduce bitmap_weighted_xor()
>    ice: use bitmap_weighted_xor() in ice_find_free_recp_res_idx()

Thank you for working on better API.
Do you want this to go through intel, then netdev, tree?
Likely that would slow any future user, if you have already one in mind.

>    ice: use bitmap_empty() in ice_vf_has_no_qs_ena

For unrelated reasons I have one series that will possibly conflict
with your patch. Would prefer to not wait/block each other, so will
be best if we (Tony) just take this one (in case you will proceed
with the first two patches via your tree)

> 
>   drivers/net/ethernet/intel/ice/ice_switch.c |  4 +---
>   drivers/net/ethernet/intel/ice/ice_vf_lib.c |  4 ++--
>   include/linux/bitmap.h                      | 14 ++++++++++++++
>   lib/bitmap.c                                |  7 +++++++
>   4 files changed, 24 insertions(+), 5 deletions(-)
> 

