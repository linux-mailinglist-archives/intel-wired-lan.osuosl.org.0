Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uK9CKDf4cGmgbAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Jan 2026 17:00:55 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AE6359980
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Jan 2026 17:00:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C9C4784F21;
	Wed, 21 Jan 2026 16:00:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hI15bMODJ0cH; Wed, 21 Jan 2026 16:00:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2908F84F1E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769011246;
	bh=WrY6EvOkR3u3jLi7LqPLsZAihUZZx+RuwpUOS9ck2pQ=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=9GLGvp1oLE3M9M8iT7L8tVJfhzWqBbFoSmxWKhmR2kyVIToeZDU4fyELNiCqMazwm
	 HSKONISFB7ksWdVTKGfW4b11QJVPRWhsBzdZi7/lNsO7btiAUehLN9o0MFYO4w5m5s
	 m2oaH/ysgJkDWqGScCwJLglKjlU4PuYU1+9aRTMZFtYwwM7k+h6ga+I8NNXacLt289
	 c+N9vh1rpIM9mIcsS65T5t0NocEF5x22k+5/8CWcj8jvMHP1DtjsFgv5V3h0yGjXeU
	 biGcGhCU0I1DRHKaHaA6XAlsj0KwFEYMO+d3SWB1v7ke09UfWuejh0gum8qfxKMYox
	 flJZf/Db0qWbA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2908F84F1E;
	Wed, 21 Jan 2026 16:00:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id B2511160
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jan 2026 16:00:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9F53E42BB5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jan 2026 16:00:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MrFG62Z1wziH for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Jan 2026 16:00:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A06EF42BB7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A06EF42BB7
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A06EF42BB7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jan 2026 16:00:42 +0000 (UTC)
X-CSE-ConnectionGUID: Y80fbxCPT0WwERVkGB67PA==
X-CSE-MsgGUID: z6lGAwSAQgKSBWPGtaSUQg==
X-IronPort-AV: E=McAfee;i="6800,10657,11678"; a="92907521"
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800"; d="scan'208";a="92907521"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2026 08:00:42 -0800
X-CSE-ConnectionGUID: aqOOI1ELSNKFrtgSmmbK8Q==
X-CSE-MsgGUID: eAYKEPo3TPS/7xYbzsKb6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800"; d="scan'208";a="206389687"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2026 08:00:41 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 21 Jan 2026 08:00:40 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 21 Jan 2026 08:00:40 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.67) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 21 Jan 2026 08:00:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ur1ygrmDEZ9zSdSJmDIsFli1+osz00SdNA/q9eFdbszbHLXxNjMHUXVa70BbKFxqx//v2ReuG8Rx1afqiZqtmMGmWWyHy+gkicXSPsMoz+Je8NOP3jnEEr0e645sWvW2aSjq9ePUMW/jjNFVxjFb13VTqRkQuUzkMRAld6HSOBQ+NBvrZtarkVkb1HrRV1ixMeej8OdsE1w/Y9/spgCUEKUjQGilmyUbJiK+hSi51SUCMoK291aIHuaEm9AfMPTX3kstedgk6L3puFFNT4kL7Bd/nJoZVdAO0Qd/z053HgEZtBVtryUa0sDNdTqyD1/I3xCY7xFJHc1Iwvnvc2Lvrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WrY6EvOkR3u3jLi7LqPLsZAihUZZx+RuwpUOS9ck2pQ=;
 b=TPPXRvFAEJoNjJS6dsDudrHDL5OHR7qIh4gvdGbyOFT0iTJvV66BlsQXtjshX29ylHKHERWHjTIqiXVIXfnm6iBOI+5FeYqn5d4m68caTMLsybbSAQeNLGEXxMazWefuWRgxlDNnzS21YaXROmYEzRmON5DWkpLv4d6hXXF6k0auxUFkPxbdzvXiLjh0d4WffBbNcHnM48yQ+h55cD+XMcxKvMKxJbWxWCb0CLvg9atvl723QWIa5eI1TVxKijtQghslCZs14VY5VrgnZM5UGNf4iisaID9IfVT3mZUXyztfymSnVuzA2u8ghddsyxNNBFvN8SD0vsQqvIboBdE2eA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by SJ5PPF867D7FF5E.namprd11.prod.outlook.com (2603:10b6:a0f:fc02::83d) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.9; Wed, 21 Jan
 2026 16:00:37 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::6aa:411d:4bfa:619c]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::6aa:411d:4bfa:619c%4]) with mapi id 15.20.9542.009; Wed, 21 Jan 2026
 16:00:36 +0000
Message-ID: <905f01c8-6208-4baa-9507-87ba54158779@intel.com>
Date: Wed, 21 Jan 2026 17:00:19 +0100
User-Agent: Mozilla Thunderbird
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, NXNE CNSE OSDT ITP Upstreaming
 <nxne.cnse.osdt.itp.upstreaming@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
References: <20251204155133.2437621-1-aleksander.lobakin@intel.com>
 <20251204155133.2437621-4-aleksander.lobakin@intel.com>
 <c507379f-07a9-44fe-9679-277d618c0e04@intel.com>
 <20260120173405.82147-1-aleksander.lobakin@intel.com>
 <IA3PR11MB89860B4F0CF5B396C86747D2E596A@IA3PR11MB8986.namprd11.prod.outlook.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <IA3PR11MB89860B4F0CF5B396C86747D2E596A@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1P190CA0046.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:800:1bb::11) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|SJ5PPF867D7FF5E:EE_
X-MS-Office365-Filtering-Correlation-Id: 94f250c7-8cba-45eb-01db-08de590635fa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Y3JGZ1d3dTNBeW1uOEd5bFZZRTZSTWR3emcvQjhmaGlrNkZqR2NscWhaQ2gx?=
 =?utf-8?B?Q3ZCTUlKQm5pbjVYZitkNTgxWjVPUEl3Tm11ek95NmlRQ00ySWlPTDBWUTMz?=
 =?utf-8?B?R3BiK1VET3dwK3Ntc2lJTWFuaEUrQ3NZdjVDSEJ4REtMejA3SzhkNnd1QjdX?=
 =?utf-8?B?VmZ3a01EaUhFL3lPbUhZaU4vd0ZzZlBRTld3OTg5Y2U3Sk9VaE1rUU9rWnNo?=
 =?utf-8?B?Uk53VG1ybCtSRDEyazRsc3JUL0g0RUx4ZHRVYTA4UnpWc3lMTkR6Y0JZQ3I3?=
 =?utf-8?B?a3d4dVQzc0x6ZjRSNjgxRXRWa2RmY0luM3lWRWozVDZJckhteFkydUJ6c1d5?=
 =?utf-8?B?UFhvc3FRMmljSmtHT2EzVHVsWm1BSzNnT3RUQk9EOENERHZFNEd1Z0lVWXE2?=
 =?utf-8?B?QW5EcEVUNXhCSVRtMkJBdVRIaFNOVFArbUs3UkpieFpaN2QxeG4zM3pmNEFm?=
 =?utf-8?B?UUhoeG5VV3JabTVIdnNYZXNHVTJWL3FjRm5tekJJZWlnSEJWVFZCWUNjS01J?=
 =?utf-8?B?cE9qNCtNQkpPRHdpSFZTTlJ5OStiWU1sbGxQQzZ6eGhvNXdDM0J1UFFLUExy?=
 =?utf-8?B?NWNaSC9oN1VkQklRUmp1WkZFMjNHUXNkWElrVlk3OXZuMDM2YVZrVjRmVFps?=
 =?utf-8?B?cTh1RlE5bnBUVmdKOVNEN2t0RXo1R3pRTHpWKzJ3NDF1aGd3M3VVNS9QODZk?=
 =?utf-8?B?Q2NVc2l0alRzRW1CTzhJUXAweFBiL2R3dEt2ZG1POS90WkpzQm1wTGZGNXBN?=
 =?utf-8?B?NSthMWhac3ZqeXFTY280WDdualF5bzBXb1VkYVNoVU1OVnA0UkZ2aFBJWUo4?=
 =?utf-8?B?SndHeGFLQVI4NzJoRkFINmxhaEVKSURlMzJVK2hZYjZoTTBpeXRxektuWWtr?=
 =?utf-8?B?dkRjZHJPVkwyT2tLZWxSc0Q4TnJ2VEpieTJHcldXNUZpR3JvT2FEZGJKellk?=
 =?utf-8?B?TysxSnBwQmk0L2o4RTdRZERGZk5qaHNZUlVPNmRpTTNKV3lXMWYrZ0w4WUU4?=
 =?utf-8?B?RkJBRXhzdnNRYkE1R1NIb2dtUEFKTmpITVY3U0JZN0EyeHhOVlBHemJ5Nmlz?=
 =?utf-8?B?K2psYklZK0QrYUF5V1I2bEFqTjBxNVBPQWtucnRzb1hRNFNjYy83R0txYzBG?=
 =?utf-8?B?S1h3QTBaL2xsczlySDBKemhJSkllVVhrZXZtUGlSeHFOS3M5TzNnWTVSNUt1?=
 =?utf-8?B?L2EwN05DY1ZzSWM4djlkckxna3pSeVhxY3l3c3BGWFl5cS9HM210R3ZXajBv?=
 =?utf-8?B?QUkwL0dOYXR5aHJRYUlzem92Tlprekd3YmtMOEpMbEI1eXVvK1BTekcxbXBU?=
 =?utf-8?B?TXVidjdXL2hyTW40UTJKYmFtYjNlUG8rQm01MWxHbHlOYW1ObVg3UytkQWd6?=
 =?utf-8?B?NTkvMTJGRGdaNzViY3Y1RHIvQzdmY25wL0NvbHZ5ZVpNRWg3V1lwcWF1eU5D?=
 =?utf-8?B?VXpiT3FoTGJpV2lGajhoOVBQbXVjblBaYlVMUURqY1BlVFFNaUtnOExqZDd6?=
 =?utf-8?B?ZnFiZ21DVkx4WitPYzVHY083dUNFY1RVT05TOUk1Ylhud0ZneUFVQVlQcTJR?=
 =?utf-8?B?RWQwKzB5L1R5WGNjR2dPdGhEUXNrYWdra0JydnRBKzFDc081UzVzNDNWRFhW?=
 =?utf-8?B?ZjRqVmd3MDByTm9QdVlmMzk1MUlzODlTTDI1UG16QlMrOHoyZHdVUk9MUmYv?=
 =?utf-8?B?K3MxYklWWVcyWm4rdVpCaGdhTXlvSDNKOFpSQ2xaYXliUFZhc2wyR3R3T3dZ?=
 =?utf-8?B?WVQrZlR2aWRKKzhHMkVsbDF0SG1iNituL3VNT3Fqa1g3MkxzS0ZUL2k2eVFB?=
 =?utf-8?B?N09LcWVVeDhaMDN1eDg3TCtUaTdQQXdUNGVsUFZENXpJRFpva1k4eTIyanJ2?=
 =?utf-8?B?RU4yK2UwcmpZT2kyN2FTeXVIZVZBZjNFT1FaSE45UkVRSG41UXJlc1VxUUFS?=
 =?utf-8?B?US9NdzArR1RFUUVCekFiTFlVZ01YbzMrTEhhcUYvUThGM05TcTdRcjM5bkpp?=
 =?utf-8?B?ZzVqN2luekpwS21vd3pDeXd5cWMxUFpUNEg2QTAxalNiQktaSnJISFU3WWNQ?=
 =?utf-8?B?SHRLS3pSVWZFK29INWJxM3cwNkh6QjVWS0FaaVE3VEdWdE5ueDR1c0pBVTJx?=
 =?utf-8?Q?RjmU=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?THVwZDZrYzBBN0JJN1hsNkJwZCtxbllkb2hIeWFqbTBOZUZYNCtiY2d1RFNp?=
 =?utf-8?B?N3pGU1hpUzBFaVk0cXdaWDVTL1Z6VmhjR0tCenRtYnZGcHA3aTN0UHgrM21k?=
 =?utf-8?B?bEFUNUtzK2grMDhvcFA0QkhNc3NIOUlnWVN2OE1CaVR5NzhxMEl0dHZJVWpn?=
 =?utf-8?B?SEN1VzNiQWxkN2lHQTlPTkdieVQ2Q1E4NGtEczJrb00way9sOEJVazcxYlRX?=
 =?utf-8?B?c2tORFNncmk1YU1oOUpNb3phdUpIWGRHUjRWQmRwUU1FTDVuZmtYU05GTGRS?=
 =?utf-8?B?T0VKNEI4T0FkREhtK084SVhGUGNseWM5cWs1RjcwY2JIRi9HYitobUQzTmF3?=
 =?utf-8?B?eXRTQkM3TFc0aGV5c1dWMndtZ01XY3N5TVNZNTU2RjJNL0pyc09TYkhOWEFY?=
 =?utf-8?B?ZXdnTUdXZGZ6WlcvQy9JUkZUMVA1WWZJSjByRUtxS2FiTU0zRng5bmtPSmNZ?=
 =?utf-8?B?L2NYWFJXakRKTnV4Y29EY0RWbVJDUFYwTkhxQy91VEJUSU9FeVh4QWp1Z3FH?=
 =?utf-8?B?aE5vNCt2bEpYMWFqcjU1bEhoL0J6bHpUdFduak1VZzZJMm5xeWRkSGF3T0p6?=
 =?utf-8?B?V3VtTlAzSUtVY2JiYTg1Y0xyd3FmRlN2ckQybVdPaXFZb0dUQlp5L3ZZdVFR?=
 =?utf-8?B?YjNtL1d2VlNyeEpUNm82V1VXcE1KaHJDUHErWm5TaUZGbUdZdFBTVnN5aUJU?=
 =?utf-8?B?akZ3WUUrcnpXdE0vNW4wVGErKzZiMm1HSnEzZ3ZKdElHcmRvb0N4NGpMYkdX?=
 =?utf-8?B?czN6eTdmWHR2eExUR2dyeFc5TjcrU1lYMWdhVGljMHVFMzd4eXBDeDBtRVdW?=
 =?utf-8?B?TDdHOTBwYmNBK3RyYTZEL3oxQWw2Wm9kRFFFTndDbWFnUG9yYklXKzhqVUxq?=
 =?utf-8?B?dmh5SWF3eWR2VzhZcVdUOEwybE1nbE0xd3pHaDRKcWloVUwwZGVLMHg2QjRR?=
 =?utf-8?B?VHR3VjdFaEVnK1RSTU5NU3hUV3YwYnpNcTlVbGlER3Q0R1ZJc1ZNem1pVmRs?=
 =?utf-8?B?STB1UmpyTHZMaktiQXgxWGNFVXdUbEc5bmhxM0FaMXkrM0tSYTVyVUVWdTFn?=
 =?utf-8?B?R0pTNk5EcGwwU1JkSTkvcTlQODMxdCtqQXdXc2JaT3ZJanZ1NThnQWg2Rk9P?=
 =?utf-8?B?eWpDQVp0cUJHbWo4K21Qb3FkNHZZOVVDTDQ1b3Y2WmxvN0hkb0cyNnlqc2lL?=
 =?utf-8?B?R1MzRnlRdE5aUXdDaitMdHQwUDRMRDVDL3ZCcm5EWlhTWlY4dmRDVUlmVUNm?=
 =?utf-8?B?bVo5dWsvTzFlUHhteVo5Skc4OWQvRm50Nmg5dVRWbzFWUFJSREc0RndZZFNW?=
 =?utf-8?B?R01qNlZaZmV5VC9jb0d4V0R1MW1VWVh3Q0xFcEVtWmxtREgzNTBtcDdUSFpU?=
 =?utf-8?B?ZXJlajVaZnRIWFE2aGY5c2N6MUZxUkRRRnQvK3Jlc1ZSK0dncGUxUzAvRld6?=
 =?utf-8?B?bU4ySElJN2FyNDhKRjJreWtNbEZLNWVNV1NZUGVId2wyTzNYaHhHMFkxUTNV?=
 =?utf-8?B?Y2RvMHovWG8vcm1EV1IxZ0dtZ0xQWHIzbmRCNjkvV2tlUlh3RHBlcVlFSWNp?=
 =?utf-8?B?eWpkSHpTYzMwTVMvWmxFeVV4SEcxN1NiK0ZsaGVjV1VRNS9xaW5GSDMxQmh3?=
 =?utf-8?B?dnpUQVVnbkVWSnNpQnNhOEdkc3ZBZHBidmFMU3BqT2M3MEJpc1JScEVTM0VI?=
 =?utf-8?B?dDNtN0REK1NYSU1oaXprZVdnUjJjTXozaWF2QWNBanlmaTBibEhxWkR2eEZD?=
 =?utf-8?B?cm9wRU5HTHllK0diV2NOQlMrSHJWSzU0U01mSU9NT2N0ejVubWJIWVF2MHp0?=
 =?utf-8?B?aWpLcXpndXZSalAwYUlaRlY0ZnloVHNPVG5YdjBVbktlTFBlWkJzUjB1Qk9R?=
 =?utf-8?B?Yy80Y2kxNEtaNlA2N1RWMU9jQjVTOTFCY0lCRHhkNlo4U0tKWlpqVUE3WVRZ?=
 =?utf-8?B?NXlHZ2JyT0J6aysyL1E0bGlEN2ZFbTlZRW5GZU9rVVEwVktSRDRsSVkyakow?=
 =?utf-8?B?WW1EajRuTEc0SGJlQ0didzdsdXYyMUVhRThYLzdYdGVMYmNjVW1xSFV3aE9N?=
 =?utf-8?B?VlBRcTBLL29HZ0hQSmMrWUpnclNWeFRuNFkyS2NZV0FZa0NKeDBFa29rV2ZN?=
 =?utf-8?B?SU53M21QUVdNUytnUGx6L0F3Y0tjUE53c3NSQ3JMODVXd0c0UklMTDJiS082?=
 =?utf-8?B?V0k2WXNrK0hQMzdPZDBvMUlIK3RhRTdLUWR3YmZ5cFJiREs3aFFvQnlVcFhP?=
 =?utf-8?B?YUFIR1l1MFFNUUlxTnRHeEJwM0VWZjIvYnZRWXlhYjFlYWZTOXBoNG1yZ3hY?=
 =?utf-8?B?VFhjWDFQcW8vSkJwME8yNnMzOXVBTXdVc0UrY3ljSkc1dE9wVEtLRXgwK0p5?=
 =?utf-8?Q?KidYIan7QB45GfAE=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 94f250c7-8cba-45eb-01db-08de590635fa
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jan 2026 16:00:34.6403 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nl2p/huKOInEAgZ7sKoF62nTl/DZn5ISXasHyBZUpXuSpBahX1iY+PEvButcp5bhsiXfy4P5fyS2gyviZGTrlUtWUM8OCzeQ49rehfCJQT4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF867D7FF5E
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769011243; x=1800547243;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NFlF483DoWNWDULQKp9D824hnq7dWnhKUjqUaQSlh8I=;
 b=P4CN52Gwsw4lk+csilRyzjSUY4+boGliVud7jo5bflnAUJNj4CxLam9m
 Y5ZwJM6wMnB8vBg+L3ONZEgoFIhE8/50wqW99wrq/3Z4Jtxm0Sw6VDrbJ
 e5WovLsawCl/WKBssuRd5pjLxG1fztfKKYKfOgrO2ACenNStWcaPjRm1H
 6C7MjyLgCpxSz8n28YREeOcPeH3gJ9FgU5wx31y+VhdcxmnhQaHDHo8HU
 YFPgHPJO7Tk3j7UEH3xNVAg5+rEt01bNyDvnZHdsb9/flsHRWZkdrEP/v
 UCrWQKoHCHE5RNHMgiVfwDap+81JsG1ok0AMkbgIY3vjPoCoMIjlVRmRm
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=P4CN52Gw
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: fix system hang on
 `ethtool -L`
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
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:jacob.e.keller@intel.com,m:nxne.cnse.osdt.itp.upstreaming@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RSPAMD_URIBL_FAIL(0.00)[davemloft.net:query timed out,lunn.ch:query timed out,intel.com:query timed out];
	FORGED_SENDER(0.00)[aleksander.lobakin@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksander.lobakin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,smtp1.osuosl.org:rdns,smtp1.osuosl.org:helo]
X-Rspamd-Queue-Id: 2AE6359980
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
Date: Wed, 21 Jan 2026 08:18:47 +0100

> 
> 
>> -----Original Message-----
>> From: Lobakin, Aleksander <aleksander.lobakin@intel.com>
>> Sent: Tuesday, January 20, 2026 6:34 PM
>> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; intel-wired-
>> lan@lists.osuosl.org
>> Cc: Lobakin, Aleksander <aleksander.lobakin@intel.com>; Kitszel,
>> Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
>> <andrew+netdev@lunn.ch>; David S. Miller <davem@davemloft.net>; Eric
>> Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo
>> Abeni <pabeni@redhat.com>; Simon Horman <horms@kernel.org>; Keller,
>> Jacob E <jacob.e.keller@intel.com>; Loktionov, Aleksandr
>> <aleksandr.loktionov@intel.com>; NXNE CNSE OSDT ITP Upstreaming
>> <nxne.cnse.osdt.itp.upstreaming@intel.com>; netdev@vger.kernel.org;
>> linux-kernel@vger.kernel.org
>> Subject: [PATCH iwl-next] ice: fix system hang on `ethtool -L`
>>
>> ice_set_channels() calls ice_vsi_rebuild() under the netdev lock
>> taken, but ice_vsi_rebuild() calls netif_napi_{add,del}() which take
>> the same lock.
>> Add ice_vsi_rebuild_locked() which uses the _locked counterparts of
>> these functions and use it in ice_set_channels().
>>
>> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
>> ---
>> Hey Tony, please amend to the patch I replied to.
>> ---
>>  drivers/net/ethernet/intel/ice/ice_base.h |  2 +
>> drivers/net/ethernet/intel/ice/ice_lib.h  |  1 +
>> drivers/net/ethernet/intel/ice/ice_base.c | 63 ++++++++++++---
>> drivers/net/ethernet/intel/ice/ice_lib.c  | 94 ++++++++++++++++++++---
>> drivers/net/ethernet/intel/ice/ice_main.c |  5 +-
>>  5 files changed, 143 insertions(+), 22 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/ice/ice_base.h
>> b/drivers/net/ethernet/intel/ice/ice_base.h
>> index d28294247599..99b2c7232829 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_base.h
>> +++ b/drivers/net/ethernet/intel/ice/ice_base.h
>> @@ -12,8 +12,10 @@ int __ice_vsi_get_qs(struct ice_qs_cfg *qs_cfg);
>> int  ice_vsi_ctrl_one_rx_ring(struct ice_vsi *vsi, bool ena, u16
>> rxq_idx, bool wait);  int ice_vsi_wait_one_rx_ring(struct ice_vsi
>> *vsi, bool ena, u16 rxq_idx);
>> +int ice_vsi_alloc_q_vectors_locked(struct ice_vsi *vsi);
>>  int ice_vsi_alloc_q_vectors(struct ice_vsi *vsi);  void
>> ice_vsi_map_rings_to_vectors(struct ice_vsi *vsi);
>> +void ice_vsi_free_q_vectors_locked(struct ice_vsi *vsi);
>>  void ice_vsi_free_q_vectors(struct ice_vsi *vsi);  int
>> ice_vsi_cfg_single_txq(struct ice_vsi *vsi, struct ice_tx_ring
>> **tx_rings,
>>  			   u16 q_idx);
>> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h
>> b/drivers/net/ethernet/intel/ice/ice_lib.h
>> index 347b63e497e7..e55b72db72c4 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_lib.h
>> +++ b/drivers/net/ethernet/intel/ice/ice_lib.h
>> @@ -68,6 +68,7 @@ int ice_ena_vsi(struct ice_vsi *vsi, bool locked);
>> void ice_vsi_decfg(struct ice_vsi *vsi);  void ice_dis_vsi(struct
>> ice_vsi *vsi, bool locked);
>>
>> +int ice_vsi_rebuild_locked(struct ice_vsi *vsi, u32 vsi_flags);
>>  int ice_vsi_rebuild(struct ice_vsi *vsi, u32 vsi_flags);  int
>> ice_vsi_cfg(struct ice_vsi *vsi);  struct ice_vsi
>> *ice_vsi_alloc(struct ice_pf *pf); diff --git
>> a/drivers/net/ethernet/intel/ice/ice_base.c
>> b/drivers/net/ethernet/intel/ice/ice_base.c
>> index 7097324c38f3..65e19815bec5 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_base.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_base.c
>> @@ -153,8 +153,8 @@ static int ice_vsi_alloc_q_vector(struct ice_vsi
>> *vsi, u16 v_idx)
>>  	 * handler here (i.e. resume, reset/rebuild, etc.)
>>  	 */
>>  	if (vsi->netdev)
>> -		netif_napi_add_config(vsi->netdev, &q_vector->napi,
>> -				      ice_napi_poll, v_idx);
>> +		netif_napi_add_config_locked(vsi->netdev, &q_vector-
>>> napi,
>> +					     ice_napi_poll, v_idx);
> If you converted ice_vsi_alloc_q_vector() into _locked, should it be lockdep_assert_held(&vsi->netdev->lock); then?

IIRC the core kernel functions check for this and warn already.

> 
> Everything else looks fine.
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

Thanks,
Olek
