Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EC55B041E9
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Jul 2025 16:38:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D925A80C90;
	Mon, 14 Jul 2025 14:38:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Jvyw7t1vAijg; Mon, 14 Jul 2025 14:38:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 269E080C89
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752503881;
	bh=GYoviO4AZ3VL0tBKzKnnzOep94G2RdXIcahXBvAdzjQ=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=jbwqsH0pPtIdNX6TwXX4kb5WicjcmTJqyERZT/49X9M9+Vscm1ewdcufDhUI6Dlhf
	 6wCX7mb35lXm6kjS2OHAVEvnsRQI0JyXWuztmv8vu90EciAxlDhg2bqm99NtoQ8vp6
	 3c6ac5verUtiQEx6pm5e08cMJLgevZ90S8+ocG1wEDFZ1QwcjgZK82JYCaxIHPWYmu
	 Fd7QS+crNTBXEa6naUT47LCIt3z9x0GAOpgZGzRqKbiSWkLNMnY6IaUWOcL2ElsdGe
	 0fi7NSqLgcjprgW0jcnKCnehH9zTQcrpxsvVzrOSFUIiu19zjM4rhv/NbqfIlFdIlC
	 iyVyWLnhtgYlA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 269E080C89;
	Mon, 14 Jul 2025 14:38:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 7A924DF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Jul 2025 14:37:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5D81D60ADB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Jul 2025 14:37:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wB3Y3BE9XQ_E for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Jul 2025 14:37:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7FF1160A83
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7FF1160A83
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7FF1160A83
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Jul 2025 14:37:58 +0000 (UTC)
X-CSE-ConnectionGUID: QGZk4Cs0SXysOn13fy4D+Q==
X-CSE-MsgGUID: EgU8XNZ5RKmQbGcNvnz7eQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11491"; a="54568316"
X-IronPort-AV: E=Sophos;i="6.16,311,1744095600"; d="scan'208";a="54568316"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2025 07:37:56 -0700
X-CSE-ConnectionGUID: y+6uwmbtRcesLT27mWFCnQ==
X-CSE-MsgGUID: cNl677P1Sdy5oHqHuniwkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,311,1744095600"; d="scan'208";a="160960525"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2025 07:37:53 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 14 Jul 2025 07:37:51 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 14 Jul 2025 07:37:51 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.76)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 14 Jul 2025 07:37:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yMjPWpPZd12JVDeDKaUiRabPrH5T8B2FIqiwi3QubGWdUg7cf3kzGFoZY/M4ssST5lXmb1YGww+EAoZGabT2ALCGgslyLu8k0eGSK1VNZLelpWiPRzmIG1RP/+A1QPZWLnvB/canwrws1a1TN1h/FQg8DsHbjcPhsNVA9IxFB3RD0NPiX0hbKMEc/ixHaNDYQkhA7LT8KEcQ9VCsWQrvkgxfr0DIc5+yCswAZ1uPiMm2WZVz/GCKKrB03Jj62CkY7yYDMEa8WYU1jfjx1yoRidj9vgcgm/LpKLRTdqoXhqrDMTTToB9o9IdKlEPiEzuJKqa2yY2Zym3tGDz3/nRVeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GYoviO4AZ3VL0tBKzKnnzOep94G2RdXIcahXBvAdzjQ=;
 b=B6iytHp9K9ddkgsCkr79kPsgBs7AGMsYagcIcFbZW0cNM6B5b8aUt7p4mWOLU8d9yfZkQ4NBtjYTPVjikj8y+Yez53UD2wkHPZmdrq0kFbMn+w8gpk3ssvTCvsnSr0aHV/yLb9I///bm2Ng44Wgj+8tH/q2vj364jYesCRAF+nLHVBqNUkoOdRyM7DAHnAu7Lo7Hog8Ub07PU4cCSHXkTgA3kpR0jIOM0uBgu5RoumKW2jC3DOD4kL/lPyV6aS9johQ4oAfL0hzJ8zjsvi5htc1DaEc/71Apewb3CYrbN4g0Dn1HW0QGAwuQOBYAR+o+gmAOGJecbGbyfa7IIy4NrA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by PH7PR11MB8571.namprd11.prod.outlook.com (2603:10b6:510:2fd::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.25; Mon, 14 Jul
 2025 14:37:48 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%3]) with mapi id 15.20.8922.028; Mon, 14 Jul 2025
 14:37:47 +0000
Message-ID: <4bac1eca-007c-4df2-9b35-d9ce5b787410@intel.com>
Date: Mon, 14 Jul 2025 16:35:26 +0200
User-Agent: Mozilla Thunderbird
To: Jacob Keller <jacob.e.keller@intel.com>
CC: Michal Kubiak <michal.kubiak@intel.com>,
 <intel-wired-lan@lists.osuosl.org>, <maciej.fijalkowski@intel.com>,
 <larysa.zaremba@intel.com>, <netdev@vger.kernel.org>,
 <przemyslaw.kitszel@intel.com>, <anthony.l.nguyen@intel.com>
References: <20250704161859.871152-1-michal.kubiak@intel.com>
 <7bbc6b88-760a-4158-bb65-8058393a731d@intel.com>
 <5a48f9b2-9a7f-4887-919c-cd99d8468c44@intel.com>
 <90721496-8458-4c57-9d1c-2f2bb4f4325f@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <90721496-8458-4c57-9d1c-2f2bb4f4325f@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: LO4P123CA0688.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:37b::17) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|PH7PR11MB8571:EE_
X-MS-Office365-Filtering-Correlation-Id: a4d0f590-0447-402d-8e43-08ddc2e40081
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VTNyQ3dUajM3NkRXbWZGQm5YOURrTG1tZm1WV3pvSllxZjZUTWd3bEdMaDNI?=
 =?utf-8?B?cnRyODRyc09WUjN2aURTMUtnNWZuUEVtL20wWDl0U0tOOSs5NVRvbmlLZEpw?=
 =?utf-8?B?T3NZclpMOW9ycnB6RGZyTEZjQVVMUzBQaE0vNjhUajB5SHIzejJRS2pIWHlE?=
 =?utf-8?B?NS9QbmR6SVpOT0dFczBySVFvUXllV2hlREYraktodnU0QkdQL1RRSkNGYUdj?=
 =?utf-8?B?ZjUyYkdIa08zL3owL1U3QjdIWkRueFVKRTZRMVhZcXFrblYzYVJJWGtIRGFO?=
 =?utf-8?B?UTF0YWJ6SlFBVy82dmdwME4wa3gwMU5ROWJWdFk5T2d3L3c0QkpoNWM1dEJT?=
 =?utf-8?B?SUdLWXRhZFlRaU1iTElrdURLcUFMSXlpeG1BKzZqdVIwU3hNSFY0VW5oS0ww?=
 =?utf-8?B?RzJLUUo5WGNhT0pqYmRkMXNDTDVvczJad0NBQUUzZ3RTLzFUSzBrOWI2QURQ?=
 =?utf-8?B?UE44VzNEeVlpeEY1bVZnSmh4RmpFK3lyNFRZam5DTGJiS2txRkU0VWkwY2Zj?=
 =?utf-8?B?UFlVTXpybHFqU1VaUktGdmoxMkQxeC9nQk1BVzNTWVFRNytDKzBWZWovZHpI?=
 =?utf-8?B?ZDlWMGhoQjFpRlVhK3cvR1VYdDdSMmROOExVczZwNE9HV2tWYzdBdlo5dWJr?=
 =?utf-8?B?R3FJRmM4QkliNmtvZzB3Z1NtUi9sMHA2K3FVNE1NZGx1Wjd6WFBzMjdsZS81?=
 =?utf-8?B?N01BL3B5VjdVd3ZqM0g5QVRLdG5YcVZEV3NuY3czWlNwbXpPZHFuaUNMclhZ?=
 =?utf-8?B?SlEwd1YzWXoxcjFtd1hTY3ZwVzRmMEVvN0s0dDYxL0dhV0VJd0NCb2NEdVAr?=
 =?utf-8?B?Q2c4RkVVay9LcjBsTFphRGRLTmNvaCtBRjYxcEpOTFZuUTUzRUNkR0RSaXZB?=
 =?utf-8?B?eGRQeDZzVGZxTmUzYTl3WDkyYWQ4Y1g0R3h4b2FGQk9vaDFPeFUzM09QZjRP?=
 =?utf-8?B?bXdiUURITlNpWS9PQnRzR3ZTTTRReVNKMHBjRHlWQWFYS21oYWQrZVdOWndB?=
 =?utf-8?B?SUpZMy85Q1N0anFRd3k0dUFaK2xXQllXM01tNnJFdG5QMDFWMnJzVGhsRlR4?=
 =?utf-8?B?RFVUMjBMc1Nhb21lWUZocUlFa3gyUC9Td3lOYm9QNFBGclB2KzdJSGdrUXl0?=
 =?utf-8?B?cWZOVVZpU1hxNmt5b1NkM0VaSlNIemRQM2JUVEVkOFFEaDBmTkNhb3JnWCtJ?=
 =?utf-8?B?OUY1NHRaVElhaTJob3dvcnZncVFIdUs0bHdaUmRaSGJBMVZlWGJ4bVlGNnVH?=
 =?utf-8?B?OGJGeUkvM3Nnc2Y2am55M3R3QVEzajJySHRaOG9wR2JYQm45M0pOeEs0Uk1j?=
 =?utf-8?B?dTNIK0VnM3NOb29jb1h4REVkR1FwTlhlZmtyaDlHVzIzWXNOcW8vMUJNYlhQ?=
 =?utf-8?B?OEhSMGZyd0xnU3Z5K3NTbWNmbG1pa0I0UDBSLzQvYjN4amN0c1MxOCtaRUJo?=
 =?utf-8?B?L1k2YmFnVDBHVm9NQUpaNUNBUmxSZHphUDRNUEt3QStPbmtzVzhiaWg3YmFh?=
 =?utf-8?B?WHE5R3RzcXJtT3o0VmxwNDNvUjQvSHQ2Yjl0bmtIRVNqZ3hwVmgvTi90dmhk?=
 =?utf-8?B?Z2xGcGRuMFdrT1EyMjA2Ny91Ti9HWjh2ZUNhZy8vNGZhZE12WEprdzFmM2NG?=
 =?utf-8?B?ZnhKakdKTmNnWGxPSFZSUE0xWExGclk0dHpMY3F4RmhiVElsSkd4d01pbmk4?=
 =?utf-8?B?STVxVXhSeWQ4dXhYWnIxM016UW54WHpNdzljUHBtaDZtUUtoMnpJNVVjSTV0?=
 =?utf-8?B?N1lWbFliZ1VyYkVrd2VaQlFQQ21IekZmWmU2NE9rMG5IeUFBR2gwYTdNckN0?=
 =?utf-8?B?L3o0T2tUNlpDVmFYcU96UUd0UGhFN3YrWHNCVXlJbDNjUlNXOE4xSHpiNVha?=
 =?utf-8?B?eEdNL3hxVnRXcy9CODlCenZpOHhjL3RIOXI0MkQxMERxV3ljdzFDalAxRS80?=
 =?utf-8?Q?JJyd81c5q4U=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?LzdIWXU0MmpJQ28rOEFFVzY4Z0V1T2xVM214bDJtcXBNK2JKSVZJNVp6dkkr?=
 =?utf-8?B?UVNGMWExNWg0OEdlOHFHS1YwMVBjbVNNNlFmSEtQTURqamVseEhNOGJxU3Nq?=
 =?utf-8?B?UzVlVVZwdGNSdVp4TXlMMXJiU1pGam1pWGp1RTFqN0xOaG9rYS81cUVsM0Fu?=
 =?utf-8?B?clY0cjRsa3hhZ0h3Y1J1UkZFN3R4Y0pNbWhLM2hDSFBLOFRkcjlNL25PQzY5?=
 =?utf-8?B?M2syZnRCWkNnTmFPVUd6RXB2azZxOFFtdkI3bzVpQmZRamxZcktuRGo4ZmFj?=
 =?utf-8?B?KzhWQ2diNGhSdUZ1SWtkT2FpSFZldTRSTFB3a2thSjYxMTJFQlNzazhzVlk0?=
 =?utf-8?B?WGVmcmdoVk9CL3J6TWVxV1hCVFBEV1B1dnkyNDB6Wi85QzcyZGMwOHJpQURU?=
 =?utf-8?B?TDFOY1JmMHVCV3lKRWJlUFFicTNGazFuTFNUYk1pWUNKT1BpOVB5a1RSWHM4?=
 =?utf-8?B?ZmlaQ0tIdmlGa1FDK3hNY3h1NnM2bEpjTFM3QzRlb3NVOEhRL1JObTU0Nk53?=
 =?utf-8?B?UlFKNmZBWDBHNnBTanI3Z0l4alFVdkRkYjJReFV3cEdGVlpyb3l6d1BuZno2?=
 =?utf-8?B?MVhJL210VTNvbWhpcEoranlwYkF0SFlwU0VVd2pMMXk1TmdIZGk3ckdKeVhh?=
 =?utf-8?B?NTZnSEd5T1cvS0dES3FrTzhsa3FET1ptZm5Bc1VkclZ2RFBVYWs2SFkrNXV0?=
 =?utf-8?B?ektjRzdGSUNkdlB6b2UwbGJOVkZRZGcxUUpET3J2Z2VqM3l2RllaSWw2OTQy?=
 =?utf-8?B?elFEUHNYREM2amZFR1lHY0lPVm9BdXRPbGhIeVlZd2xIVHhsc1I3QmI5OHhj?=
 =?utf-8?B?aGIrTVY5WTg3ajI4blFVYnFRVC9pNmVJWTc4OW5kZ2ZZUGRHazNMWk8xSkpx?=
 =?utf-8?B?TzZPRWxyQm01RTJNcUFGb0ZwUGY0TDRFQkx6aE5ZT3lUaTJNbHIvOW1aZ1ow?=
 =?utf-8?B?enRjb0hMM1Z2U0s2OXJwbHJTb0RsaldRNWVQRDl6YTljaTd5ekJYUTZ2R3hW?=
 =?utf-8?B?OU1TQ25IcnhDQUU0UTlxZk12MElTMTlkbUF2S0NVdk5OZ1VzL1M5dWNTRWlX?=
 =?utf-8?B?SmdLV2FGUlcvUFNhbVJZbmVZb1oxYkNoR0ZlSXl6NHhxYnV1MDlheEhrV3NU?=
 =?utf-8?B?NXpTbU9kSkJSWmNIcGt2RlVnRHlmS0FVNS82TkNkNFJKZUU5YjhLcTdiZXJm?=
 =?utf-8?B?VmN6NlpsbXAvamJOK29QeW8zLzIwVWxWNG1wYTcyb0c3azVjc3NOdUNodVlH?=
 =?utf-8?B?QU1ZWDkwOC9jbkhDRnJ1TU9laEczRmM0cU9MbEZIcFBVNFNBVml4M2M1Wk4y?=
 =?utf-8?B?S0RRRllIeHBPZ1VTWFJ4TFFFVEREVE90QWlJZTJaUlNxMld5REVZTzBreVVh?=
 =?utf-8?B?MjEvYUVaMGRlcGxKc3RMbzJCUGJ5bjRWTk90eGxqYjJvbzRqRi9VQmk1a0Nn?=
 =?utf-8?B?NzA4VXMyZm5lL1pmcVBxTWVqQXJCZEJDMXZCY3hsSy9DaDQxaUYvKzNmQUli?=
 =?utf-8?B?K0dzNXQ5ZWx6ZTE1eXEzNXlzK3Fjd1F3ZTU2Uy9RRmFDbGdidEVtN2FESFVG?=
 =?utf-8?B?LzBIOWFoNjMxSWw5eXVRRzM4dFVkS3UyenQzVXFXWDJld0NtbDhtV1FCUzAv?=
 =?utf-8?B?bURTKzFYOUdQTjNpTjZhS25OVzQ5RGtqZFNLeUVUekFvNStHWEtVaHJ1QlRn?=
 =?utf-8?B?ZmUrVERXRisxclZpOTFLSG1VMWY4SWVlK1BaOWF0SmJIbDdTVlZhVldqOW5R?=
 =?utf-8?B?ZmtMajRSeGg1THppN2hRN2VJTzVxOFMvVmNRTDFCSnZLYWoxSEZGS0pUNmpM?=
 =?utf-8?B?QWFxeThSLzBuYjhJOUhWbEZQOWdTdFQ5SnpkQ1A4QmRObUVYQ3dndXM0a3Bx?=
 =?utf-8?B?UndHWERWYy9OSFh4SGtrV0w5N29keSs2aU9ZanpaZkdvZjhXcCt0L3lhRUM3?=
 =?utf-8?B?Qm5yWHhBL1lBZXg1SUk1bWFLQUVaVGpxV3hDK09rMHUrbFJkU01NUGhEcllx?=
 =?utf-8?B?VTYzUkFnZHZKemx1Sks4Nm9oQVdINUZiMGVSREtwWTBwWHJWNkR3VDNCQ1dz?=
 =?utf-8?B?M0VIRllxN2d5ZVJza3NxMndJbEpBQUVvV1djaUdRWnZrM2p4cUFMSDlmMFpr?=
 =?utf-8?B?MDlpZUdhWUhJTEZlVmYwU0VRbURpUjRBZ2txZUxwdG9kS0FIK0crbXFUeVFZ?=
 =?utf-8?B?MVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a4d0f590-0447-402d-8e43-08ddc2e40081
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jul 2025 14:37:47.6275 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Jms0kr8qQTJKKIlgLmLmyhQ8WujqECSlWdKfAt6uyorXO1oxQaMM3+q2DrcEWWxVT510hugntMW/ttUI95vf3IBj/XsLvnnV60ooLVPTpsQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8571
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752503879; x=1784039879;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=32V4PTrqKTkoGqedCiYAxrYLP5Cd7oSib3d9JIDpQuo=;
 b=QDaT9rY/AIFFvlpAbMoVOJpMHf5izPIbtRl+Hhqg5vRFA5+haP3wutQI
 Lsc4/PPrMqmSzsGXue5qtXRmldQobHDMsGgGtVnRvvb2k7OUMDHqL/w4x
 0D0mMSBmN5EQpVOker1FbNdek4a79TMzw6IC66q0lka4FoiUCsIg8N9l5
 dW9hHE1hybUEVysnlFqwyj7rQ2nWDTZRubE/rPngZ5xvhYiXfGKL9N9/U
 8ji+lSCHYwuc7CchynHiI7nBQ/fe5NvyJ82PDyPTVyCF3g/PyuuAioZzt
 2U+Co9DkmJyDKAnA7CgfBn94CE3fcXDyCsH/y4WFbWmTpcENMmJkcvl+1
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=QDaT9rY/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 0/3] ice: convert Rx path to
 Page Pool
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

From: Jacob Keller <jacob.e.keller@intel.com>
Date: Thu, 10 Jul 2025 15:43:20 -0700

> 
> 
> On 7/7/2025 4:36 PM, Jacob Keller wrote:

[...]

> I got this to work with the following diff:
> 
> diff --git i/drivers/net/ethernet/intel/ice/ice_txrx.h
> w/drivers/net/ethernet/intel/ice/ice_txrx.h
> index 42e74925b9df..6b72608a20ab 100644
> --- i/drivers/net/ethernet/intel/ice/ice_txrx.h
> +++ w/drivers/net/ethernet/intel/ice/ice_txrx.h
> @@ -342,7 +342,6 @@ struct ice_rx_ring {
>         struct ice_tx_ring *xdp_ring;
>         struct ice_rx_ring *next;       /* pointer to next ring in
> q_vector */
>         struct xsk_buff_pool *xsk_pool;
> -       u32 nr_frags;
>         u16 rx_buf_len;
>         dma_addr_t dma;                 /* physical address of ring */
>         u8 dcb_tc;                      /* Traffic class of ring */
> diff --git i/drivers/net/ethernet/intel/ice/ice_txrx.c
> w/drivers/net/ethernet/intel/ice/ice_txrx.c
> index 062291dac99c..403b5c54fd2a 100644
> --- i/drivers/net/ethernet/intel/ice/ice_txrx.c
> +++ w/drivers/net/ethernet/intel/ice/ice_txrx.c
> @@ -831,8 +831,7 @@ static int ice_clean_rx_irq(struct ice_rx_ring
> *rx_ring, int budget)
> 
>                 /* retrieve a buffer from the ring */
>                 rx_buf = &rx_ring->rx_fqes[ntc];
> -               if (!libeth_xdp_process_buff(xdp, rx_buf, size))
> -                       break;
> +               libeth_xdp_process_buff(xdp, rx_buf, size);
> 
>                 if (++ntc == cnt)
>                         ntc = 0;
> @@ -852,25 +851,18 @@ static int ice_clean_rx_irq(struct ice_rx_ring
> *rx_ring, int budget)
> 
>                 xdp->data = NULL;
>                 rx_ring->first_desc = ntc;
> -               rx_ring->nr_frags = 0;
>                 continue;
>  construct_skb:
>                 skb = xdp_build_skb_from_buff(&xdp->base);
> +               xdp->data = NULL;
> +               rx_ring->first_desc = ntc;
> 
>                 /* exit if we failed to retrieve a buffer */
>                 if (!skb) {
> -                       rx_ring->ring_stats->rx_stats.alloc_page_failed++;
> -                       xdp_verdict = ICE_XDP_CONSUMED;
> -                       xdp->data = NULL;
> -                       rx_ring->first_desc = ntc;
> -                       rx_ring->nr_frags = 0;
> +                       rx_ring->ring_stats->rx_stats.alloc_buf_failed++;
>                         break;
>                 }
> 
> -               xdp->data = NULL;
> -               rx_ring->first_desc = ntc;
> -               rx_ring->nr_frags = 0;
> -
>                 stat_err_bits = BIT(ICE_RX_FLEX_DESC_STATUS0_RXE_S);
>                 if (unlikely(ice_test_staterr(rx_desc->wb.status_error0,
>                                               stat_err_bits))) {

More or less. I'm taking over this series since Michał's on a vacation,
I'll double check everything (against iavf and idpf as well).

Anyway, thanks for the fix.

> 
> 
> --->8---
> 
> The essential change is to not break if libeth_xdp_process_buff returns
> false, since we still need to move the ring forward in this case, and
> the usual reason it returns false is the zero-length descriptor we
> sometimes get when using larger MTUs.
> 
> I also dropped some of the updates and re-ordered how we assign
> xdp->data, and fixed the bug with the ring stats using alloc_page_failed
> instead of alloc_buf_failed like we should have. I think this could be
> further improved or cleaned up, but might be better to wait until the
> full usage of the XDP helpers.
> 
> Regardless, we need something like this to fix the issues with larger MTU.

Thanks,
Olek
