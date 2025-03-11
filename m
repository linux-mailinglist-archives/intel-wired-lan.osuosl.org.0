Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 67D6BA5C6D1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Mar 2025 16:29:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E3F3A820DA;
	Tue, 11 Mar 2025 15:29:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hYCJue--vA90; Tue, 11 Mar 2025 15:29:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 188F8820D4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741706946;
	bh=Zkj7RIcF2WfWFaXHVtcu42QrnYMqiR0mbbDBrSQN0cM=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=B8vbQRPSKhwCu8CPBx/r2jpHm5DnqG6JRHPrP1dVfUQgbZFoXe/4rqUBVcBOArmdI
	 5JCFuqlR/FL44jsXCPX03gsdTbQ5FB1cJf0m8LzX6reiG9Rdy1aFbILwQCn4tD1ydt
	 5skwkJEE1PNOgQgHqlvmlP2JJsSuVv0vK1aqcGvKxKZJ/s4bZaIlEw6AjxyXt5eaZA
	 uwinUchtBFG5ijRYKqrju6I9Vs7sv8NzEFGjiomLe8s3Cy//FK4wkS7UeAH+Ubq3ZU
	 HUF1rfotL6VxJfmT2D6b4lBs93Fix80fLJWzUKMhKEusAzaAUNQGtu1oZGZOJUy30E
	 xTysAjNEoEn7w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 188F8820D4;
	Tue, 11 Mar 2025 15:29:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id A23BA1DA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Mar 2025 15:29:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 84BF4820CE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Mar 2025 15:29:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZPlm4oZyGYX4 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Mar 2025 15:29:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 88DB0820CC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 88DB0820CC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 88DB0820CC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Mar 2025 15:29:03 +0000 (UTC)
X-CSE-ConnectionGUID: Xb0dNKfGTey8ZUALN8faqQ==
X-CSE-MsgGUID: GPJHHKnxQ3SepG8fgPmRnw==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="54136171"
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="54136171"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 08:29:03 -0700
X-CSE-ConnectionGUID: 83dz5XZMRUG2XSgaGP9IGQ==
X-CSE-MsgGUID: kItuAThbQrO0hn7cdmywLg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="120378722"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 08:29:02 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 11 Mar 2025 08:29:01 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 11 Mar 2025 08:29:01 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 11 Mar 2025 08:29:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zSUGLiLFd2+QgB0u1fFOYAFckCN60TevChqwShXP7kFiq9XkwAVc2YY/YB4TFoJcBsolO1YWRwjDD0v7RcY4qOSikBfEB+H802v93ADzPaUqpdXP/0qjpqsBpsNueU8XK6L8LekIMuyOc+ScLHamr+WLxZOUwJculxuInGF5ehNJ+52u0AiwknkQrqxvca8ixG7TpAA1YjWxFrx9FLCEg4gbIS6MUbqHdIFAyIUCQbaDQg+zt2/k60FXeS8PO8tyYoYTJF882kDzGkaVLS1wCcaeQcHEtjrsKAQtsxzyDATUr6FVANCro8tvGYu1ww42KVCgujmnLBvQqyJbhdWtJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Zkj7RIcF2WfWFaXHVtcu42QrnYMqiR0mbbDBrSQN0cM=;
 b=RMFFB5mRYqaXvKkyQ50TSP/sLCsKe6bNNcSFYCpHO12B0CIH21G4E5NwpkaXAcubu/klZZEGvuYXhg2h3p2iTm/nPgZ9Qo0j3vwIj7jKep08qxBpXYsz0KW6kqlgB6QM1DmDnyJgth1taaHcyFc7z6mnqB1579lTZtKAIh7JAL7Jh8+X7F/HCk9xPnc2kGcXGi40vL9+MLt/LuV+LAKR69zMB0nXq9Ui8swcY31tqzdIe7egt86OHzw19+/VKpVs/I03ccAvuzR+jU/bV68jN/cNwnebj6O/1y5h6YnN5kv4UBImceq6cfjaWJXkgl6z9LlRm8phd2SouCVXjmf0QA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by MW4PR11MB8267.namprd11.prod.outlook.com (2603:10b6:303:1e2::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.27; Tue, 11 Mar
 2025 15:28:55 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%5]) with mapi id 15.20.8511.026; Tue, 11 Mar 2025
 15:28:55 +0000
Message-ID: <333aca9e-976f-485f-a2a4-68d0f8a87184@intel.com>
Date: Tue, 11 Mar 2025 16:28:49 +0100
User-Agent: Mozilla Thunderbird
To: <intel-wired-lan@lists.osuosl.org>
CC: Michal Kubiak <michal.kubiak@intel.com>, Maciej Fijalkowski
 <maciej.fijalkowski@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann
 <daniel@iogearbox.net>, Jesper Dangaard Brouer <hawk@kernel.org>, "John
 Fastabend" <john.fastabend@gmail.com>, Simon Horman <horms@kernel.org>,
 <bpf@vger.kernel.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
References: <20250305162132.1106080-1-aleksander.lobakin@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <20250305162132.1106080-1-aleksander.lobakin@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MI0P293CA0002.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:44::7) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|MW4PR11MB8267:EE_
X-MS-Office365-Filtering-Correlation-Id: 136bd13d-a726-4c23-caf5-08dd60b16f93
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VmtHam5qeUJPbTdjTW94SVlzNEVRQkd4dllkaEVnMGlibEdWdC9uZXVycjJU?=
 =?utf-8?B?TXh1cDRVaEJ2UXJTOGJheHA5Q3BRaDdhVDhDVkpzUGQya1d0Smw2ZGN0L1JB?=
 =?utf-8?B?dFRFbndDUUZGcDZhZHFqZURZYlFHQ3BubldsRzBQY3ZxOEVFTDBZSlA2M3Zz?=
 =?utf-8?B?RHlDUzNYU1lXUjVYVW9iNTI1dE1vazUxNlU4VFFhTlQzVFNtZVlQbkRDOWF1?=
 =?utf-8?B?Q05CaE1mZUlHbzdFcENPcE1BSzZqWlRqSXFmNTZ5Wm5PSXNkNnpVZkprR2M0?=
 =?utf-8?B?NGdUcGZBUExYVjZEV2U0cGxqeDdjSFhKbEphMFdUd2tITzZWem13STl2WTNC?=
 =?utf-8?B?cHNBZVRDTTVKUnVEZXVFVWxMb2NQQTVXRXpQSitsdGtTd0ZRTkpPbTE4cVlr?=
 =?utf-8?B?aWgwdDRjcFQycm4wZEZXUXdKOHhsT3Vna2FveDRQN1FmNmx5Mlg5MUowOU01?=
 =?utf-8?B?VHBVeEJWTUZrSFpabEFPSFd1aS9aRXBRQXEyMUVtcEk3dDdmNnREckwwOU15?=
 =?utf-8?B?NWNZSTJxZU1NUGJuQklZSlNUaXFaai9UZEV4SGlqR2N0UmR0ekFnSkh3MS9S?=
 =?utf-8?B?UHBFeEw2QW5lbVJSck0yQ0hrdmdhdVBjMk42VmFPL0NtVHY5T0xKazlWTFBJ?=
 =?utf-8?B?emlvMDFCU0xXSXNacGFqMXI4SVl2dFVYcE9OU1ZJN3JTdStpdHZVUEc1Z09N?=
 =?utf-8?B?U0hkOU9IVVpMVjkrQXBDMjVUV0VuR3N6RGFtOTd4SDlaQ0ZicW5BSHZudXR5?=
 =?utf-8?B?MEdKZko1VFE3dGtDQWFYaGdLTUg5RldBMkFIR2t2MTVncjFiSnJhS0lLaU5o?=
 =?utf-8?B?dVNDb1FBK0d6S1VZTjl5djBEcFgwZDd6UGM2bzBBWVc3UlErZjNGMk0wdnV1?=
 =?utf-8?B?L3plMCtMR2F5VUUzeDN5bCtNZGhnU2xHVFd2dmYzZUkyTncvU3JVT0FmWER0?=
 =?utf-8?B?MEhzcXN4WEY5OTZnT2xkcHlNSzczNml3NEMwaExFVjBVUnkyWE0vRS8zeUN4?=
 =?utf-8?B?QzZncksyMmFxckF5c3pRZDFtaVZ1V016bk1RVkowRU5NQkNZMER1MnVDcDNr?=
 =?utf-8?B?aTV2aDNsWVpST3dKbkF4V2M3d2RGSkNydjZUMGZnY2F6YnVsbnVXbTAwYXZy?=
 =?utf-8?B?bVJUcW83TzBQRXhEcTNBMHJMb1RURmQxQThyLzJNenpkRGJWQkxVVnprbG4v?=
 =?utf-8?B?QXNvUTNBaU5ZcXRUd0xRYjRSckgybVdibjg1MDk4RjlVeG0yanR0dFJyTmxH?=
 =?utf-8?B?bEpRRkdocjJwNndVcDlvSldVdE85K0dGU2Y1SDI1Nkdla3FKN1FYcXk0NlRr?=
 =?utf-8?B?Vzc0U25STXAvS0Q2dHhvTzVLOXRKeUY0dG4wcnVWYTZvU3hPaWE1a1IvT25P?=
 =?utf-8?B?YWpmVHh2cmlxUDI2bVRZUXNMQ2psMzMxby9SRlhvM2pwSlYyUFFnZzVWWkkz?=
 =?utf-8?B?blhwLzJaUkZTM0ZVcVFBSXMwVGpwQlhDTmFTZ3pGSXdhQjJrNXdEdmRSdUtH?=
 =?utf-8?B?NndCa1pRV3ZQTURSWnZubFNoRUZCQVV0ZnJncGhtVVBKMlFmam5DSVRGTTVr?=
 =?utf-8?B?UmdzZTBnT055K0F4NkgrUkZoc0pRanBKMlAyYk1rNGJaNk9VK3dObXUxaVJo?=
 =?utf-8?B?SExMd0xrMm9QVW5iL3EweGZ5UCttTEludFJLR3pMM1BuckNXK01pMlp6eDUv?=
 =?utf-8?B?SEtrY2VkNXcyaEtQTjdSazNER1R0VDY0aGpjK0VIMWxUd1pmYU1xOGJqT2lG?=
 =?utf-8?B?bFFKWHFaM2ZzSmxZc3FjQmo3NVJ4TCt4U0wvYVZDRHI5N0J3Mm5yVkpCSFZX?=
 =?utf-8?B?YjZUdE1lOHhCOVFUaFZKQXVidmJ6UjA4RWQ1ZUVOZk0vdmt6WkY0bFU1RXJF?=
 =?utf-8?Q?JrhSYlDpqbI6A?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SU9tUmw1VEY4bXRoYWQxNE9rbllVcnFrUVpBN0Mrd3FWTEVkdEN2OC9sOXQv?=
 =?utf-8?B?KzEwNEp1N1N5SVcvcTJHWndqTkVnYnVpOEFxb1dvNTJPckRiOXFmcFdSeSts?=
 =?utf-8?B?N0ZrNU5CM1dXOTFkRVBQUExVSk1XWlpKRHdUYXNoR1NiaGl1M0FKL293WlhN?=
 =?utf-8?B?V1NPazdvTHk2S1k2Q3RuK0JEOGJ4dmJjQmpCMVlTdFhjS1NRV2ljT2ZvWXBY?=
 =?utf-8?B?KzF3QjBRY1V3d0lTRHVIbHd5T2gzOEhLQ3NrZmlzYlVoVTkwYVNvQ0xrN3hU?=
 =?utf-8?B?ZlBnaGhYaWNGT2s2VklUNHZvUU95N2F2eFdKYy9rTHNXcU5yUVRnQS84UmF1?=
 =?utf-8?B?WkxhVlMzWng2QjY3UmRZU3N0djIyQ0RsdmxVWGF0V2k1WUxNK2c0UUpqMDR0?=
 =?utf-8?B?bjBHbjdNczhKOFZLT3ZHbEFBeXhtS0lPK2RGbUEzV01MTDMrMUo5eHpRYStN?=
 =?utf-8?B?dnN0MHJmdmFSMHVXeFlyaFBROGNYc1I0ZlZzeStJbmRqSG0rVTNoWHBLWTk0?=
 =?utf-8?B?NFd5Q3JhNWNDZ1V3ZWZjTzAzU1JtOG9TQVlaVTlFQXhxUGdmL3czVHVSM3ky?=
 =?utf-8?B?QWVuZnhBL2RLZWdJMlNuVHFveHk5ZG1JZldaKytxWEJJT3hVNCtXN2owUC9x?=
 =?utf-8?B?MVVYYVB4K1ZUQmJDcDFCQ3FRa3JHNVBQV0dVOGx4SExnSHI3UEl2VzBJQnlo?=
 =?utf-8?B?NTdhNTJYR3ZQM0ZNRXY3cDVMU1pTaFFSdm5FdE1jNHJ2M2gvWlhFYmZoZHlS?=
 =?utf-8?B?NHBhbXpKWU9VdFQzM1RYbjhxakdmaDdXV01YUFZ3cEtxVERLeHJob2tvM2FM?=
 =?utf-8?B?YW01VWNEczd4QTU3UlJLREY3VnF5TGlLbGZ5MjdxanhjbHYrRzFocll1bUZ4?=
 =?utf-8?B?eGJwcUtpNnBINVFNc2ttSEhSWVZCZzlNQVpRQ2tCeDZsM2RJTFBkcmd1cytl?=
 =?utf-8?B?a1dhSUZEOTJSQVBvNzhUZEd4T2c4ZVU1blhUTnlhK2c1ZEVhNWtZTWo5UURt?=
 =?utf-8?B?TGx1WVZBWHN2YUlyOWNRM3dzaDRQY1B3TEhZaTVSeTJnWTFDellqZy9VTTMr?=
 =?utf-8?B?Z1RJZmVmZWgrQ2hEYTBLUURhRUs3WjV1TEVZcWd1MHlHN0tZeG1MZEhTKzJJ?=
 =?utf-8?B?NjZsb3JYZTM0UWlySmdiN3BDNXFtZXFiTVpRS29xTXErWFhMRHJqelEreVZw?=
 =?utf-8?B?b3pyL1B2NDc2dldVcWlndW42VUdUdG81TmcvMkRjb0hDTCt3Z2hCQ3B2aEx6?=
 =?utf-8?B?NXNGNmNIUFpSank2T05UaFMzRzRPSFM2VnZaNFNDNEsxODAzK3NQSm4zRDlS?=
 =?utf-8?B?aXdqbk5iNk9BNTNUQkgwUUNRSFllTFlzaWpnZnJyUlpzeFBlcEFaS1RnTXJQ?=
 =?utf-8?B?bWQ1NmFveGVCbEZGeVZIalJTcjVZT3JlWGNvbE50eXdIQXVhL0lpMXhQM3hn?=
 =?utf-8?B?aUpKVi9mR0I3cDRuLytDQXRaS0FMZUpQSWE3UThjUFdlTitUczRMbXNMelgv?=
 =?utf-8?B?MGlrTUxVaVZ1dExmQmFDUXRIMGx2NUpWK2hPRU1WR3F2RE1OMWFMR3d6em1M?=
 =?utf-8?B?ZnZVc1BiR3JqellHdmJRNUFOSS9ZTjBlcEwrSUxHcERCTjAwTjd3T0U3YXdp?=
 =?utf-8?B?bEsrSDNLSGtMRTNObmd1elB6ejdFNnVSS3pZUjY5QTFuWG1QMzQ1ZDBsZ2Zi?=
 =?utf-8?B?Mm1oRE1xbTRsbWJ3dUJ4QWtSS2lZQmFGVkttc3dUaTJMRWlxSlRnemE0d2Y4?=
 =?utf-8?B?cmJ5bW43dU4wY1M1b3FGUXVIbFA4by90Tk43VE1EcVViM05oV1dPT3hQbVNO?=
 =?utf-8?B?NXcvKzgrcnVYYU5DRStHSEk3SmVjUlpiUktXL05HWVM1eUpBeFU2bmY4NHNU?=
 =?utf-8?B?Q1EvalZwMVhkNis3cTVTVm5za1Z2M3N3MVZRMWNCOXIzWHpXUkxsM1hDNCtU?=
 =?utf-8?B?dVZRbXk3QlNINjJ1WXFUaFBiWSs5UWsxelRjVnQydzhFbEEwc1o0U1h6dEpo?=
 =?utf-8?B?OHhPa2hsdC9YVWNkOXpzUG5oS0UvMEFPaGNkY3pTSnNZN0hYOHZ5ZDRmTEpM?=
 =?utf-8?B?U0RYQzFrVnpNSW1NWWhySHpNR3Z4d1BkSUh5RHZpUVVZYXhMRU5ieTJDM2FJ?=
 =?utf-8?B?RVp6RU1wbmloaEl3Y09nOXNLK2ZlTWpaZFd4dE1KeEowdEk1czZ1TG85UTU3?=
 =?utf-8?B?RlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 136bd13d-a726-4c23-caf5-08dd60b16f93
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2025 15:28:55.6401 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pH08xD+bYlZbKB1zXXak3ELROvpOgGy47AjPtL7Hocxb6gpruoUdNScon8kEYPr4bgZQeUT5oAQ0U7avhkUFUipi3MZ3vBqW+rbfixnnVGk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB8267
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741706944; x=1773242944;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Zkj7RIcF2WfWFaXHVtcu42QrnYMqiR0mbbDBrSQN0cM=;
 b=H6MFBtTO17hSHDXH54LMqCO7IHtLeoptv31RbXVJ6vGcbbR+IHtp8wc1
 PApM9TDS/wxOYp7uQVn6OwhMLe7dGh8tH4EbBrYzMN8Gp1R+Mw21NTLKQ
 tZU7S5U0qTfJxisMrFB5O4BcCBjymupIaP/GCVbUgxZTDgGwdynqkdYda
 /GdOWkj777J3KBwX7yrZsbRxhF+4AW7aN/yT9BQ7umredF5o3OFJM1/ma
 vUXLc6S17/ot1WNloIeLT7JLhEZx2XaOgvnZ6r1EYzMtrdrdbptPWVxoj
 bFOesfx++lsvpgCisWatFWmWkMmRP7qYJV8c/aKEf2KjpPYGRYLWnkHZ4
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=H6MFBtTO
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 00/16] idpf: add XDP support
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

From: Alexander Lobakin <aleksander.lobakin@intel.com>
Date: Wed, 5 Mar 2025 17:21:16 +0100

> Add XDP support (w/o XSk yet) to the idpf driver using the libeth_xdp
> sublib, which will be then reused in at least iavf and ice.

Ok, today I'm back at work.

First of all, sorry for the confusion, the subject prefix must've been
"PATCH iwl-next" as the whole code is under intel/ and it will go
through Tony.
I'll change it when sending v2.

Now I'll be checking the comments...

Thanks,
Olek
