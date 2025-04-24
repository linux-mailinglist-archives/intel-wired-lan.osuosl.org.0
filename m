Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AE00A9B4DA
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Apr 2025 18:59:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EC7CA83F76;
	Thu, 24 Apr 2025 16:59:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Kjv6blRVXqG0; Thu, 24 Apr 2025 16:59:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DBE3D83F6A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745513984;
	bh=m+2GInCpUJCuMUzOYaJFZD2YxwzqipwUrQzgg7hL8Bo=;
	h=To:CC:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xgRmwXNgze0c564gEja483X5zijp/oEaOmBs3l+pQYATdNAd5Bim35A9RnT4zerwi
	 SHR92taiCyYF6KzqfuqmZ9H3kRyyCwYfljuA8KxrleXb1MtWTJKTlaZ0dOE8A8yRMg
	 aCopNSYREYppzz+FFVDKGVrgI8793FU6cpf8/JF3It335SpMhjm8OZViOngWezHck4
	 hVd03UwAzQD42xaqKERUaPzkjwycr2wYKLKeK3NqVKnZf3ZaM8auA724jrr6ETPMFk
	 ooS/iRsV3DHORo2e3F0JEAitMqFCeubB0dKBDvip39CT4Y7z8FvYSUONTblI8IVEdX
	 lpXDaWSwaGSJA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id DBE3D83F6A;
	Thu, 24 Apr 2025 16:59:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id CE87E28C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Apr 2025 16:59:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BF8AC400D3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Apr 2025 16:59:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qeEg82qErUVP for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Apr 2025 16:59:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9C4AB401B2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9C4AB401B2
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9C4AB401B2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Apr 2025 16:59:41 +0000 (UTC)
X-CSE-ConnectionGUID: O9RkMb2zTW2Yd+57QHJP1A==
X-CSE-MsgGUID: zSgkbWiLSMyJNuWInEbfYQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11413"; a="47036014"
X-IronPort-AV: E=Sophos;i="6.15,236,1739865600"; d="scan'208";a="47036014"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2025 09:59:40 -0700
X-CSE-ConnectionGUID: a+xPhk33RRunyNVE2fSMYA==
X-CSE-MsgGUID: lw6oLtMmRx6pJNJmgi/gig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,236,1739865600"; d="scan'208";a="133629731"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2025 09:59:41 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 24 Apr 2025 09:59:40 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 24 Apr 2025 09:59:40 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 24 Apr 2025 09:59:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=q9yA0BVd058EMM+DYINiD6QFY9H8nKiRDIzzF3wnFvN4Cele+y+3YVfze6MYRIr88Ukt3QblLnMou0iUIRdn0BADl7j1xY/7c0xlW4bJS9g6iiElrpo+YDEFqRdzHYSRqeBRk9Z7gkbrQmE2lo4fq/aSITlaKDvyEKXmQ/JrmoM7pbc5Khjgf6+I2k0Umzghf8rlP5XyxhSj6oZKo8Sbj1/t0AvTJLdotB8LqCB0YvLSqSjJRJ0kIdmcG99q4mtjKjRCzztoMnv7JkFo4cQ2U3EHB4iCLfwekXthWy9No46bQHKrDsbBKDwVs0ikk8rUUlOzerePV540F/AceeSNgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m+2GInCpUJCuMUzOYaJFZD2YxwzqipwUrQzgg7hL8Bo=;
 b=PFlJl89mGFhWby4U5V56xdQpcE5/Mn/y16SDHVZf+ut7qY7fOLW6LCeD8Nedi8tcBFtkdRaYUmSbCRnXMGpWHx3yIOY1ZvfX7LuzEY+boZVrty4KhaMQ9/n1Hfkn1CzVU6ocRTw1rjGiY7dPwj1w8UrgZwTwd0LEw05p6cg/jiJk7wppHPcILGdVySLEuoTCalzpynzdw4+qGkiGlVJa7my5tqH7BScZKC6YEP79tY/DjzyH48MwF7IkkUzsu6PkZ0MCVvD7Hk51g/6+0M2E0sdxXFDyBhdiGnDjMEwhyPkgFpiskTIfRrPz3VuecS4UlsdW3VwEOO++b9aMfZI1Vg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5949.namprd11.prod.outlook.com (2603:10b6:510:144::6)
 by BL3PR11MB6481.namprd11.prod.outlook.com (2603:10b6:208:3bc::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.35; Thu, 24 Apr
 2025 16:59:20 +0000
Received: from PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861]) by PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861%6]) with mapi id 15.20.8678.021; Thu, 24 Apr 2025
 16:59:20 +0000
To: Simon Horman <horms@kernel.org>, Jacek Kowalski <jacek@jacekk.info>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
References: <5555d3bd-44f6-45c1-9413-c29fe28e79eb@jacekk.info>
 <20250424162444.GH3042781@horms.kernel.org>
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
Message-ID: <879abd6b-d44b-5a3d-0df6-9de8d0b472a3@intel.com>
Date: Thu, 24 Apr 2025 19:59:13 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
In-Reply-To: <20250424162444.GH3042781@horms.kernel.org>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US
X-ClientProxiedBy: MW2PR16CA0021.namprd16.prod.outlook.com (2603:10b6:907::34)
 To PH0PR11MB5949.namprd11.prod.outlook.com
 (2603:10b6:510:144::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5949:EE_|BL3PR11MB6481:EE_
X-MS-Office365-Filtering-Correlation-Id: da4b9aa4-5d02-4a26-d945-08dd83515b54
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|7416014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?S2NpckFzN3UwSlYrYXV6Vnk2NWZ1TnRsVmRscjhxRFhoK3pTanBNYVJqdzRV?=
 =?utf-8?B?bSsxLytuM25FMHVFVm82YjBLOUF4Sk8xUXljNFBKemM5clhJSEpLVDNaMDhI?=
 =?utf-8?B?MjZPNWV2bVlRRWdORzh0V2pmSjU3eVZKVEVrT21qUzI5U0hpMHZyZUQ2Wncz?=
 =?utf-8?B?OEUwaUR4YWVXOWQySWV6YU5ZS2YwMVZyN25kNnVZWm50Qlg4Y29XVHN1aFdP?=
 =?utf-8?B?aFFxSHhmT2NCaWJyS2Z6OUtjZlp2cmwzcFBzeXNCaWlXcmFKaThHM094WFor?=
 =?utf-8?B?YWcvZWNmb2o1TXBBRlFNSmZxZGdaTGlXcTNZU1pFQVVpdW5qcGhiaW1rN00x?=
 =?utf-8?B?UkNkR0ErdFFtMEJJZytHakppUys5YkdKZjNLdGQ3QXFCYWxiVXlkMFZFM0I0?=
 =?utf-8?B?Z2FBTFA3eC95NlZtdG9QaTFYenpqcmMyUnZ0eEVGNFEzaSt0bysxY3NVcVRX?=
 =?utf-8?B?ZVkrbzkrMWNIR1F4S2h0K3VkMjVyVVhId2R2NDJFdzU5NXR3aGVXRnQrQnMw?=
 =?utf-8?B?Z2lFbUdLK3ZjK1ljcTdBd1NheDdVcjk2Z3NodjQvdDBPMTI1Yk93dGhlRlJr?=
 =?utf-8?B?cnJLcVljSHk4anBKQ2VYNTBPd0VYS2xlVCtFQ1Yvam8vRWx0cjhXVG1MQTFX?=
 =?utf-8?B?aWtERWdYMzB2b1JoTXJuNkIxYkZhRkJZR2ZuZndrV1dqbWE3VGloN3NMMm94?=
 =?utf-8?B?dzJIT1MvR3ZIUTIrN05MYWlWSlRsRm1PVXdNYVo0UDlZYnBhRHlWaTZMZ1ph?=
 =?utf-8?B?cERpOURtZ3V5a2h0b1lBQnRILzJNMWF5cWVqSW5hc2V3d2pWeDAwOGV5Skdr?=
 =?utf-8?B?STBNbzY3SHZHK2dKajF3TlBSZ3lDQXMwVU5PWEJic1RxUDN6dFBvKy8zWUtG?=
 =?utf-8?B?SHRUaThQMzlKb0Y0SFc5ZU5jRGxOQWVqaGE2YWFNVUx4MWkySkJoTWNvbWw1?=
 =?utf-8?B?RExDSzdNd1ZDNXRvS0xoVUI1Ulp2VHpyUFRVUGU0VmFWRjdhV3phRWtHbCs5?=
 =?utf-8?B?VGVnakFqUGFxZzc5MHdkRXJyZXBadXJJZDhtSGhZbG1xbkNvYTVYeFV1Z1hr?=
 =?utf-8?B?UjF2UnhaSkJiV2dnektEdktzVHlxY0dmYnN0bmtDZ1U1bGx1TkxWZ2xxc290?=
 =?utf-8?B?c1dTOGlEQTRza0dLNThiNzNpVlQ3U1JtNUVnT0VKR0dsbExkZWFIWmE4SkNU?=
 =?utf-8?B?WlAvWm0wMld2OXZ1N2ZLYndWQWlnMzhLbHVMcHhhMlVVLzdtYk9zTlJYTGFB?=
 =?utf-8?B?V0ZzejRjaVVWbkQ0RXRCNXl4cG1jSW53bndQWlRtVG1vaFRSNU9zV2R4b2lG?=
 =?utf-8?B?dERUMlhZaHlxWDJHU2pVeGtzQ3JxWnJwUlZhN05HajJhdVhZY1M1a0paWWli?=
 =?utf-8?B?NUJEaUtkZWphYkV1R3VFclhRZGErV2srdG9PM0N2VG5jdXF1REJrbk43U0ta?=
 =?utf-8?B?Q0tSaGhmM3dqRWhncjI2WWk0cmRodHpEN2RjSkdWYkpjRHBjUDFRSWcyNDVG?=
 =?utf-8?B?ank4UVFEZ0JhSVNZOHJVbjFzTGdXSzJoZnh1UXNaaHVxalFaZENrVUYwOWRS?=
 =?utf-8?B?eUF6SUpjWW16eHdSTVdJelFKSkI1bW91QytkRlhELzkyQXUzNUtVbFFWR0RE?=
 =?utf-8?B?Qk5wU2QvWHVsWWpRMEpOSUh5QmdIS1pFbUF3T3NBajJwUWJVa2dOVkZxK1FT?=
 =?utf-8?B?RlVFb1N1dTcraEUwbXVBYXpaOVZLQVU2alVNMS9KVE9xRmlQZFJ1WUtyZ0V6?=
 =?utf-8?B?NDNHWTQrb3lFRFZMY3A4S05ZZnM5VmZRYXNSellWcEl1SWlTSUdkN1hnQlhv?=
 =?utf-8?B?aUVwbjhHSk5mMzJ4WGtFdXFpQ21FejkzV05ncXoyTDFOTHVwZ0E4VjVhTkEr?=
 =?utf-8?B?bEdWZlg4V3ZXVVNhbjRaOXZ5bWlidWRGcVRuelhuZE5mOVJadkJ3YU5yWE4r?=
 =?utf-8?Q?/lPjaSeJ924=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5949.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(7416014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Y2xhckJrRnVBTTlPUU5jYjdxM21PRlZOQ3FZcjR3TGtHekR3Z2VOQWx4Y2NV?=
 =?utf-8?B?ZkZKMU11bzFwODNkeGdzOG9HTWVZQjQyMlR0OEhEcDZSQ2YwS3F2dVQ1K25q?=
 =?utf-8?B?bTQ3bVJmYzNCQXYreHE5RVZjYTZwRTl1L0VzVm1FNGNSdXJua2VTalBLTWg1?=
 =?utf-8?B?QUIyd1dOWDBQbklTRjNDc3lXbUVHVk4vOFI3akFUL1ZOT3JsOW0wZEV2NEwr?=
 =?utf-8?B?Wi9lcTArbDB5eFdQM29kNENSOTgzcWw4WFBkdDZ0bS96YjlxNi9tQWhwSmVO?=
 =?utf-8?B?ZzZDMTRhQzdiZWoyQnBYZ05Nckk5TGVzcktqWFVETmF1cHM0VGRNci95YTdW?=
 =?utf-8?B?cFdHbGNqUnZEV0NtanVEbEhwaVZJdVBPcDhvWUY4eEkxb0F6WVNoU1YvNnNY?=
 =?utf-8?B?eVByNWpSeTBaV3dQcjlqZ09JS0dNMk9ndkhEL1AvKzJJczNRd1pLQWF1SHNi?=
 =?utf-8?B?UzcvRlJ4SUo1aEcvcFhYTmVWRTV0ZXpGVG1uYjdsaForUXNFSzl0NlJPVThi?=
 =?utf-8?B?MW45Wm1SZmVOdE03VDJDS1JTNE1KQlAxd05RV1pqaS9JUUsxTEs2Z3U4THJl?=
 =?utf-8?B?UTA1dTQxZ0g0Qnloem5xTklBVys5TVo2QU15T2NBS3ZzZUFyQ2ZRdHg4L1Zi?=
 =?utf-8?B?cms2VURtQWlPZmVoUmNDeThFOWRqTU5McFlOTGJUaWhRWWZrbVFKWi9rZGNU?=
 =?utf-8?B?OG03VHF0OUFOc0trZyszN25EdW5UcVA2VTNSdXJac2lYU3M3L0NUNE93TVo2?=
 =?utf-8?B?amhtMkNOSGtVVHo0Q1NKMENzck11MklNcVZORVBucTkxVzVlTjRoaDhVWGpY?=
 =?utf-8?B?S2FyeVdZNFdHaER1UmpCeHM4S1UyY2k2LzMrUGFYeXJEKzdLNEVWRWdGL0o3?=
 =?utf-8?B?ZXRONWpSTXVGRERGdnk4bWNzSnBYT0pOQzcxMFhmanE2VTh0U2lUdHk1SXMw?=
 =?utf-8?B?RHNqRDN3TzNaU2JrMU50K005LzRCRk9sT2VKZFpnVHpPc1p4VXJjWDdtMFd3?=
 =?utf-8?B?cmgybTJ0blA2TkpVWGo2eGFQR1RaVC8wZHhNU2lPYnhGUlZwazlhL0gyTjZW?=
 =?utf-8?B?bnl2a2dYNTBGTDFQdkpCS0ViMXF3ek5kVkxxZ3dpOGVxUFkzZWpMS003SUJp?=
 =?utf-8?B?NEQ0eG5pUFBKRWlWQU4yWStMWGVwTkVRRTZlT2FHeEZ2MGlMNDhNTmN0WllB?=
 =?utf-8?B?eHJjbVpqQVYvSGg3dHNTMml2R3BPaUwwYUNSWmoxa1JPSUEvTklSUWRmSWtD?=
 =?utf-8?B?WlJTODRFQTA5UU5zeEh4MFRIYmdCd2FWTlZQZ3VYYUgzYUljZENEUTh1UFN6?=
 =?utf-8?B?WjJxeGtxTVRhbmQvK0R2MTkyTWpEZk91cERnT3N0ekNiRHU3ZE1POWhkME5z?=
 =?utf-8?B?MlZrb3Zmd1FGOUxBMlA1c2ZSSWU4UWw5OFc5RTdTQ1REYU5wUUc0RnZNNy9n?=
 =?utf-8?B?aGJicTJmblg2alFUQ3pjMW9VdTZTM3Zic0pDTlR3blZwcDY3N01iUGN2Z3ZN?=
 =?utf-8?B?YnI1Y1NCa1U2MkJKQjVCVmdJbW9MUm5tb09BdXBSZkRvL3pybU0yVUZZa2hS?=
 =?utf-8?B?V3hqZXQ1UW1wTDVvUkkrU1JpRlNrVGZkNEJMajZleklwRWVSbm9vSVhUcmVE?=
 =?utf-8?B?czFnS3hWbUdrQ29QN1o0YjBMNC82NVBsalE5SkMvZENCTnQrcC9uU2ZmNmIw?=
 =?utf-8?B?S1RWamJ2RWc3aG1Ld1YyMDhZb05lZUJ6Q0FDaHEvb1oxV0N2YTJqaDBqMGND?=
 =?utf-8?B?OFlVbW1aL2pLTGNWUEJLS1Bkb3duWk5zRVVjaVE0eUVBaUxWT2RLUzdHRm9P?=
 =?utf-8?B?NjJUS3V6MGVPUVpCUDdsZno3a050OUhpc1FpV213Wkd6VlcvdGdkS0pueWNn?=
 =?utf-8?B?RmhVWHV0RHNOR0hEbStpeEVtR3JZdEs0MDJEYzNKakYyMjFyOXZxTTZpbjY3?=
 =?utf-8?B?b1hLN09LdEQrMzVtWEdKamZyeGZHbnFGWTQrcGhIUzFHcDlwWXVyUnRIRUFF?=
 =?utf-8?B?cjNMd2RmWmdacGkwNzRxczFMK3pxd3NjWldKQ1lUbFAyT0xkOTlaci9ubVNs?=
 =?utf-8?B?b3hDZVRrZFlxdTgyTUl4OFRSSXZYTnpaekhpS1B4VGQvNHByeEJxYjNEVysw?=
 =?utf-8?B?YTN0U2NMWGlMTXhvRGFQVVZBRldIb0RKcGNvSlNoWS9EalllaXdNTEdsWCsw?=
 =?utf-8?B?dUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: da4b9aa4-5d02-4a26-d945-08dd83515b54
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5949.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Apr 2025 16:59:20.5976 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ov97rxNFFQE9XbkIeNOSp9MTVJdTiU0kyaHyWtyhQyEQXMOO3dkrmFxS7s4o2Gll0VBlsNGE0VSGCDIjD1ec4k4reyrD4ZhmUM6sEtxy1os=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6481
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745513981; x=1777049981;
 h=subject:to:cc:references:from:message-id:date:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rVg8lpoRavt66zXRziAD18Gqg4vJUenJ7tV27YHMeB4=;
 b=ShzRJAAJ3CcnmP/GtFbDE5UONAEnotRMKsnnKeYKKjJ+xifM7WofJNtK
 CNp57gfm4F6868TTdPOQcLzgRK8kSsYPCD8CiIq/HOWKRf5pN1JsQUb6B
 lBt4r3pS46g9hEeC9qxHBe54WzM5fvSyhNVtHceVSJkzSw8MpfdHNUt1c
 TtuaQwNItybGSY0M2Rj9rIQwLdIkA3uqrTrWTn6OXCRlEEDzDDZOJb6Bx
 1e7U3LleEFRFf1F/n9GcgBovzAC/ALNBYRB/wQ7mg7APGoeOLkK8pcSR+
 8NQol6hmSIbkc3chscldUZ58bXOCVVahSfE1DmdCVoPu4RWS1U459Ulcc
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ShzRJAAJ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: disregard NVM checksum on tgp
 when valid checksum mask is not set
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

On 4/24/2025 7:24 PM, Simon Horman wrote:
> On Tue, Apr 22, 2025 at 09:43:01AM +0200, Jacek Kowalski wrote:
>> Some Dell Tiger Lake systems have incorrect NVM checksum. These also
>> have a bitmask that indicates correct checksum set to "invalid".
>>
>> Because it is impossible to determine whether the NVM write would finish
>> correctly or hang (see https://bugzilla.kernel.org/show_bug.cgi?id=213667)
>> it makes sense to skip the validation completely under these conditions.
It is not completely accurate. All the NVMs starting from Tiger Lake are 
locked for writes, so NVM writes will always result in a failure.

Perhaps something like this:
"
All the NVMs starting from Tiger Lake are locked for writes, so NVM 
writes will always result in a failure. Since tgp devices were the first 
to have this lock, some manufacturers didn't create a correct image 
resulting in this wrong checksum issue. Therefore, it makes these 
devices as a transition period, skip updating the checksum if the bit 
wasn't set.
"
>>
>> Signed-off-by: Jacek Kowalski <Jacek@jacekk.info>
>> Fixes: 4051f68318ca9 ("e1000e: Do not take care about recovery NVM checksum")
> I think that while the commit cited above relates to this problem,
> this bug actually dates back to the patch I'm citing immediately below.
> And I think we should cite that commit here. IOW, I'm suggesting:
>
> Fixes: fb776f5d57ee ("e1000e: Add support for Tiger Lake")
>
>> Cc: stable@vger.kernel.org
> That not withstanding, based on the commit message,
> and the use of e1000_pch_tgp in another Tiger Lake fix [1],
> I think this patch looks good.
>
> Reviewed-by: Simon Horman <horms@kernel.org>
>
> [1] commit ffd24fa2fcc7 ("e1000e: Correct NVM checksum verification flow")
>
