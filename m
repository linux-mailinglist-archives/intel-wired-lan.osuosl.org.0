Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id rbBONW7uOGrskAcAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Jun 2026 10:12:30 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 20D986AD93F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Jun 2026 10:12:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=IWd5mWD2;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A9DDF6F87B;
	Mon, 22 Jun 2026 08:12:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mcSPT3fPbV1Z; Mon, 22 Jun 2026 08:12:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 272E76F4BD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782115947;
	bh=yCjeHububkMvI5kgYnIzvkvehy96vAP3NzqgLyuMhBo=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=IWd5mWD2uzEiKfgf1bdu0halAKiEpMDogL2X3lO8V2tdi0myFByawtHSPUtk7yRPc
	 Yvfa6LcFoIC/dSF8NlqvYDzt0u6F/u242jVNNewyDFMdG/yA38PwihXCWBvsY7+UO1
	 SdfEITT/SxSXa1qmA6LXBNssUzFLPLDqJSCN8OHVjQvhQTQw1x0y/T5L7CNolYRxHx
	 htjTtKKdreJK3L+PsfIq64VxPefOW2vJ/AroisJdG3pTQMyZu6TxB7cwms9xN0SYFc
	 rmomR/Cn0RIwYHsuumiobJgEQrv+xWMMiyZChGafRTMwSDiylIIIEM/f+enPAo3QF3
	 GWEOwUfvcbjYw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 272E76F4BD;
	Mon, 22 Jun 2026 08:12:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id E83B9367
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2026 08:12:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D9A3C4E456
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2026 08:12:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9ZDpF7JSMy9X for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Jun 2026 08:12:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=moriyax.kadosh@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 903044E3C5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 903044E3C5
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 903044E3C5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2026 08:12:24 +0000 (UTC)
X-CSE-ConnectionGUID: cOGno1gnSl29kZm7P9PPCA==
X-CSE-MsgGUID: 1MhQttMxQrWjZC0Q6Ws4lA==
X-IronPort-AV: E=McAfee;i="6800,10657,11824"; a="82725620"
X-IronPort-AV: E=Sophos;i="6.24,218,1774335600"; d="scan'208";a="82725620"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2026 01:12:23 -0700
X-CSE-ConnectionGUID: xNLIz7o/TtqhxV42BxIH7A==
X-CSE-MsgGUID: KuuRQ11JTq2SDCcI5jy13w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,218,1774335600"; d="scan'208";a="279355120"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2026 01:12:24 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 22 Jun 2026 01:12:23 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 22 Jun 2026 01:12:23 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.53) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 22 Jun 2026 01:12:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=No6TU1tu0IBPsvyftKS3zFE5j2ydIDqeyo1lGJe8YvKaw1fT2NvB68jz7WAnL7drnlt+S8gTCRaMi2V3E8i1dgIjqjefknQqQ8oWBaN9ygmktkbtJYhaWc4e8DdY7G3ryzcJBn9XIDme8a4IxPidl/0h4rpjULzHXmuCGhkrdUkBWBNFV0GsTBoNVpDRPnZkCjDsFT4pEEFGu+smgqeLt325r4eX8PZqCiQ5R4EcRcPM2TGtp3GkMGpbqFktNbgWV/LjGNwb3Ue2uAGGiREr/j8PtnOtZiHPc7kY8IX1Z1DqL0j4YS+0CCMdMONQUQ4F0ee+PCb6qFmcuPSwqAR4ZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yCjeHububkMvI5kgYnIzvkvehy96vAP3NzqgLyuMhBo=;
 b=peGhdJOtWJChpDN1X+X+0yRIeYCYGKMXue5D8jiIaRwgwcvC6bVN8oQiN4NCkxwMGOBCo3QxjkOI2aTBlIzEDIMfqy2MdV1GHa82I4tFrl6oK1blxuVpbpMIlO3T2z5sX1A8r0f9w/MvuSIRqw+z0VeOxm9xOjRntxlb5CdN8KkvudQoOX6OcTdDxPYqilswlpyOABzLWY3utsmRiNpMZEpI1GANJUIm6H2jXIGapNhQqvSePKWZoo8GwtqObCl8ApaVIBn3kHEVcyDVycRkbgRI8+pPA0CZfNWFiTQkxIsOy5X1JFFxUBnMZ3ltguv9JJ0pG8fIJq80Bs16ZvkYSw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SA1PR11MB8448.namprd11.prod.outlook.com (2603:10b6:806:3a3::17)
 by SA1PR11MB8840.namprd11.prod.outlook.com (2603:10b6:806:469::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.139.19; Mon, 22 Jun
 2026 08:12:20 +0000
Received: from SA1PR11MB8448.namprd11.prod.outlook.com
 ([fe80::38f:6a4:ce6b:d5b8]) by SA1PR11MB8448.namprd11.prod.outlook.com
 ([fe80::38f:6a4:ce6b:d5b8%5]) with mapi id 15.21.0139.018; Mon, 22 Jun 2026
 08:12:20 +0000
Message-ID: <99635d62-c3da-4e25-ab22-d8875d2aa0c3@intel.com>
Date: Mon, 22 Jun 2026 11:12:14 +0300
User-Agent: Mozilla Thunderbird
To: "Ruinskiy, Dima" <dima.ruinskiy@intel.com>, KhaiWenTan
 <khai.wen.tan@linux.intel.com>, <anthony.l.nguyen@intel.com>,
 <przemyslaw.kitszel@intel.com>, <andrew+netdev@lunn.ch>,
 <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>,
 <pabeni@redhat.com>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <faizal.abdul.rahim@intel.com>,
 <hong.aun.looi@intel.com>, <hector.blanco.alcaine@intel.com>,
 <khai.wen.tan@intel.com>, Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
References: <20260507214706.309984-1-khai.wen.tan@linux.intel.com>
 <20260507214706.309984-5-khai.wen.tan@linux.intel.com>
 <d8f4f16c-adf6-4d99-bb76-09c047ba19eb@intel.com>
Content-Language: en-US
From: "Kadosh, MoriyaX" <moriyax.kadosh@intel.com>
Organization: Intel Israel (74) Limited
In-Reply-To: <d8f4f16c-adf6-4d99-bb76-09c047ba19eb@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: TL2P290CA0009.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:2::10) To SA1PR11MB8448.namprd11.prod.outlook.com
 (2603:10b6:806:3a3::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA1PR11MB8448:EE_|SA1PR11MB8840:EE_
X-MS-Office365-Filtering-Correlation-Id: 735f99c9-1f76-4e73-d1b2-08ded035fba0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|23010399003|1800799024|7416014|366016|921020|18002099003|22082099003|56012099006|4143699003|11063799006;
X-Microsoft-Antispam-Message-Info: 9WeZj/NBvnVe1e+KzPSf/AHGYgpct4oo6CYe1AagK/beORzGUE4aXEeZsqbGf28zdAdx3p2I2Gl918Exepi0rc7hwAPpnUaRnL5zHChNsTZHcEabp22im9l7/NMgwdxQVkg5JWFFKkE4n3jYd12FnBpVhpkJeEN3qv40fzLEq11Dx5VutuP4teD1BXTtR2KkQpuZYhjl3uXk7WZfNN+jtV3yKr7FDvAW8t3YsryolCvT1rR1AvsSx3dbPbRLBI/s8cV6GGve6ppcJN38uG5aYg31bjAcY37GUAK1v3b8qgVqZSxS3sbmhj+P5IMBiz+EwIFPyJmasJKwvuk2o9IO/2YJ37+8C4ZkMWFZPAxN6eZzS5aaR3uphTDnGmw0dTZufXPWK2u+X66MQQpkSPxbgeoo3jFHhAWgQex8nHGh4sW+nQrXvY6x57m77uMC6cm6pDTsVqsvHrXB9nC/fY1yjzG9/LfEzmMzCmt62aaq5HBTyPOo7hSrU6D0D7xLxIc4d1FMBWZx8pgWkMcOj5d3xnL4TQ1omxL3t9kWt4SvEjBojbp/hjgivC7QLQFhlaK4LdUvzuU3BOiKAGZtAAZzBLFDf30rHSes4GLGzLLUxr+ccz6RGcOMmL+GrsXMknpjaZLmIwHotJxCuGsZUZAKXS/G7y/dEucGGdBnFX7FNdBGXXvxjtWpzhCHJK/g3HFjVl8e62kzOB61F/6T6+Qg0w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA1PR11MB8448.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(23010399003)(1800799024)(7416014)(366016)(921020)(18002099003)(22082099003)(56012099006)(4143699003)(11063799006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cUdmbGJObTAyc2NwL1JHV3llU3F1emdyWWJSbE5idXZIR0NUQWJQZC9IVmFQ?=
 =?utf-8?B?MXpNb28vUDVHTVpaYVFKVTg1b3RBV3Y0RmRWZHdEd2lPaGRVRVBDKzA4OGxs?=
 =?utf-8?B?eFJ1MmFkeG5KTHRuZUQxblRxbVJRWFR1ZXZLeW5ua3laZktWNlViL1NWYUJR?=
 =?utf-8?B?TlExMktrWjV2aUIzSEgyQmd1SjYvbmx5dnhWb1d0UW9hSElHa0p3RjhFWTcv?=
 =?utf-8?B?YTB3aTNhN0dJd2hjWjB4a0s1RDBubHNEdGcweVlSdWx3NU5sUWRjRVdFdkJ1?=
 =?utf-8?B?VmpuOXc1WHN5bTN3NmdBcDJvOHZRZnd0R1I2R1FjcnM1MVZ6cktSQVpzc3dO?=
 =?utf-8?B?aVR0RDZEek5NQTUrQzI2N3ZDczJTSmNUU0N3SXRqODBGTE5mZ3pwODk4dGc4?=
 =?utf-8?B?TVFORDFyUm9tbHlXZE5Pb3dBMGpQUXpBaUlkOXVDSlJubmZ0c2U2LzdjbDVG?=
 =?utf-8?B?OThQSlpNbkhldjUxMWtrMU02dVdWMkZ1S2pRU1NPckF3RXQ5Y29zOWIrU3I3?=
 =?utf-8?B?M3lObUIydnNWcVl4S0Y3M093emdXSm15eU8yR1NxSERaU1BjdHRKWWx4QzQ2?=
 =?utf-8?B?dnV3RGVjY0EwUytkNmVIVjk0VkhYRGkxc0RnY3lmRER1aTNvT3UwQ2ZxV1RT?=
 =?utf-8?B?T3FyYTN0blBkakpDQWRWSHZYVjRpK3VOaWxZa01pVmdTTEVBZFJFQzBINVVV?=
 =?utf-8?B?Tm1WS2VpVlJEeENqUXRxekV1WHR2aEYvenZrTVZqVksvQXFPYWxYczd2MjVD?=
 =?utf-8?B?TS81STNWQ3hCWnZlSmNaV3VKbEdNMGU1N2dqc0lTL3hLQXVrU0QwTEs1QmZj?=
 =?utf-8?B?bm16eUNPeUJ3amRrQ09qOXB6WDMzZWRaVUVJc0M1ZGtjYnpQNmlhUHliY0to?=
 =?utf-8?B?aXE5czN0dERHT25RTmx2MXRYWHlsZGxDWWxOaHpzbzJNVmQ4ck1RSlo1T056?=
 =?utf-8?B?aXltSWoxcDVGVndISzhaYzJoWmFidUlKblBnREFPZFRGMEhmR2Z6anZKbDJm?=
 =?utf-8?B?QTNiUGJwV0J0bVRsb1VBVDNJNFRrMjZvUmhkNHllWlFQRStCaTdGb3I4R1V1?=
 =?utf-8?B?a3dUM0M4bTFhTklyaG80elF1c0dWWWJnZUJWT2hBVzhmdW4rWUIveHllQklo?=
 =?utf-8?B?ZUF2TXA4UmhMRG93NUYrZHhWSnhJWmF3MXo2YWk2VmNOZGl3TCtPNHhFMFEx?=
 =?utf-8?B?L09IeXQxWGQ5dnhDY0RQQ21GU29HLzFkS1dMTzBQcUp5Z1pZZ2szODhucFhR?=
 =?utf-8?B?QThhbHJIRlgvRGMyaGFzYThxdmNhY0hza0dSMmhYK1paTGxKRGFhWFJSaDNu?=
 =?utf-8?B?aTA1SUlBdGtja1N0NmJTeVE0RmVWaVNvQWxDYzFmSW81RnpEVnFyc2dadnBN?=
 =?utf-8?B?RzhVNEpFRHNTTTlGL1RlN2VhcU5TbFkrK2VrbC9JcmRYMHFKY01JMTBVYm5F?=
 =?utf-8?B?MVdBRmhSSHBMTW03WlhvSnJmeUNHVlQzb1NIbUU0Z2dFN0pRRXRqdHA4RWZp?=
 =?utf-8?B?UXUvOVJpaituSVl3RXVJL01VUXBvTDRWMkhVY1UwN2EyUmt6aW51Q0J4eVZm?=
 =?utf-8?B?dUlhUE1RRkZCaElMRGVVZ3BqQyttYnd3MTcvM3FnM1lHZFBtMm5uYUw3RVc0?=
 =?utf-8?B?ZnZKWjV4SEptMGp1TUF5MkhkS0h4UGdSWFJrT2x4M3hjQUFmem0ycWlXbFNG?=
 =?utf-8?B?ejZPZnFHMzlucFlBTjB6UnFINTZVTVI5ZlFadHF0Zi9PTDRydDFlOVhhc1d3?=
 =?utf-8?B?Mk1kVTluaWROUUZDVlJ2aEIyUENHVUV3YncxdDFlVDc4Qk9lK1NZd2hoUXJT?=
 =?utf-8?B?d3YxVmk0c1l5M3hEam9Fa2dyeXpmaERLNU0zVng3enZZMFpCYmk0QUtrbTVj?=
 =?utf-8?B?UkozUFV6YmVRcURObEtaSDZvZUhvWkVaRjYrNm9SMCtEYzBOdUgxVEwxWmFZ?=
 =?utf-8?B?NTlKZ0kwTjlRMlowcVppTDR2NkoxdmhmOU8xNzZSdnY3UTl6RjRqNWx4dlIz?=
 =?utf-8?B?azczQW1BNEtGSFJDNFk1c0ErdFFMa1JGdkZjR2NDdHU5TWxDM2FRS2JhbzRQ?=
 =?utf-8?B?U2FpWUNicTNxN1h1ZVowaFphdjhVdG1ZZTdtc2xvTURwd0d5QXhJU0ZiK1Br?=
 =?utf-8?B?QUxJQ3QzQVdFSHV6Tmx3OFVFRi9UdXQ2QXowQytxMzdtcEpOQ1NGVUFSQlhN?=
 =?utf-8?B?L29sclUrMzY2aHcxcmNPeloySVZCdzlSUklrQUxyY1c5a3llYkNVQU9Temcz?=
 =?utf-8?B?RkRNLzNtUjVCNVYrY0NOOVFERU10YlMwZ3Q4NElwT3VqWGUxcStXT28vL01Z?=
 =?utf-8?B?S1FHQnFYWjZmSXN0Z3ZVV0ZGWkhnRk01WjVQS2w5Z0F0ak5KNFRoYjFzZ2hK?=
 =?utf-8?Q?kmInw44ekX3CIGHw=3D?=
X-Exchange-RoutingPolicyChecked: kPfOE0po8H7owKJ1tywBkxHicLgwuTOiImnqk68L97ClOv0GER2L6TRwHVmnsh8gmN2VA773BDpwT7CvA0mUy1PYOfqOLcIBTHNDGMF14MZuMcxyZOw0KoswUflmOSF8Gvt59uDeWihxnF8RbnL9mPEYNEeDKWn/UB0PBHmHLZ9HgU1ywOfPDuTMAv35ehwUzMyQ8g9TyrEjiK9jtg5+ZN2QZh/h4pDmUTCGQN9RWPMtMmLHL7cJe+GDow6IGSJY2jrdTB6I6Mo6Z8YF7uMXZsOrBkdGcNnDMVwmhn24y+q4aq3lKhr9uKhZqDyMTSkofUYOBmLmG+CRNemGZIdA9g==
X-MS-Exchange-CrossTenant-Network-Message-Id: 735f99c9-1f76-4e73-d1b2-08ded035fba0
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB8448.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jun 2026 08:12:20.8038 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EWVNf0kCbH3sEIf4ThUAJBmDgyH3Z3dODpIppvIkD8ZL0I9YkvwNpKTTrA86kYqwiNqZN5TUCebje2hb2AjpHy2t86fMqTAj+IltXIBGBjk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8840
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782115944; x=1813651944;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xoy+Lg9nO39eS38AsFkYMew0LZhjdFhAZt9ym5r/MK4=;
 b=bDcC7vQLVvnlw6wvFPAPW091+32FZYu4N7DFf1obGyyhF0jC3ty1l7cU
 mTLGnu7eT0aKXkF/6EAK0GH8qhWzAOZVzzce2WL4LCjR6Ngr2jR4Cmzib
 UgyhdLC/oLs09pTaoJsV2eqJGdUVdWRo+dNeBXAmeHnEvc+3QbLV4BIk1
 hkl+o7RNKKf2uOpCjItUUqPuY3WBafZMnTEq9Hs5QmqkbYy8rkhQ0gOjW
 1uIadwfim6/2vCnViWZOrzZObWSCsJouIckzARCPC8Zs1m4QWkMnp6Ms9
 bZ1jbVbSzVdEJjf3slptZaiUfyFmrCcbpFPs3c5fK4YEiN6bAVh9CnoKj
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bDcC7vQL
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 4/4] igc: add support for
 forcing link speed without autonegotiation
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_ORG_HEADER(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:dima.ruinskiy@intel.com,m:khai.wen.tan@linux.intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:faizal.abdul.rahim@intel.com,m:hong.aun.looi@intel.com,m:hector.blanco.alcaine@intel.com,m:khai.wen.tan@intel.com,m:faizal.abdul.rahim@linux.intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[moriyax.kadosh@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[moriyax.kadosh@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo,osuosl.org:dkim,osuosl.org:from_smtp,intel.com:email,intel.com:mid,intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 20D986AD93F



On 14/06/2026 10:17, Ruinskiy, Dima wrote:
> On 08/05/2026 0:47, KhaiWenTan wrote:
>> From: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
>>
>> Allow users to force 10/100 Mb/s link speed and duplex via ethtool
>> when autonegotiation is disabled. Previously, the driver rejected
>> these requests with "Force mode currently not supported.".
>>
>> Forcing at 1000 Mb/s and 2500 Mb/s is not supported.
>>
>> Reviewed-by: Looi Hong Aun <hong.aun.looi@intel.com>
>> Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
>> Signed-off-by: Khai Wen Tan <khai.wen.tan@linux.intel.com>
>> ---
>>   drivers/net/ethernet/intel/igc/igc_base.c    |  35 ++++-
>>   drivers/net/ethernet/intel/igc/igc_defines.h |   9 +-
>>   drivers/net/ethernet/intel/igc/igc_ethtool.c | 138 ++++++++++++++-----
>>   drivers/net/ethernet/intel/igc/igc_hw.h      |   9 ++
>>   drivers/net/ethernet/intel/igc/igc_mac.c     |  12 ++
>>   drivers/net/ethernet/intel/igc/igc_main.c    |   2 +-
>>   drivers/net/ethernet/intel/igc/igc_phy.c     |  65 ++++++++-
>>   drivers/net/ethernet/intel/igc/igc_phy.h     |   1 +
>>   8 files changed, 220 insertions(+), 51 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/igc/igc_base.c b/drivers/net/ 
>> ethernet/intel/igc/igc_base.c
>> index 1613b562d17c..ab9120a3127f 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_base.c
>> +++ b/drivers/net/ethernet/intel/igc/igc_base.c
>> @@ -114,11 +114,35 @@ static s32 igc_setup_copper_link_base(struct 
>> igc_hw *hw)
>>       u32 ctrl;
>>       ctrl = rd32(IGC_CTRL);
>> -    ctrl |= IGC_CTRL_SLU;
>> -    ctrl &= ~(IGC_CTRL_FRCSPD | IGC_CTRL_FRCDPX);
>> -    wr32(IGC_CTRL, ctrl);
>> -
>> -    ret_val = igc_setup_copper_link(hw);
>> +    ctrl &= ~(IGC_CTRL_FRCSPD | IGC_CTRL_FRCDPX |
>> +          IGC_CTRL_SPEED_MASK | IGC_CTRL_FD);
>> +
>> +    if (hw->mac.autoneg_enabled) {
>> +        ctrl |= IGC_CTRL_SLU;
>> +        wr32(IGC_CTRL, ctrl);
>> +        ret_val = igc_setup_copper_link(hw);
>> +    } else {
>> +        ctrl |= IGC_CTRL_SLU | IGC_CTRL_FRCSPD | IGC_CTRL_FRCDPX;
>> +
>> +        switch (hw->mac.forced_speed_duplex) {
>> +        case IGC_FORCED_10H:
>> +            ctrl |= IGC_CTRL_SPEED_10;
>> +            break;
>> +        case IGC_FORCED_10F:
>> +            ctrl |= IGC_CTRL_SPEED_10 | IGC_CTRL_FD;
>> +            break;
>> +        case IGC_FORCED_100H:
>> +            ctrl |= IGC_CTRL_SPEED_100;
>> +            break;
>> +        case IGC_FORCED_100F:
>> +            ctrl |= IGC_CTRL_SPEED_100 | IGC_CTRL_FD;
>> +            break;
>> +        default:
>> +            return -IGC_ERR_CONFIG;
>> +        }
>> +        wr32(IGC_CTRL, ctrl);
>> +        ret_val = igc_setup_copper_link(hw);
>> +    }
>>       return ret_val;
>>   }
>> @@ -443,6 +467,7 @@ static const struct igc_phy_operations 
>> igc_phy_ops_base = {
>>       .reset            = igc_phy_hw_reset,
>>       .read_reg        = igc_read_phy_reg_gpy,
>>       .write_reg        = igc_write_phy_reg_gpy,
>> +    .force_speed_duplex    = igc_force_speed_duplex,
>>   };
>>   const struct igc_info igc_base_info = {
>> diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/ 
>> net/ethernet/intel/igc/igc_defines.h
>> index 9482ab11f050..3f504751c2d9 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_defines.h
>> +++ b/drivers/net/ethernet/intel/igc/igc_defines.h
>> @@ -129,10 +129,13 @@
>>   #define IGC_ERR_SWFW_SYNC        13
>>   /* Device Control */
>> +#define IGC_CTRL_FD        BIT(0)  /* Full Duplex */
>>   #define IGC_CTRL_RST        0x04000000  /* Global reset */
>> -
>>   #define IGC_CTRL_PHY_RST    0x80000000  /* PHY Reset */
>>   #define IGC_CTRL_SLU        0x00000040  /* Set link up (Force Link) */
>> +#define IGC_CTRL_SPEED_MASK    GENMASK(10, 8)
>> +#define IGC_CTRL_SPEED_10    FIELD_PREP(IGC_CTRL_SPEED_MASK, 0)
>> +#define IGC_CTRL_SPEED_100    FIELD_PREP(IGC_CTRL_SPEED_MASK, 1)
>>   #define IGC_CTRL_FRCSPD        0x00000800  /* Force Speed */
>>   #define IGC_CTRL_FRCDPX        0x00001000  /* Force Duplex */
>>   #define IGC_CTRL_VME        0x40000000  /* IEEE VLAN mode enable */
>> @@ -673,6 +676,10 @@
>>   #define IGC_GEN_POLL_TIMEOUT    1920
>>   /* PHY Control Register */
>> +#define MII_CR_SPEED_MASK    (BIT(6) | BIT(13))
>> +#define MII_CR_SPEED_10        0x0000    /* SSM=0, SSL=0: 10 Mb/s */
>> +#define MII_CR_SPEED_100    BIT(13)    /* SSM=0, SSL=1: 100 Mb/s */
>> +#define MII_CR_DUPLEX_EN    BIT(8)    /* 0 = Half Duplex, 1 = Full 
>> Duplex */
>>   #define MII_CR_RESTART_AUTO_NEG    0x0200  /* Restart auto 
>> negotiation */
>>   #define MII_CR_POWER_DOWN    0x0800  /* Power down */
>>   #define MII_CR_AUTO_NEG_EN    0x1000  /* Auto Neg Enable */
>> diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/ 
>> net/ethernet/intel/igc/igc_ethtool.c
>> index cfcbf2fdad6e..b103836a895f 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
>> +++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
>> @@ -1914,44 +1914,58 @@ static int 
>> igc_ethtool_get_link_ksettings(struct net_device *netdev,
>>       ethtool_link_ksettings_add_link_mode(cmd, supported, TP);
>>       ethtool_link_ksettings_add_link_mode(cmd, advertising, TP);
>> -    /* advertising link modes */
>> -    if (hw->phy.autoneg_advertised & ADVERTISE_10_HALF)
>> -        ethtool_link_ksettings_add_link_mode(cmd, advertising, 
>> 10baseT_Half);
>> -    if (hw->phy.autoneg_advertised & ADVERTISE_10_FULL)
>> -        ethtool_link_ksettings_add_link_mode(cmd, advertising, 
>> 10baseT_Full);
>> -    if (hw->phy.autoneg_advertised & ADVERTISE_100_HALF)
>> -        ethtool_link_ksettings_add_link_mode(cmd, advertising, 
>> 100baseT_Half);
>> -    if (hw->phy.autoneg_advertised & ADVERTISE_100_FULL)
>> -        ethtool_link_ksettings_add_link_mode(cmd, advertising, 
>> 100baseT_Full);
>> -    if (hw->phy.autoneg_advertised & ADVERTISE_1000_FULL)
>> -        ethtool_link_ksettings_add_link_mode(cmd, advertising, 
>> 1000baseT_Full);
>> -    if (hw->phy.autoneg_advertised & ADVERTISE_2500_FULL)
>> -        ethtool_link_ksettings_add_link_mode(cmd, advertising, 
>> 2500baseT_Full);
>> -
>>       /* set autoneg settings */
>>       ethtool_link_ksettings_add_link_mode(cmd, supported, Autoneg);
>> -    ethtool_link_ksettings_add_link_mode(cmd, advertising, Autoneg);
>> +    if (hw->mac.autoneg_enabled) {
>> +        ethtool_link_ksettings_add_link_mode(cmd, advertising, Autoneg);
>> +        cmd->base.autoneg = AUTONEG_ENABLE;
>> +
>> +        /* advertising link modes only apply when autoneg is on */
>> +        if (hw->phy.autoneg_advertised & ADVERTISE_10_HALF)
>> +            ethtool_link_ksettings_add_link_mode(cmd, advertising,
>> +                                 10baseT_Half);
>> +        if (hw->phy.autoneg_advertised & ADVERTISE_10_FULL)
>> +            ethtool_link_ksettings_add_link_mode(cmd, advertising,
>> +                                 10baseT_Full);
>> +        if (hw->phy.autoneg_advertised & ADVERTISE_100_HALF)
>> +            ethtool_link_ksettings_add_link_mode(cmd, advertising,
>> +                                 100baseT_Half);
>> +        if (hw->phy.autoneg_advertised & ADVERTISE_100_FULL)
>> +            ethtool_link_ksettings_add_link_mode(cmd, advertising,
>> +                                 100baseT_Full);
>> +        if (hw->phy.autoneg_advertised & ADVERTISE_1000_FULL)
>> +            ethtool_link_ksettings_add_link_mode(cmd, advertising,
>> +                                 1000baseT_Full);
>> +        if (hw->phy.autoneg_advertised & ADVERTISE_2500_FULL)
>> +            ethtool_link_ksettings_add_link_mode(cmd, advertising,
>> +                                 2500baseT_Full);
>> +
>> +        /* Set pause flow control advertising */
>> +        switch (hw->fc.requested_mode) {
>> +        case igc_fc_full:
>> +            ethtool_link_ksettings_add_link_mode(cmd, advertising,
>> +                                 Pause);
>> +            break;
>> +        case igc_fc_rx_pause:
>> +            ethtool_link_ksettings_add_link_mode(cmd, advertising,
>> +                                 Pause);
>> +            ethtool_link_ksettings_add_link_mode(cmd, advertising,
>> +                                 Asym_Pause);
>> +            break;
>> +        case igc_fc_tx_pause:
>> +            ethtool_link_ksettings_add_link_mode(cmd, advertising,
>> +                                 Asym_Pause);
>> +            break;
>> +        default:
>> +            break;
>> +        }
>> +    } else {
>> +        cmd->base.autoneg = AUTONEG_DISABLE;
>> +    }
>> -    /* Set pause flow control settings */
>> +    /* Pause is always supported */
>>       ethtool_link_ksettings_add_link_mode(cmd, supported, Pause);
>> -    switch (hw->fc.requested_mode) {
>> -    case igc_fc_full:
>> -        ethtool_link_ksettings_add_link_mode(cmd, advertising, Pause);
>> -        break;
>> -    case igc_fc_rx_pause:
>> -        ethtool_link_ksettings_add_link_mode(cmd, advertising, Pause);
>> -        ethtool_link_ksettings_add_link_mode(cmd, advertising,
>> -                             Asym_Pause);
>> -        break;
>> -    case igc_fc_tx_pause:
>> -        ethtool_link_ksettings_add_link_mode(cmd, advertising,
>> -                             Asym_Pause);
>> -        break;
>> -    default:
>> -        break;
>> -    }
>> -
>>       status = pm_runtime_suspended(&adapter->pdev->dev) ?
>>            0 : rd32(IGC_STATUS);
>> @@ -1983,7 +1997,6 @@ static int igc_ethtool_get_link_ksettings(struct 
>> net_device *netdev,
>>           cmd->base.duplex = DUPLEX_UNKNOWN;
>>       }
>>       cmd->base.speed = speed;
>> -    cmd->base.autoneg = AUTONEG_ENABLE;
>>       /* MDI-X => 2; MDI =>1; Invalid =>0 */
>>       if (hw->phy.media_type == igc_media_type_copper)
>> @@ -2000,6 +2013,37 @@ static int 
>> igc_ethtool_get_link_ksettings(struct net_device *netdev,
>>       return 0;
>>   }
>> +/**
>> + * igc_handle_autoneg_disabled - Configure forced speed/duplex settings
>> + * @adapter: private driver structure
>> + * @speed: requested speed (must be SPEED_10 or SPEED_100)
>> + * @duplex: requested duplex
>> + *
>> + * Records forced speed/duplex when autoneg is disabled.
>> + * Caller must validate speed before calling this function.
>> + */
>> +static void igc_handle_autoneg_disabled(struct igc_adapter *adapter, 
>> u32 speed,
>> +                    u8 duplex)
>> +{
>> +    struct igc_mac_info *mac = &adapter->hw.mac;
>> +
>> +    switch (speed) {
>> +    case SPEED_10:
>> +        mac->forced_speed_duplex = (duplex == DUPLEX_FULL) ?
>> +            IGC_FORCED_10F : IGC_FORCED_10H;
>> +        break;
>> +    case SPEED_100:
>> +        mac->forced_speed_duplex = (duplex == DUPLEX_FULL) ?
>> +            IGC_FORCED_100F : IGC_FORCED_100H;
>> +        break;
>> +    default:
>> +        WARN_ONCE(1, "Unsupported speed %u\n", speed);
>> +        return;
>> +    }
>> +
>> +    mac->autoneg_enabled = false;
>> +}
>> +
>>   /**
>>    * igc_handle_autoneg_enabled - Configure autonegotiation advertisement
>>    * @adapter: private driver structure
>> @@ -2038,6 +2082,7 @@ static void igc_handle_autoneg_enabled(struct 
>> igc_adapter *adapter,
>>                             10baseT_Half))
>>           advertised |= ADVERTISE_10_HALF;
>> +    hw->mac.autoneg_enabled = true;
>>       hw->phy.autoneg_advertised = advertised;
>>       if (adapter->fc_autoneg)
>>           hw->fc.requested_mode = igc_fc_default;
>> @@ -2059,6 +2104,12 @@ igc_ethtool_set_link_ksettings(struct 
>> net_device *netdev,
>>           return -EINVAL;
>>       }
>> +    if (cmd->base.autoneg != AUTONEG_ENABLE &&
>> +        cmd->base.autoneg != AUTONEG_DISABLE) {
>> +        netdev_info(dev, "Unsupported autoneg setting\n");
>> +        return -EINVAL;
>> +    }
>> +
>>       /* MDI setting is only allowed when autoneg enabled because
>>        * some hardware doesn't allow MDI setting when speed or
>>        * duplex is forced.
>> @@ -2071,14 +2122,25 @@ igc_ethtool_set_link_ksettings(struct 
>> net_device *netdev,
>>           }
>>       }
>> +    if (cmd->base.autoneg == AUTONEG_DISABLE) {
>> +        if (cmd->base.speed != SPEED_10 && cmd->base.speed != 
>> SPEED_100) {
>> +            netdev_info(dev, "Unsupported speed for forced link\n");
>> +            return -EINVAL;
>> +        }
>> +        if (cmd->base.duplex != DUPLEX_HALF && cmd->base.duplex != 
>> DUPLEX_FULL) {
>> +            netdev_info(dev, "Duplex must be half or full for forced 
>> link\n");
>> +            return -EINVAL;
>> +        }
>> +    }
>> +
>>       while (test_and_set_bit(__IGC_RESETTING, &adapter->state))
>>           usleep_range(1000, 2000);
>> -    if (cmd->base.autoneg == AUTONEG_ENABLE) {
>> +    if (cmd->base.autoneg == AUTONEG_ENABLE)
>>           igc_handle_autoneg_enabled(adapter, cmd);
>> -    } else {
>> -        netdev_info(dev, "Force mode currently not supported\n");
>> -    }
>> +    else
>> +        igc_handle_autoneg_disabled(adapter, cmd->base.speed,
>> +                        cmd->base.duplex);
>>       /* MDI-X => 2; MDI => 1; Auto => 3 */
>>       if (cmd->base.eth_tp_mdix_ctrl) {
>> diff --git a/drivers/net/ethernet/intel/igc/igc_hw.h b/drivers/net/ 
>> ethernet/intel/igc/igc_hw.h
>> index 86ab8f566f44..62aaee55668a 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_hw.h
>> +++ b/drivers/net/ethernet/intel/igc/igc_hw.h
>> @@ -73,6 +73,13 @@ struct igc_info {
>>   extern const struct igc_info igc_base_info;
>> +enum igc_forced_speed_duplex {
>> +    IGC_FORCED_10H,
>> +    IGC_FORCED_10F,
>> +    IGC_FORCED_100H,
>> +    IGC_FORCED_100F,
>> +};
>> +
>>   struct igc_mac_info {
>>       struct igc_mac_operations ops;
>> @@ -93,6 +100,8 @@ struct igc_mac_info {
>>       bool arc_subsystem_valid;
>>       bool get_link_status;
>> +    bool autoneg_enabled;
>> +    enum igc_forced_speed_duplex forced_speed_duplex;
>>   };
>>   struct igc_nvm_operations {
>> diff --git a/drivers/net/ethernet/intel/igc/igc_mac.c b/drivers/net/ 
>> ethernet/intel/igc/igc_mac.c
>> index 0a3d3f357505..d6f3f6618469 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_mac.c
>> +++ b/drivers/net/ethernet/intel/igc/igc_mac.c
>> @@ -446,6 +446,17 @@ s32 igc_config_fc_after_link_up(struct igc_hw *hw)
>>       u16 speed, duplex;
>>       s32 ret_val = 0;
>> +    /* Without autoneg, flow control capability is not exchanged with 
>> the
>> +     * link partner. IEEE 802.3 prohibits flow control in half-duplex 
>> mode.
>> +     */
>> +    if (!hw->mac.autoneg_enabled) {
>> +        if (hw->mac.forced_speed_duplex == IGC_FORCED_10H ||
>> +            hw->mac.forced_speed_duplex == IGC_FORCED_100H)
>> +            hw->fc.current_mode = igc_fc_none;
>> +
>> +        goto force_fc;
>> +    }
>> +
>>       /* In auto-neg, we need to check and see if Auto-Neg has completed,
>>        * and if so, how the PHY and link partner has flow control
>>        * configured.
>> @@ -607,6 +618,7 @@ s32 igc_config_fc_after_link_up(struct igc_hw *hw)
>>       /* Now we call a subroutine to actually force the MAC
>>        * controller to use the correct flow control settings.
>>        */
>> +force_fc:
>>       ret_val = igc_force_mac_fc(hw);
>>       if (ret_val) {
>>           hw_dbg("Error forcing flow control settings\n");
>> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ 
>> ethernet/intel/igc/igc_main.c
>> index 72bc5128d8b8..437e1d1ef1e4 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_main.c
>> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
>> @@ -7298,7 +7298,7 @@ static int igc_probe(struct pci_dev *pdev,
>>       /* Initialize link properties that are user-changeable */
>>       adapter->fc_autoneg = true;
>>       hw->phy.autoneg_advertised = 0xaf;
>> -
>> +    hw->mac.autoneg_enabled = true;
>>       hw->fc.requested_mode = igc_fc_default;
>>       hw->fc.current_mode = igc_fc_default;
>> diff --git a/drivers/net/ethernet/intel/igc/igc_phy.c b/drivers/net/ 
>> ethernet/intel/igc/igc_phy.c
>> index 6c4d204aecfa..4cf737fb3b21 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_phy.c
>> +++ b/drivers/net/ethernet/intel/igc/igc_phy.c
>> @@ -494,12 +494,20 @@ s32 igc_setup_copper_link(struct igc_hw *hw)
>>       s32 ret_val = 0;
>>       bool link;
>> -    /* Setup autoneg and flow control advertisement and perform
>> -     * autonegotiation.
>> -     */
>> -    ret_val = igc_copper_link_autoneg(hw);
>> -    if (ret_val)
>> -        goto out;
>> +    if (hw->mac.autoneg_enabled) {
>> +        /* Setup autoneg and flow control advertisement and perform
>> +         * autonegotiation.
>> +         */
>> +        ret_val = igc_copper_link_autoneg(hw);
>> +        if (ret_val)
>> +            goto out;
>> +    } else {
>> +        ret_val = hw->phy.ops.force_speed_duplex(hw);
>> +        if (ret_val) {
>> +            hw_dbg("Error Forcing Speed/Duplex\n");
>> +            goto out;
>> +        }
>> +    }
>>       /* Check link status. Wait up to 100 microseconds for link to 
>> become
>>        * valid.
>> @@ -778,3 +786,48 @@ u16 igc_read_phy_fw_version(struct igc_hw *hw)
>>       return gphy_version;
>>   }
>> +
>> +/**
>> + * igc_force_speed_duplex - Force PHY speed and duplex settings
>> + * @hw: pointer to the HW structure
>> + *
>> + * Programs the GPY PHY control register to disable autonegotiation
>> + * and force the speed/duplex indicated by hw->mac.forced_speed_duplex.
>> + */
>> +s32 igc_force_speed_duplex(struct igc_hw *hw)
>> +{
>> +    struct igc_phy_info *phy = &hw->phy;
>> +    u16 phy_ctrl;
>> +    s32 ret_val;
>> +
>> +    ret_val = phy->ops.read_reg(hw, PHY_CONTROL, &phy_ctrl);
>> +    if (ret_val)
>> +        return ret_val;
>> +
>> +    phy_ctrl &= ~(MII_CR_SPEED_MASK | MII_CR_DUPLEX_EN |
>> +              MII_CR_AUTO_NEG_EN | MII_CR_RESTART_AUTO_NEG);
>> +
>> +    switch (hw->mac.forced_speed_duplex) {
>> +    case IGC_FORCED_10H:
>> +        phy_ctrl |= MII_CR_SPEED_10;
>> +        break;
>> +    case IGC_FORCED_10F:
>> +        phy_ctrl |= MII_CR_SPEED_10 | MII_CR_DUPLEX_EN;
>> +        break;
>> +    case IGC_FORCED_100H:
>> +        phy_ctrl |= MII_CR_SPEED_100;
>> +        break;
>> +    case IGC_FORCED_100F:
>> +        phy_ctrl |= MII_CR_SPEED_100 | MII_CR_DUPLEX_EN;
>> +        break;
>> +    default:
>> +        return -IGC_ERR_CONFIG;
>> +    }
>> +
>> +    ret_val = phy->ops.write_reg(hw, PHY_CONTROL, phy_ctrl);
>> +    if (ret_val)
>> +        return ret_val;
>> +
>> +    hw->mac.get_link_status = true;
>> +    return 0;
>> +}
>> diff --git a/drivers/net/ethernet/intel/igc/igc_phy.h b/drivers/net/ 
>> ethernet/intel/igc/igc_phy.h
>> index 832a7e359f18..d37a89174826 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_phy.h
>> +++ b/drivers/net/ethernet/intel/igc/igc_phy.h
>> @@ -18,5 +18,6 @@ void igc_power_down_phy_copper(struct igc_hw *hw);
>>   s32 igc_write_phy_reg_gpy(struct igc_hw *hw, u32 offset, u16 data);
>>   s32 igc_read_phy_reg_gpy(struct igc_hw *hw, u32 offset, u16 *data);
>>   u16 igc_read_phy_fw_version(struct igc_hw *hw);
>> +s32 igc_force_speed_duplex(struct igc_hw *hw);
>>   #endif
> Reviewed-by: Dima Ruinskiy <dima.ruinskiy@intel.com>
Tested-by: Moriya Kadosh <moriyax.kadosh@intel.com>
