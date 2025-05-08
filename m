Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8162CAAF6D3
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 May 2025 11:34:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 448004120A;
	Thu,  8 May 2025 09:34:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 82wJ2kNxz4vC; Thu,  8 May 2025 09:34:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 96876411DA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746696868;
	bh=INgjbm46kzoosOfOswa5uXGq4Ak8MBuUBpT4GW5ts3k=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=vxFOLqcB95r0Bcq9ypnyaSz2YeepZoFEbEa4FGacyK6JgHioxqtBtyLyebcZIFjLN
	 70lSF9AaSmrcykgO2rPf6WLHEe325GFcO/wRYuTbsheSGJqfl5tlLoSGTT24s0/La1
	 6O+e534TNW1JHgXL7UTVn6NeASEuL8IjSd+GEjyF1QiUnY3xHLPSkGu4dzKjpsd9w/
	 5LPTfmDQzGklXpcdCjbw22loS8CayBm0YO4ELNtxgvpZiT2zzGye/AAEFxTNOkr5CK
	 fV6keDYjgwkZL5p3vk7SSZellsm29xcAnADcfLS2NcuyBH/tauRQ2+YjJmcHbNmE/G
	 yXQu7Dooqulrw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 96876411DA;
	Thu,  8 May 2025 09:34:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 0C5101A9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 May 2025 09:34:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E62E260F19
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 May 2025 09:34:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fyOoigKrUUby for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 May 2025 09:34:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 31BD660F21
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 31BD660F21
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 31BD660F21
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 May 2025 09:34:26 +0000 (UTC)
X-CSE-ConnectionGUID: MrGW6fMrRSuDucjTcLz6GQ==
X-CSE-MsgGUID: XyRjuujaSe+UBtpchEfGXg==
X-IronPort-AV: E=McAfee;i="6700,10204,11426"; a="52121517"
X-IronPort-AV: E=Sophos;i="6.15,271,1739865600"; d="scan'208";a="52121517"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2025 02:34:25 -0700
X-CSE-ConnectionGUID: F8fMeWDQSdeF2iIiQMeluw==
X-CSE-MsgGUID: 1jqNuGTnTAekIcrT5P+rBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,271,1739865600"; d="scan'208";a="136250018"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2025 02:34:25 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 8 May 2025 02:34:24 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 8 May 2025 02:34:24 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.175)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 8 May 2025 02:34:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cdgQetrBwnPKWmtvlu8zfZIGpZOE04xCpQ5Q1qw+kE48wsiJoXFiXZ5QNc5Yrzw2j7XVxi5yH09DTdXeIhFx/Grq/LSjw8xdswyWNajxW3ZYZugayHxq2PDlC4n30D4vIhXwb4KuMikHXLTIpBaa11V7t7qW6vp9EDg5d+LzInpdPA8pfZ2GTyol6kXZwRQtJ20DQ/8oEYLjCwZOxLfpYEbdV+Jbb3QzicRbI+5pKmtYvwyYvGUvUK77CfkmZ2b3hxgG7QgOR6VejTmfqFiNxmuFMyS3rD/5eEEGPXHlw1XV5W0C+3VglVINn2JA8xUAoieuTggu0rRLNWvtBz15Fg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=INgjbm46kzoosOfOswa5uXGq4Ak8MBuUBpT4GW5ts3k=;
 b=mfDAatCOL/J0vQ4D/ZTTMtE44prgGwHxZprPa8Q0SnhTkyWi7+EHAZLvUFsRx/PxCRbiE/oXMoBJ/Mqven3o3Vljd7lYViRVNhChVCEwfQej8oJo6U50VCzxh0zvBEiEdnMA03Uc1EH8L7raeE/CKLv2Q+OduAsfGl4rhvOL39erWfSmQNhLFbiRnLk5VWbRC+nEA90qg3enxT5tiyjkITyU0/kkVpOJCnSZtSS4C5cjZAnBCGTEleIp1ADV1eE6vqdKMXgerbnMZRzfLqEbomcFQ/4S7k7f/5K7Gg7jx5rMYRiP8v/09B9AaTTLqyhMAYFi0BqYsEK9lJ2gTHMBig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by IA3PR11MB9133.namprd11.prod.outlook.com (2603:10b6:208:572::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.23; Thu, 8 May
 2025 09:34:13 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%5]) with mapi id 15.20.8722.018; Thu, 8 May 2025
 09:34:13 +0000
Message-ID: <6da97f7e-2311-4658-b745-f8a29057b244@intel.com>
Date: Thu, 8 May 2025 11:34:08 +0200
User-Agent: Mozilla Thunderbird
To: Jagadeesh Yalapalli <jagadeesharm14@gmail.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>
CC: Andrew Lunn <andrew+netdev@lunn.ch>, "David S . Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, Jagadeesh
 <jagadeesh.yalapalli@einfochips.com>
References: <20250508061439.8900-1-jagadeesharm14@gmail.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20250508061439.8900-1-jagadeesharm14@gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DU2PR04CA0004.eurprd04.prod.outlook.com
 (2603:10a6:10:3b::9) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|IA3PR11MB9133:EE_
X-MS-Office365-Filtering-Correlation-Id: 374428db-7891-46dd-44df-08dd8e137e38
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|7416014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bWtHanAzVGhEUkcwRTl6MEVIOGFZdWE1ZDNtT2F3ZVhZZTd3WkUxUUZlQ0RS?=
 =?utf-8?B?VTdYOHBlSjNoNlA3c3BwRXFId256TGlLUHQxakl4ZDBvbmVTa1pjcy9qUnBI?=
 =?utf-8?B?QitYbXA1WXE0WXh4T3FrZi9HSlBOSlhTL2FEaDcyb0xrS24yajJPL09GZjl6?=
 =?utf-8?B?aTA4NHFERGd2M1laNHFnd0F0eFl1TUlwRVVMVUhRWDFoWW94QlloQkd1Nm5w?=
 =?utf-8?B?OEw2ckV6alZpblJHODlMSUxHVXArZWZnMUZVMFVMTERXSnRBOGdwd0RUSmtL?=
 =?utf-8?B?cHFaa1JlSzZabGp6Qi95enpQYTFEWjEvZ2VlOGFhL3VtSFp6bUhvMDQ3OGxl?=
 =?utf-8?B?UXFvQmM5bzBUMEQwbjZTRUFRU1FTM0lRKytGQWVPUktYTC9Ma3gwTTlUdndW?=
 =?utf-8?B?VzRyQkdCWWh3eVFTUEZaOEgvUW9vblpjRTJpSjlwRVYxTkFKOXNOUTlmTkpm?=
 =?utf-8?B?UzZ2WjlrVmpVOW0rMno3MVBSS1Jna1R5elRmbkJrbTNBeWJFalNNQU4yR1VH?=
 =?utf-8?B?WS9WM2drR1F1b3lWaGtXVmhncndsaU8rOHI4TTlob1N0WUgzWnJwZW9LZktE?=
 =?utf-8?B?eXB3cldUbUI0SE5EdEdpNUdrc2g5TDNyeHlDdjk0czFCczJBc3NNNnB3QW50?=
 =?utf-8?B?bmMwY3JMaTh2bjQrNGZQSkFEZFRJUTliRHdxSEh6WlI4NHAwcFBOSFBsL2hE?=
 =?utf-8?B?cmhOTWVxazE4VUZQNm1CTE84N0tubEs5WGhBL0dncFpVOEdQWUEvN293Q3Jp?=
 =?utf-8?B?TnVOMGRRZHRqbCs3ZGNxUHJ5Q3ZPMHZYbmZZTjhiMjhwZ2c4ajFYb2pIVzBm?=
 =?utf-8?B?WU5jcXFDSzRNUHFZcEhmM0wrL1U0SGVUdjcvdFFhSmh2NFFIczhuN2JyVmJa?=
 =?utf-8?B?ZUgvM2g3NEJ4Q0RzT241eVN3NjJTblQ0bzRabUd3QTA5dHpjRzZaWW4zK1BR?=
 =?utf-8?B?NXpVM01ESDI3a0RWdkl4dEt1RTd6RTJQWVM1S3BCQ3lCN2tJNHNLRStRZFVk?=
 =?utf-8?B?YmdQWFhxVnlCMFgxYUpnd1JadjhyLzhyNm1TS2pWMjhIZ0Y4dFg5b21NbVF2?=
 =?utf-8?B?QjZZRXhpVHQrdlZZOG1XOFpaSDdha2UrUXR0S3A1QjF4TjdvV2FMeHplUGoz?=
 =?utf-8?B?d2VhbDZFWmVPZTNyOGpydGhxMXplaURrVWpUVFF5S1EzSytteTk1VnpqdXlr?=
 =?utf-8?B?b0VjbUV4SHZveVBENTFCb01UN0lCKzZSek5PNW1raGw1RElRTEVkTTdPek1T?=
 =?utf-8?B?UzJvclhSS2k5UnZIakVPNFl6SWhNK3BLRU56Ni81THFPR01jRmNObTVmL3dD?=
 =?utf-8?B?THJEVTFXT2d2YVBsTUtUVlhVeEkreDNwM1Nsd2IvbnhTWFRFbjJldEVEWllt?=
 =?utf-8?B?eUY2YWU5RjFtOEJIeFYvOStZNzRjd1oyL05sYWM4ZFVxNGtxSnJSWXV3NWY2?=
 =?utf-8?B?bktBS0hpT2JQcGMzdGZGNndvMXBueUpmZGpxYzJYK2dWeUowazBXZlp0S2Rk?=
 =?utf-8?B?UE5ORGcwUEx5SjEzYjRrdzB0dEl4WFB2L3NYZ3F1ckF0eC9wOUxtVWw1RDd5?=
 =?utf-8?B?d3JJU0k2NWZCWTV3V2Z0QXhhVUsvbzJ0THlidTdpVnkzeVZBMTlodG5WSnEy?=
 =?utf-8?B?eVVlZ25GWlVaSDdXVWJpN2lQb3hLbElWRU1ZVmowcWdpbEtCOWRlZmdtd0RC?=
 =?utf-8?B?MUI1MCtiOUdHclVhTzJ6V1FXUHllL0NGemZmU2ZoMFU0V2RPdElnMnRRNXhT?=
 =?utf-8?B?bHZuWXR1Ukl2ZksydlNDbkc3d0FCS1IzVFMycHhSQTYwZ2g0NGk0Y24xWVZN?=
 =?utf-8?B?MzRYMkxGR2xOMUFKd2lEbmdmampDLzBqUmFPTTdnejFyaWhMc0QraVR4bmF1?=
 =?utf-8?B?SWZ0L3JPWitvYjdWVzdma1RCTGRLb09QWENVTzZCLzRtQzFGZ0gwOFZlREdV?=
 =?utf-8?Q?DYPTiByZYzE=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7416014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZmkvU1d0Y2wwU1BFaDlvRUFrQktlTDZ0ampZUXhES0tCN0Y4Z0toQkRKdS8z?=
 =?utf-8?B?dnJHL1lHZmFSMXlnUTltelpuQWdsQTgyREdHa1pMNzlBK0p1QUgwdzU2aHQ2?=
 =?utf-8?B?Y0JVVU5EMU16V2hyZ09GQmhYY0VNWmo1ZlR1cWNZRVlJeDJBSFVpNUYxaURQ?=
 =?utf-8?B?YlJsZkM0d0N2TmRjYmlCK0RZN2M5bk9Kczd1Vm0wZEE2YUtJMW91UmtxRXQz?=
 =?utf-8?B?cGxaU2NjanBIOW4yNWczS2VNQkFGUjB2dDdlU2w3aXVtNE8zcm9qQlNWY1Bt?=
 =?utf-8?B?UEZId2JvWXJZTHlvdlpTVS9OdkdxcnRZZUI3L3VyWld2V0ZxVmttem5sT2hB?=
 =?utf-8?B?ZmNEVmp1emdZandZZWFwMjZhYVBkcTBmSGxjNm1zVitON2M5MDdmSUlYZThk?=
 =?utf-8?B?bElhek1jeTZ0S1RqaXVoZk1hcnpRUDVteUo4RFFkY0tSWTF1NzgycWZYTXpr?=
 =?utf-8?B?bnRWMzgwbDJFazRkQU83UUJrd3U5SFEwTUZJRUprdmNFVlYraFlMd1NUdFRp?=
 =?utf-8?B?SlRxY1Q0VU1NeElaeEdvYlV5YWp0N3RRd3N0b2J4aWJNamsyb3lyR1dPUUE2?=
 =?utf-8?B?cExzT3MvSnJ3MkNXbXdFcjBiekx2TFpjd2FyM2VZTmZXZ2tWOEROczh6blBO?=
 =?utf-8?B?M3NIcXkzc0UzdmU3Ymh1eTFlZEtPaEtSMy90bUMwc25yU1Y0blpzaGdacDhR?=
 =?utf-8?B?S1l0aGJPai9DL2IzMk5QV3FKeDVVS1lXVEdrR1QwdXc4dmhKQ05qcmVyMjN3?=
 =?utf-8?B?dEZhYlVxNk1zV0w2OHFFdlFtNmlsckxrdUhlaTd3MnpFOFpBMmc2cXBNaDlo?=
 =?utf-8?B?K0prVXhCZVlDbnlXOFZibUdYdE4xNmo2YTF3R2lPaXpJVk1DNnFDeDVJeEZO?=
 =?utf-8?B?bXN4SjIyOURhOVVnVUw5Z0ZCa05YYm5ScDNyeWVOalZCMStmRjVzUUpKK3JJ?=
 =?utf-8?B?S1RIejNDVFBoV1hQWldKMGx4M3djL05wang0MksrdVdVZ1ZYQWR3ZVc0ZUJH?=
 =?utf-8?B?QmxHc1RSb1RWcDNMa2V1bUR1R240aDFyNGozNW5WU0ZvVlhzL043SlhVSkY4?=
 =?utf-8?B?QkIwRU1ubW9SYmJ3d28yUFNUTzdrTi9kZkVWS0hyd3pPUzV6YjVFdzFZZitZ?=
 =?utf-8?B?V2I3K3JseWR3dWgwNzh4WWNET3Nrc29TN1JpL0hXdEhmNGZiV09Nb05VOVNL?=
 =?utf-8?B?eTFnMXdxRW56cUo2UnZvTGhlZXplZ0k0eGxnbThFUWh1bW9pQ2NKbDJ2T21Q?=
 =?utf-8?B?cnhIdDh0RC9CL3hjZ0RHSEhLb09qWXd0bVMxNHhQeVNQYWF6Q3d5U2pUcHBO?=
 =?utf-8?B?blBKVE1HcmEvbnJlWWxPQWZhYkJBTVFEUXAvRVpuQmFPdXNoeDlJT2QzYitM?=
 =?utf-8?B?ZThUMzRkZm5hT3hkTnR0ak1tTnVWRXZ3WlVWdlJPSkFrMytpT2xveXBtcy9I?=
 =?utf-8?B?WmtpdXo1WDJvRnVKRVpCWW1abVR4S0gvNWIwUXFGRStYMzNOLzZUejYxaDRI?=
 =?utf-8?B?U1BQdWtwTUdsTE5JTE1qU3cwU05Ybjl0R2g4SW5SZzhDRkJTK0VHK3RaK1pM?=
 =?utf-8?B?QzlPcDRMc2RiTGFIbDZnQmo0WnRTY1NJSzJnaDhWMUkxNTB4T0hEcDdST1dQ?=
 =?utf-8?B?clE0Y3NhajRhN0tza3V5UXpmbllFYko1aG9uQ20rK0NTNHBHYXdiNzhjSVly?=
 =?utf-8?B?NGN0ZkxPczg1aHI4Tm9TVGR4Q3Jza1FwNVh5K1VGcGxEMjB0dFlUVHRpTGMv?=
 =?utf-8?B?RUdUUG5iUmMwN2szc0xGSUVJeUU0SHlxT3RBd0F2VjBKWHdwRlZBVjdHeG1D?=
 =?utf-8?B?VUUwMWpCbzZaOU5neVlPVUhySDFOSlBTK1hPUUU4dVJNMStpYWxrc3loM2tX?=
 =?utf-8?B?d2I3YUhHYk1ja0FFQnp5Vm53ek9LRy9sUzVEMS9IbGIwTHZoTElQSEF5RmpU?=
 =?utf-8?B?QUFzdFhKTk44SXllOEtxWHVFU2ZVNVRCeGZ0VGw3SCt0MFFJLzhZNGJ1RTFs?=
 =?utf-8?B?MURQcWdYL1ZYdjducDhIWDUxYzB2eTk5Zmp4QzJaaWdjR0VrZGxJdGl2Wm45?=
 =?utf-8?B?ZFJJYldoWUFueU5id0ZyYmRkWHlpVmJTUFQ5M2xVZmJSbmpPZWlnbC8zMGtP?=
 =?utf-8?B?OCtPekVBOGd4dHpYbnllOVFLM3pFcGx2ZldVMDF5RzkwaVVxOENTWEZOaXh3?=
 =?utf-8?B?ZUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 374428db-7891-46dd-44df-08dd8e137e38
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 May 2025 09:34:13.0902 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VaFhsaIzM5ml2pA8zMvxGmhoQeZKv4TVgJ/FYq4pVMy01p5RJ1PCzHp40GDeSM1V4uSujRW6fZ3BGqFyWt7QXrd0b1jxEYhEKjQfhVLglNg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9133
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746696866; x=1778232866;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wr+qG/Wo4duLv2zrzsm8FOYaHr/4vwVAE5mMl6DC4B4=;
 b=HzRoeTzV4UEUidOu/aRlSgHE0hfhsv57M2dfz11PEHG+ztno1S7zWNHn
 VzJelKfzxA1VfTvvw4wf3C4CuIk4ew7nRKzJY+02pY9ZpGHvRYuB+70TY
 00pA8pBRin0h+/fJmQ2TzWnUKKASQYdKRjZEA0mM9C1SJC7aFbPJDVE2L
 YKXpJ68BsGVQL/qcd564n7rNa2pUsM/PC5gkMq+YmIZ3s+8kk6Vfn/z/T
 Aw7IK+aHNcwtw0WaSUO3JzT7WvVhLGSr5conp2pmSH2FtvlCIBiQALBxt
 EOWLlv456S8Xtq59wYND7lgWc10e0dFIERypVBwk7nDIq9vbKCvwovgj/
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HzRoeTzV
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v1] e1000e: Replace schedule_work with
 delayed workqueue for watchdog.
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

On 5/8/25 08:14, Jagadeesh Yalapalli wrote:
> From: Jagadeesh <jagadeesh.yalapalli@einfochips.com>
> 
>      Replace direct schedule_work() usage with queue_delayed_work() to allow
>      better timing control for the watchdog task. This resolves potential
>      race conditions during interface reset operations.
> 
>      - Added watchdog_wq workqueue_struct and watchdog_dq delayed_work
>      - Updated e1000_watchdog() to use queue_delayed_work()
>      - Removed obsolete TODO comment about delayed workqueue
> 
>      Tested in Qemu :
>      / # for i in {1..1000}; do
>      >     echo 1 > /sys/class/net/eth0/device/reset
>      >     sleep 0.1
>      > done
>      [  726.357499] e1000e 0000:00:02.0: resetting
>      [  726.390737] e1000e 0000:00:02.0: reset done
> 
> Signed-off-by: Jagadeesh <jagadeesh.yalapalli@einfochips.com>

Thank you for your contribution.
Please use at least two parts for the author and signoff

> ---
>   drivers/net/ethernet/intel/e1000e/e1000.h  | 2 ++
>   drivers/net/ethernet/intel/e1000e/netdev.c | 3 +--
>   2 files changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/e1000.h b/drivers/net/ethernet/intel/e1000e/e1000.h
> index ba9c19e6994c..1e7b365c4f31 100644
> --- a/drivers/net/ethernet/intel/e1000e/e1000.h
> +++ b/drivers/net/ethernet/intel/e1000e/e1000.h
> @@ -194,6 +194,8 @@ struct e1000_adapter {
>   	struct timer_list blink_timer;
>   
>   	struct work_struct reset_task;
> +	struct workqueue_struct *watchdog_wq;
> +	struct delayed_work watchdog_dq;
>   	struct work_struct watchdog_task;
>   
>   	const struct e1000_info *ei;
> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
> index 8ebcb6a7d608..87a915d09f4e 100644
> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> @@ -5178,9 +5178,8 @@ static void e1000_watchdog(struct timer_list *t)
>   	struct e1000_adapter *adapter = from_timer(adapter, t, watchdog_timer);
>   
>   	/* Do the rest outside of interrupt context */
> -	schedule_work(&adapter->watchdog_task);
> +	queue_delayed_work(adapter->watchdog_wq, &adapter->watchdog_dq, 0);

there is no much point in using queue_delayed_work() with the delay of 0

please also note that the last commit touching this function was
essentially just reverting the use of delayed work, see commit
d5ad7a6a7f3c ("e1000e: Revert "e1000e: Make watchdog use delayed work"")

would be best to understand what was wrong with the reverted commit

>   
> -	/* TODO: make this use queue_delayed_work() */
>   }
>   
>   static void e1000_watchdog_task(struct work_struct *work)

