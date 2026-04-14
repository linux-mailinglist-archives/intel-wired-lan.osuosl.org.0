Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id t/qgLNFW3mn0YAoAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 17:01:37 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A29ED3FB8D8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 17:01:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B121742A8D;
	Tue, 14 Apr 2026 15:01:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LxhZk3Y1XAmP; Tue, 14 Apr 2026 15:01:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0517C42A8E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776178883;
	bh=SqizsChBozjdURrzEdpws76lnm3AshkI8fjXPAlg22E=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LN4SGadlBunm6Xuuu088Nxwn2P5T8f4P/P5oEm2ctuMNf/QZUMOLsH14C5HLS5+yd
	 +CzoxX+4H6okaxJsOEISyAq1XSiWHFDC0Z1ZJH/+NSvpvRhP8yLYK/ExqxreLzy7/s
	 ROA91iIw2zQyBHSIPUVHQkSUGlb/D7y/EdYvIBNhzRymp9mqyuNB/lYlOeLhDQtHHU
	 nQjtBGh8YoaP6In7rLqCgFduIHUYJJRpVRl4PqmFhd3ecXjcJniy7piUmATop8MFVq
	 0bH94Df3ykG2fRxwpJFjNFZXUDATEOZ2DW8G3GsXiGnbqoeP1mYcAOmrrYokzA8z6d
	 hCtIuW3A3ZZBA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0517C42A8E;
	Tue, 14 Apr 2026 15:01:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 2D1DA375
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 15:01:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 12BF842A5B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 15:01:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id shmxK2wo8mFr for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Apr 2026 15:01:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=emil.s.tantilov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org CDB0242A5A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CDB0242A5A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CDB0242A5A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 15:01:20 +0000 (UTC)
X-CSE-ConnectionGUID: oTvwdPdFR9WXcW18gIfbEQ==
X-CSE-MsgGUID: 5HTHR6IoQWWR1LN4nVmSlw==
X-IronPort-AV: E=McAfee;i="6800,10657,11759"; a="77248409"
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="77248409"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2026 08:01:20 -0700
X-CSE-ConnectionGUID: S8PX/q2jQFqYZUf6sxuO3w==
X-CSE-MsgGUID: 9YJdosDQSN6E7EsLEA/mJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="227470467"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2026 08:01:20 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 14 Apr 2026 08:01:19 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 14 Apr 2026 08:01:19 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.49) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 14 Apr 2026 08:01:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Yv0JJolUt+ph7Omn0wU35UyRUjWL1vj/uhT878Ya1ZW6k3cLFkWA3thZ5zkD/3i4vXRZ8dlARMztCsDKf9Cy4AkvFFSJOt2yl32pO0lHbtKDMy63yl9Iyq/GHMFaH4SS33pdTptz6dACI7sr6wvN2pOLwpc2Ea31GAr6zBa87msXmMPa7NxqTVWjw4ewCLUCYsyrR/XlN1KTae3XsZkXQCFCh7sqGdjXsG2oS0EmVAnns+9JEK2Tlv3USRhwzXXmxDWkoJywe27o4lWPSWzTkLcaoETLLmi6TF8Eqp8HT/zX2O0RcXL6XlAMKO8LfJWcLxyhs1E6Z/D4kZ7GLhnuiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SqizsChBozjdURrzEdpws76lnm3AshkI8fjXPAlg22E=;
 b=Jt+jRy5ynHuF0wlh/E68f2AL6Rg4gCV5bEGNgB5bCmW5m4VEuk3I4/0J0bXDHvH1CTeoU2s+Xb9XnLoOQEpS5t3D3BFRMgDKAa9ZDaaa8PYu7DfLOzHFBPFt3c/WjlGyb8bj/ox+53/0+Mhbsu9YC0cMJ/J8ZjwGVRJvFiz5B6cubyYf7Qt4d4pSasB2obi6EjIsX+LHgneW1jHIt0wqVwNaQTcHP7lWJIsZnoIxmfk9eUhfdjy0LoFDexLbjmvaugRqSWAwCK7Qf0YuHewmCk2t0Ka+M1jFBHoKXzmSa/Lv5Yt+vdLL5WjoLS5YsqTsPHfbESloKAQ39Jz/UiqXYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB8168.namprd11.prod.outlook.com (2603:10b6:610:186::20)
 by SJ2PR11MB8369.namprd11.prod.outlook.com (2603:10b6:a03:53d::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9818.20; Tue, 14 Apr
 2026 15:01:05 +0000
Received: from CH0PR11MB8168.namprd11.prod.outlook.com
 ([fe80::9549:c8e9:6748:12ee]) by CH0PR11MB8168.namprd11.prod.outlook.com
 ([fe80::9549:c8e9:6748:12ee%5]) with mapi id 15.20.9769.046; Tue, 14 Apr 2026
 15:01:05 +0000
Message-ID: <eb07b21f-0133-40c3-ae86-338572e2a64a@intel.com>
Date: Tue, 14 Apr 2026 08:01:04 -0700
User-Agent: Mozilla Thunderbird
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Bhat, Jay" <jay.bhat@intel.com>, "Barrera,
 Ivan D" <ivan.d.barrera@intel.com>, "Zaremba, Larysa"
 <larysa.zaremba@intel.com>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, 
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>, "davem@davemloft.net"
 <davem@davemloft.net>, "edumazet@google.com" <edumazet@google.com>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>, 
 "Lobakin, Aleksander" <aleksander.lobakin@intel.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>, "Chittim, Madhu"
 <madhu.chittim@intel.com>, "decot@google.com" <decot@google.com>,
 "willemb@google.com" <willemb@google.com>, "sheenamo@google.com"
 <sheenamo@google.com>, "lukas@wunner.de" <lukas@wunner.de>
References: <20260414031631.2107-1-emil.s.tantilov@intel.com>
 <20260414031631.2107-3-emil.s.tantilov@intel.com>
 <IA3PR11MB8986C6EC840268F14C44B28CE5252@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Language: en-US
From: "Tantilov, Emil S" <emil.s.tantilov@intel.com>
In-Reply-To: <IA3PR11MB8986C6EC840268F14C44B28CE5252@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0090.namprd04.prod.outlook.com
 (2603:10b6:303:6b::35) To CH0PR11MB8168.namprd11.prod.outlook.com
 (2603:10b6:610:186::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB8168:EE_|SJ2PR11MB8369:EE_
X-MS-Office365-Filtering-Correlation-Id: dbf8030a-f28e-47a0-fdd1-08de9a36a6e2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|7416014|366016|376014|56012099003|18002099003|22082099003|18096099003;
X-Microsoft-Antispam-Message-Info: lTpJKL1XEE4YPmOh2QOws3e4z9RFsVpMkTPYL19E0NJzEg1ulLptaYGzCR/qeZbJbzlM4IbzzQd3n3lR0HUXTLdmL3uMSbxWilbGrQW5qaQWg5ZM4ZuGF8pLH+x/2b+77R6CHzlO64uVG0A5hq/0Z7x4DLuBR/RRcQSem7S4AkEy12yQoodrDZ8HXNTCzJA6SEtpv/HWL9ILSv/fOSQ35Wkw+pdO8sKHlIYFT4bKp2QwVzE/8/bhtL64kcgYo+PAlxkJ7wAfxZH5i80080yZPkoM+RVGAxe4zH+g+jTiNN5eb0o8+2X1lP3fWszIT+VZ3z2kat8LTDAKWTkGjR3N4eYVuU/buXCxLDymiwNdIin2+3Pd/6Y54qVT0chaRv8znrh6S6GdvHtqgXSO1pOXO4eXVYcjg/3dWRcl0MqJjael65L9zMd5yyT0m2wlCV7dt4FCQ5A4fzRqRvW3W8YXwN/Op2M17GPBIfiZ2Wg/+aLRsaZIqxSqJq0sxkBFKKPFMpzvBIzOeVZiAFOzPl4ntL56U5h2R7ueVOKJKpBAmIex6mxWYKPqZpAalfPcwLALctDnKJq2unnmFyTHsAX4Jamdj1hOzfSrW6U3kCPhwwN1Zd23GynqFMDE7e2ceaJtpmhnK6gw/QC4R3YtOhJ7PYw0x6XOzjVX3+jUp2hV7PagYVXc3VnMT401nydvn6okXS9n5C4O6IE9Joy4cPsC4kjFG2t5nBEi4c9s8EntmDI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB8168.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(366016)(376014)(56012099003)(18002099003)(22082099003)(18096099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Y3F6cWgrZ1RUcHNjOFlEbitTUkltSjZla292d1d4U1E3cXZoaExwRDE3YjNS?=
 =?utf-8?B?MzRsRElTZDRISUthZnJqYm9YYzM1WHdlUUpEU3k4cVQ2elgwQ2s3Y0Z0L0tN?=
 =?utf-8?B?U2J0cU9XbmFOTWJ2ai9NaktieFdFUnpZRGRBLzBZM3dwbG4xM21hS2taK2M1?=
 =?utf-8?B?NURQS01aZmV2bmJaU25NakR6c2hvRWw0cGpOamxlM1l3TXJHOTAvUFhHZm45?=
 =?utf-8?B?WHQrZUU3UXVVR0pMTzVYVThaQnQwS0FJdVh1UllvTzk1S1pSZEpYbVlhcGpq?=
 =?utf-8?B?Y3FkWTVoaVMza3pUUCtsakpnWUx4VXRhRjB2U0pqN2xNalJnUitZZEJ1d0Rt?=
 =?utf-8?B?d3lNNm9MWU9mVUk5SHErZFVaL1Rub1dHK3M1RW1BVk1BeE5EalNSRFpveGpx?=
 =?utf-8?B?b1RHdHIvK3pJeE44OEUyTktESWtnN0h1ZlA3dTRlZ0RqYmR2cHoxb2tkVFBq?=
 =?utf-8?B?azFuQmxLWDNnQmxyZVFhTkJIa2hXcTJEMXU0bVQxME11ZmxPSStlUnc0UjBF?=
 =?utf-8?B?MTViRXdJelZaUEJhNnBQRlVKQkhXMzVXQkIvRTNZUnlHRU1IU3NUb3hEdkww?=
 =?utf-8?B?aHpiU3hBMWpCWk4vSFExY1VSRUU3c2hlcTFpcVhpdXhSMGJ3VStTMGEwTmcw?=
 =?utf-8?B?YnpDQmRQd0NUWEJrMlBQZldIZW8wWllFNUlUTzY4MVNBNCtiMGZxc3pQbkFv?=
 =?utf-8?B?WStkcGphdHR2ZkNYY3JpOTl6bmFmUVJEbVhiNjBramVPdE9GcmlLRkNKaWlh?=
 =?utf-8?B?Q0dUUndLMWt2Z2x4U3Z1cVZlUEc4UzIvREsrak9JbnZjdWhhSEs3eXdVYTZN?=
 =?utf-8?B?cExDMERiYUk2V1N4SEdiZ2p6QXMvdDc2ZThvZmk5eUsyZVNsRDFtMXlMSUxi?=
 =?utf-8?B?VHhYL3JGWmZPaXUwRVFuNmdhbCtTdGJYVmk2amxWOVdOazgrbXVrVnZmSmdN?=
 =?utf-8?B?c0hEa01XOEhUV2hyRnp3RzlmQkRtVTM0MzRveWNubnVwMXhKMHN0S1E3WlRl?=
 =?utf-8?B?Nkl0TkJMbnkybFNJa21pcTI0SkdvZ0x1K0NKMVNrZTc2WVZZTjhyVld3ZEFq?=
 =?utf-8?B?YnpkR1VNallqTGxwSFZYOTB2ZUpVdUZTcThOWDY1TGcwLzhiY0I0cXNVS0tk?=
 =?utf-8?B?WUgwT1hSaFhUQXphTzBwYndic3J6MlcrcGFLZDVjamZSVG9kSkxvenNkL3lr?=
 =?utf-8?B?S1I0ejJRa3BHcEVuUWZlZ0dVYjJzVnpqRzh2VG1lZkR3YXg4VjFkcncydmli?=
 =?utf-8?B?WWdqelkyNGw3U0VUMnpwSFFoTW11QTJiTHJlYmhObEtPSnZRNXdJYVhqcjBM?=
 =?utf-8?B?bVNPb3VTMkdxbTNsNE52UWhRb1dKY1JRL3pQSU41Znl5cWNKZDRiL2FnWHdh?=
 =?utf-8?B?bEdkRno3WUFDUFlaZ2c4b1IxSUdtUkxKT1g0YkxmQk11VElSL1VhNGNBdjBW?=
 =?utf-8?B?LzhhTmt5ejRFMzZRcG14T2JOSm94VFdiMzlEQmtIWmdOMEVTV0tOZUhUTlZw?=
 =?utf-8?B?bUZpclJFRlk5akRqU1RmTkM1ZUNjbkROUTU1SVl4Q2dKbDlmY0ROWnhVa1Jl?=
 =?utf-8?B?Wm13TDRWUzVvTXdYQ1VoOTM2Z1NkNGExcnZxRWJhdld5dTFqdDV1Z1J6RVZI?=
 =?utf-8?B?YkdBNmh5dlBHdEJkazBEWXFIV2FrMXd5dmpNbjZnUk1jSG9CREh5Zk1WL1Vy?=
 =?utf-8?B?UGR0TW81ZzRXMTY1TFhnd09KM0lzTG1vL0xxY1Y1NmJJNDVRSG5rdklmdXhS?=
 =?utf-8?B?VnhIVGNoc3dVZDErUFJCSmFBWEtJdjZOVlVDMWY1ZmN2ZVlTUmxvbHIybXVI?=
 =?utf-8?B?OTJ6VDhnNWhsOWFXTm84dVlIRHhnT3NJd2oxVVVySjdCS3JLU0lPdVBwOFMr?=
 =?utf-8?B?VmNJVU85T3YxT3A1OUs0OG1RSmMybVVYYlZBY21lT0tNZWZrSGMveEgzNnpq?=
 =?utf-8?B?ekh2ZlF4UTJBd20xS0MvazdZSHFIWWI4QmRTeThRTHpPRUtHZjFFTGVtTVUz?=
 =?utf-8?B?cmRJZ0tTNVl6R3R5ZWNnTFY2WVlrU1VCckwzVjlEbHhMQzdkRGhMY3FxaHRP?=
 =?utf-8?B?YmRmdjhyQXpNTmdaVEFSaW1rck4zU0lKdE5oVldEV2NjS2sxbEZGRnNqbFpt?=
 =?utf-8?B?OG5XelRUSHhzVVVGMlFQZmJtYlcrSzQyZnpFTTMvOUY3K3haWVJ1SHpJbEJV?=
 =?utf-8?B?SDRPT0ZhZjZ0NXdYQ2hBZHBTNEhQT20ybGNxdkNhcHl2MlFyd3BBcUxiTHF2?=
 =?utf-8?B?cWlmVTRWOFcvTCtXckNseVpnTU9ydGNnb0RNZ0FRclV3dzBCSm9jeGVIdXRo?=
 =?utf-8?B?REdQcWNJa0kwcURvMDNEY0VhMVE5bHJUdk9NZFBZTDdKTEFBcEM1YjExVGNL?=
 =?utf-8?Q?JVk+xsaEUFS9Zt58=3D?=
X-Exchange-RoutingPolicyChecked: vRZEiOkywEtGUT2A+EzCuEIa7ZY+WDW9vWVy8x2tx6IaAIgIP8VIK8BGrHvLTfB9dG8mDsmEACpizbdc96lihUefzozuLiH9ycCV8sqAm1SQBHR9D4Ua1n5tCMEVNtTF3s0Mhbsn3xClccH5a62+cNO2Jomo9F4MqUwtFKJLL6XoXGJXf+p422RW+3sG6FTLer8KweGrYJ2jNsemVM4NXRhW7VUpZfR7QmCQyFtdXKQ3SsgBwzdb6t+pRJ/GUfE+WaHBJbSKEdAtKWaqD9S0mkUEOwg5N/OoyvenxKvLg816tbhxItjBqOxQpBwQ/iu7hWm1/iDsNPHB+siDNlnwLA==
X-MS-Exchange-CrossTenant-Network-Message-Id: dbf8030a-f28e-47a0-fdd1-08de9a36a6e2
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB8168.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Apr 2026 15:01:05.4409 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aRvsHfbjfiWqswDlhFBN4azVf9haFtKK4ATN0binfuxnuwJ6DJB+GaRv2VB6GFwzPzAxiBZsLOI4eCJLqc0amT1RQOSFTMCZmoZwJ1x7O28=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8369
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776178881; x=1807714881;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DXr3qFOiE2Em3S5HEDicDovuab/7S2PtjbD+ypdU3Lw=;
 b=Rk3ERUKrOIg/QnI4ncrsTrFev2Tt8fWxDxW0wY/t+DVB5xsVqT2vW+By
 HT1MpAVK4jBSujmJ/CDkJh7jNSYOr8jmD6+Fz+NaZa72F0W75LN4pqZq+
 fMfD03pun1QuIFiOwJQr9QrUBrw/GfRfmBomIVmFh2gFFWU+9mjiemHjK
 zoBKmEDnXjJkgT9bcjjqjpYRkYgsW1BleOXtlSwSZIOI7gpBjXT5paAYg
 u6fYhO9/bi32G8v0b5I5v/UbJYOpoh74cQoEAWARX9AMvp9W5Sez1zTAQ
 eUwP08ZvJinRrsvKHOsgwP+Q16nFNZ48JqyIUU5tajav+rQDULvWWI80U
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Rk3ERUKr
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 2/2] idpf: implement pci
 error handlers
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:netdev@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:jay.bhat@intel.com,m:ivan.d.barrera@intel.com,m:larysa.zaremba@intel.com,m:anthony.l.nguyen@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:aleksander.lobakin@intel.com,m:linux-pci@vger.kernel.org,m:madhu.chittim@intel.com,m:decot@google.com,m:willemb@google.com,m:sheenamo@google.com,m:lukas@wunner.de,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[emil.s.tantilov@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[20];
	RSPAMD_URIBL_FAIL(0.00)[lunn.ch:query timed out,wunner.de:query timed out,osuosl.org:query timed out];
	ASN_FAIL(0.00)[137.166.211.140.asn.rspamd.com:query timed out];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[emil.s.tantilov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lunn.ch:email,intel.com:email,intel.com:mid,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Queue-Id: A29ED3FB8D8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 4/14/2026 4:09 AM, Loktionov, Aleksandr wrote:
> 
> 
>> -----Original Message-----
>> From: Tantilov, Emil S <emil.s.tantilov@intel.com>
>> Sent: Tuesday, April 14, 2026 5:17 AM
>> To: intel-wired-lan@lists.osuosl.org
>> Cc: netdev@vger.kernel.org; Kitszel, Przemyslaw
>> <przemyslaw.kitszel@intel.com>; Bhat, Jay <jay.bhat@intel.com>;
>> Barrera, Ivan D <ivan.d.barrera@intel.com>; Loktionov, Aleksandr
>> <aleksandr.loktionov@intel.com>; Zaremba, Larysa
>> <larysa.zaremba@intel.com>; Nguyen, Anthony L
>> <anthony.l.nguyen@intel.com>; andrew+netdev@lunn.ch;
>> davem@davemloft.net; edumazet@google.com; kuba@kernel.org;
>> pabeni@redhat.com; Lobakin, Aleksander <aleksander.lobakin@intel.com>;
>> linux-pci@vger.kernel.org; Chittim, Madhu <madhu.chittim@intel.com>;
>> decot@google.com; willemb@google.com; sheenamo@google.com;
>> lukas@wunner.de
>> Subject: [PATCH iwl-next v2 2/2] idpf: implement pci error handlers
>>
>> Add callbacks to handle PCI errors and FLR reset. When preparing to
>> handle reset on the bus, the driver must stop all operations that can
>> lead to MMIO access in order to prevent HW errors. To accomplish this
>> introduce helper
>> idpf_reset_prepare() that gets called prior to FLR or when PCI error
>> is detected. Upon resume the recovery is done through the existing
>> reset path by starting the event task.
>>
>> The following callbacks are implemented:
>> .reset_prepare runs the first portion of the generic reset path
>> leading up to the part where we wait for the reset to complete.
>> .reset_done/resume runs the recovery part of the reset handling.
>> .error_detected is the callback dealing with PCI errors, similar to
>> the prepare call, we stop all operations, prior to attempting a
>> recovery.
>> .slot_reset is the callback attempting to restore the device, provided
>> a PCI reset was initiated by the AER driver.
>>
>> Whereas previously the init logic guaranteed netdevs during reset, the
>> addition of idpf_detach_and_close() to the PCI callbacks flow makes it
>> possible for the function to be called without netdevs. Add check to
>> avoid NULL pointer dereference in that case.
>>
>> Co-developed-by: Alan Brady <alan.brady@intel.com>
>> Signed-off-by: Alan Brady <alan.brady@intel.com>
>> Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
>> Reviewed-by: Jay Bhat <jay.bhat@intel.com>
>> Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
>> ---
>>   drivers/net/ethernet/intel/idpf/idpf.h      |   3 +
>>   drivers/net/ethernet/intel/idpf/idpf_lib.c  |  13 ++-
>> drivers/net/ethernet/intel/idpf/idpf_main.c | 112 ++++++++++++++++++++
>>   3 files changed, 126 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/idpf/idpf.h
>> b/drivers/net/ethernet/intel/idpf/idpf.h
>> index 1d0e32e47e87..164d2f3e233a 100644
>> --- a/drivers/net/ethernet/intel/idpf/idpf.h
>> +++ b/drivers/net/ethernet/intel/idpf/idpf.h
>> @@ -88,6 +88,7 @@ enum idpf_state {
>>    * @IDPF_REMOVE_IN_PROG: Driver remove in progress
>>    * @IDPF_MB_INTR_MODE: Mailbox in interrupt mode
>>    * @IDPF_VC_CORE_INIT: virtchnl core has been init
>> + * @IDPF_PCI_CB_RESET: Reset via the PCI callbacks
>>    * @IDPF_FLAGS_NBITS: Must be last
>>    */
>>   enum idpf_flags {
>> @@ -97,6 +98,7 @@ enum idpf_flags {
>>   	IDPF_REMOVE_IN_PROG,
>>   	IDPF_MB_INTR_MODE,
>>   	IDPF_VC_CORE_INIT,
> 
> ...
> 
>> +/**
>> + * idpf_pci_err_resume - Resume operations after PCI error recovery
>> + * @pdev: PCI device struct
>> + */
>> +static void idpf_pci_err_resume(struct pci_dev *pdev) {
>> +	struct idpf_adapter *adapter = pci_get_drvdata(pdev);
>> +
>> +	/* Force a PFR when resuming from PCI error. */
>> +	if (test_and_set_bit(IDPF_PCI_CB_RESET, adapter->flags))
>> +		adapter->dev_ops.reg_ops.trigger_reset(adapter,
>> IDPF_HR_FUNC_RESET);
> You say "Force a PFR", but PFR is only triggered on the AER path, not on the FLR path.

Hence the "force" - the call to `trigger_reset` results in a PFR and is
only needed in the case of a PCI error. If this function was called
because a user issued an FLR, the kernel will trigger it for us. This
way we can reuse the reset handling path to restore the operation of the
netdevs.

Though I may be misunderstanding - are you referring to the wording or
the logic?

Thanks,
Emil

> 
> Everything else looks fine
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> 
>> +
>> +	queue_delayed_work(adapter->vc_event_wq,
>> +			   &adapter->vc_event_task,
>> +			   msecs_to_jiffies(300));
>> +}
> 
> ...
> 
>>   };
>>   module_pci_driver(idpf_driver);
>> --
>> 2.37.3
> 

