Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C13B9A4F09B
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Mar 2025 23:37:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6B62660E3D;
	Tue,  4 Mar 2025 22:37:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id v8jr5-Hil4Tv; Tue,  4 Mar 2025 22:37:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5426A608B0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741127851;
	bh=5kWOfZYbpInLpB0fu+VECu2/qYRvQ0tWMGTL/TJL9kA=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=jygJqQclz8csRghmBEZT2tooozdWlTzF3WAs325J2z1rJIJwwVa8uN9E+wPqKucAf
	 mJUstKN16k3eARLbw44cTi7wU0ZI1pE98KYbJ7UuTvdQ75xFevoRTDb3i13I/XtLl+
	 RtTekoNPsNqnnkhNVdbW0MlgOKPAyyseM9VwyRjg6R0dWOzPg2vjyFFAmukex+Tdm2
	 4104Y2eKDWKKMZ64hPJGRTs1sp638CSaZXisA57aVO51/mKVhCDXOwB9CpszbSTIIJ
	 6f+D3imiv8PmhbPIoooplTuSMIqRPElr+YsAw+HB68Kro7DSs36x+qvzCdB6qlJ6M0
	 7X2fAHkoc3XYw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5426A608B0;
	Tue,  4 Mar 2025 22:37:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 336A0D2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Mar 2025 22:37:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 132CD40169
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Mar 2025 22:37:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id B9BEk5gtshbr for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Mar 2025 22:37:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 67FFF404AB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 67FFF404AB
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 67FFF404AB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Mar 2025 22:37:27 +0000 (UTC)
X-CSE-ConnectionGUID: zwc+KLcrTYmVQ9ckSEPO5g==
X-CSE-MsgGUID: otzVYBmvSnOS2KNujuhKFg==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="42201229"
X-IronPort-AV: E=Sophos;i="6.14,221,1736841600"; d="scan'208";a="42201229"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 14:37:25 -0800
X-CSE-ConnectionGUID: nedJrH9eTJuUtyXcHriLPg==
X-CSE-MsgGUID: V7S5QgQDTpG7Gwgnt6HP/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,221,1736841600"; d="scan'208";a="118993680"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 14:37:25 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 4 Mar 2025 14:37:24 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 4 Mar 2025 14:37:24 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 4 Mar 2025 14:37:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vu0bzl044juLet7TEomOgLrOPa0o04dJU9+nFGWYR5hThSIGwxBjaD7R2LzfjSo1w2AAxoO8r5B/bKtU32MOpu8ZVb2ffKTyKXtGL/dY96Ea8x6ayXBDVVKx2gfp/tp0R5x0uQUUBkLNKWMKuIhBWO7HmZUoRncGLCVkwDQ23uS2c5kMDo07v6O7Yew9QQ0+/97xvHrjlPCEYfYPuI3Qsr3TZZLZcopHCSy4zQdNan3pzrNpiR1QVtjAjXObkythhM+xj1NUX4fX4JG34WNeTTEn4KxEFpcWArzOmAb9Lnz88V5k3DeMLjpB/JtEZK55k+ztfQ4/f2npWTtOWE7ZDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5kWOfZYbpInLpB0fu+VECu2/qYRvQ0tWMGTL/TJL9kA=;
 b=gdJjKXVb7o3nJdP2SoF++o1gUb89d6TDvPshRBc7yDFO/SgvwH5LqBFBrz94JF6S9OtqQJcXG44ayAQ5ZvYirQ3NgRLv14oXnfQYl4RDoD1wIv6gbZmO7mPOCNDR5H/uG0WXFznt5QX6q489gIwUvddsdjRonsiifcWhq6EEFTPHoFBAmRSfQxpRPmTjpvkh9pPn3RJM/3V7wGbcPAh6s9DTY2PORwxQ71GLBySNNVvGrS2U+qsrXMDfNGjotxcXEoISp4cvamKysaOw1NmhjuFVWn3HTo5yct0CtC42yMYn07FuS1uh7tuT5Ra3aFhRkXGUsiGWu1z/B+loa0SzHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7420.namprd11.prod.outlook.com (2603:10b6:806:328::20)
 by MN0PR11MB6232.namprd11.prod.outlook.com (2603:10b6:208:3c3::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.27; Tue, 4 Mar
 2025 22:37:17 +0000
Received: from SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::b8ba:be35:3903:118f]) by SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::b8ba:be35:3903:118f%5]) with mapi id 15.20.8489.028; Tue, 4 Mar 2025
 22:37:17 +0000
Message-ID: <54f50b81-7361-4140-8b88-acd765fd8f49@intel.com>
Date: Tue, 4 Mar 2025 15:37:08 -0700
User-Agent: Mozilla Thunderbird
To: "Arinzon, David" <darinzon@amazon.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>, "edumazet@google.com"
 <edumazet@google.com>, "kuba@kernel.org" <kuba@kernel.org>,
 "horms@kernel.org" <horms@kernel.org>, "pabeni@redhat.com"
 <pabeni@redhat.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "michael.chan@broadcom.com" <michael.chan@broadcom.com>, "tariqt@nvidia.com"
 <tariqt@nvidia.com>, "anthony.l.nguyen@intel.com"
 <anthony.l.nguyen@intel.com>, "przemyslaw.kitszel@intel.com"
 <przemyslaw.kitszel@intel.com>, "jdamato@fastly.com" <jdamato@fastly.com>,
 "shayd@nvidia.com" <shayd@nvidia.com>, "akpm@linux-foundation.org"
 <akpm@linux-foundation.org>, "Allen, Neil" <shayagr@amazon.com>
References: <20250224232228.990783-1-ahmed.zaki@intel.com>
 <20250224232228.990783-3-ahmed.zaki@intel.com>
 <c531f3a202e746e39faf27211b80aa69@amazon.com>
Content-Language: en-US
From: Ahmed Zaki <ahmed.zaki@intel.com>
In-Reply-To: <c531f3a202e746e39faf27211b80aa69@amazon.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0068.namprd03.prod.outlook.com
 (2603:10b6:303:b6::13) To SN7PR11MB7420.namprd11.prod.outlook.com
 (2603:10b6:806:328::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7420:EE_|MN0PR11MB6232:EE_
X-MS-Office365-Filtering-Correlation-Id: 3c4788b1-fd12-47a1-2f65-08dd5b6d1e5e
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|7416014|376014|1800799024|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cmpyblJpNkFHQnVJVEtFVWVhUmV0Q3VhUWJ4UW5ldXJrOEVXRFY4azBQcXF0?=
 =?utf-8?B?ZytOT1haVTNCSHZrZDJ4UFFLSFM3bHVPZldNejNFOXNqQlFNRlJwdS9wcEJT?=
 =?utf-8?B?M1ExY0NJc2lubTFpaVFwK0NFSm10MG51ZEpOems5bk9TbDdIVEZUdHZsZ0tI?=
 =?utf-8?B?TSttVVFJQ21NdGVtQmVlcFVnOFdZRzg1R3ZBWk9uVmhFN2VncnBUUDFEQ1BO?=
 =?utf-8?B?WW9pNjFmaGk5V2pRK1ByeTZkdmM3b0VjbXdhRVBPamc1RWc4UFNuSVd4NWdQ?=
 =?utf-8?B?b1JjeU9WdkFnbEc4WnJncGZMNTJvTzNRTkxTWmNpNjNMb3VYRHVieDRIL216?=
 =?utf-8?B?Wm5pZFhWbUFacGJYcWh1RlgrSUNLWU43eHR2dnNzMjh6bzBobkRVaEJmbmFY?=
 =?utf-8?B?Y1BVVkVsMkxuMHlrZ29TL21DeStFOUFPSitId2lQRkQ2WXpaZ0Jxdmpldm1n?=
 =?utf-8?B?RVphTVppZ1NnYUNCcURhZGVvT0RNZzMxV0lMSS9Uc0RMTzhUU2ZqMEx5VUJV?=
 =?utf-8?B?RFFJdmpvSXJWOXVwZ2VTOU8wbjFIY0l1anhCSk5Uc0xFbVRYckcwbHRRbWxD?=
 =?utf-8?B?SmM2djYzMFh5ZDhwckNraEVDNWQxVVZ5cjkxTXRSdzd0cGxTZ2VyNHhMdEx5?=
 =?utf-8?B?clVVVHc2SXBTcFQ0NTY5UU1nZUdtaGJneHRqUDJ5cGQ4ZmNDSnhHTTVhVVBP?=
 =?utf-8?B?MWUyMjZ4MkJIUE9mWSs3aXo2WXVEcU4ydWNkNnpYdEJJS0pxR2FuT0pnTWxn?=
 =?utf-8?B?RW95VEk3enFVYllzTkRLTzJtQUhlWHVscGtZbU5ZUmV0ZGEzQUlHQ1YraW9z?=
 =?utf-8?B?aFNySjhBRmRDWHhHQmpVWDkrQS9Mdjh5R25jR2ZFSDVGSmtlcis0UkI3bllG?=
 =?utf-8?B?SGtTSG95UERMdjArTVh2bXBCcVJGUGhzRkd5SHYrc3VzUDdxckF5ZWs2cWhN?=
 =?utf-8?B?alliWTRKOVdtOHpRME5DK2VkQjdjNVhhUmxvTE1JcWtqUk94cEhSTVVBakJV?=
 =?utf-8?B?dlV6ODBkYU50TCt3bmZVN3ZYaHp0Y3dGOG9SdFVTdzlxY3M3YkZoR1N0dUZw?=
 =?utf-8?B?SmhOWGZUME9TQUpYOWkxS3JvYzk1b1k1bEVTdFBhL1I5Q29lT0ZsSVl4U0pi?=
 =?utf-8?B?eVJSc09CTmhKeVJpTDgrWW9GSWZKWWNTNG91YkNmNkQveCszV0tSSXRYZFhx?=
 =?utf-8?B?VDdVSnlQS0RVWlgvNkVOdncrbkNyR0FBZDdpQ2o5K0g4bFVrRVFWbFlESzFE?=
 =?utf-8?B?VEhkeXRpczRBQUFtWkUyQXF3V3N5d2JpWTBwZDU2UkswNndnQW54aWFWaHQ3?=
 =?utf-8?B?ZzUySk5Ba21iTmNwWit2SU5LVlJyenc0NWVUNmVNSVBQdmZ4VEJVRExKelha?=
 =?utf-8?B?aTNZLzZxbTVSRE1MQU1CNGlhNlpNbC9VRU52a2UyR1BIdGtZOHNHQTVyWE01?=
 =?utf-8?B?dElMbjBjb3B5SE9pUkswSlowa1Y1R3pGZ1lZa3FHWXlFTmJkSXl6NG5HQmZs?=
 =?utf-8?B?ZFVSQVI3UVMrN2RvL2NFSitEVFdDTTZ1dFdIWFR1ZUplMDhnZERuWjdpVFZK?=
 =?utf-8?B?Nlp2QlRtdnFiRnhFZEhxU1hlZUc0ZXplRS9NQUg0eHMxNnhtbmZCa3l3enhJ?=
 =?utf-8?B?ekVHcnNwdDRvNStKMnpTUnpmVXZnZ3lUVEFHK21LNDU1WGdHTmlDODJHUjV6?=
 =?utf-8?B?UkZKZjN3VXdyT3RvbkZkb1ozZDVCQSs0Q2drbGN0S3BlUlJXcGRSTHdVM0Rp?=
 =?utf-8?B?SE1DRFpXQnQwZ2ZvZ21BQ1JUc1dFbUFLM0czMmZMWTZHUGdrelN0VHh2MXZ6?=
 =?utf-8?B?MVplUEJTRER3R1dyRi9idz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(376014)(1800799024)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SHBjS1o3VUhxOUduamNpQVN3ZVU4bnd1OW95UUFSc3QyLzBRdnNSYXJxS3NW?=
 =?utf-8?B?R05ZQzhQU0ljWlNxdTlDTlVZSmJtRDhhaDJZNEQ2c00zRDdSRTdoVnZieHRR?=
 =?utf-8?B?M3E2Q1dQOEk3WHdhaTZLZHJEZ2Vqbk5aT1RtMEVtSWRxZko5Z0h4amkvc09D?=
 =?utf-8?B?cGdIa1MrTmF5Q2pPOXZuS1pmc3BHc0h1SzJkUEt2Y1orTmJXRWtjK1BTSDJ5?=
 =?utf-8?B?eWs5MnV2bHhyZWozWDBUaklXUmFtOXIyMmQ3M3l2T09DdUd6OTUwaFd5QUxB?=
 =?utf-8?B?b2VwdEhXMlBaOWZLWkxaRTVjZHJaY3psZnA3eUV0cldqQjRaL2tsb1hOWEJW?=
 =?utf-8?B?NGxkUzBZYmNkdXdpOVNxMENxUVk1eVQ0QnloRThWa0lCYUg5cjlyenZRb0xQ?=
 =?utf-8?B?MEl2SGtWWjY5czFlWnVjNFVOV3dLRlFubTYxbkcycHBYaG9Iei96Z2p3dVZw?=
 =?utf-8?B?MVZoSlZtekZkR3FmaVF6N2s1R2FRR01Dd3MxVFFiOXlWcyt6M1ZtY2dML1Va?=
 =?utf-8?B?UUwxSktrQWdHeDB0cnRVZE5aNUJ4Q0Y5WTdmWXVUQVZiZ2FreWEyUkUvbnpF?=
 =?utf-8?B?S0syanNzdmdFVUE0VTE4TUNsWWx0a096UURmRW53K2p4TVJ3ODE5NmVLaHBT?=
 =?utf-8?B?d1NLZFZqM2kwZmZvVFdDL2pMY25CejB5cFkxeHJKeE1kbUlTeHp3WHh1U1Nn?=
 =?utf-8?B?djdma3Q3MVE1WEZYTDFBTGhzQ1gyT3RNN2xsbkllVVBUYk1zcU9Ka2I2Q1pt?=
 =?utf-8?B?UVcwcC9JTHdnYkRRWjFLQW0zMW42MlRVOTNpSkc1UnNZNUJuRVhzOW8ydjI1?=
 =?utf-8?B?VnBZR1ZrdTZqK25uaXpxRzV3emI0REZIUjluSTh0cWJqRHF1U1ZaWVptSEFm?=
 =?utf-8?B?bHF0Y0lXOFZwa0VaSld0eUsvS1Znb0N4OHVBOTlRZStaNzdGaXpGTVZFbUJr?=
 =?utf-8?B?Z25IOXBTUFB0Q25ZK2xCSGhBc0g5L3IrVG9lemkrN093Zzd5Ylo1bkVNcVp4?=
 =?utf-8?B?RUpUVHVDZ3MzaERGV0VlcGtCNEE3YXF3NUVCMDg2K3J3WlN2eG1hc21YaWpw?=
 =?utf-8?B?VnZHbGVyZWN2WSt2aXpxd2RlR3hoREhJN0VkLzdqZkxSU0dxbkJMU1puL0xm?=
 =?utf-8?B?RS9GRWU4bGdhdTlBUTBXUUsyTXdLZEw0TmphdUJkQVY0ZDkzN2pZRU03OC9J?=
 =?utf-8?B?ZjRWZGFZMVNhTUpoRndYRGpFYldIM3JQdTZ5bzd2ek5MeVF2anpGS2gvMjl2?=
 =?utf-8?B?ZHhnME50djB6Rmthd0ExTEdWQjlTLzVqdDdVMGg1NE4rMHdxS25DMHY5WU90?=
 =?utf-8?B?UGYreFRpSy9SVFgvRnA3dmd5S0xvS2VsVlJIZ3JPNXp4bGpuSmtIUXZQR1dj?=
 =?utf-8?B?bXc1elZUWTQyOUsxM2ZOelhBaGFza21wdTVsajhsbFVrOExBQjRwYVpPVDNl?=
 =?utf-8?B?czRzdEkrNi80Zll5K09WYWJ3bk5CYUt0L1k1WG1iWlFKRGNZUWUzMG1OTzdq?=
 =?utf-8?B?OGZzb3F0LzdmY1J5WVZKNkttUW13RmpIenU4N290WWt4OThGUG9tM1U0UG41?=
 =?utf-8?B?N3pyRHBmY256OS9HQVpPUzU1a051TjM0dnRQUkNJdFVnWnpHTHJsRVVRbENQ?=
 =?utf-8?B?R2xEQ1lhYW5DT1pZL2RWRFoxVlplM2pjNFVwMi80SFAyaUtuWW02YldhWWp5?=
 =?utf-8?B?TkR0YkhKdENqRzJlTkI0bUJzVkhLaGw4YUF6djhMd3VRYXlJc0RTNUF6VUt0?=
 =?utf-8?B?bFdhVnRFOWZoZ2Yzeks1bUJxTVQ3SE4yWEVYUGdPNUVjcjM0TzZzaW1odHRN?=
 =?utf-8?B?aC9TaWVsVEJmdlE5aXpROVN4eFY3N0pmTlRUSVdOTGpNeHdneU1wa0N5THp6?=
 =?utf-8?B?QVdlaUtKWVZrdHp6ZmNrRlhiSUs5aXlPbFFXeGhpcW1zckxJMytQbHdRUHEy?=
 =?utf-8?B?VHFIZktCMXdwZ2JjTURySU55ZWtmMTBJMzlLR1ZXVGxmYkEzd0h4akpXOVMw?=
 =?utf-8?B?aGhzK1h4V2laWTRlL20zQ3dkWFN0TXlFZnZwQWVra2NRMEFQbzQxZC9RUENK?=
 =?utf-8?B?WnkrMk4zTEtFRE9KZXFVTytZelhwN1FSQmpJeG9nT3ExNlVaNy9NaTE4LzdT?=
 =?utf-8?Q?bU2Qd1ExsknplYs04CZQkr/jr?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c4788b1-fd12-47a1-2f65-08dd5b6d1e5e
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7420.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Mar 2025 22:37:17.7906 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Jrz3T9aB8legZCkanGV5ZMu7OFpZ2SsygymVw1banKJwRfa3yJxWVEyjicKmTBWTNFdJCzh9ed3PLzy5FNiA6A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6232
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741127847; x=1772663847;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=58zcXf0020LiitBfmdPDLq16UeZ8CLOxFIY4hB65G/Q=;
 b=CKK7lsJ7ecqhIZgwPQi2RGo6wKn301iMvA5HBqfQZ2w22KmEVmoOAn1y
 8zpV2FrUVSIiOZMF1CuqnIes3/Jf/JekzGUu1XUbDLvmkjHRMttJbSaKg
 ouwN+ooEKnfbHEouWPE0yTBXitHZxPeTOcAK2Qe1oxacJo72zqx9QYkd/
 oiBxOrf7+bI/8/cKIhMWtf8i7SXkF3Eqyw5snuOA6icBBajcKsfp9ri12
 A/wQW9BCvWv/92rOP6BZ4BZFaqiTA8bKWtzrykW2VAuI7UFM5SFjzXuBv
 Wb73ZNwIdQNqdyJFCCKDvJQb67rfkU66nFObKBo4J/ZlbZmttNW6rSJ6U
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CKK7lsJ7
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v9 2/6] net: ena: use napi's
 aRFS rmap notifers
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

[RE-SEND] I just realized I sent this only to iwl, sorry for spamming.


On 2025-03-03 10:11 a.m., Arinzon, David wrote:
>> Use the core's rmap notifiers and delete our own.
>>
>> Acked-by: David Arinzon <darinzon@amazon.com>
>> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
>> ---
>>   drivers/net/ethernet/amazon/ena/ena_netdev.c | 43 +-------------------
>>   1 file changed, 1 insertion(+), 42 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/amazon/ena/ena_netdev.c
>> b/drivers/net/ethernet/amazon/ena/ena_netdev.c
>> index c1295dfad0d0..6aab85a7c60a 100644
>> --- a/drivers/net/ethernet/amazon/ena/ena_netdev.c
>> +++ b/drivers/net/ethernet/amazon/ena/ena_netdev.c
>> @@ -5,9 +5,6 @@
>>
>>   #define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
>>
>> -#ifdef CONFIG_RFS_ACCEL
>> -#include <linux/cpu_rmap.h>
>> -#endif /* CONFIG_RFS_ACCEL */
>>   #include <linux/ethtool.h>
>>   #include <linux/kernel.h>
>>   #include <linux/module.h>
>> @@ -162,30 +159,6 @@ int ena_xmit_common(struct ena_adapter
>> *adapter,
>>          return 0;
>>   }
>>
>> -static int ena_init_rx_cpu_rmap(struct ena_adapter *adapter) -{ -#ifdef
>> CONFIG_RFS_ACCEL
>> -       u32 i;
>> -       int rc;
>> -
>> -       adapter->netdev->rx_cpu_rmap = alloc_irq_cpu_rmap(adapter-
>>> num_io_queues);
>> -       if (!adapter->netdev->rx_cpu_rmap)
>> -               return -ENOMEM;
>> -       for (i = 0; i < adapter->num_io_queues; i++) {
>> -               int irq_idx = ENA_IO_IRQ_IDX(i);
>> -
>> -               rc = irq_cpu_rmap_add(adapter->netdev->rx_cpu_rmap,
>> -                                     pci_irq_vector(adapter->pdev, irq_idx));
>> -               if (rc) {
>> -                       free_irq_cpu_rmap(adapter->netdev->rx_cpu_rmap);
>> -                       adapter->netdev->rx_cpu_rmap = NULL;
>> -                       return rc;
>> -               }
>> -       }
>> -#endif /* CONFIG_RFS_ACCEL */
>> -       return 0;
>> -}
>> -
>>   static void ena_init_io_rings_common(struct ena_adapter *adapter,
>>                                       struct ena_ring *ring, u16 qid)  { @@ -1596,7 +1569,7 @@
>> static int ena_enable_msix(struct ena_adapter *adapter)
>>                  adapter->num_io_queues = irq_cnt - ENA_ADMIN_MSIX_VEC;
>>          }
>>
>> -       if (ena_init_rx_cpu_rmap(adapter))
>> +       if (netif_enable_cpu_rmap(adapter->netdev,
>> + adapter->num_io_queues))
>>                  netif_warn(adapter, probe, adapter->netdev,
>>                             "Failed to map IRQs to CPUs\n");
>>
>> @@ -1742,13 +1715,6 @@ static void ena_free_io_irq(struct ena_adapter
>> *adapter)
>>          struct ena_irq *irq;
>>          int i;
>>
>> -#ifdef CONFIG_RFS_ACCEL
>> -       if (adapter->msix_vecs >= 1) {
>> -               free_irq_cpu_rmap(adapter->netdev->rx_cpu_rmap);
>> -               adapter->netdev->rx_cpu_rmap = NULL;
>> -       }
>> -#endif /* CONFIG_RFS_ACCEL */
>> -
>>          for (i = ENA_IO_IRQ_FIRST_IDX; i <
>> ENA_MAX_MSIX_VEC(io_queue_count); i++) {
>>                  irq = &adapter->irq_tbl[i];
>>                  irq_set_affinity_hint(irq->vector, NULL); @@ -4131,13 +4097,6 @@
>> static void __ena_shutoff(struct pci_dev *pdev, bool shutdown)
>>          ena_dev = adapter->ena_dev;
>>          netdev = adapter->netdev;
>>
>> -#ifdef CONFIG_RFS_ACCEL
>> -       if ((adapter->msix_vecs >= 1) && (netdev->rx_cpu_rmap)) {
>> -               free_irq_cpu_rmap(netdev->rx_cpu_rmap);
>> -               netdev->rx_cpu_rmap = NULL;
>> -       }
>> -
>> -#endif /* CONFIG_RFS_ACCEL */
>>          /* Make sure timer and reset routine won't be called after
>>           * freeing device resources.
>>           */
>> --
>> 2.43.0
> 
> Hi Ahmed,
> 
> After the merging of this patch, I see the below stack trace when the IRQs are freed.
> It can be reproduced by unloading and loading the driver using `modprobe -r ena; modprobe ena` (happens during unload)
> 
> Based on the patchset and the changes to other drivers, I think there's a missing call to the function
> that releases the affinity notifier (The warn is in https://web.git.kernel.org/pub/scm/linux/kernel/git/netdev/net-next.git/tree/kernel/irq/manage.c#n2031)
> 
> I saw in the intel code in the patchset that ` netif_napi_set_irq(<napi>, -1);` is added?
> 
> After adding the code snippet I don't see this anymore, but I want to understand whether it's the right call by design.

Yes, in ena_down() the IRQs are freed before napis are deleted (where 
IRQ notifiers are released). The code below is fine (and is better IMO) 
but you can also delete napis then free IRQs.


> 
> @@ -1716,8 +1716,11 @@ static void ena_free_io_irq(struct ena_adapter *adapter)
>          int i;
> 
>          for (i = ENA_IO_IRQ_FIRST_IDX; i < ENA_MAX_MSIX_VEC(io_queue_count); i++) {
> +               struct ena_napi *ena_napi;
> +
>                  irq = &adapter->irq_tbl[i];
>                  irq_set_affinity_hint(irq->vector, NULL);
> +               ena_napi = (struct ena_napi *)irq->data;
> +               netif_napi_set_irq(&ena_napi->napi, -1);
>                  free_irq(irq->vector, irq->data);
>          }
>   }
> 
> [  484.544586]  ? __warn+0x84/0x130
> [  484.544843]  ? free_irq+0x5c/0x70
> [  484.545105]  ? report_bug+0x18a/0x1a0
> [  484.545390]  ? handle_bug+0x53/0x90
> [  484.545664]  ? exc_invalid_op+0x14/0x70
> [  484.545959]  ? asm_exc_invalid_op+0x16/0x20
> [  484.546279]  ? free_irq+0x5c/0x70
> [  484.546545]  ? free_irq+0x10/0x70
> [  484.546807]  ena_free_io_irq+0x5f/0x70 [ena]
> [  484.547138]  ena_down+0x250/0x3e0 [ena]
> [  484.547435]  ena_destroy_device+0x118/0x150 [ena]
> [  484.547796]  __ena_shutoff+0x5a/0xe0 [ena]
> [  484.548110]  pci_device_remove+0x3b/0xb0
> [  484.548412]  device_release_driver_internal+0x193/0x200
> [  484.548804]  driver_detach+0x44/0x90
> [  484.549084]  bus_remove_driver+0x69/0xf0
> [  484.549386]  pci_unregister_driver+0x2a/0xb0
> [  484.549717]  ena_cleanup+0xc/0x130 [ena]
> [  484.550021]  __do_sys_delete_module.constprop.0+0x176/0x310
> [  484.550438]  ? syscall_trace_enter+0xfb/0x1c0
> [  484.550782]  do_syscall_64+0x5b/0x170
> [  484.551067]  entry_SYSCALL_64_after_hwframe+0x76/0x7e
> 
> Thanks,
> David

