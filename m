Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 15BAAAB43AA
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 May 2025 20:39:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 620764075A;
	Mon, 12 May 2025 18:39:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iPjNohhDkpkq; Mon, 12 May 2025 18:39:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D095540752
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747075148;
	bh=TEteX8EqBTguNgh1jmhJRxio7Q2COmkxyDRF8uUVYKY=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=NZdEgDI+qPCUVoJNYaT/YLftDFq48f8UBW5s+kPRQTezBltH4LixRKzYUrL7FPGpu
	 yAEl2X9ldKZHgrDjNn8b3YKQkMaI5SsfCKbubvw4u1ynf3Keo1Sz93OjriB6o4O0Wh
	 k7ySb5Jb49LbwGk2QCUkSj44jV9GnCxjZmA+2LoA1OFhWmicb5XV+Go99e+Rk8ZL8F
	 1XzXEoyp/zJgVB+afmQaoR4eThG/aixl0h6ohq4e7tkXaonH9uyS/wqGXjQ0pzUzRZ
	 ev7H6DpURxRLNrHTOInC0mJDhkpoA38C20VawmiyntsYcm+HKL5MR21JkEGuLmVGbo
	 LmdBkB/pQvPWw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D095540752;
	Mon, 12 May 2025 18:39:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 4EB7A154
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 May 2025 18:39:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3F8D640737
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 May 2025 18:39:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TpDlPPwZgZTm for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 May 2025 18:39:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 54C4C4071A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 54C4C4071A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 54C4C4071A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 May 2025 18:39:05 +0000 (UTC)
X-CSE-ConnectionGUID: m2kdB6PuQeKbOY6QFUgXtg==
X-CSE-MsgGUID: sFFg03IET2KaFiVUFCRJwA==
X-IronPort-AV: E=McAfee;i="6700,10204,11431"; a="59893736"
X-IronPort-AV: E=Sophos;i="6.15,282,1739865600"; d="scan'208";a="59893736"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2025 11:39:04 -0700
X-CSE-ConnectionGUID: NTvbvsm+TqivH04bJ2juXA==
X-CSE-MsgGUID: ZGYbVh3oS76sSbyJu6ilYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,282,1739865600"; d="scan'208";a="142570251"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2025 11:39:04 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 12 May 2025 11:39:03 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 12 May 2025 11:39:03 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 12 May 2025 11:39:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XNGAxZ7gFaB6ERi5vtQFRor2zBiio3hgrBr6sKlmrtPHrlDtw5o7lkGQvRCKlsAamfMkUX0gTXVtr340xBhDNXnl/zaFGFFONmdXG6J2YoWqapAfo8BrY4YBNBlEwX2ixWR7465H1/Y375aLryMDZKnrFCOvKmhaeSZasRnRlqPkqODJxUmi4gx3hEKDaEC3QP6O1gDF62JjyDYO8fD+jqOF6YAIZfPU8H9xflqsltPuVCWUieDlvSUjayH4VuyzTmgCOt4DJtVa8NIdGK+mMhwUbtazis2Cvjqojvl+B1H3iGNiRzqzX6fyW+XlHJoYOkB8AwvCDJjlL9Ytl4ldew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TEteX8EqBTguNgh1jmhJRxio7Q2COmkxyDRF8uUVYKY=;
 b=vhYgQE8EoGiKmiUB9bBbRp+hP47MOfO15Twicv2fYFTfh+K8UpCVx6G92QiTxU0h1Viz0QwPT2E9FmaQsfGoUZ9RErB/9WkzqmYeyBmeEiTvLz9SgJNUHK92OgwGVUnABln/2Dx40t4LB3bdkHFSITNJ3Pgfe9/O1qjUvT7H9CiUFbgBZm86QRjiNnlw9dVT5qTBEq7XFzugcyDT3Il+/18OvAu6ELAmPy5rNC5ZDgOWHvQ8ufgvk55hHJBgvK6pIQov6X7hNrZ7/Fpx+P0onIGnDg7jX6g+fgmP9PQVGHecdFReLxXmwecydchhslk7cHQjKwI8SL1RYgAXo9hLnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by CH0PR11MB8216.namprd11.prod.outlook.com (2603:10b6:610:192::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.37; Mon, 12 May
 2025 18:38:19 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%5]) with mapi id 15.20.8722.027; Mon, 12 May 2025
 18:38:19 +0000
Message-ID: <f557afc2-32f5-4758-9c68-dd319ce508ba@intel.com>
Date: Mon, 12 May 2025 11:38:17 -0700
User-Agent: Mozilla Thunderbird
To: Vladimir Oltean <vladimir.oltean@nxp.com>, <netdev@vger.kernel.org>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, <intel-wired-lan@lists.osuosl.org>, "Andrew
 Lunn" <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, Vadim Fedorenko
 <vadim.fedorenko@linux.dev>, Richard Cochran <richardcochran@gmail.com>
References: <20250512160036.909434-1-vladimir.oltean@nxp.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20250512160036.909434-1-vladimir.oltean@nxp.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW2PR16CA0067.namprd16.prod.outlook.com
 (2603:10b6:907:1::44) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|CH0PR11MB8216:EE_
X-MS-Office365-Filtering-Correlation-Id: c17429a4-7018-4b3e-e7b4-08dd91842acc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|376014|366016|1800799024|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Y0FMc2lPU0JGTWJDUG11aEcxYllOT0hVQzIwUUI0MGlIMk5HTDh3TXFxUjVP?=
 =?utf-8?B?Q1djVlRIVndDRWVyaFdUd1pPYllhRklGMU0xNWV2N0JqcGVnd0tmaGdiY1Bp?=
 =?utf-8?B?Q1FFU3ZUU21NOVV1Smp4dFZwalFldzVLMitlcWZleUg4THpzcjVZcTk4dEM4?=
 =?utf-8?B?VkN2YjNENWNuOTJDSnlhbFU3L0NWV0M4amdwb2x2bXVjcW1BeDVuU2NFVXcx?=
 =?utf-8?B?dEtaaVlNdkt3UUtKd3g2N2lSZGRTdlJlZ3ZqcnVxMlU1YW5oYjdQOW91UHdH?=
 =?utf-8?B?ZG13ZmxNZVpqL3FCNzJheHJmeHNHSHoxN0wyMTdFQkFBSm9LVU42MVNjRmNM?=
 =?utf-8?B?dEs2SWI2SFRPTDQvVzYvUDE4Y2tycVJDcmxJYnUrNjgwVmY5RlNVckVQUVhJ?=
 =?utf-8?B?U1pHT1czMGhEZDRUcHNUb0gvWnRJaTYxb0xZWUhhbUxIdVJrdng3dlhod0Vp?=
 =?utf-8?B?T3VaVzlKNDVoOXRtQkxlUlM3ak5DWVlQVDRRNVcvenFzRFZoU2JJRzBRalk2?=
 =?utf-8?B?ZStXblpqTEliUWc5TzZwbzhHd0twdG5vOVUrelB1MmFLSnNUVXVOWFcxTzJp?=
 =?utf-8?B?M2Rva2RhOFhtL3FVQzljQjJwRmhMRW9aRWlPcUJPeDZqUWpFTHdoZXdkdjcw?=
 =?utf-8?B?YWh3bUVPWDJtcnJtUDQrbDAwUmt3UkZ4SEhsNm4wYjRxWTdWc25TaytoZmRs?=
 =?utf-8?B?VkcvanhVSkowV0tnVkVGenBsYW1yZW9ZdndYbUVYeUJ2QXppYk5RZVdLRmRY?=
 =?utf-8?B?V0JNQkVZUHN6L0tMQUlBZkJscjJ5OGZIUEdDSHRESVZyOEpjNHQ4R0lIa3h3?=
 =?utf-8?B?bWtsMHFBdCtXRGd0Wi9kSUhHMFJpb3RLZzhEcGx3NDFnSTd0b2tjbG41cDZx?=
 =?utf-8?B?clVFOXN3dnNKcUZtenpJMmUrZHBhTWhIRGNyeitpTVJDZTBlc04rbThYVjIw?=
 =?utf-8?B?S0gvTGpnSXJkNVdIWTBiQ1MvNXdldUY3a2g5RkFqT2JrYXpyZCtrRVdoeCs0?=
 =?utf-8?B?aktXcVErRVo1aGJqY01EYllWRms5QjgxM0VpMnB4V2ZjRmpsV0ptaWJIelBT?=
 =?utf-8?B?UFpjOG9jb3pjZ3B3bUE1YjNWVVJmNlNSL3BYbWtVcVlHcENNMy9GcEVyWE1E?=
 =?utf-8?B?aVhiWXBJUXNINml1VnVocDh3ZXBJZURQT1dxQ0wyTzk4My9Ub0E2RXl2WE5M?=
 =?utf-8?B?ZnA5aG14b2p1c3RsOE92RVZ2aXhMcHdodDJWb2FRdnlER1IrOUlXMTE5L0FE?=
 =?utf-8?B?bkhTQ2tQT1ZEQUFUMW9BQ3BhcDdRNDJVMzdEeFJ3SU41cm85czBWN1pSK0ps?=
 =?utf-8?B?cmpyajYzU01hS0dMeXBzci91eWx4TDgxL3NKVFpMQkJkVXA0OU1tcTFvZHR1?=
 =?utf-8?B?Rk9Rb2FKZkNVQlkyNllqcXVHMjhjOVhobTI4ZUpFanNncUY2Ym5MRXlka2Nt?=
 =?utf-8?B?NW5wTm9yYW5jdDVKMmw4ZjVwTVZVSDg4d2p0amtUT1NEeTdlNFZYdVVMM0th?=
 =?utf-8?B?Uko4UlVnZkMrdXMyOE5YK3VKU2tDVDRTWG9qRU02cnkrVnFwd0d1aU9mNTJ6?=
 =?utf-8?B?dElvZ2Z0aHpCeHZkUzhoSnlDOXNsNjI3d3h4emZOUjExNFdyK01NcXVwSHVk?=
 =?utf-8?B?b2U1bzlzeG1qcTZwc0NDcWt6RFZZa2R2ckNndkYwdy9BVzI4MERXU3dkUnRJ?=
 =?utf-8?B?NExJTmVoTjNleGZ4UEUyaVo4Z2szRjlLT3l0WEF6VzJTR2ZqRVVMbmhzMnFz?=
 =?utf-8?B?UDlMZGl4di9NbE1rdmI1RlErNG5Ec2dZQWhQM3lSeFkwUU1zOWZ5Ym5hTEJR?=
 =?utf-8?B?SGhUY2lJS2xPdmkwNkQvY3MzeVlBZ2Q0cWs5OFpWMXpaNHJKbEFlb3p6d3Fy?=
 =?utf-8?B?TWFGcDBqcTRUTnBBY05ZeTlYdVVtQ3FTTDBiMWk0aXE3Um9pek5qU2VCNlZx?=
 =?utf-8?Q?4J4/GH5Ie7k=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UEUva1BXWWZCbTZNTFRiU01XeEhtMUJ6VmJBblN3ZVdDNFFDQ3p0T0J5aWxW?=
 =?utf-8?B?bnZEU2o1ZTlYQkQyQnpqUllLODRVQ0xKZkNpQ0lhbHF4dVhLenN1MkdLdDF3?=
 =?utf-8?B?ZG9UTFBSWDZXMlZOZTc5S1QxTVpFSFNvY3RUU2hXQnVLS1JkZThvaUF3eWYw?=
 =?utf-8?B?U09aenFRWEVlK3VkZmYrTWZheHF6THQ3K0JHWU0wQ1NUNWEwYWUxMnFqV25L?=
 =?utf-8?B?NkVSejlraWlveGIzUkV1MWxCdUd2QXlQcmZubm4zeDcwRDRqYlMwZzIvazd4?=
 =?utf-8?B?aUFYd1FnRG9zR0ZuS1dHZkF2RjRoY2N4ZjFzK1VOUCt5NllZeFZ0QXJheS84?=
 =?utf-8?B?Yk9DNmxaQVNkdlpGd3VmNUNIUE05cThvSHFnNm9SZW9UME5Hb3B3R0pNZTk2?=
 =?utf-8?B?QXU0Rjd0UFJuMzZVQlAwQUgyZXNWc283Q1E0L3d2RW9CdFd4TXE1NC9TRjFB?=
 =?utf-8?B?cVB6anozQ3czdjNlMFlSTXRpR0w3a3JaSVpnRW04QmlUVkxiNHFQcFpndldy?=
 =?utf-8?B?azJhK3dKS0VFSVpHYzJuMUxDMU9BOE5qYVRudjd1ditMaWdBT2VsWTBmZGFs?=
 =?utf-8?B?MjRSY0ZWd201U2duWXYvSVZ5T0dFcGNzalFUTU5abnZRZVR5RnF0bnhxY3Fz?=
 =?utf-8?B?TjcwNkhIWVJmTEg0bUczbWN3ZUpqb0lYeDRFYnlPdnVxYlUrQWRtRjdWbzBP?=
 =?utf-8?B?Sk45cHcyWmw3elpaMEx2U0JFMFhSL2tZc3dyVGQvWWx4azJMcHp3cUVhcnpn?=
 =?utf-8?B?SkY2YU1KNnZOckJYUFZZOGQrQ3lqR1haWUpSZzVIYmt2MGZBenBWN2ZWZUVO?=
 =?utf-8?B?blpkS3BiVFpXS3lOdVdEWHZ1QlQ0WGpjc3FpYUgvMGF0SzdlMUlxalllZENH?=
 =?utf-8?B?dHNCV1RMZjRQQS8wenN5SEM1OTVJZmtGQVFIZGVXenkyRmVYdVl3M1dod0hr?=
 =?utf-8?B?ZXprWXEvR3pEbktHdm9HKzhoYmpDMHZhd3VqQk53ZmVsbVVKOXNlZCtMeHpM?=
 =?utf-8?B?ay9YMVB0ekh3czNzbTdCV2tia2lxSjRKdmxveWZpaW1NYlZpTmplTXdDYlor?=
 =?utf-8?B?WUsvaXhFZ2N6Ky8xNDMxZEgrcFVSWjlMcGJLdmRpTElPWml3Rmt6YitvaGtN?=
 =?utf-8?B?VEVVZ3VrWjJWbytjelZ2NFR3SzFxSm9tMHVXcXpVUFVyYjdHVDAyY0FldGRW?=
 =?utf-8?B?WW9XaE5ZU2ZkMkpDU081dW9aeWIzSXZ5Qjg4VkRUWGpRSmFpTjgvMnUwTkVY?=
 =?utf-8?B?TTR0Q2pzTXpyUDZiei9IR1ZnVWk5NklOZmhOcTk2RDE5c2dMYmV5NFptZ01w?=
 =?utf-8?B?QlJ6M090U3JMOEJSRjEwL09ydVNGZ1NHcy9qTlBkbUVjVXJMYVFFT0hIVTNL?=
 =?utf-8?B?NmxuekpNdkxsSldobVdLOHRIK0NmV2ZSc2c4Z1hIQ1RYMUY5SE5qOFRHSGlo?=
 =?utf-8?B?NG1HeEVMOTRSZmtjYWc3aDdvb3JrNVM4NFRNOTAxUzBKZ3NoWUJzclJGMmNE?=
 =?utf-8?B?RmlBVC9VR1lqOTRKS3dGcG92dVIzOEtodjlRRS9pNEE1TE9aWlhKQ2xQaldJ?=
 =?utf-8?B?SFJVc2xkeVN3UVR6Y2ZocERRZXM2OHpVcGtYZU9NR0JDSnB0aVA0N3ZQem05?=
 =?utf-8?B?M2FsK0FndTQ4ak5CQkVWMmVmeXEvc3hwMFA0bmUweTVVakF4NUFkM0d5M2gw?=
 =?utf-8?B?RUxlYVJucDlMMmlBZTZBemJac2gxQkdCM1MyY01VZUxnUVk1YjhHODdtU3Mx?=
 =?utf-8?B?ZGV5L3lhampWaFowMzdPcS9hZk8yYkFscVJ6TWw3VzlQaUx3OCtwTk91SnJr?=
 =?utf-8?B?M1o3eXBQTTRZM2pjUHZUSlcwa0dtYmh5aHVwajYxNkdHU0xRRksxd1pTVFQv?=
 =?utf-8?B?bmN4RkMwNGxIM3JpZkM3aEV2Q1hSeS9meW1qeDB2QzIxVGdZL01wVGVDZzAy?=
 =?utf-8?B?a0xmOFlkQlpBZko3SFVFSVYvN3Q1Uk5rUlllaVh4eEpSaGZqb09mY2xleW1U?=
 =?utf-8?B?bTBiaVRLWDYwdlQrS1pYRHc2c05adldUT2dVVUYwNWM2aDhacVNML1g2VWVl?=
 =?utf-8?B?Q25RN2dWY09aTk43WCtzWThSTFBSZlVnZWtFdTRQQzFDb0tNN1c1T1h1VXNr?=
 =?utf-8?B?dzdXcmlma1phUEZYNmZQWDNLcnNDR3JCSG8rcmtOOHdSV1JKblZ4aDVwdG9u?=
 =?utf-8?B?ZXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c17429a4-7018-4b3e-e7b4-08dd91842acc
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 May 2025 18:38:19.8202 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ufyg/Lf7GzOki8nseq4PYHeivAw7oujdGgUkJbFu4EV7wntZcV88CrLVtF92rT7/Dx2i/LePFT18rg1TWWQT++57lHbYcSLQiCA+aE9lB0I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB8216
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747075147; x=1778611147;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+uHMaerER5alLKfWZ8tCjP2LRuqe4n/g8MNuK2BOEzQ=;
 b=WhYsNKjxSTRUPlTrhyl3CbUE9a1qybZ0F1ZpDdctWvevr7ln2Q0hZCfT
 tfueCysi/N8shc5o5wFbXTV/18eo9no+ml4rffpyBV9HWNkKygEhNiyu3
 ahs3YCtHhMbwOafKdvyE0WcLZiSmQqC3u70irZN4lZTvTkrUyEbFe2sPM
 YWORqcaN9OXBGVATDc/OrMii09t1d7OsG8RRYG+SCOjEyByHs9+yVY6XG
 MsksZnGQvg9OJJt1wYFo7JmB6HNRnav/i+0uT8IhnTVb1gij3BAnKLGUy
 NG271nC32F13WQ6WHfeilyikx7amLDXXkRwcxfL6pufUuL3BSAX5epr2i
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=WhYsNKjx
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: convert to
 ndo_hwtstamp_get() and ndo_hwtstamp_set()
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



On 5/12/2025 9:00 AM, Vladimir Oltean wrote:
> New timestamping API was introduced in commit 66f7223039c0 ("net: add
> NDOs for configuring hardware timestamping") from kernel v6.6.
> 
> It is time to convert the Intel ice driver to the new API, so that
> timestamping configuration can be removed from the ndo_eth_ioctl() path
> completely.
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> ---

Acked-by: Jacob Keller <jacob.e.keller@intel.com>

Thanks. This has been on my list of nits to cleanup but I hadn't gotten
around to it yet.

I'm covering for Tony for a few days, and will queue this up on his
dev-queue today, so that it get get through our validation cycle.
