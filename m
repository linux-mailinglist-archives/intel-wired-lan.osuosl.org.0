Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 062DFB2F058
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Aug 2025 10:01:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A0000615E2;
	Thu, 21 Aug 2025 08:01:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WitLc9ygulJv; Thu, 21 Aug 2025 08:01:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0CE59615E3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755763265;
	bh=h9fLSClQ2/knB5oUZYiT9lKx0nxRiwxm0kaXnAyoETI=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=s1FlGHCs47+HElJ/3nwqB8w5kD4Dl33hxHeW/Wg0w41SZ+lCU/Vv7Blx6L0AiTnqf
	 +QQXVMBnd/HV/++UMAorWiKVv7VhrzmC+pLiTd7UWbmuL7dEiU8pNuLXJLkqlo7Eos
	 9jwsKqQXn1f/qray52vuoTqVg3/zpdPX7ggiJMjFlRqsin/PExgcD1qrQLkee6dCNr
	 pAn8mXD44EcZJOC9ClY+K+UaqZl9/4AMgXEwHDKSyCpf0RxjbralbEVguO7/fRJHoT
	 JzLDOEp24xmDaRXhGZAKsnR59CAkxs/KyO+SqJKkcCuWIPIwVVHMU4AqUEQl5tcza6
	 t2+nbnQdSs7Ww==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0CE59615E3;
	Thu, 21 Aug 2025 08:01:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 083DBE0A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Aug 2025 08:01:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DF17A40BFF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Aug 2025 08:01:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jh_gFtrgZ5GS for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Aug 2025 08:01:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6195740B7E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6195740B7E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6195740B7E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Aug 2025 08:01:02 +0000 (UTC)
X-CSE-ConnectionGUID: 9Yc34pRDQTOZOXyMSQhGwg==
X-CSE-MsgGUID: RiOU/lkhQkOqDAOHH13+Ow==
X-IronPort-AV: E=McAfee;i="6800,10657,11527"; a="58189127"
X-IronPort-AV: E=Sophos;i="6.17,306,1747724400"; d="scan'208";a="58189127"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2025 01:01:00 -0700
X-CSE-ConnectionGUID: DP3imm74STG1c28p0Lwi0Q==
X-CSE-MsgGUID: UzhpzDU4Rl2wsVOoDi7W1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,306,1747724400"; d="scan'208";a="167959888"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2025 01:01:00 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 21 Aug 2025 01:00:59 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 21 Aug 2025 01:00:59 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.41)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 21 Aug 2025 01:00:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=R8DpMr3Rc4ZTImWkMReDDub9u4YoGwWtkEt/g+ANtvi1mVjvIhwaa/F4zm7HosDqMfQGVtdxgr7LQK2EnKthS0FL9TodS/Btj6HMmTZEr5MfKJRwbnPYN80CpaeKa7uUp1OMb9emaIq+Fl3B1fmNLOclX5IPOy5+Rxexud/bZ86x1VaJj+CgKeDcgw7vVyUCS/iCylaTuz8XmKxiuySdpnrYKIzhuqsfQYgNSAoNK2MbXNFpcxfgHZkzw4Od5ACxM/V+utSpSQKA6nTYDT+cw/5ZfB10u+IFvKMuK9TVf8SldOkOmdbHvz2wn2/89BNnigwApliijVaM+yA0zDuCYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=h9fLSClQ2/knB5oUZYiT9lKx0nxRiwxm0kaXnAyoETI=;
 b=g5HrsBcy6fQz6vmZ51DX3hlt6210ZaDLueNBqoaqRDt2ptpjOKKpOdmqHzTb/6w3edM/JJ3fidxe9tSVMpXj3Wyb1B7mJzDOPn45HgobYb9/LCyr2H/l38fI5m5HZvPX1jNCMEHn27e3R47K9EMdVearJtqjXfh1cXjU952me+x5aWQ6cGImNdNK/3atLL9LA6bcJ6zbqU1WVOnO0YS9TOT3Ts9PfyY3wQCeecDp2aPpT6BCUXNWdBmC0sPYqDQSa95Nmiyg4255afelFPG4uDY1yB5MxcqlqPJ5vcyHyxPqGAk7/eGAxdKAQcAIocjPY7ooVRw9niskhDQ/nDvpvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by MW6PR11MB8437.namprd11.prod.outlook.com (2603:10b6:303:249::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.15; Thu, 21 Aug
 2025 08:00:56 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%6]) with mapi id 15.20.9031.023; Thu, 21 Aug 2025
 08:00:56 +0000
Message-ID: <e71fe3bf-ec97-431e-b60c-634c5263ad82@intel.com>
Date: Thu, 21 Aug 2025 10:00:51 +0200
User-Agent: Mozilla Thunderbird
To: Calvin Owens <calvin@wbinvd.org>, Michal Schmidt <mschmidt@redhat.com>
CC: <netdev@vger.kernel.org>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 "Andrew Lunn" <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, "Eric Dumazet" <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Jedrzej Jagielski
 <jedrzej.jagielski@intel.com>, "Ivan Vecera" <ivecera@redhat.com>,
 <intel-wired-lan@lists.osuosl.org>, <linux-kernel@vger.kernel.org>
References: <94d7d5c0bb4fc171154ccff36e85261a9f186923.1755661118.git.calvin@wbinvd.org>
 <CADEbmW100menFu3KACm4p72yPSjbnQwnYumDCGRw+GxpgXeMJA@mail.gmail.com>
 <aKXqVqj_bUefe1Nj@mozart.vkv.me> <aKYI5wXcEqSjunfk@mozart.vkv.me>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <aKYI5wXcEqSjunfk@mozart.vkv.me>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DU7P251CA0020.EURP251.PROD.OUTLOOK.COM
 (2603:10a6:10:551::22) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|MW6PR11MB8437:EE_
X-MS-Office365-Filtering-Correlation-Id: 240b17ce-774e-49a3-7050-08dde088db97
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7416014|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MnpXY2lockVxZW5MOW4vM0p3NzZaVy9CNThjdEk5dC9pVnVYd3U5aHBjaG5j?=
 =?utf-8?B?RjhhVGNuM1FFYm5YWStiSWZvcW9kL2Z2WlNoakpZbU1uWTRlU0R6YlJiNEZv?=
 =?utf-8?B?cGhBNWRMenFjZm5hRXBzK0VGK3NRQlM0VmlFTkxBWm1aM0hwWUpISzd2UkVh?=
 =?utf-8?B?cnBTRnBkblgvbzl5dUV6LzQvcmxaTHJsQlRZRFR4UklxQlowMEM2OTAxUEVa?=
 =?utf-8?B?RnVVWVhncTl1bHpVUnNZN1d1UzR2bGtTUnljQmFYa0ozQzdxVVBLeHQ2WUl0?=
 =?utf-8?B?SW5FREhHZW9iZEd1Nk5ZYWVwNk0wd1FGQlg5QkM3UllhSVo0RUpyaU9RN0k0?=
 =?utf-8?B?bU1rWS92OGhybk42RDhBZC9WL3ZyVFQ3UjdwVGpNd0wxbGxpZWY4M21XZUVy?=
 =?utf-8?B?dEZjSE5TdmJ0aVQ5eGdsNzJLL3lXOWswZlF4dUVyeG5qa3NPdHRNaTNiMkhU?=
 =?utf-8?B?amZoMmFBSmxpdml5V2FPeVlqSjhHUzl4Slo4Z0h6K2VNb2xkelp5eEx4K3lj?=
 =?utf-8?B?MnBGTExUNHJKNzNtVkh6M1EwNEZaTmdqcE1BbjEvcDZwOVFyaXdsbjI2ek5R?=
 =?utf-8?B?Y1pIWEh5a01TZjIzNlJndWdmamFlMkJjbzlPSkRld1I4dWxsV3lNZFNYTDJL?=
 =?utf-8?B?NTA2ZlgxK1lYZ0luY2dMeitVSlRzd1l4aWE1UmhnZVRiUjhkU05MbXJjTnoz?=
 =?utf-8?B?Nkx0SFNQSjkwMUZxazZ0aTFuQ29Td0FGMUNjMFlzaUZJWTVIanhrR1Y3Z3JO?=
 =?utf-8?B?Ui96NExFTHhjVG10SlhIYk00aVBPWi9QL1AzMDlFNSt5Q2pyQlh4MWxFK3NY?=
 =?utf-8?B?WnQ1eHVFUWhkbVBRMzRSVU9zWmgyaklzNHVnb0xQbDZmbThHQjRlQU5zQ3lV?=
 =?utf-8?B?NU92TENMTGN0b0FMeHIyRUVXYzZvekZZZERVd3M0UUhkUUtoUVIvblc4QWd0?=
 =?utf-8?B?aDFWaVlkc0sxUUt5angrMG1DTmtjbHZFb1RaTmo4bTViOVgwYU5iZHRXOE12?=
 =?utf-8?B?clo5aFExdHdqT2tDZFg2OHh5UGk1M2JKem9SR2RlTGpLT082aDJBR0Jab2kx?=
 =?utf-8?B?L3RrWjZvdEU3MmlIUGRFNGFmOG9VVERxMWlSbFYwWGhGY2ZpR3ZZZUc4Y3dG?=
 =?utf-8?B?TkRMWmRxMm9SVWpLYmZVVnpzazZHMlVFUHVkT1dyOWF4N3JSL1h3NzVpZjdn?=
 =?utf-8?B?ekYzMmliVG5tQi9SRGVVUEZHNGVWSDNVODBMc2QxUDRPTkI3dTlyWDkwY1Fr?=
 =?utf-8?B?UTVXa3ZmMHVvUys3VG9obk9vcjhIQXh5VytEY1Rsdlc2VkRobWJqNlU0bDZk?=
 =?utf-8?B?T2YzcDVQT1cyeHBZNHVsaDlHM3lmRTVhOVhGS2hkMzVnYzVwc3UrbmdGQW5V?=
 =?utf-8?B?WGFHWUl6cElmd0hxdk9mLzFNS1Y1WHNmcDRoQkx2WUMwMzhUS21wb0htM2hX?=
 =?utf-8?B?ZWpIaU92TjNka1BFalFsOGZpbExZK2JyQSt4S3M2bWhKdnZNNXNWVVpEMzVN?=
 =?utf-8?B?TVNGUmpKL2ZJUStnbGJVUURLNGJLR3BpZ0ZHWTNVbzlLV1lSOU8xOVF3b1ZC?=
 =?utf-8?B?K09JQjdQWVRIVE1yRU5zZmFadnRwSlYyV3lRcnUwSThjb3JCOE1NUFNjVVFN?=
 =?utf-8?B?dWozZ1NVY3l1UlAvRzVjMXFZSE9VbGpnWW1jZ0s1bVltOEFLOVdrc015TzVE?=
 =?utf-8?B?eDRtNE9zbFVPVGpDU2xwcDVLUVlnb1d3cVgrYWdmRDJaSlU3NzFoaEVReWZ5?=
 =?utf-8?B?SDU4M2xGSmM1WjBscGFVeFdyNk0xQmVTTzFqeHR6N2ZWb3VZSXJiUDhZaXlH?=
 =?utf-8?B?dkpYV1hBckV6RGZ5dmc5VmFzZ1pRZkhkSGxQb1hGSlg5eWZ2MUVVRFN5Y0lo?=
 =?utf-8?B?aEhETy9jcUVnanlqVDJ0RFlMSHk0TXQzdGMzSkRqYk5wTWVVZHhVNy9JNy9l?=
 =?utf-8?Q?YBCwRnKYBFs=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7416014)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NzFXYjY2Uzlzd2J2Tk9wYVBVT0w1dXc3ZkFhWS9OeW9EeWtBbGxJS0xmc2pY?=
 =?utf-8?B?aFE5ckl4UXZIeE5iOGUrUGZObk91QU90YUZNdEoyTlpmN1JZalRpOHE5QVM2?=
 =?utf-8?B?VC9qdnozWkJNKzJZQnc3bzZEV0Y3U0dhV3VpbE94cDcyV0xBYkdxeWFyYkRv?=
 =?utf-8?B?UVdjMGxlQzNNZXd1NG5sbjlvcDRoSmJpUktqbk1MRXliaUcyU2hSdEdTbWlM?=
 =?utf-8?B?bzdCaWNWNCtWWTM2SVluazM3OElPakhXRXpTdTNaOFVMN3NNZlNmVEpwYzZk?=
 =?utf-8?B?YS9yckxDRDc2UmtSMXBJTk9RM256Wm5ORE4wQXVIZzdzc2N4ZUVXUkh4U2xj?=
 =?utf-8?B?NW1wbFdQRHlvRWF5d3NiQllLZkdhUnYrT1BNLzJRWWRRRXFKQTdKTmt2a0J4?=
 =?utf-8?B?M0wxd0p3NTdXVFV6eWpoSlB6VnF3MDNjUmZsNjEvSXRtZ2JoSGlpeDFCNWQr?=
 =?utf-8?B?aERralpCZHJKQ1YxQ0I2S3I0N24yeE1CMWwzYklOSWFnbmNtTy9haHdHYmw2?=
 =?utf-8?B?YlFBTDdPYVhjUENsSlkwWDhwTndpOXVUNHJ4Mk14OHhrMG56UThOZ052ci9N?=
 =?utf-8?B?NTZGT28rMGpKMkZjYitsTHhHSURHbG9ZT2lZUFl5ajFhaUpaT1YrQ2N4N0U0?=
 =?utf-8?B?cTJQWG5uMXFNVjRUY0JRNWYrU1dkUjJVVkhhN21lcmVHR2dld1F0ZWUzZGJZ?=
 =?utf-8?B?QUZDSTh0bWVaelJwV3NyQjBYSTRNTGdXWEFMZHlpWUdGSHJCRnpYVWZSUHRF?=
 =?utf-8?B?azZpZHJuZFV2STVKdkFieFFmOUhXVXlhQTVzUno5N3FwdEZQOG44bE9mNG80?=
 =?utf-8?B?LzlhU3haOHlkYWtqYVZmaEYrTGRIRytGMWFIQlE2WXQrTkNpOThCYlNaSDcr?=
 =?utf-8?B?bVF4eFFKUVJBMkErVDNFMFFpYmdwcWlqVlZXM2FEc2JESVREdkhNTU1mTFFp?=
 =?utf-8?B?dWNBQzV0RjByUEpNcE4rcEpuWGdUNEtBZ1pXaURZR3ZEMzdsamk1d0Irdmti?=
 =?utf-8?B?NVNTRENiSmRJckRxTnd0dlNzWFdDUGQ1Zjkrazd5YlAxeStBZ0ppRUFTV3VO?=
 =?utf-8?B?aFNxckRmMG51M01RSlc5dlc1M2V2NHliQWpvL0NlamJ3WnZWblNCUUMxTWZX?=
 =?utf-8?B?QjNVUU45MUMydG9mbDAzN2NuSTU4YldkRzZDaUVOMDlCMmh6QXVQSzdNVWhq?=
 =?utf-8?B?UEkreFFFMDU3QjBmNVlKNlY5YU54bmlSdDZRZGVzYzA5bno2RFZYQlJ4Vnhr?=
 =?utf-8?B?aWMxYkVLWnJoVHFwZE9EVDZNUHZrRkxRKzc4cHQxY1hXWHJPK21KMWFjMjFX?=
 =?utf-8?B?QmtpVGd0V21CQUlTcFBSMGdvUGdrZUpqSXJlalkvMm83b0ZFV3AzTVdaREQ5?=
 =?utf-8?B?d0tCUEZNVS9QM2Z3QmRaMXkzTTVZQ3hZdlJqd2M2aU4wWXRvTkErZHZKTjlM?=
 =?utf-8?B?aDRSekZLeFdVS3VuWTlVeUNHeDNVRURDY3ordStGMlRwTHhrUkE0djd0R0w3?=
 =?utf-8?B?bnlyRFJIUmxPWkRRZXU1WjBqZlVjQXlUWlVLc0dscnJvQzladGtmZHlsNGhX?=
 =?utf-8?B?bVF5cTFiaTVncEdKZ01PUi9iOGRYKzlHUEV3R1dTZXF0N0JqbXhnOXhPUnBS?=
 =?utf-8?B?RXR0RXpESTNwYVdpeFA5MG9jdXMwUzlPdUJaR1daZ2VIM2QveHVjcmdRMnRm?=
 =?utf-8?B?aFNiQ3NnWThqbGFJcjc0SERHVExnUkYzRXRMMFV4Vnl4SElQdkcrRnFPbHJD?=
 =?utf-8?B?RmtaZkRsdTlGUnpTRVdzSlhjRnNkczMxYWdncVNsam9kNjlxNmhQTmMxQnV3?=
 =?utf-8?B?Q0lrNnl4dFd5WE9ldW5PdlN4RVEvWmFHeG5Ic3hmMGVoOHM4Yy9HQW9tZ3BQ?=
 =?utf-8?B?VHMweGJCT3J4L252SEg3TEd6eWFYZFc3aXp1RUZXT3BPbUJmWk5aY2RzbC9P?=
 =?utf-8?B?ME9UWGdtdjhidDNPUld1QTdxR1k3cXdVNE9YV3VjMFd2NTdYalpLNEN1Zngy?=
 =?utf-8?B?OTdod2VNNnVPSWlPZ0hJdU9FVG1HRGFBSnAyc1BIM2FHWXlWOU5zaFU2TW5D?=
 =?utf-8?B?V2dYZHhsYnBYdVUxdDdPVFNaRW1peTdGNWJkQWhJbFFkMWpTaGpUUm14U1BD?=
 =?utf-8?B?MG1nYWlLWm14aFplQ05Ic0JzZlhpclFwa1JZalVibVY4cm0vTElpb0ZqQ1ZP?=
 =?utf-8?Q?tIRcUMg90cOKpSisYPux53Y=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 240b17ce-774e-49a3-7050-08dde088db97
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Aug 2025 08:00:56.2264 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xnZ8gnk7NOnVZk8UOzX7n6XUHpgogbIZAPY6unRGkDNMbQs61MNgyHZnrA7rbZarGbxGvkfG42E79SJzj3xM5cPCs8rRo0sXeHs/tOo8UwU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8437
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755763262; x=1787299262;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ggs7S5OmSy/WWMv3gXDD4O52jzp0EfDkOVm2sGBGfng=;
 b=GdiU4QJMxHXWuI0oyUlFSZA8aKxOyV6q21qqS86EiMjorbffEhNocCNP
 L2AqOikbjL61MAhGc6xjDz44uFf9CPIG1/VNPOjQZGf3KIeNEczIxCfqx
 W62SlnfBlJo98zop0y9KXX1gIbUuVzOPBAY+batYTxwi32MUTRl9BQGZB
 XmbWbAuMszq+wdMPXtJntB1tLcuy2PuCnpALdZJS9fp60Rsgq4NHfzO9d
 LZ9x8/yDZgydlgqf8J22vTr8uBSyVbt59Wb79if+esOiI9Ewn0ENeKDEI
 KfaOUglYMeXWVYlXdflTajbRvyIhJEzpL9pExhJrMxjdoEf/4/yZ442Cm
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=GdiU4QJM
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] i40e: Prevent unwanted interface
 name changes
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

On 8/20/25 19:41, Calvin Owens wrote:
> On Wednesday 08/20 at 08:31 -0700, Calvin Owens wrote:
>> On Wednesday 08/20 at 08:42 +0200, Michal Schmidt wrote:
>>> On Wed, Aug 20, 2025 at 6:30 AM Calvin Owens <calvin@wbinvd.org> wrote:
>>>> The same naming regression which was reported in ixgbe and fixed in
>>>> commit e67a0bc3ed4f ("ixgbe: prevent from unwanted interface name
>>>> changes") still exists in i40e.
>>>>
>>>> Fix i40e by setting the same flag, added in commit c5ec7f49b480
>>>> ("devlink: let driver opt out of automatic phys_port_name generation").
>>>>
>>>> Fixes: 9e479d64dc58 ("i40e: Add initial devlink support")
>>>
>>> But this one's almost two years old. By now, there may be more users
>>> relying on the new name than on the old one.
>>> Michal
>>
>> Well, I was relying on the new ixgbe names, and I had to revert them
>> all in a bunch of configs yesterday after e67a0bc3ed4f :)

we have fixed (changed to old naming scheme) ixgbe right after the
kernel was used by real users (modulo usual delay needed to invent
a good solution)

> 
> And, even if it is e67a0bc3ed4f that introduced it, v6.7 was the first
> release with it. I strongly suspect most servers with i40e NICs running
> in the wild are running older kernels than that, and have not yet
> encountered the naming regression. But you probably have much better
> data about that than I do :)

RedHat patches their kernels with current code of the drivers that their
customers use (including i40e and ixgbe)
One could expect that changes made today to those will reach RHEL 10.3,
even if it would be named "kernel 6.12".

(*) the changes will likely be also in 10.2, but I don't want to make
any promises from Intel or Redhat here
