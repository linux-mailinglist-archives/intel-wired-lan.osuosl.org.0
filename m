Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FBBAA92CC9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Apr 2025 23:38:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 76A7D417EA;
	Thu, 17 Apr 2025 21:38:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tLkeHgIHa5y7; Thu, 17 Apr 2025 21:38:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DD8E841252
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744925914;
	bh=1kCL6U71KOHn1yaLWCg8V1fcsgtvQ2TmeeyQscjTSm0=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ugsJUdHtTH6pMgddo5DNCfL1ViAEw5w/rN3CHu8pCjNs4IYer/lMh4a4ahcwHHHjN
	 69CSiNvXa/7NNjAkQFs8igSA6ADIuHg+tbPJc2CcAx7ebLvffxkwcoeWoCJ4morQIe
	 l7RNhONI39MBoui7DqpSXLttjJeJdhO+BS6ExKHyY6v7jNyTXWVFaeY3ojVmYv+7Jt
	 21K/v9vEU+FNzHAw2zrMQeD7j6uv915W+96560aWV8LO7Y2TL4LltoK+fo4nmvnVW1
	 4585Dcu3+CMlCbPhTJLaCtHgqAdVViRzSQQ7QhteHVnIrqmDCHA/xqHBB85zr0i5xa
	 z7Rr5G88efdPQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id DD8E841252;
	Thu, 17 Apr 2025 21:38:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id C90EA1F3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Apr 2025 21:38:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B9D7180F7E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Apr 2025 21:38:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zS5RL3LxWNRa for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Apr 2025 21:38:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9E44081F0C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9E44081F0C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9E44081F0C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Apr 2025 21:38:32 +0000 (UTC)
X-CSE-ConnectionGUID: t9zDZ1EZSHOrcvzBwjD2KQ==
X-CSE-MsgGUID: UjajVrLQTUu4Du0SJddm2A==
X-IronPort-AV: E=McAfee;i="6700,10204,11406"; a="46707545"
X-IronPort-AV: E=Sophos;i="6.15,220,1739865600"; d="scan'208";a="46707545"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2025 14:38:24 -0700
X-CSE-ConnectionGUID: 416ZvdutQtm1jPgLM+Vjzg==
X-CSE-MsgGUID: +KXdNXGSSdu6y3XTpMTEbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,220,1739865600"; d="scan'208";a="131241225"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2025 14:38:23 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 17 Apr 2025 14:38:23 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 17 Apr 2025 14:38:23 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.48) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 17 Apr 2025 14:38:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SsO1jmIu6G4Rrp9n63QvthRpsoAac5xBmHFty5ARoOwkxtFap+KMWfsuYVL8Kcf4cU1G8jFnt2froh2EHSrUggdH82CieL8ZpX1aQYh83kCnS+gHNXeTw6TI7bNguQA9A6Vq2jFLNi7XSkarOxEGpRjPp4TAI5zeO9hxIrXUqGLFwxn0hObP3OLC4OKPJGXpJY+jGgoN88Z+Sx+6eNNoKCnCTuQNPp4JwUBJ944wGpfDu9gkTSGXxrdSKYoxLEUhRhwQphDl+f5DfMDww25blNPSoScQOSv+MCTusn+epi6HcUHsUJecW2XtX7e4nZf/t1ZLY1FVBM9LsToYFbpsaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1kCL6U71KOHn1yaLWCg8V1fcsgtvQ2TmeeyQscjTSm0=;
 b=vqL7nJB67vw7TNfmQl+pIT4XW6tiO68C7YnfkPV8wXkXAvxZ6q4PfdFGz9cPu0Xus//J52A5t4e6AUDpSdiCCMVhedwmKPnSyx3chTH5Km8kOdxeErOO7m4Jo5+ed59OKEaD/DSkw+OjI9A8EYNMhMqED9RXVIAKyN+uzVUx/uQ3urZoQLgZ/tdppvXNDH9E+BRta1WywwmQ2YSuWvDv9LjsssUZOy19Np8EyNy0PAzJbjixf8l7X9DhAZ1WAeWJ7RQI9L7awbyt0iijrxehF/BVxNBZB5LLXGGMktBEfipqhkM8s7SGuksFqz7KloT59AXx4NSAiv08SGVPpJFQHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DM6PR11MB4706.namprd11.prod.outlook.com (2603:10b6:5:2a5::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.35; Thu, 17 Apr
 2025 21:38:15 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%4]) with mapi id 15.20.8655.025; Thu, 17 Apr 2025
 21:38:15 +0000
Message-ID: <452ea0c4-d221-484b-a492-c3b6ca930a0c@intel.com>
Date: Thu, 17 Apr 2025 14:38:14 -0700
User-Agent: Mozilla Thunderbird
To: Karol Kolacinski <karol.kolacinski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
CC: <netdev@vger.kernel.org>, <anthony.l.nguyen@intel.com>,
 <przemyslaw.kitszel@intel.com>, Milena Olech <milena.olech@intel.com>
References: <20250409122830.1977644-12-karol.kolacinski@intel.com>
 <20250409122830.1977644-18-karol.kolacinski@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20250409122830.1977644-18-karol.kolacinski@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4P222CA0012.NAMP222.PROD.OUTLOOK.COM
 (2603:10b6:303:114::17) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|DM6PR11MB4706:EE_
X-MS-Office365-Filtering-Correlation-Id: 5902df96-20ed-41dc-2f41-08dd7df82975
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VEhmcnlGWXdadkNTdkppV2VzS1J4Z052YzlSK1F1dU4zcUQxMUtkNXQ4TURE?=
 =?utf-8?B?NWZ5VnpNSnZFTEtSM2l2Rkphak1JUXc4Zng2OUpVeHRPWFdaVkxMY0prNDFT?=
 =?utf-8?B?MVNJd3NyY0FkVFQzSzdtS2lqS0IybGI5UWFJK1pOL1h4UlFLSXZOc3QyZE42?=
 =?utf-8?B?REp0NzhSYmpNKzhrcGxFVWhuY1M0MVdTT2pmNmh5SXo5NW1sKzZ2VEZoQUow?=
 =?utf-8?B?VHZmcUNQcDR0M3VIQjRXaENPT3hkMTVuMG5jNC94OC9reDVzc0VVT2ZPeEti?=
 =?utf-8?B?cHpNMmVVSXBWS1drY3JEa3E5K2orU1pQT3FWN1AxTVN0UWtnOW5JWUhIbkdk?=
 =?utf-8?B?TXlZYld1Q0sxZmdSTHZUZ0I0VG81R1FMOFpDblU0NDdXUjJpMXc0QlhKWUt4?=
 =?utf-8?B?ZjY1WWQ2V2lERE82bTg0WDVqejlMRFBwUlU2WWh1N0JkVDV3emN5dndhQ3Zh?=
 =?utf-8?B?QTJOVm9KTlpORzR5bTRnWk54ZlpoZE5qSEJNeVArcFMzWGlTNWtpNEZka0FC?=
 =?utf-8?B?TlZ6d01lQWszMEkwaFIwdzBScmVPdm1EdFVNQ1ZYZmcxL1VmWjF2RUxicTFs?=
 =?utf-8?B?MkJ5VStSbWxWdS9oKzhFUjR0S2YyenkvTzdSc0kyeUhtRGgwcURhQTFEVGdn?=
 =?utf-8?B?aTZaaFBWVGV3S1lDOG1Ba3pKVlh3MW1rd1RCZG50bnFxTXprNlp0MVJjVkxI?=
 =?utf-8?B?MmFkSUw3anlabnRIOEhETWxLZlhFZGo4NWRlWEpTMjF3TzREazk0MmliMDR0?=
 =?utf-8?B?Vm5MUm1hMEU3NWVNanVUQzFjdGJxaTBtakZQbVRoWEMwWDE2NjJGQkJaUmVm?=
 =?utf-8?B?aGFTYXhVdGF0VUtlYnJlZE5mcmFQVHJVKzRzdHlraTR2ZktqZzJBdkNpZEFP?=
 =?utf-8?B?T1ljYlAxYUpMMjJ3T3lIQ1B3SVF6ajhlZDRKZUFIN1ZkcmNVaU04aTBSS2xO?=
 =?utf-8?B?L0dsVU0xZERidUQxbEVaV2pLQmNPZlhCOVJlMGUxdlgycUplQ0hKMlZNeUVn?=
 =?utf-8?B?R0dxR0RFRlZoRWpNZ1JxdXA4Wm1PYkFPbFdEL05LUHZzeWpFS1NSQTExRVNE?=
 =?utf-8?B?TUw3VXRDeW5kUlcvWno0aElvd2hzR2ZMTzFUbXVaV01FUjRvNXpWOHdUZTVE?=
 =?utf-8?B?d0VKVEtsOFBFdm1oZlo5T1FiQy9jMWlxUDdaWmhxcmxabTJxV2lkQW0wdG43?=
 =?utf-8?B?Q2NsejhXaXAzQmlicjJ1VlJHRVdNMThINUs5WXFhME5sY2p3OWN1TnpUNENt?=
 =?utf-8?B?YjEyTGxlRWdnVXRZbG5oaHc1b3NTYTBxM2l2c0g1NVBhUTdJVFdjRGUra3dN?=
 =?utf-8?B?bXZKdERmTTFQMzNqUG9FL21jejlNbnNrVmQwcmFTSm5vQzNqNUdrSFd0Wmo4?=
 =?utf-8?B?aVVna1d2cW9uWG5FQ2RiMHNESXJhM200WTZZQjhQbWd4RUl4ajc0aGloUlRV?=
 =?utf-8?B?YnI4NFppQURtb2JJRk5IenVlUlFKaytRcDZERDRhSmhYc2xVN1p6dHorbkdF?=
 =?utf-8?B?N1FoZ01PN2VyQXZyVTR0ZmcyTEphQWhiRktKME5oY0lGb1I3V04xNTRwZldU?=
 =?utf-8?B?MHVhQktXcDd5ZnBBdXlYRjR3eGJ3VDF6U2Q3b3VaRHVuUG1SR3cyWGQzVmhp?=
 =?utf-8?B?OWQ4aTR3NXRaRVIvenJQUlhUM29Wa21JeHN2ZThaYlRRVmhlRVdlNjRZM29x?=
 =?utf-8?B?NEFSWG5VY1VuRXhpY0NVeVI1UWU3ZlRJOEoxWm5ib1VkODBmM2wrMFcrenhP?=
 =?utf-8?B?R2s5dGxDRXBicXJiamdjcWYvN3Y4WDlWK05aOTJweC9hUzcyRTUwdlJHTUdE?=
 =?utf-8?B?QkowQTBpU0dscmVJQmU1Zi84L21rUHpTMWVTczl1Zitzcmxkc3IwTHJhY3gw?=
 =?utf-8?B?RWtWK1J1Wlo0eUdaczVaVHprQnBBNzNTeGxYdTFsV2JSYkpOM0JDclg3c3VC?=
 =?utf-8?Q?fDUt8Ze+MOA=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?d1I2WERzRWFabDZwMGtYamMxWGsvaGNhVkcxdXQ1U3NaQXI0eFFHVytjazZ3?=
 =?utf-8?B?U3FoR2k1RUt1M0Fadk9ZWnlrbHlrOG9DWG02TnhBRDNkUFdYNjlFWi9KVk5k?=
 =?utf-8?B?NlJvbElEZjhYVTR1QkczNlYxYmlzcnN3eEE4bkxZVnhYZ0pxVC9KT24vQjFn?=
 =?utf-8?B?S01HUTJicUw4SXdmNWlVK0c5Wng3WXV4RHRYcURqTlZJb045azNDUC9ZRUpV?=
 =?utf-8?B?WkFJQWtHTXdCeC9JeUcwMjB4enAycitmSFJUMmtVSEh4bVZ3ek5vdkVUR2gw?=
 =?utf-8?B?T3E4YzFac0Y4SlpMTnA5Tnh1SncwTDJKaGJtWmlGOU1BeHdBR2FaQnVnTmRt?=
 =?utf-8?B?cDhtcXhCTFg5MnBlM1hUOG5MV0RoVDRRcXk5aHdaVWpIVityQm1JSCtFcHh6?=
 =?utf-8?B?UHYwcUI5MDkwMVNkaGRaVUgyV01VVmZJQ3hDN293anBIUklPcElyWERXSFE4?=
 =?utf-8?B?eGR5dG0rbE9uUC96elNzeklHcUF3Z3FTUE1tK0Q5SnhOSi8vQzJuVkhsMGNW?=
 =?utf-8?B?YlJKMEIzU1VDTDllTVlQcCtnanZHN2RDM09HSXBwa0N4N1cxbDNwbmJsaEdK?=
 =?utf-8?B?UWZtSFJDWEFnTzYxQ2ZORnJ3TUNFaEtxUmtySTZCUGdjZksrZ0h6TlRidnhS?=
 =?utf-8?B?OTgweGVha0F4QUgvTlpLSlZqQVloa1ZOdzNhRmUyTWxxK3hrMjBxM21Lbndw?=
 =?utf-8?B?UnFtQ0lrWGpaOWhhRHhtenRHUktzczgxMzBScHlHbWg2VFN5eEJpNk1hYTRP?=
 =?utf-8?B?WFFGMGhTTW9yZ2FuSGdBQ25jL3lSUHF0T1d2czV0OFRodWk3d2dCTmlhRk43?=
 =?utf-8?B?NGZxb1Zxa1JNTFFUZ2VnN1dpOWQ5ZERpV1FXeWk0cW5uODVVM0RPNnE1VnFS?=
 =?utf-8?B?S2I5dnBSTlUyQy9yV1gvMXR5MmJlUmxNRCtkeDllaW9YT25PQ0IvZ0ZkeE5k?=
 =?utf-8?B?OU5adEZkZnRZdndrVmJ1eVpoM1A2ODNDb0R0UzNibnpZTjhBUVZKWEt3UzFV?=
 =?utf-8?B?eC93MzZmQk9XcmtkMnZJM28wS0hMSVMwSldxS0JocGIyYzRhanU5d1JDeE1n?=
 =?utf-8?B?bFJXMyttR0NtMFJuTXhKenVZcU1vNHV2Qi9UWGpxSVNnYmlabFJKaW5waEp6?=
 =?utf-8?B?M3lFODdwdXhaZU1yZlZpclUrNTRBVkJJUnhjbC9WVFoySFR6RmhJNEszRTdP?=
 =?utf-8?B?MGN2QWNZYTByNkRDai9yUnhmcXNja2JRczJVa0srZHFHUktmZm9mU0xBZWxU?=
 =?utf-8?B?TWhQbkdaQTdidXdqZGpURVA5eVMwVk03NGVmaTFEbk1aMC9EOGNkaFoySStl?=
 =?utf-8?B?QWNaK3JUaGF2dTlGcHBETzRHdTNUQXNSeHpVUEZtNDhYQjNuMDRxOTZma3Y2?=
 =?utf-8?B?TmUrajRlM1B2YW5BQW9VOUdqTUdHeG9QMG8wQitRclNGQVlXUko3VVhCcjZi?=
 =?utf-8?B?SGlnSjZRWkRRUGkwOUdHK05UUjBJeEplUTZKUThoRC9QeHI0WXc0dklqWUxa?=
 =?utf-8?B?MVUwK0c4MTJudC9IL0QreDdiQlNCZUIvMUdTTFBYTDlYN1Y4eGhBMy9hZTlM?=
 =?utf-8?B?OG15dmNYUWRYWEFDVWxQV1gyK0RYN1JXaFBadTFRek1sVHBOR0lnTlQ4OHdG?=
 =?utf-8?B?STdKR3Vqbk9DRU1sZDNrci9xNEk1dE02V01Eei9HWVNkUm5GOTc0L0Nwb3JY?=
 =?utf-8?B?RC9lQ0RRaFFqM3UxbW9RN0JiZjNBTHFKQVpXTkx6dnhMV3hoQ3hsVE9YamVF?=
 =?utf-8?B?UnY5SzFXSG42QTBOTnRVREIwdkMzbDhLdVJpTGt1TU1yVVEvb3NoUVhRZEdL?=
 =?utf-8?B?bEFtU2dSTlV4T3RrZjIzK2JDc1VCb1hNZTQvcDB2VWo1NzlQakRISVNERGZk?=
 =?utf-8?B?VjAwMEJLSGgvYW9zMkVsdlhzU3VFaWJPRWVVQ1NCa21XaVo3YnpObnk3eWJ2?=
 =?utf-8?B?R3MvSGNDbmFPdVAvc2FFNDh6RnVwS0tNZE16WklxbFJEV3B3cEl1Y0h1WW45?=
 =?utf-8?B?S0tUYjlpWjduam1KMDFiYnlTTmVaL1hWU3pQZEY3dllwRVMvOU8vVkYwS3BE?=
 =?utf-8?B?Y1ZhWWhaTXExNWxvUGl5aGgxcUxWOFI0RlNQcDEwSFdUdkdTQzc3bmVLMjVC?=
 =?utf-8?B?RlBVcFpjeTUrTXhZMitpMWZvUy8wN3huZ0trazNSOTRYYkE0MmU3UlVrdzJu?=
 =?utf-8?B?VXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5902df96-20ed-41dc-2f41-08dd7df82975
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Apr 2025 21:38:15.8395 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qlFQSzubXgBvS5BZcKeBw0K+mTG5rJZdixy7rF3FRGALHJBqpwJ88EQ/k/OcjCwv0UmiRazvaoOqdv6Vvt7NdRhDKhMB7tvro55sNqFsokI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4706
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744925913; x=1776461913;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QThppvbxs33C5LMWmF9zjkhb57ZDxTmYDQfS88I8UJA=;
 b=NsFHzvVlQnPQNTPHWok4MnU5VcikSdyfMgHNnuyYmf1NVQniPR29RqqJ
 RrbRPoX9CQ6ASNRAqaMS60riaSwaDo+G5bhGkZ2yAv5ewnIiiide5m0Kr
 gZ8kaPxlAePKxRGtvInnHW1W+gIISsMIemoucnYiCMf8k4+FyJVGJEhVj
 +zWWOG7DnL8+pEx4QhwuCElxYfPDCi4lr+FGxQJFO0cfpfUwXzLuFhowX
 uoEo10UK3ammBk+0Q3LVUT5QM7QIPzqXSZ1ZNJoUex75aOwyl4TCYv7rf
 zTZPQQj6zLVQKYp3pUWkxU6f0wcBfs0XCXKYSsaAZJUzjtHjiiR3PrTd1
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=NsFHzvVl
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-next 06/10] ice: use bitfields
 instead of unions for CGU regs
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



On 4/9/2025 5:25 AM, Karol Kolacinski wrote:
> diff --git a/drivers/net/ethernet/intel/ice/ice_tspll.c b/drivers/net/ethernet/intel/ice/ice_tspll.c
> index 6bbb570841bb..15b07b7842d2 100644
> --- a/drivers/net/ethernet/intel/ice/ice_tspll.c
> +++ b/drivers/net/ethernet/intel/ice/ice_tspll.c
> @@ -268,76 +270,89 @@ static int ice_tspll_cfg_e825c(struct ice_hw *hw, enum ice_tspll_freq clk_freq,
>  		return -EINVAL;
>  	}
>  
> -	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_R9, &dw9.val);
> -	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_R24, &dw24.val);
> -	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_R16, &dw16.val);
> -	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_R23, &dw23.val);
> -	ICE_READ_CGU_REG_OR_DIE(hw, TSPLL_RO_LOCK_E825C, &ro_lock.val);
> +	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_R9, &r9);
> +	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_R23, &r23);
> +	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_RO_LOCK, &val);
>  
> -	ice_tspll_log_cfg(hw, dw24.ts_pll_enable, dw23.time_ref_sel,
> -			  dw9.time_ref_freq_sel,
> -			  ro_lock.plllock_true_lock_cri, false);
> +	ice_tspll_log_cfg(hw, !!FIELD_GET(ICE_CGU_R23_R24_TSPLL_ENABLE, r23),
> +			  FIELD_GET(ICE_CGU_R23_R24_TIME_REF_SEL, r23),
> +			  FIELD_GET(ICE_CGU_R9_TIME_REF_FREQ_SEL, r9),
> +			  !!FIELD_GET(ICE_CGU_RO_LOCK_TRUE_LOCK, val),
> +			  false);
>  
E825-C used to check dw24 for the enable flag, but now checks dw23. This
is a bug fix for the log message, but you don't call that out in the commit.

I would prefer to see this split so that we do the functional changes
either before or after the rework of the names.

At a minimum, please call out any of the behavioral changes or bug fixes
in the commit message.


> +	if (FIELD_GET(ICE_CGU_R9_TIME_SYNC_EN, r9)) {
> +		r9 &= ~ICE_CGU_R9_TIME_SYNC_EN;
> +		ICE_WRITE_CGU_REG_OR_DIE(hw, ICE_CGU_R9, r9);
>  	}


Ditto here for the r9 changes which don't appear to be in the pre-image
either.

Thanks,
Jake
