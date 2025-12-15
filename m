Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id EBFC9CBDFB6
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Dec 2025 14:18:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1127E8109F;
	Mon, 15 Dec 2025 13:18:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Dv9rwfpc-MoF; Mon, 15 Dec 2025 13:18:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 367B3810CD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765804712;
	bh=MjcNBX6ohjIwMLMOfwlVIKj6WUCI+56CAcgTLID7s+s=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=i7vfawPeBZ4+rKl7pyiFyBvD/7hx0i+BCXZf0Lv9rISO9lC6OU2tGndWd5+/hP6RY
	 aHtMlZ1u4Izjaox1lGYe3m8vniKRNKCChN+pXu3X11KTudILUgponK0t+P5iBeXWGo
	 EEmrT9fRk9wKgU75N9ECgqTr8fNgYYhIZjYMSR/wCKU0ZqUYtqFgz0tulIW8cghk3F
	 dt/PxVyF9GlEQs11EjXYcyDLetQCZmmuwp6muNbnExxfg2j9a4dZO20JqfkWEq7yyT
	 hOsL96d0s54k3Al650pFK08KpA60KY2T9r1Z3bT/eFMFh9NDWMv8gPOTQHAO8LY1dI
	 Se84jujCHq3kQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 367B3810CD;
	Mon, 15 Dec 2025 13:18:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 40E77272
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Dec 2025 13:18:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 32FD740910
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Dec 2025 13:18:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fO1cYFGES576 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Dec 2025 13:18:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org F0ABB40750
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F0ABB40750
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F0ABB40750
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Dec 2025 13:18:28 +0000 (UTC)
X-CSE-ConnectionGUID: GKrFHAmKScSt5d326bxEPw==
X-CSE-MsgGUID: I04mOzyHStao0757cXZkrg==
X-IronPort-AV: E=McAfee;i="6800,10657,11643"; a="71560058"
X-IronPort-AV: E=Sophos;i="6.21,150,1763452800"; d="scan'208";a="71560058"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 05:18:29 -0800
X-CSE-ConnectionGUID: f/uwplk1RQORqKHUliOA/g==
X-CSE-MsgGUID: atzKnhDMRR+5xrSbVxmmQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,150,1763452800"; d="scan'208";a="198550208"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 05:18:28 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 15 Dec 2025 05:18:27 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 15 Dec 2025 05:18:27 -0800
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.14) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 15 Dec 2025 05:18:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mi/pKTKg3nP9kQMj3t/Un2AWO9WGLPzJi6K25KCC3urKyWaZpsPd/Vt26++FaIxsjEBsGDxYR5WxeR3TrOfDy89c7IAzYn1Zi6V01jW4UTXlKN2+qZGM6yVlFPUbOVuM8GFwxW+iQPzx5GYtndfIBdCs48UuEuIIojbCTW9tKfYO9sfLVbtTh5m70tLOIIA4IF3BaECEREO7MtaMlvaOsIx3m6Ow/NcLjghNgmgT+baPqUTE3Q+YA/I3HnaRGtotgfrRhHZp7OPtjuJexqpSZYLswwqJ1NUGeEHYtSWZJjwtlRg86WIozc9DoSZEssI8IyG1rE4IxSvfTQfIGfofXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MjcNBX6ohjIwMLMOfwlVIKj6WUCI+56CAcgTLID7s+s=;
 b=VJbPzqGgFmn7xqmUF0qBg8JppblGqZJqZgxFGGRVV1luArgD68cu0bQhMDyW2GKlDi2NJ0QXCuoOft02zqKlwUnbx7RCDFTSz72fUTmRAcXXYN4pdy6qrfzBaUdECLL3Y5pnItQZ71yfSlN5VOs5g0kSrbMND9KZLmI6y//KDEYosUxXTfnjm3XVt/RQKddmD7yLTcc8ZBnpkru+wrEiDg0SgIUW4KH4hkpceYNY/thjdP2jQGBcLf2KxicYJwCaRdEW/TpR6JxJYd4YXidjopg/jnnmcldhFZNT8ljbK6uDXSN2PxPU5Clx+WIQLBhfgmXUvCqQ26+9Vf5VVdmmjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by SA0PR11MB4765.namprd11.prod.outlook.com (2603:10b6:806:9b::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.13; Mon, 15 Dec
 2025 13:18:25 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%6]) with mapi id 15.20.9412.011; Mon, 15 Dec 2025
 13:18:25 +0000
Message-ID: <007b4664-acce-4e14-b284-a36dd3a88e8a@intel.com>
Date: Mon, 15 Dec 2025 14:18:21 +0100
User-Agent: Mozilla Thunderbird
To: Cody Haas <chaas@riotgames.com>
CC: <anthony.l.nguyen@intel.com>, <andrew+netdev@lunn.ch>,
 <davem@davemloft.net>, <kuba@kernel.org>, <pabeni@redhat.com>,
 <netdev@vger.kernel.org>, <intel-wired-lan@lists.osuosl.org>
References: <20251213002226.556611-1-chaas@riotgames.com>
 <20251213002226.556611-2-chaas@riotgames.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20251213002226.556611-2-chaas@riotgames.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DU6P191CA0040.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:10:53f::15) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|SA0PR11MB4765:EE_
X-MS-Office365-Filtering-Correlation-Id: 3493967a-8f5f-4115-4d92-08de3bdc6d82
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aTlzSFpVLzIvdE5rNjU2cFExaVpIOWlXRzFCYk45SGhiR2VqU1Bzb2g1OCt4?=
 =?utf-8?B?UGc3Q21VQnRCSDJMR3BUMGxkUTRtaUU0ZkZzVVhuZVNuKzh1L0dhb3BiL0Zw?=
 =?utf-8?B?eC8zUTdLTTNzcXZrQXJKb20yaDRIVmtCKy94enExcUpTUnQ1a0F6NkJDMjEy?=
 =?utf-8?B?clVpeUNiMzZpbzY0UjVPT3g0TFJtS1RXemNlYjB6ditIL2tkTmczRC9qMnVs?=
 =?utf-8?B?RGJONCtXajZ3cmhuWFd0Si93MWdHL05BWXZFUlNQVmRUQU9ycXFrdktjYTdR?=
 =?utf-8?B?N3grdHYvSWtNbjVJVVo1NXE2b1Znb2Q1bzBHdlZFVHkvV0JsZUE1K2VGaFRt?=
 =?utf-8?B?MVJQbHpGMnluZmdFdjVrbExRamNrbUJlWExBc3cyNVc4YnFhRG1rdDVuZStX?=
 =?utf-8?B?WDliRzcrV2xieVBLQlg3OHppOGxFM0ZKaFgwQlh6UCs0bjVuUjZaL2x5VG1r?=
 =?utf-8?B?THRaaWtRNWpPbEg5Z2lzM2dJWWZFazFPOVcwU0dSTjh3bTlxS2tNNWkxMnRy?=
 =?utf-8?B?NENCQ0FxbDBNbXQycGZLUmRlTU9qSzlwajd0S3BCeHIvK0VnaXVBeCs3L0Z0?=
 =?utf-8?B?MjZiTWczcFlOU0F2WERYczJaUDhrK3k0MGJxZ3VYYVlNT2YvanNUOHlQaDVN?=
 =?utf-8?B?U2NtU3lkTThkWmp1ZGhMV1NZWUMrWmJpTmo1UlBSYUZrOVBzWU53VkVDeU1j?=
 =?utf-8?B?RWRxUURDN3ZzeTBKd1IzWWxjOEcvTjZDaG5oZWRoY3F3bDlLdmNEWm9hU0pU?=
 =?utf-8?B?SGk2eGVCcllDZk9hZXBmWGxpUFcwcTY4R3d0WUZlNWtWZTRaMkRXQTZuOENq?=
 =?utf-8?B?b1NKNkFLbXdndkIrcUpoRUJyTjZXbEc2Q0daUi9UUU95NjM1L3FVSmsraDVD?=
 =?utf-8?B?Y2FvSGlGd3ZXa0ZhdFdzRG5UNm1POGtKR01Tc2pzN2EweVVpdnVwT24rVEEw?=
 =?utf-8?B?VUdSamt5NEJuSG1ZSzFpaFFvZWw2M1poRkVNZ2kxRlNRMzJmUlB0L3lGazVn?=
 =?utf-8?B?RjZhOW5EVkxGRnJJUTFNc1QyRWhxcTE3WG50VENXV25EendGdUptbXRWaXJu?=
 =?utf-8?B?VktyNkhIYVpMRnhmakFmZmVreXdSN1ZuL3BqQUFhSzZQSEF2ZE9JTDc0ZlJY?=
 =?utf-8?B?czhlRFI4NXRkUnllKytjQU50TGhscWJlVkx0YWZNZFJYV3JZS1R1OTVZWVFk?=
 =?utf-8?B?VW1wd1gvVGt2b1lhZHV6M3NxQzRXSkhzeTdwY3ZQVmdHdlMrWEFrT09pUDhZ?=
 =?utf-8?B?TDFDYnBDZmRZbWhZVkZGN3d5Z1JBcFU0SkVGZVcwQythYVlTZFE3dHZJKzNR?=
 =?utf-8?B?UEovZlMzWkZNTnVlejJ5VHN0REpyQVNNRFNFd1BmVUNZbVpRZG1XY2FQcWFC?=
 =?utf-8?B?dzZhK2dsdDd1SGtwNW1KODBZVHVuNzQ5c3FTTmFXSmN1c3VlN3cxTkswKzZI?=
 =?utf-8?B?V0x2V0FDSnNKYXFwZ0Z3YnFkcGEyR2JsaDQ0Z1Q3VmNuMnhWNmxYdmRKS3R2?=
 =?utf-8?B?dEc4VWJNVkJwYnVIZEhHRzV1TmljazRFVUtkQ0hMY3hBejZyRGpEVEdvdDA2?=
 =?utf-8?B?RzlXWGtZcWhyYytvV2pZaDR1VWM4R0xXZ3lGbE1QSHgzR0d6NGVvMjRyTS9O?=
 =?utf-8?B?Mi9RUG9IeTZFZHVZQmYxSWZIcXU5d0VnT0FSUUF1bXZ5aFk5YXBhWGg2cUU4?=
 =?utf-8?B?NmVrSlFZTHJnNGMraW54ODltRkxpc1ZiVEl5N1NDS2E4NzhzUkNWbEVlRkRj?=
 =?utf-8?B?MFJZbGxzRnlwcDJGS1ptWWxPblNHcTBHanRWN0U0RGlmdzc1Z0pMMlU4ZFda?=
 =?utf-8?B?ZlZxdGcvZExoSngvbHNJM1pvQ1V3N3FOcnZHYjhqa0p4TUQ5cmxURHJTNVZv?=
 =?utf-8?B?dXBpVVd5dDlxVnFHMXgwVFB0VWV0WTc5T0F6REJEMWJQNnVVcU5qUXZDSXVY?=
 =?utf-8?B?eFllTnBhVy82ei9sRENlZVlabForRTQ4Ry9nNk15V3BESjhLOVczVmdvbEpB?=
 =?utf-8?B?dG5OVTZZVkl3PT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a2FDTUt0VXVGd3FpeDQwN2ZYc2drUVV6RVdiZUdiZTc4VUFZMmcxdmVuVW9u?=
 =?utf-8?B?eHRFSnRwdVYvZjE0d1NEelRBWHlVOFJDdWFCOGg0Y0p1V2FnVVZ0b1F5Y25i?=
 =?utf-8?B?NDc5TDVmZzBvUWJUSlhnRU42a3gvZ3B0N3VyUXJzQ2syNG5kQnR1Sld5c3Js?=
 =?utf-8?B?WVhxb0RWRG1xMDZDUmpCcFhaSW5tcVNlSFlyQmtPam1ESW9nOVl0QW4xc0ZZ?=
 =?utf-8?B?MTFmQmR6ZTBtNmMvbXNiVERXZkpxVXpjdGh4YVR4clVtbm01cHQxWEdvVWxP?=
 =?utf-8?B?UFU5L1JpT1RVNy9BcnFVWndzQy8wUXlremtlL3JiNVJxNVlZRjFHNU5UYlpB?=
 =?utf-8?B?RmlEV0JNY2tGSkx5bDQvRGRGVkdadjdqNmp3VmtRRWVKOUM1U1RpTEdSSFdR?=
 =?utf-8?B?dmo0bE5CSk0xSDdJTmtranBRZVFMTTJmRE1Gaks2Vnk3ZCtaV1liQ3JQWmox?=
 =?utf-8?B?TU5oc2tMeS90VlNxL3llVEV3NlZmL1dIU2k0VU5UYmsrUlZ5MHdXT1d4dlIv?=
 =?utf-8?B?Q0tHMEVFcjYxRnBlbE1QN3plSVpQSG1XYkhJblhpS2Roa3c0YTN4Rm5ZNzhB?=
 =?utf-8?B?QlFicUFXeXBzejQ3RHd6bng0RXRCdVpJajZidkJtYncwSWE0dEN2TURmRzVD?=
 =?utf-8?B?enNiUWpQbTFLUml3cGx6RkpaSzhCRjNzTUM3S2grOUV3UDZpd2srVjlrMWMw?=
 =?utf-8?B?aEExeWFmTEhXeWY0N2lOMlg4dFBPRE1LQzhFVVA5dzQrbkZ0Tmk3d0RONXVi?=
 =?utf-8?B?YXFuSXh5M3d1U2h2c1hYcWU1dkxmR283bUlNYzBMdXpHQmh2UVFrMEpsWitC?=
 =?utf-8?B?WUdQamg1M2VWQXRJTkZEODZ0a09xSDJXcUowRGpHeHU2bEVXODgwTld1UTI0?=
 =?utf-8?B?NEphb0xmVm1WOWtaVnlCZnQ2Y3FKQ0ExZDJjY0xsYnRhYWh4M0FlSzN5ajMw?=
 =?utf-8?B?cHBHMy9TWXBsNmpIVXBQeUYzZWRQRkJiVDNZZjYxWE9qMUdiVEJPVkh2Y0hY?=
 =?utf-8?B?QkNTWHdHWkpmc0NQQWpTNUxyUW1BYXlNTGFkOWVKajNaTkFzby90Q0tNaThm?=
 =?utf-8?B?S2xaNU5vN0JvdHhpOFNucUpPRjZIeUVEQTBKdE5ibjJrUzh4VUFnaHRSQXFx?=
 =?utf-8?B?UWQ0WXZ5QlVjS1BaeS8vTktyUUdiUnJCY1dPbDIvZ2d2ZU1uLzNuUW82TGVv?=
 =?utf-8?B?ajVtZVpyS3RlaHZYMFBQMW1YWTJmeHlUb1RQWDAvck1qdGZLMzFEY1U3Q3VE?=
 =?utf-8?B?T0p4MERwTDlFeklTaUVUT1ZZZUdneERhQk4wOGxLR1VtdXd6YnJwdytjRDlj?=
 =?utf-8?B?c2tJcHpnNmZCQTVPaHpDVDFPbXlYS1V2bkNWQ3plbStnOEFlRFJSMkRleFhW?=
 =?utf-8?B?djE4ejJZenFXam02WnZhVGhpbkVncVlmc0E0Nm1JZjB6c1hZNWMyQzl6U1Zv?=
 =?utf-8?B?RmFoUU1ZdXB3dDlKZzZjYWVxeEdUNFFHN25uS2dNWTAyZlRWSW1rdzZKZk1l?=
 =?utf-8?B?UFpVaWx0UDhobWdtbS8vSWYrbG9JUVZYMnBnZFRZNE5FTDRQanJjaUJxOGE5?=
 =?utf-8?B?Q0R0SlVsZVFGTk94bEhRTFdrbXZSa2wvVU0xajdlNG9aYnFwY0N5YWQreU9o?=
 =?utf-8?B?VXoyQjRMSlB4WCtqU0U4djlJdDNSRDNTK2hRdUJSMkIwSUN0TERRWHBpc0ZN?=
 =?utf-8?B?M1llWDlWL0xtNExDNkkwQUR4TlFBZkRLL3ptL1Jkc05NMGdWbGRxayt6dkd4?=
 =?utf-8?B?bnFxWFM2ZEF1OEFtUHFIcElzRXNra00wRHVGSnRVbkdhZnBGeFp3dHpwWFFV?=
 =?utf-8?B?ZVoyd2ZYTWVVYS80bk5hQ3VqZzZEUnBSYWR0VTU3YlJWZFMxRk5tazVVanZq?=
 =?utf-8?B?aVh0a0RHcWV4cXp6blhRcG1TOVBqU0hhditiTWRmSGo1emY5L0JqN1hqZVVy?=
 =?utf-8?B?Uk5LYW4zbWQ5NFdiRStBeE5PMlR2USttUUpweXIwVlJ3SWw3SDUycXpJVlRG?=
 =?utf-8?B?K1NiMXdxbnRIckhPVlB4cjZUZ1Y4aHJoUWZ3b1RoVTVqNFZHWXJ2TjR4Ukh6?=
 =?utf-8?B?UFlLNlZsdGRKenhCTFhMa0Zna2hoOUxyeDVnUmxjL1hKeHRySHpXa3ZucXZC?=
 =?utf-8?B?WVpLNlJDYzVDWGRvSzhKRWhVcFpTZ1VXaHBFcU9Bd2c1d0FhUU8ranV0RlNB?=
 =?utf-8?Q?fPpKVaFrQSl38y90QLVzq+I=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3493967a-8f5f-4115-4d92-08de3bdc6d82
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Dec 2025 13:18:25.0785 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: f+b1/NzbEDKzsxAmfP+8MveMjJ8HEXvcObpV8pPpuCOfMPTyGy5NwE0VimEJIUWAKzpyfZJugD+cBRNLseCYcJorjcl9AwV7VdNovfGVxao=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4765
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765804709; x=1797340709;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8sSIkH5gcjwhXwpeC+LUaYsh9H5Zm0CdHaAH/R25zC4=;
 b=GfsbU2AsdNp5f7NJqYI8jFzg59mjtrdrQcyvAH106Rei2ZafSa03imJB
 GInSCf3g2zV610KcfuDTaY/9kTWF0kvsvUmb8iRW1u/jEt24vJUqlXPZF
 p80Wy29mAvqN6N2hqtPO7lqP1G/f7IM8P5bs2f2JFqNL3MKKkPfUsDRri
 72WGDspnHQxSlmtdzNljTWxKnrJJ5VEmUAbZn8OOxCCwvDW/wolMK3wBT
 1OwdE8rnpvj/sJj726R8+ZAVSv3fvYKjwI3rJ19pgE1nufYosX221SeQK
 UTeUUgE1VJoQWnK+YdWOH/VKpjfLeBawqgn6u8RcqGJtvqTRG3vOSxjtM
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=GfsbU2As
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 0/1] ice: Fix persistent
 failure in ice_get_rxfh
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

On 12/13/25 01:22, Cody Haas wrote:
> Several ioctl functions have the ability to call ice_get_rxfh, however
> all of these ioctl functions do not provide all of the expected
> information in ethtool_rxfh_param. For example, ethtool_get_rxfh_indir does
> not provide an rss_key. This previously caused ethtool_get_rxfh_indir to
> always fail with -EINVAL.
> 
> This change draws inspiration from i40e_get_rss to handle this
> situation, by only calling the appropriate rss helpers when the
> necessary information has been provided via ethtool_rxfh_param.
> 
> Fixes: b66a972abb6b ("ice: Refactor ice_set/get_rss into LUT and key specific functions")
> Signed-off-by: Cody Haas <chaas@riotgames.com>
> Closes: https://lore.kernel.org/intel-wired-lan/CAH7f-UKkJV8MLY7zCdgCrGE55whRhbGAXvgkDnwgiZ9gUZT7_w@mail.gmail.com/

thank you for the fix,
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

next time please do link to the previous revision and add a changelog
(no need to respin just for that!)

> ---
>   drivers/net/ethernet/intel/ice/ice.h         |  1 +
>   drivers/net/ethernet/intel/ice/ice_ethtool.c |  6 +----
>   drivers/net/ethernet/intel/ice/ice_main.c    | 28 ++++++++++++++++++++
>   3 files changed, 30 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
> index c9104b13e1d2..87f4098324ed 100644
> --- a/drivers/net/ethernet/intel/ice/ice.h
> +++ b/drivers/net/ethernet/intel/ice/ice.h
> @@ -953,6 +953,7 @@ void ice_map_xdp_rings(struct ice_vsi *vsi);
>   int
>   ice_xdp_xmit(struct net_device *dev, int n, struct xdp_frame **frames,
>   	     u32 flags);
> +int ice_get_rss(struct ice_vsi *vsi, u8 *seed, u8 *lut, u16 lut_size);
>   int ice_set_rss_lut(struct ice_vsi *vsi, u8 *lut, u16 lut_size);
>   int ice_get_rss_lut(struct ice_vsi *vsi, u8 *lut, u16 lut_size);
>   int ice_set_rss_key(struct ice_vsi *vsi, u8 *seed);
> diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> index b0805704834d..a5c139cc536d 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> @@ -3649,11 +3649,7 @@ ice_get_rxfh(struct net_device *netdev, struct ethtool_rxfh_param *rxfh)
>   	if (!lut)
>   		return -ENOMEM;
>   
> -	err = ice_get_rss_key(vsi, rxfh->key);
> -	if (err)
> -		goto out;
> -
> -	err = ice_get_rss_lut(vsi, lut, vsi->rss_table_size);
> +	err = ice_get_rss(vsi, rxfh->key, lut, vsi->rss_table_size);
>   	if (err)
>   		goto out;
>   
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index b084839eb811..c653029f07c1 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -8072,6 +8072,34 @@ int ice_get_rss_key(struct ice_vsi *vsi, u8 *seed)
>   	return status;
>   }
>   
> +/**
> + * ice_get_rss - Get RSS LUT and/or key
> + * @vsi: Pointer to VSI structure
> + * @seed: Buffer to store the key in
> + * @lut: Buffer to store the lookup table entries
> + * @lut_size: Size of buffer to store the lookup table entries
> + *
> + * Returns 0 on success, negative on failure
> + */
> +int ice_get_rss(struct ice_vsi *vsi, u8 *seed, u8 *lut, u16 lut_size)
> +{
> +	int err;
> +
> +	if (seed) {
> +		err = ice_get_rss_key(vsi, seed);
> +		if (err)
> +			return err;
> +	}
> +
> +	if (lut) {
> +		err = ice_get_rss_lut(vsi, lut, lut_size);
> +		if (err)
> +			return err;
> +	}
> +
> +	return 0;
> +}
> +
>   /**
>    * ice_set_rss_hfunc - Set RSS HASH function
>    * @vsi: Pointer to VSI structure

