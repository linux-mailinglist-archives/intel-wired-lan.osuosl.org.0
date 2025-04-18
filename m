Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B4F45A93F09
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Apr 2025 22:45:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D1D3F6066A;
	Fri, 18 Apr 2025 20:45:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xFEbKkHqKP_j; Fri, 18 Apr 2025 20:45:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1F15E6070C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745009141;
	bh=GTxJAuZvM77Vgk8hw54pJZ3ZW4Fl19NL/yfgMC/FLdY=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=FnDTGkrjd9BsyBsBmQX3cyx1BvZUnnpa/n07QvWCMf7dz5gz+Ls8iH+gEyQbNU9Z8
	 RSgnm1PgG8rrBRk9cqpR2sOraEh7r8Tn7JjXP32QqdQ1fjILIqdyxVDxmyXg8IZQIN
	 Y8c3y7NcRyjT1Xw8fUcBW1IoQBr4pBoSzdpSS3f45y2AC+cEmVhlId1+K6Djoi42eN
	 HS8itXYr2uUY0IEVZNrMGphl80RX+DgxrY0YGjLW+quds0UR5SR79LWvJGs5LYthxY
	 K56TJRHZCp4+274VL/diry+eLKxGHrx7OmxD8N+gNcf06Qwj8bVpcTUQiQo+q3fBvR
	 IRgMUHLx5lBeA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1F15E6070C;
	Fri, 18 Apr 2025 20:45:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 37D5361
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Apr 2025 20:45:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1DCE9401B0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Apr 2025 20:45:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 58c-Uvdx1UHy for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Apr 2025 20:45:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3AB4440175
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3AB4440175
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3AB4440175
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Apr 2025 20:45:37 +0000 (UTC)
X-CSE-ConnectionGUID: 0wY0fhaNS+KSR50rRjSNYg==
X-CSE-MsgGUID: BJnonrc9TRecuXMWmV7aKg==
X-IronPort-AV: E=McAfee;i="6700,10204,11407"; a="46813359"
X-IronPort-AV: E=Sophos;i="6.15,222,1739865600"; d="scan'208";a="46813359"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2025 13:40:18 -0700
X-CSE-ConnectionGUID: jvy02vUVQgeKj+dCXN4gYQ==
X-CSE-MsgGUID: H1aVfSvPQgWOX9NyxFSM6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,222,1739865600"; d="scan'208";a="131738380"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2025 13:40:18 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 18 Apr 2025 13:40:16 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 18 Apr 2025 13:40:16 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 18 Apr 2025 13:40:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HRxNOSgRcFpMvgqbj65nl8wQIIdtukU8EvFjloBO+fgaaF7JSZ2vLp6yRhJpVWJ2kYJAato9JeVMg07cFz3VygxTgMkJG1hMGcUjFfhzEO6fbeBvb9qiVjMDLG4CMtueF7g5VoP+fc9O+FxjO3AOTHfV6KDhFiqtRBpdMQYE5E4COC3I7UPMcnKHL5IBFHLk0t36rdN323oA9Yx/4/CUBdhww88z+KFa1gmD9F7wHuQEakriPBYVqOCPpC4PdUfxGIXz4Wa231iBWgm8XkmCAelVQhb5TrXL/Ao4HOmnMOJSs/Yww/nIEp8NApUl8WSkqAzTb1NUDlyDCr0IMikRgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GTxJAuZvM77Vgk8hw54pJZ3ZW4Fl19NL/yfgMC/FLdY=;
 b=adxCXg2cJSNLKzUlZBok5V7CxvHu1i8YGr9eJYLKl8TZU7ZP27+RxOtAUXKWUC+fHnB6MlbamCfreRX828vyUJBXHu8N70us4NOmq/tSfaOX4diqqFsmoossgklokbf6lzxHgpRHom4WySYtLwGjtH9UXwWFFHBPoy6ZZ9tPWf1ZIlcl+Rp7MO+Y8/Nayr8+bom6OINNVg3Gvz1tO0aIVVDNqS2kfBBCYFpV52LVqLn/BxAKjNNjfy4h+tQ/wtIV7J93YESbMnilk+vNahNLcIhtFbAqsvAAJ9JZdI4YteJe0XVRlMjctk4Zxz7tx/1ISErfZAuXCgmEmgiTUdlbCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by IA1PR11MB7774.namprd11.prod.outlook.com (2603:10b6:208:3f2::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8655.25; Fri, 18 Apr
 2025 20:39:29 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%4]) with mapi id 15.20.8655.025; Fri, 18 Apr 2025
 20:39:29 +0000
Message-ID: <c35778ca-92db-46db-812c-28a88fbb4621@intel.com>
Date: Fri, 18 Apr 2025 13:39:28 -0700
User-Agent: Mozilla Thunderbird
To: Joe Damato <jdamato@fastly.com>, <netdev@vger.kernel.org>
CC: <przemyslaw.kitszel@intel.com>, open list <linux-kernel@vger.kernel.org>, 
 <aleksander.lobakin@intel.com>, Eric Dumazet <edumazet@google.com>, "Tony
 Nguyen" <anthony.l.nguyen@intel.com>, <horms@kernel.org>, "moderated
 list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "David S. Miller"
 <davem@davemloft.net>
References: <20241004105407.73585-1-jdamato@fastly.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20241004105407.73585-1-jdamato@fastly.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0055.namprd03.prod.outlook.com
 (2603:10b6:303:8e::30) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|IA1PR11MB7774:EE_
X-MS-Office365-Filtering-Correlation-Id: 7198bac7-be49-4623-2658-08dd7eb91e2d
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Tjk0ZEpmNEZRVUdLK0tJYTdvSk0rbkxNVlVTTHYwMVh2ZDVpZWNmSTk0aytz?=
 =?utf-8?B?dUtTTm0vSSttWVJRZ1NBRmpRRTR3bDllUXc0c1hHa2ZTUmcxZ1MvbmhkUFpm?=
 =?utf-8?B?eTNKZ1duSlVramprdW1kb243SkFyemI1bGpWeFI4NnBKOG9Sa2NLZjNZVUV1?=
 =?utf-8?B?cjRCa25yY3p2bXFyY25NR2o2eHU5bVdjQndkTmhpY2JqN29seFY1V09RZzVF?=
 =?utf-8?B?OUNxcEpBOWNBNVg3dWN0MmV5MnBTbU9tcjFuY1NXRW5CSjVHbVF6SDJ5QXdE?=
 =?utf-8?B?R0VDRzRobmRadE11OS9LdDB5ZVRzUzJWNk9wRWg1YkpvNFJEamhZWTl0UXBE?=
 =?utf-8?B?d25jVHEvQ2VtcnhHdGtxNHlCcE9XUVkyL0lZRWhhRHc4VW4xZlZ3Y2pJRWVM?=
 =?utf-8?B?dkFKQi9rOWtZc2Ezc3Q2bExPNnoycWx3K0tuTi96Z1c1bGtCTFlwbjBSdUpW?=
 =?utf-8?B?NE9NYzRKQS9rWHJOTTRWS0lYVjlCMXg2NkFSVmw5QWFMMU96MHFrMmNuZnFI?=
 =?utf-8?B?UFBCbHo3ZjhKTm5SRU41bkpnSmNlc1dUMVRObVV5OWhzaERLQWZ2Ymd6TlZk?=
 =?utf-8?B?NHQvQ05peVd5L3habTBwaWVIUThCblM1c2syVnl0clNtT01ETUkvWFFTVTZZ?=
 =?utf-8?B?MEc3NGtJQXJXcHp6SDFtY0pxMXArbW1LbjEzQVM0WHVmU1I3RWhBTWJnRFYw?=
 =?utf-8?B?WGd5TG1vN01jTVdtRDVvc1R4cUl3eXhIckg3dlFPVTJmY3Q1TmNSMHM5ZFBn?=
 =?utf-8?B?VVovcWdUZjYyUjJ0ck1sclpoMkYxRjN2OFA3czMybXNlTFVuVGlTWjN6bGtD?=
 =?utf-8?B?M2FVRFZaMjlzcFlFb0J3TXlrVHhnL0srWkhCNlIxTTJmS3dQNnVjbHM1MWNy?=
 =?utf-8?B?S2huWnFJdGhpTldYSWE0TVd4dE5RdEEvVnBKN25CRjlYSHh3dDNLV0tndk0y?=
 =?utf-8?B?b0diMGdIVWx4TDE4djNzRG1tRHg4TGRoY0ZaeitvMno1cGNaaUdxSEJtQVBs?=
 =?utf-8?B?WEN6RXBMZGFyZUtnd1YrNUNyUCtYNXg0RCtxditBWmZjT1pnckhoWjR5UjEy?=
 =?utf-8?B?YWRzQkFCSG5UeXJNN3JTRURITTcxZTRjU1BZWE9xVWRQZ2N6ZkNOd0FaOFl6?=
 =?utf-8?B?Zm9IcEk4V2dYN3R2dVJLY0E4RjNHWUFmMGNUNEI1WVFWeHdPNlpvYnVVV0tt?=
 =?utf-8?B?cFRQallNRVh6NFNzZ2QxM2hRNHpkYmZhb3NsaXFIU0lmem1PdXB0NEdGMGpr?=
 =?utf-8?B?MXRaM0QyWXNmL0xQdjAwMCtNbXQrRlE1a0VEV29ubGhETUNncHVJcXlSZEJ4?=
 =?utf-8?B?bmU4Y2g5dENIS0lEVTlwaVE4Tkh4NldDMzhzT3VJVFpsbDZOb1BNdFFxRmdB?=
 =?utf-8?B?R0t2cnZyYmp4Q3dDV3JocEZDbWpvR1ZXbSt2Qlhja3RRWkQ4WXNJdlBUY0Qr?=
 =?utf-8?B?aDE2Z0F5MkxtOWxrZVNkaVJjYkREc2tqaFN0MlhPU3NpRTQyWjdPTTF2R2Ux?=
 =?utf-8?B?SkRNSTRhSWpIYkJKUjlkbWFxeW5MWll0Y0dRK0pGZ29xanJuajFBY0J4c0Ni?=
 =?utf-8?B?VkQ0MnVZREJNZW1KZ1dnUlRkZWMxZll1OUw2Q2hhY2lWbWdtZTdoZCtWczQ3?=
 =?utf-8?B?bytUdmhzMmJJNUxmUnJyNm9TM0lMVUN1Ni9ZTG56cHN0TUFpU1lDWW8yeWdP?=
 =?utf-8?B?REI3ZURkN1JRc0N6Sjk0SmlhZEZnMm1GcXpPU1doeU9MUzROeVRuazB3N3pm?=
 =?utf-8?B?bUZVUVZZYmFKazFzek5DSW9RMG5RSER6VnUvdGhyKzJoRS92SWZ3U05VK3Qv?=
 =?utf-8?B?NWp4NU1CTUIza0NxelFpU3J5UlZaY2NuRjZZcUhwcDNpWlJ0SWdENmdKMnN6?=
 =?utf-8?B?cG5YeUJ0RnhydWVkeWNkRmE3U3RJcmp5TW15K1VTaDVYeEtSdzRtL0lMM3hl?=
 =?utf-8?Q?MmI5dPVthw8=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WnZEMGFQa3Y2Q3pYSHNMajd0VjV4YUFJNitkdno2TS9malZ0WWdzWVN3N1c0?=
 =?utf-8?B?amw1MWtYVXJBeWZKZm5wVDAwMjE1N3gweDR1R0ZGUDZ6eDBYQXZxOTVXUjk4?=
 =?utf-8?B?L0phTmFOSzh2cGpUUmRzeWxOU0lGbU00eis1engrMmdXb000UjBCVWhPaGVs?=
 =?utf-8?B?K3luT0hxRkNta1JhbVF4MFVMSmJOb3hNZnh4VjFOUnZGbTBBZ0hWRkQ1dG82?=
 =?utf-8?B?TDVoVk5EbEpxc2toNk5iMjh0eUt3d2IwaUhkOFA4OURXQ1lXZFZRb2R3clMr?=
 =?utf-8?B?Wk13VXc1LzlqUUx4aHJDUDc4QllMUGtTNVdnMGpHU1Fwako1bkhKbUVSWnh3?=
 =?utf-8?B?MEdBV3JJMXd0UUU1VXAvajlSNnQ1ZkNRVzZNUUtWaEsxbUJNMC80dElJU3NZ?=
 =?utf-8?B?TENWaHZzVmc4OG4yR0kzd2MrOGdVMDU2QzFTOEk4djQ3V0p2bW1JNGlrclJs?=
 =?utf-8?B?ei9iNzJybjVDWXk5VDdEcUlUV2xLMFBaZWxCYzFrU055eHNxRkRXQVdUZEE1?=
 =?utf-8?B?a1lSdjhqL0tZa3B1Sm9DNHB5WDgwQmo5UjcwUUpISERXN2FudW5ldVpDNlR0?=
 =?utf-8?B?S2Q5TGFEdkVGZHdpOVdNNmFNV3lzSUdBQ3BTRnFaZVVnc2xweXhFMW05bkVn?=
 =?utf-8?B?aHZSYnNSNXB6MjNSZjE2WXNiMnRKTEdOU0IzZDRyRkVvcUk4eHpmbG5KelVm?=
 =?utf-8?B?SGlOT25WVXFIelM2RUpGcVJVNC8yem1CR2loVDJQR1hPSTZFcitkVk5Zc1dk?=
 =?utf-8?B?MXRkU3hNSy9aMVNremdNZm5vQnM5VzR6WW1IUVgrTTVkMWg0d3BvN1N4cVpJ?=
 =?utf-8?B?bFZ0MGNqRFcxcEN1alZkeUhyQUdkNmdsbkZlYktyb2tvMVpmRm8rV0k2T0lR?=
 =?utf-8?B?TCtoVzVZTlgvT1UvczlqSjhxSDlkT2k0L3pvZ2hkTjJqOUlyeUZ1Vm1kYk9G?=
 =?utf-8?B?NU9XeDNaVzFRclF4QWVXMDg5ekQra0pFaEJQMXNVT0pFTThqdG1aMEdTZWJy?=
 =?utf-8?B?YWxZVFg5Mmgyb0I2cXBFTFVFUTQwWWkyOVVOU3pUNzhFRHY5bWppRHV0TEdN?=
 =?utf-8?B?V0hWNjZ4dFBNTjNuU2JPUzFIZjV1KzVFSU10ek1XK1pwZlZKVmJ4WGlTRU53?=
 =?utf-8?B?aGFOVVZ0UVNscnNoeHk2cGpuM09tak9MUzU4VVBTVzBjcmJucERRdGVMMm1V?=
 =?utf-8?B?cHYzbmNUcytkTXJLTHBKdnF5eXpsT1VoTCtBdGpQYU5UMHExWGhZVFJ4OHZs?=
 =?utf-8?B?b3BhTHRpR29mU3IzRjUwYWh6MmpjK1FObG9FdGRnb3JOWDVCUnNGYkVFcG1o?=
 =?utf-8?B?bTZUVk9NbnZqU0I5UDVxaXpPNElqMnh1Vlg2N083dXVKTmZyd3NEd1htWGtv?=
 =?utf-8?B?RkpielQyU1RyVW1BS2lsTmxtYjJvU3owQlg3aXBMK1JZaUZ4TFgzL3BWME5J?=
 =?utf-8?B?Ykc1REp4Ui96ZldzRTBJY3M0aEE4VEZrMWVBVjBvVVB6aUcxR3p1SFVEbWNW?=
 =?utf-8?B?cmZkVElJNW5SK1N4NFdXT0VSZzRDMzM2NDR4cW01elp6eUhMWmsvK29xMmFu?=
 =?utf-8?B?TkNPSHdXbTUrMTN1cG52UDdEUXI2TTdETENCS01LZ3cybGFabzhqOUxXaGdl?=
 =?utf-8?B?VER4ZjhPb3FZcjFVMFZRS0xmYy9wOXJlMEowMENYQVcvK3RETWpWYWN5Zy92?=
 =?utf-8?B?Zk8xOGFnZytJOUJIa1JBdVdFdkFLNkJWSVRhT2ZvaWZXK0Jjck9SSzZXdHRw?=
 =?utf-8?B?TlJwS1ErRW9pY2N2Mko1K1ArZHZIbmR5Q1F6bWUyWEowYmFYNnUxOHRFR2wv?=
 =?utf-8?B?MXNoUmsxUW5JVWJuOHB6NndZdnZUSUZXMTBGcFRHeWd2dVdpN1IrYW1FTDE3?=
 =?utf-8?B?UjBGaW1CemlPd1NZYUwwN1lDdHBEYkFLT2oxUWRWQTdsdGRzT0UwOXU3U1FU?=
 =?utf-8?B?cHEwdlB6b0pMZTdUNzZzTVpjVk5sYWJjdGpYTmFaYVl2KzdIY1JHdURvclpQ?=
 =?utf-8?B?aHYrMWU2NU9aTndZRE10SmhMc3UvYXpwTEpjQ2hrbXlrbzBSeTV5NkUxUUVj?=
 =?utf-8?B?MmhITnZiRHhIQzZLbnNDSTBnVXRGamRsdUhDRHBzZGJpU2NXUXJCcTFMYUJR?=
 =?utf-8?B?V0d0UmxGSElVMU1Mb1pJYTByd1ZyUEd3SnJPYloxZzRqMVJVRFNDVVRhTTVL?=
 =?utf-8?B?akE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7198bac7-be49-4623-2658-08dd7eb91e2d
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Apr 2025 20:39:29.8095 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gsc4W8Hkj8l1PIhVKwZ8k474twS/mY5heJ41Zc5EJIE2boai1t9s4jehDOj3MG9OLQBwcQZvd2Bm1buXHALPC52rSlT2Bg39V6X5YbHxjBg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7774
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745009138; x=1776545138;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=c+K6JjCpJz7ISwNlsF/xgd7kSPGLN9Btv1/X7N9i2dU=;
 b=Io8T+z6pPpQSsZUZ0vO37JHr4zYzumusocYzpng9ryI9aRERR3ytsMDa
 uLpYfoCP1ApFcQlNiV7rrglgC7MHXK61//qvfDjtdk8AAqRfMu9/46wjy
 WbPyFTFHrT7VJbKjSGQltpDfF5njgyZqGRUn9yrFBzciZ/mWjhGjsEAnL
 4SpQPgJv9QvWkgI0DMKa0E7se40LAVRuZaYPbLFwWkszw3JHV2kNfsrj0
 f35Dq1WoKSJ5tjHYZ2Lyxk3+YHPsELcLYZywCwCoy237+noIXaFCBBzms
 LTQVy6Ww9kS3wzLUpVR7CdCaJ/S6TL6f+0yFhR5jImJyn7UI0lEpIhGbe
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Io8T+z6p
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [net-next v3] idpf: Don't hard code
 napi_struct size
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



On 10/4/2024 3:54 AM, Joe Damato wrote:
> The sizeof(struct napi_struct) can change. Don't hardcode the size to
> 400 bytes and instead use "sizeof(struct napi_struct)".
> 
> Suggested-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Signed-off-by: Joe Damato <jdamato@fastly.com>
> ---
>  drivers/net/ethernet/intel/idpf/idpf_txrx.h | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
> index f0537826f840..9c1fe84108ed 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
> +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
> @@ -438,7 +438,8 @@ struct idpf_q_vector {
>  	__cacheline_group_end_aligned(cold);
>  };
>  libeth_cacheline_set_assert(struct idpf_q_vector, 112,
> -			    424 + 2 * sizeof(struct dim),
> +			    24 + sizeof(struct napi_struct) +
> +			    2 * sizeof(struct dim),
>  			    8 + sizeof(cpumask_var_t));
>  
>  struct idpf_rx_queue_stats {

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
