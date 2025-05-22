Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 09943AC0DDB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 May 2025 16:16:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AA51680CA1;
	Thu, 22 May 2025 14:16:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6juHC1ukhetZ; Thu, 22 May 2025 14:16:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1DE6B80C5F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747923376;
	bh=EeI2BncSLgZgugLRPPaTA3YcjaozpGTtPmKfFSZbAj8=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=lZy8yewqVYezHJJVWgJWt2PstbWcA/S9VPXo74tU2pD+tHeOJCJDi5dVA1cyXUcJM
	 3D4dt1QtQIpsfv9oCxpKYQipArA8RBr1yWR6FuBXa9wZgNCr0YIiYCgmJOkNlHKigO
	 h/6PV+vlHhIzcbq5sJBdAqKMgpjCdvGKEEI40kPbCxrGqh9EiQRlt62kOyeZlc4ld6
	 B1VgP2I6sf7XsWa46OIoAd74cG5LHAENwx9V0hra4N5wr6kZP/gEA/+3q25x8kLF4c
	 9OdC6D28oUX68NVEV2OaDsx1zwq2+ghubXq/OZV6SdZrFXxbHeAvAEPezjAmvMQSbg
	 1Jl1PLPGOz5Cg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1DE6B80C5F;
	Thu, 22 May 2025 14:16:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id D3325221
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 14:16:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D09FA61472
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 14:16:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1RucAx04EV1B for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 May 2025 14:16:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org F23876143C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F23876143C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F23876143C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 14:16:13 +0000 (UTC)
X-CSE-ConnectionGUID: 5QuxuIv4RTyp36yJ/NRNtg==
X-CSE-MsgGUID: /66WvQDHTnSIdg1OciX9Zw==
X-IronPort-AV: E=McAfee;i="6700,10204,11441"; a="50112684"
X-IronPort-AV: E=Sophos;i="6.15,306,1739865600"; d="scan'208";a="50112684"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2025 07:16:12 -0700
X-CSE-ConnectionGUID: 77p+5BkbQV+Vvu92BT4FHg==
X-CSE-MsgGUID: ZetdTfLGRceUGQnkb1NNEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,306,1739865600"; d="scan'208";a="144582218"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2025 07:16:08 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 22 May 2025 07:16:02 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 22 May 2025 07:16:02 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.45) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Thu, 22 May 2025 07:16:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rg/b8w6OtFs1Zyzn3YDR+GW7tKFve8r7qgvaiqLiR8IX0XDOYK/gyeZtLunjFe7vNYouHBky+3+l/HMfNprWKtnfOv/LwB+U+rrxmATx8Tr9pqLvaP83RUhkxJJ9N/SsYNCfS9Sr9Hhhox49zCayXjQL8sr45v5nNLwsN/VNCcqmFyiCDcRGgE6JlkYtiAMHE0i6fFnPooSYk6XUNzN7vbVbTk/qz39TgwNyrlchSxorHdsS37vcQdEKZxXaM449SsjGKpqRoVUlB+sxdHxH0U13naLwM/dGWmfkdsaX0aKWg0lWXA3e/zlk6YnhBVTwDLvZbQ5FGYZCGAo3CPeHTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EeI2BncSLgZgugLRPPaTA3YcjaozpGTtPmKfFSZbAj8=;
 b=jB0QQbkf+9O2Vk6bKC7naG4LA82mrpVhyQ2HJ37Tj0HCgivVUvF+AU4eje9f3gzbclbSr2FDh0fQO4fRG6ohvvbcoy1F5GSBjVjb2Z96EVnotnWfqLBaJ/OukicPGWY3L02s7WI+WObb8Utcu+DxC+ojM95cEuQW2T4YcXlRrgVQnB3xJ6iE6N1i+2dWpoD9I1U8Z5L6fCIlpjmv2qYfCJQEVDOVJqkWII5+9MX3tB4dOmdX+mkozMQhk0ohVs8+auXG86QLOyoeX89cPCHOCXLQTy2LWGW+YzUuNIU8j4nmK8Ve4YiaxIuTylXcIkjuVW1wQYGDRMreE+42NcAUHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by LV8PR11MB8698.namprd11.prod.outlook.com (2603:10b6:408:205::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.21; Thu, 22 May
 2025 14:16:00 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae%4]) with mapi id 15.20.8746.030; Thu, 22 May 2025
 14:15:59 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, netdev <netdev@vger.kernel.org>
CC: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Kubiak, Michal"
 <michal.kubiak@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Kolacinski, Karol"
 <karol.kolacinski@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Olech, Milena" <milena.olech@intel.com>,
 Paul Menzel <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [PATCH v4 02/15] ice: rename TSPLL and CGU
 functions and definitions
Thread-Index: AQHbuuwhnORbzGwNBkWVfh7ZMbMKa7Pe0cEw
Date: Thu, 22 May 2025 14:15:59 +0000
Message-ID: <IA1PR11MB6241FFDEE22545633E23C94A8B99A@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250501-kk-tspll-improvements-alignment-v4-0-24c83d0ce7a8@intel.com>
 <20250501-kk-tspll-improvements-alignment-v4-2-24c83d0ce7a8@intel.com>
In-Reply-To: <20250501-kk-tspll-improvements-alignment-v4-2-24c83d0ce7a8@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|LV8PR11MB8698:EE_
x-ms-office365-filtering-correlation-id: 4514b0ef-707e-4f2b-0959-08dd993b2d52
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?dWVCZzVkU3Bmb2lrL1Urb3UwMmRZNUhFcTF4N2tiUU13d2s1cDZGdmwvNURT?=
 =?utf-8?B?MDFwcTNEZUNlRnhxUVY3TVI5MUVvM1RGendyQ05MUEF1VUtaSjdWdFd1Rkkv?=
 =?utf-8?B?UllYejhrTkFGbVV6aTVsNlAveS82ZlBhZ3lkU0I1YTROQ3dQbmZWeVppZmxh?=
 =?utf-8?B?MGhLOGpDNEtvamhhdFJOK1RjUVhzUWh1VkVKRzQ4SDltSTB0U2o3R1ZIOHZX?=
 =?utf-8?B?dzJZSDI0dkdML0ZrSEJON1p6eFM3WUVBWjdKRExJTDFxTEw0S3VtcWRNdklH?=
 =?utf-8?B?aDZTanJjUHRETUF5cTY1Y3p5VTBaUUpHQnBRT3psaDRrMzNSZWpGRmFYMXh5?=
 =?utf-8?B?U0wwdEJJaHpxcVFlUnBRSktkTSs1UzlKS2dTQVF4d0xZWTRxMU5uRXpBZWgv?=
 =?utf-8?B?aXYxTzNKS25DenN6VWRncFBqUCtEbkdQTnlPOFByOTZFRVBZbGNuWU93Y2dm?=
 =?utf-8?B?UWxKZ0JWZU1uSU5PakRrMmtmRk10dmtZV0p0RU9nYUVjQ0NWZDFZa1FnRmJR?=
 =?utf-8?B?UEF5Z0lUNHkrd1NnM3Axdm1EaXZqS3d1TE1GOVJmelFmM0RRUW5sQnNhNzVx?=
 =?utf-8?B?QjNOY2dVdm5zUStQQUhBYTdPbUtFcjFZak5tQ3RaeUVRYVk1S3NmbDVZaVk0?=
 =?utf-8?B?bGtsZy9jTEJkaDU3cXdiWDhuN0ZFeklZcVBiM1EzY01wK2pLWTBpck9RU01s?=
 =?utf-8?B?eFBpTUVDMkZWRjR4UWlrWTFWOE9DdEZydlhUL3YrWnlRd09lYklNWjdWdDQ5?=
 =?utf-8?B?a0x3VUxMclpzUUZRUTZ5VmdvQ1MzQ1c1QUJidnpselF0b1lFL3NoVmxNdDdR?=
 =?utf-8?B?ZC9ySHdVQUJwZG4xM3lsMDNsR2tDMDJJVDVMQmVwZDZZVmlVQkN0QWpxa2hy?=
 =?utf-8?B?Qjc0UnNPK3VncHlpVEU0Z3NnYXlsaDNkVXJRMGtXQWpMRjlYaDZDL2pKYkxP?=
 =?utf-8?B?VEFCT01zbGUvWHpUejNsMXQ2Y2lvZXcyRnliUWtVWXlVOWU5ZnZqbmt5akJH?=
 =?utf-8?B?MjRidXFVRG5yRDRWMnNKeVBZMTAwUnJXbjljREZKZHNid3dLekttWTA4ekJD?=
 =?utf-8?B?VGFyUFJqcTNuVmV2YzYxZy9aOWJXVEtKYXhmOGgvVFFpSlFlclFRSDVNdk4x?=
 =?utf-8?B?RjMyZ2FaV1cyZThYR0dld0YyMm4zbXFjcS93cEhwTUJ5eFJRVzVFQVRRNThT?=
 =?utf-8?B?bTJUUXoxMmUvaG5aZDlTYTYzaExrWG11ZGdWYjFybVFJaFc0YnRlYjdlQzEx?=
 =?utf-8?B?bndQVVBHK1Q0V3ZVNWdCVk41QkQvbEpPcTl1T1RzTlh5VVBkWmRiVFZmQURY?=
 =?utf-8?B?RzVIbTNjd2V6NGc0WGdWalByQTJFM2JyZGRkUlVRcnJjcTYreHRNRDhTOTBv?=
 =?utf-8?B?T0c0TlJKZGkvZytkeUp1YmlSTUJPMkx5WWdFYURIdkVVOCtpakZLWXgzaWZB?=
 =?utf-8?B?TzFxaGZtc2VhNUJnR29BNGd4MHlnQmVFVGdPVlJyNC9UcEFNaFVrWXNmMGFO?=
 =?utf-8?B?bnZLdXYrQVozblNSdUpSTi9ocEY1bFBzekFEMFdEeWltbGpaVDBLeG9PTzhk?=
 =?utf-8?B?SDNRMjYwZ0g0MFlseWtQcVhLakI0Vzk2aCtLZzR2RG54TDVBdVpzS0lqUnVM?=
 =?utf-8?B?KzVDK3dlVHdDeEVhUjRzYUtYaDlKYWRXMzZ6bHR0MGN2N0FXSUlreTRDVFZv?=
 =?utf-8?B?TklTb1Y2NTJ4NFZTRUZJdmYvY28wZGNpc1lLT1A3UjAyKy9PekJQVUxRREZL?=
 =?utf-8?B?VVBjYmMvV1dRMSs0clpveVVMaFVVOFpwd1lKd1VvRjMyWlBlSXhtZkcvdTdo?=
 =?utf-8?B?em5ZWm8yU3VWQzBaSSs2UDErVlNkTGJZL1N6Yk1ocmdzK2JuY2s2RVl2S1pM?=
 =?utf-8?B?eUtPbmUzeCt0T1pWd3F6VUZYZXB3ZmhPVjJHOGR0L2U2emJuZ3hGQWFBKzJD?=
 =?utf-8?B?Q2xVR3hrQXBKeUJZRkVHRGhMdElHVG8vYTIxVVplSlN0OU1UdVlWenlwMmFo?=
 =?utf-8?B?MjJGWWpxaVpnPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dXNFOEg5L3RjZHhaMUhLSFY0UGliUnBTOHpNU3AxQXJCUTdJamFWdE94WlNW?=
 =?utf-8?B?ZVZ1OEdPaHliUGNOaG81eThPQ2RKblZaQVR4M1d2d2pndXp4a01aQkZCTVVB?=
 =?utf-8?B?UTZCZjFBekxxSk1mdUNRL3R5bmh4NkE3Rmc1UlJNMkhvL3l0Uk04c2JUWUtB?=
 =?utf-8?B?VVcrWHZYcGZRZjA3RHZIWk1ENVhQMWxKbTRXKytGZ2NRanpQZDhUZElpQTVv?=
 =?utf-8?B?S09PUjVncUo5Y3hTekpvdVU2ejVTTEFSUUwveUZqZWZGbG5hL0Rqd2dVYkV4?=
 =?utf-8?B?RDFqRWpnZDNsbE9EVXZrRnpMa2dLbld2cU5IWVhGTUNmRzhGckVRaDUrVUJ6?=
 =?utf-8?B?cEw0SDNXRkNyN1drWjUrRGExN2pPYnE3TTlrZVlRMDJqL0d0YVYrWnc1NUV2?=
 =?utf-8?B?UmVKQTl2WmpyTkpZb1hCWWxWMDFMZytmekJWMzI5U0dIZU14a1pDZi9rZngy?=
 =?utf-8?B?ODFVV0NUdWlQOERmR3ZWWnRzVms1VmJxeFlFWi9TSXdLTXVQU2NsU0NYN2tO?=
 =?utf-8?B?QXR0NzcwUGZVazMxdmdFam5jS21yYnJTd1NOYlZqOHZRaE5qeVB6OEhzSXpS?=
 =?utf-8?B?Mi9uVlZpOTE0R0hRZjVKc2puVXVpam5LSUQ1WnlsNWFEd0YzcEx5eTRSRlNH?=
 =?utf-8?B?VGd2M0QvdjRzWVduVDZsb3J0aytrd2tpVWI1eUlZSzNNUnEzU1NldWZzR3h5?=
 =?utf-8?B?QW5vSlVJMk1PQnlSNnp5ejFXUTVjVm9Cb0g1WStheWY3bW1rR3JOMUdhR1hi?=
 =?utf-8?B?R3JlM093M1k1dXJEclBraU5PbnlUamFyNDFRZ0t5R2w1WXpYUGJOUXYrMU5a?=
 =?utf-8?B?eUYwMG56ZHNRWGVqUDMrYzJNUEZzNWlteTR4cDZQaTl2T1dzdXAvWFR2NnFu?=
 =?utf-8?B?UUgxMXRORnZuSkdxQVg1T3JTY3VMZVh0SXFidDJoWE16cDBNSk5ER3JnQlV3?=
 =?utf-8?B?TVpDdGxWdWNTdnU4RTNCb2lhZHlCcDkzbDlaZ1BZSy9oWmZQUG0wbTFRL1V6?=
 =?utf-8?B?QitsMkJ1cmlxNjNVVFpvSzlic1pQenpXOXdVb1dJdS92N1UwN2ZzZWRuRDZG?=
 =?utf-8?B?RHFYTlJsUWlybmU1bnU3cUF1SUk0Ly8xdWphSXZyU3BGb0pJVWtqOGw5aWJZ?=
 =?utf-8?B?N3ozSnNINC8vR01QNVJSZk1MVk5TdmJyZk0wZWR1aWxONVY1c3Qwb1RYT1lP?=
 =?utf-8?B?bHRkS2xxQytYUmloeWhNWTNVTGQ0eGd4WXJ4RGpLTXlPb1FpRzcvaFdxR0J0?=
 =?utf-8?B?cVZDSEczOGZudjVNTDFaVVZWd0QyRjBBT3dxSjdvN0p5MjZnVHdselNXcTFn?=
 =?utf-8?B?Q2JIcHZYV2JMRDRCcHdqdVdpZWFsNjVKSGNaQWdjLytJVXpnbEZEdStuMFlZ?=
 =?utf-8?B?VmlObGZkbEJaY1BjM3kwMkhHSENBbFN2Q1EzS3Zab3NEZStINGZpNG12cXJC?=
 =?utf-8?B?NjhPQTZQRW9uVm16bm1XQ2pBaXMvaVNtVEtEb0tLVzhKSndZZllRaFQ1Ykl5?=
 =?utf-8?B?aVd2YUdVdklqQmdKRFJ5SFZCOCtCVFdrRUptYml4aHZoSnJhL1dtK1VEWGhT?=
 =?utf-8?B?b0RLeWNnWlA3MmRrVk15NHc5a2JKUzJ1OVA5QlRWUmY4Tm1XRWZ0cVZLRXFk?=
 =?utf-8?B?RXFCVk1SdE5aQUhDb1dHMXNTZlVLcE43K3lLblVUWHdrWlpVaEE1UVRNeDk1?=
 =?utf-8?B?K0FKV2NLY1EzdmRFRVRBS0dmK1F4WlNXSTh6dmdicW1wV0s0bE5aOFZ2ZHNt?=
 =?utf-8?B?a0J3Q2M5YXJISzcwQS8ybHhXNzBWOHhWTEdncUFoRExUVFBFWG5QSVYwRitS?=
 =?utf-8?B?UTUrR1R4LzNrZzEvMFJ4Vjl5Um9jcERqN016RUkzWUNmdGF0eWdZbkdoSmpC?=
 =?utf-8?B?R0VoeXFtSEhMejlDSURKUWJORWZVaVVUNlhZd0wvSmR2NFNJd0xoMUtOSzl4?=
 =?utf-8?B?eFJobVl5bE44NzYxY1ordXJRYkM4b3ptaVh2eTBUdHRKR3gvMGo1MjF6MllP?=
 =?utf-8?B?VkhFNTdsSTUzeXR1bDJJU25Pd3ZvS3ZVTkNSR25BeHF3c0xVYTgrZWlONk80?=
 =?utf-8?B?aWtVVld5b1FQZWFQS0hqMnBTb0V1bXRobDY2b0ZoNFNTVGtjM3BPZ0pOaWdW?=
 =?utf-8?Q?GMptGgWMPtMYTiMTml0WFhdNA?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4514b0ef-707e-4f2b-0959-08dd993b2d52
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2025 14:15:59.8477 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AXB17Yq9Vwlm7YOrH3EMxnjaUoWwywLnWmYLqN35P1befTn2NFYRCeTFfqtPg5qTiLsoU7eI6ylI4cpqp9hQbg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8698
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747923374; x=1779459374;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=EeI2BncSLgZgugLRPPaTA3YcjaozpGTtPmKfFSZbAj8=;
 b=GVQDhl/8k7YrxFpfMcQetn0zpAFTUaozuUssZZQb+8Gl+mOwh20Me0hM
 vSgj34q8CtiQMG43LXVC5ze4nP335D9gNoiw8MquSK7PaH+JoXa9vAAVX
 9u91MO7RoFgbkftaY1hzPQtAAGp+drSzS8ALdmgwGHXXyJxWD3fgyU5AH
 6g7G+SJ0l6QsMk2Zfz0zNciFrUrpb52oDpUPMcClkYYZ8OCFHym+H7kWy
 ufWs8Cb+hwM4yIjqX+7IUvi5FE++8oz1yO+Y1seANC9ONZVGewSfe1tdB
 RukzygnRC/sTtPGxZFhO4FkRqnetWaE9B+PGS8LBf1xGewtkYRjMJTcXu
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=GVQDhl/8
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v4 02/15] ice: rename TSPLL and CGU
 functions and definitions
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZiBKYWNvYiBLZWxs
ZXINCj4gU2VudDogMDIgTWF5IDIwMjUgMDQ6MjQNCj4gVG86IEludGVsIFdpcmVkIExBTiA8aW50
ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc+OyBOZ3V5ZW4sIEFudGhvbnkgTCA8YW50aG9u
eS5sLm5ndXllbkBpbnRlbC5jb20+OyBuZXRkZXYgPG5ldGRldkB2Z2VyLmtlcm5lbC5vcmc+DQo+
IENjOiBLZWxsZXIsIEphY29iIEUgPGphY29iLmUua2VsbGVyQGludGVsLmNvbT47IEt1Ymlhaywg
TWljaGFsIDxtaWNoYWwua3ViaWFrQGludGVsLmNvbT47IExva3Rpb25vdiwgQWxla3NhbmRyIDxh
bGVrc2FuZHIubG9rdGlvbm92QGludGVsLmNvbT47IEtvbGFjaW5za2ksIEthcm9sIDxrYXJvbC5r
b2xhY2luc2tpQGludGVsLmNvbT47IEtpdHN6ZWwsIFByemVteXNsYXcgPHByemVteXNsYXcua2l0
c3plbEBpbnRlbC5jb20+OyBPbGVjaCwgTWlsZW5hIDxtaWxlbmEub2xlY2hAaW50ZWwuY29tPjsg
UGF1bCBNZW56ZWwgPHBtZW56ZWxAbW9sZ2VuLm1wZy5kZT4NCj4gU3ViamVjdDogW0ludGVsLXdp
cmVkLWxhbl0gW1BBVENIIHY0IDAyLzE1XSBpY2U6IHJlbmFtZSBUU1BMTCBhbmQgQ0dVIGZ1bmN0
aW9ucyBhbmQgZGVmaW5pdGlvbnMNCj4NCj4gRnJvbTogS2Fyb2wgS29sYWNpbnNraSA8a2Fyb2wu
a29sYWNpbnNraUBpbnRlbC5jb20+DQo+DQo+IFJlbmFtZSBUU1BMTCBhbmQgQ0dVIGZ1bmN0aW9u
cywgZGVmaW5pdGlvbnMgZXRjLiB0byBtYXRjaCB0aGUgZmlsZSBuYW1lIGFuZCBoYXZlIGNvbnNp
c3RlbnQgbmFtaW5nIHNjaGVtZS4NCj4NCj4gUmV2aWV3ZWQtYnk6IE1pY2hhbCBLdWJpYWsgPG1p
Y2hhbC5rdWJpYWtAaW50ZWwuY29tPg0KPiBSZXZpZXdlZC1ieTogTWlsZW5hIE9sZWNoIDxtaWxl
bmEub2xlY2hAaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBLYXJvbCBLb2xhY2luc2tpIDxr
YXJvbC5rb2xhY2luc2tpQGludGVsLmNvbT4NCj4gLS0tDQo+IGRyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2ljZS9pY2VfY29tbW9uLmggICAgIHwgIDM2ICstLQ0KPiBkcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pY2UvaWNlX3B0cF9jb25zdHMuaCB8ICAxNiArLQ0KPiBkcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9pY2UvaWNlX3B0cF9ody5oICAgICB8ICAxMSArLQ0KPiBkcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3RzcGxsLmggICAgICB8ICAzMiArLS0NCj4gZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV90eXBlLmggICAgICAgfCAgMjAgKy0NCj4gZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9jb21tb24uYyAgICAgfCAgMjggKy0NCj4g
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9wdHAuYyAgICAgICAgfCAgIDIgKy0N
Cj4gZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9wdHBfaHcuYyAgICAgfCAgIDQg
Ky0NCj4gZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV90c3BsbC5jICAgICAgfCAz
NTAgKysrKysrKysrKysrLS0tLS0tLS0tLS0tDQo+IDkgZmlsZXMgY2hhbmdlZCwgMjQ0IGluc2Vy
dGlvbnMoKyksIDI1NSBkZWxldGlvbnMoLSkNCj4NCg0KVGVzdGVkLWJ5OiBSaW5pdGhhIFMgPHN4
LnJpbml0aGFAaW50ZWwuY29tPiAoQSBDb250aW5nZW50IHdvcmtlciBhdCBJbnRlbCkNCg0K
