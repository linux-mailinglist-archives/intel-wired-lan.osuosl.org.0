Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3680FCA3B0B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 04 Dec 2025 13:59:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E833E80D9D;
	Thu,  4 Dec 2025 12:59:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zFYdpzKmkVY8; Thu,  4 Dec 2025 12:59:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4800780D59
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764853188;
	bh=kxJQGRozosd2WDawpAB3utOIU+ti4rlSFF3tJbwfUz0=;
	h=Date:From:To:CC:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=sTEQD6ch2uBmCaTCirYw35V1n0uaw1ZZPO+L0O3HGubFsZ8UxidNDfE1d9w05Pwb0
	 3aZqfsnGpiorg9/g2MDC+gNbXDYQrI4d+7x2573mxNyGVV2oodL/TEmCd7aJxcKPWa
	 9yweNJklh3TtWGIiEmLWoIPIWjcKfxBWhESCq41SdDwTh5IIfxUVGccgFK4uSrwsCN
	 F32Y0POVwY42XNhzWgFhW91aN5lGiBATeeVJf32t54QYF8BVEDa6aXYKoKRO6vXgV6
	 KBqUuawLT+ExvlfxnTjnU7JmxRL0p4lHg/qATXuxtWXrT5JbqgzrWYwHacfx0XAQJp
	 wqvkpbnqFTitg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4800780D59;
	Thu,  4 Dec 2025 12:59:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id A17E4E4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Dec 2025 12:59:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 887CC4073B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Dec 2025 12:59:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Sf7E4PWh4BGT for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Dec 2025 12:59:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A4B4F40574
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A4B4F40574
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A4B4F40574
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Dec 2025 12:59:45 +0000 (UTC)
X-CSE-ConnectionGUID: fW+qaCMHRvqJctm5y4SI4g==
X-CSE-MsgGUID: iRM9iEReSBqqjgY87fFCsg==
X-IronPort-AV: E=McAfee;i="6800,10657,11632"; a="84266138"
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="84266138"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 04:59:44 -0800
X-CSE-ConnectionGUID: RXm1RujESceToAOoXu9TgA==
X-CSE-MsgGUID: N1mTHziGS8Sd69xqNOe2sw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="199937031"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 04:59:44 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 4 Dec 2025 04:59:43 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 4 Dec 2025 04:59:43 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.24) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 4 Dec 2025 04:59:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JUHpj/qrSbHj7lHBWy9qR289bYY8xYqXsPewJDe0jidCAqN47emhW6uljJWesK7U88KpWmx4tkU3jj8VcCS1uV/hCoT/tZ7jT3sHuTv2wH4jT2JXz85fMnwm5AUVgvxvQBT0bwz7v6qnjTcgwzbZIl4SCy5LqH6/0yNJXrAum+9LxyjIGcSJZ6tqIpKE02lH8aAUf1fCgkIyybH0s4e2D4ClclyNjFV0/VV3iRUUDtNFIZxWMED1EHM4iG+HNEUe1qQK5M1HGBAQZJ5Cl9ggvO7XVtYup8Kr5UVT8HKHd5q7SOWKe68M2K546WR7pEPg/AcqldP5xgq2+6XYQn5POQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kxJQGRozosd2WDawpAB3utOIU+ti4rlSFF3tJbwfUz0=;
 b=kzB2wqB2Yv7LcYltUz3HeINUt8+TogyyJR7dI6p9NLFe9cslHQuLNJo+tsOEoupyvV/E6LGh32yGOmEFu3rQySf0rdX5T2rimFoWZl70UnfZRLuVgHub3svgd7hORLIpqjkDMUOToAV5riEqgtXCcwuIR7teyNH2dikSuy0lwYTGz2n6/HXY8nen8k8ufESYi/DkEITsjN39EX06587CTt5ZBnQDcK6ZuNuYzn+ZmPwHAnqVISwD2pZC0jYXhT3IeX6LLiS8x8kiBLZcuvT7Ho4VByNBkbKUxEV0guMGhrLVvRHlR9sgw2FNJuQbPigHIvcioBqqet3t6XnHQpmqvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by PH8PR11MB6658.namprd11.prod.outlook.com (2603:10b6:510:1c1::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9388.9; Thu, 4 Dec
 2025 12:59:40 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%6]) with mapi id 15.20.9388.003; Thu, 4 Dec 2025
 12:59:40 +0000
Message-ID: <a0561c1f-f64e-4d76-b08b-877897d45eae@intel.com>
Date: Thu, 4 Dec 2025 13:59:34 +0100
User-Agent: Mozilla Thunderbird
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: Jakub Kicinski <kuba@kernel.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, <adrian.pielech@intel.com>
Content-Language: en-US
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Simon Horman <horms@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>,
 Krzysztof Galazka <krzysztof.galazka@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DB8PR06CA0049.eurprd06.prod.outlook.com
 (2603:10a6:10:120::23) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|PH8PR11MB6658:EE_
X-MS-Office365-Filtering-Correlation-Id: 8380dc9d-134b-404f-4735-08de3334fc63
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WmFxSTdnTEFBSVB2aEs3emMxa3hjUDJhc0prWVBHY3FnZjU5L0ppZHBvczYx?=
 =?utf-8?B?c2lReU03UkwrRVY1SisrOVRDWW5obDdzKzV6SCtmbFlFT3BHUnhLSHU5U1o0?=
 =?utf-8?B?WGltODhROHRHNFZlZFd0bU0rSk11RkhSMlE2cFZSaWJDbHNlMVZoRmh2S01L?=
 =?utf-8?B?ejN5bWwxeElQalNFZkFyWS9waFIwWExWRVdxcE9qaVZSK3ZwZE1QUTZENThU?=
 =?utf-8?B?K0I4NDF1Q2t4RkFod3h0L1VtTy90YkhoVVpUYzFSUE8rWmUzTkUzLzhFbDcz?=
 =?utf-8?B?N2NJeUxzWXNIWVlkbTZkOFI3T3hLTG1lV3E2WktIcWFPdVYzWmNOY25aQnFv?=
 =?utf-8?B?eDNwWDJPVHEwQUdRVTdpQml5TlBwOG9KOUhIRFQ3S1BBSVdjaVFuMElqWXg2?=
 =?utf-8?B?bTNDTWJlaXl5a2F2N3F1YUxDVnVCaWVibnVWd2FZREVLc2pveGVwejV2S091?=
 =?utf-8?B?THF4SVNQOEdTT3J5N0tnN2hLcGhkQXRldStkditOYkZjRyt2ckhSeGNNTE5K?=
 =?utf-8?B?aVVWMFlJdE4wQVRoOWQwd3dGVHMvT214b3E1NXAySnhLY0FMSjRUeVptcFNB?=
 =?utf-8?B?ZTBuRDZMVDk1WkVvZGVTQ1BYeFBCRVRpMURsTzNTV3poSW56amVxd2NMQnRR?=
 =?utf-8?B?ZkFDU1pxd2RwVTU3eVlYMTFvTlJHUXE5WmZTNnRFQldJdkRTNG9Nd0IyZ2Zs?=
 =?utf-8?B?SnpxY1pMNTFvdmxreTFIY05DOFNzbmtWZDYrclF1bytoRjNtUVFCWFB5RVNt?=
 =?utf-8?B?THMrT1pBRGFkS0Vud2RPeW5VcEtOZDFpMnFCZ1ZFSml2RWxyYnUzS0ZRQXlv?=
 =?utf-8?B?dWR3anpTTGRic21oMnppUUdvenBVa1hGNldSZXJJV3doTUYwa1JibHJtaXRD?=
 =?utf-8?B?b0xLVm5yMmE5bWREV0lhM0E3eWZpOENCKzZMMVE5OFNCOWxORktaT3d6dElF?=
 =?utf-8?B?L2Z1UjRlQVdOZ1NLMTRoNGs5UFp2bklxNEpya01pdVRhU0JPUVVFWEdYVGdX?=
 =?utf-8?B?eFYyOCs0ODNRTEhudFo2MmJNRmQ2NDRyWmZXVUtINTZaNE1ZUVlEbjBIdTBn?=
 =?utf-8?B?VXpnWEo2Z1J4blN5OTBXU2hGOG5FeE55elk2TzEwUUZUVi9yVEJ0c1B4cmVK?=
 =?utf-8?B?S3pzaTR5dEN6Z29GbEplVC9ZajJlNlFNVlpuTFdBcVlkb3VPUzZWcDRWcyty?=
 =?utf-8?B?R010dFJscEE0cmdGYjRudm5GeE82d2JneldUMW5uVVl1dnpINUhOaDhFNm04?=
 =?utf-8?B?SVNDVXREYnY4QjJmNFgzK21KODArS3IxdWFISjZ2eWMxZFBSeVRabDlNVWdp?=
 =?utf-8?B?YzFkR1RQNkQyTGdSbEY5eDZ4ekg3N3hLUTUxZzlFbTdKY0pLL0hBQ0tDUWsy?=
 =?utf-8?B?Z001ZzlVbEpsTnQ4NERSSU96dkVianpxdGtuTXdzdEpFN2xBUndJVkcvRGFp?=
 =?utf-8?B?aDhkbms2RU9oRkhibFhXVEZsemdJZ2xvQXA0akNibHFmeVVDa2VpNWJqVU5D?=
 =?utf-8?B?emxaYXdSeFFmMm9hdDNYOG1ZTTd4ckVySDFzVGw5bnRJdElOa0RtKzRZeWp3?=
 =?utf-8?B?VEpCVmRsK29pWWc4K2dJdE8zbHgwWnUzZlcrNy9kZnNQVUVyVUlrOXl0a2xE?=
 =?utf-8?B?eDZlRXlmWWtPNnJWRnBXZDcwakNFTUxyU3pKcHVxc3BCOVdFQjhLVUNhczIx?=
 =?utf-8?B?Z05IL3lSWk4zYmQ3OWtaM2hsWk5LSXJYaUwyRmtRYVZkeTdrKzJDTHRmcGFn?=
 =?utf-8?B?eVVJZGhVTDB0TFRIa1RRNjczbUpEdjhzQ0JnaHRsaWdUcWllcG5Ta1RFODBx?=
 =?utf-8?B?U3k3WHZZNFdaa1dJWk14Ulp6TUVITnJqTzRWem5WTWdaelFGNWtReXJESHM4?=
 =?utf-8?B?QmdvRjlYeWZCMDBrUk5LMER2SEdETVh5WTAySGg4TW5LYVE9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a2NLb2J0c05xaTFkeVpsN0ErMXRpbHVxcUs5ZFhlTDNQdDZCUkl6VlZiQktQ?=
 =?utf-8?B?dk9IMWh3UEw5YkI3V0xwZHpBNTcvTXZUWW8xUTVEYmc3SEQvck9qWE1JdDNL?=
 =?utf-8?B?UUFSdjJMMU1leGZNUWN1QnpJRUJxcnhlWlZnTkl1QksxT1BSeVFCYlphYjlS?=
 =?utf-8?B?aGJtNnZnZVRFZEQ0cWZ4RldCRFltMUVjY21Xc3JlZEpVcXpKaVI5RVdwN2gy?=
 =?utf-8?B?RVVaOG9XcUhDYkJidnBVY244TEdGZGpGek0vZEZZYit4cUtHYmZRWi9VbGIy?=
 =?utf-8?B?enBEMFVqSWR4dmZzazREdlVQdHcveDlIT3hIdVNGVnErUVg5V1IvQTkrTll5?=
 =?utf-8?B?SmdlN01VdDdsdDlOUEZtbjdNRFNQSlpSaGpZN1hhRDFVNXoxNEdoUVdRSkw3?=
 =?utf-8?B?R0RzRy9OeFN1anRkVGlnZm91ajZtOUtOWlJoUDZxbzAyeTlNOGpIbThiMEVZ?=
 =?utf-8?B?RDBmZ3lZQUF6VTRLVDlEaytQbFBaYkVlbHFyMytHamxPRVJEUGJ4SFp6NjJS?=
 =?utf-8?B?cHhXeEE1NjZhS3lydjU0VDl0aFRQVXcycEx1NVc1ei9aaVpiS2xSR09BdGd1?=
 =?utf-8?B?REJTR3Q2ZWNKeGVpYUUxYjdtemhYS2RtMjZHZHhIcDgvTWdUREpCL2p2SUJR?=
 =?utf-8?B?M3B1SlJpZlVseCtVaFh0NVlUZ0ZTcVRmMjRiQTQrcEM0dVIwdmttNWtJZTc2?=
 =?utf-8?B?SzFRaVB1aW11ZGs2K05LalpLaWs4RGpKZzN4MmtEOFJmc3ZsSWJFalVVS0F0?=
 =?utf-8?B?L25jZ3lhRWtSYTFkSEo5eVpNcU0yN2VIaEZ3dENGclJyZ0p5Q3JIVlVOTFZ2?=
 =?utf-8?B?emJPZVRhUjVFZEdVWWlPc2tCcWVZZ1UxUXJ4NUduZzBpLzBQN094eWZ1U1BJ?=
 =?utf-8?B?aTdveEw5RkM5TTR2MGtGK3dPZFZCVm1PTmlqeDRTZzh1RU1MNEJ3cE5FT1JW?=
 =?utf-8?B?MWQ2VDVkNkZUdThKRUVCTTlDb3RLOFovbGk5NlAxeWJ3SzJQZEdkS0UweXJh?=
 =?utf-8?B?NkhTVExXMmRCc1Exb0dwR0UzNkIyUjhSTlMzcDQxeGhEbmV4ZGlPaDAzM0Fn?=
 =?utf-8?B?eTNIVXQzL0NoWUJmeTlkVDRlUC9oUFc1bnB3amlKL0dCZHdGTlZmd3ZENGVV?=
 =?utf-8?B?cTFaNm9xQW16R0F2ODFwM296eXNmSG5wR3AxQXhCaUJiODJwOE5JQ29DZnFQ?=
 =?utf-8?B?ZTE3NGhCNFFZeThWdTNtWk9qMFBsZEltQ29SZllzQ3dianByRkZNWTROeEdy?=
 =?utf-8?B?Q2xRSVFSUGd0YStST2Z4c21seGNHZ0s5UE8wNFYvOVBtR3pCb2ZlYUpqd24w?=
 =?utf-8?B?N0F3cWVnYWJ1S2ltSmVHamRKN3I2SURlY2VtcGlyd2RVanAveG91anFiME1s?=
 =?utf-8?B?Mzh5cE1vQzVwVHJYblVJbjE0Nzg3ZVBBU1ZMU0Z1bFJGS210UVpyMzJoeXN1?=
 =?utf-8?B?WExSb2hmeVVnTFl4OVo2V2pvbW1rOE4ydTVUOW9KMzIyWnVlNzlLN2RCaWVT?=
 =?utf-8?B?Tm05Rm1Lc052YXh2RUJRWHM5VkJOYmM4WnlXWFBZWVlaQjZTRC91RkxPWWJ6?=
 =?utf-8?B?dEhuRlhoRTVnckhJaEgrQkp0Y1ZzQ0hrVWs4Q0ZJN3Rxd0MyL1AzdGdXOFlS?=
 =?utf-8?B?Ri8wazhScW5EN2RDMWFUVGNQUDg2UkpkRXViOWJKVk5YVkF6S2VYMys1LzdW?=
 =?utf-8?B?K2t5Tm5lbHV4cEdwNy9mV2FTTUtRcmtDTFRCQmVzdGxTc3dLQ1M5d2l3cFEy?=
 =?utf-8?B?ZExaOXo5dEhPT0FjUTVKQ0p1U1l3R014QUR6ZzlnUEFzdDdmM2NOeGhmQzJ6?=
 =?utf-8?B?b1FWTVhxZkZPS0xsZ0o3Y3ovekdZOURoVkNqUFlFYVRMb0xScW1KQU0ybUR2?=
 =?utf-8?B?ZFFCWG5mRzlpOHZLb2l0N0JwUkR6V3RFSkIzTGhoeGhCeFVJOWNvSXNDdDA1?=
 =?utf-8?B?bytORGgxRDBSaE9ncDdNcXNYK2lvRlIwa2huMXFWK09YTmxSQ0xMWFNKNTBz?=
 =?utf-8?B?ejZlTWs0MlJsRTRXaFN0b2oxVFZJaVp1TWQ4ODJ3TWUvYXFvTExtTFltRGlw?=
 =?utf-8?B?dFkxVllrK2oydk1MMkJrZ01FNzU5NndoM0swc1hud253QklwSXlOWWdNWmNC?=
 =?utf-8?B?ZnB0NXFoN2diSG8vSEUrV09LWDRaV2MzNkU4NVA2eis0TGdJZ1hhbFBqMVcv?=
 =?utf-8?B?SEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8380dc9d-134b-404f-4735-08de3334fc63
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Dec 2025 12:59:40.1089 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fhZTAGggHv7aqREYEMVKf014lLBikCcrvObLAtj/+gBF24A/V9YFBim/xd8+9MCtPkJnt9vO3Hl14iawTSHQ1zwB3kRIF4q4cAbBgW66Iqo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6658
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764853185; x=1796389185;
 h=message-id:date:from:subject:to:cc:
 content-transfer-encoding:mime-version;
 bh=kxJQGRozosd2WDawpAB3utOIU+ti4rlSFF3tJbwfUz0=;
 b=DPGiSRUs4WAdA8nZ3xdaUtEZyncGDW194E7mrCN0zg0blfKi396klGa3
 SkOdIcHgxcuhxpmXciAl+Tio5q3XBDgAVsbBfyT9NcqK7pOWquPsoQF/p
 9qS1JxHzF8vPIJTLLu2AEayNXOX8LzbNBc1CBEdFYtSFPZssCSuhLPYAx
 EBo0tARZAkYINFjPZyHORZRQD33XkrhjsnB7ephBLmZKrLKj+4qgJ89Fc
 cWVrEVVMhU3M1k1rJZCJoNTpHX2ls4pL+WMR8qI4U2CCtdlYWWOtXASxu
 1AmFdrjoPL9ETF7TnGl3xg38WljyG7EDe9qI8SIPdlg3g2STgFp7JkNJ/
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=DPGiSRUs
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: [Intel-wired-lan] [ANN] intel's netdev-ci
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

Hi all!

I'm pleased to announce that we have set up infrastructure for testing
netdev on our e810 NICs, with more to come.

Big thanks to Adrian Pielech who made substantial effort to make this
possible and to Krzysztof Gałązka for the initial PoC work.

This work plugs into netdev-ci initiative by netdev maintainers,
to run kselftests (mostly functional tests in python) against current
proposed net-next branch, on real hardware.

Our results are here:
https://netdev-ci-results.intel.com/ice-results/results.json

with a viewer for humans:
https://netdev-ci-results.intel.com/

Adrian & Przemek
