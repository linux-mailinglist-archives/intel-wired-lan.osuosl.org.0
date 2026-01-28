Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UP/cLUpMemmd5AEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jan 2026 18:50:02 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 139C2A733A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jan 2026 18:50:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B5F8B403FB;
	Wed, 28 Jan 2026 17:50:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9ZmsKr0eqYcv; Wed, 28 Jan 2026 17:50:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EA00B4040F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769622600;
	bh=u8kgnUvXgG5yEpVaXUVdmSBY/KtQZQA8PC6m5N6d1Do=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=uirH6o58WNpcS5XHywAUx6h9LEO4cmMcpOzsz98n45o8a/3Jw+dXzjypoHZ1MsSlp
	 zeYQeClkDLOaAhi5ysLfZZ1UWQbZZrguvZStPf5+Jpbw8XnEseKAZuAci25CYyO6g8
	 3ZvNI39siqsFkeROk//UF47lG0UnwNJHV3ma0pUpX4oWNLvSHk1s4iUHJ5+Knuc85d
	 mrBDVSp3NClnUslI34liGk4V5Pgr4YaeR4OD77gnv2JeNlr28LICdQ9wXoFbOkbrMG
	 WrzXHiZ8W5G4R5/zrHq7mlBwp0+eQpHbt/HS2JsU3Nz1vgyiljdlYKppyZN3qGRWxW
	 l3niDBKfaIPaw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id EA00B4040F;
	Wed, 28 Jan 2026 17:49:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 6AC761AD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 17:49:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EE531403FB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 17:49:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QEJ1105LWkok for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Jan 2026 17:49:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E8279403F4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E8279403F4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E8279403F4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 17:49:56 +0000 (UTC)
X-CSE-ConnectionGUID: qrvdIOc6QmOkr5u3gV/ehA==
X-CSE-MsgGUID: zh0TPA4oSrW9I+l+Qxs5ZQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="82271793"
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="82271793"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 09:49:56 -0800
X-CSE-ConnectionGUID: BfZxBzcXSFu0ZqU8GknShg==
X-CSE-MsgGUID: ujfG3DGnSf6LjNOaT37T0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="208408966"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 09:49:56 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 09:49:55 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 28 Jan 2026 09:49:55 -0800
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.38) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 09:49:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=R1gl4NxZurECNrdmQd4X6FC21b5AJBYnAgcB1Pjre4bUJOg+9bXIqvEV+rWbYYS9EUmfrj0mOJf62JFmZZTgSfNamy69hhHRdcAAt+C1p34au/kvxK2RU9MNACb0IwBKOQWFZtkJFmeuu5OViTPfujsmOHYlPwy/cWTPjJlpG5G8HDFnBa0qVZEyvrcwmnbEjMCNL4np535d1FNg4S2EF7MfI8MxhKMq8Eowjr5nMKTp9SsCyOQU9764mioAyde8MAVxuU6Uqq5rV6MHmw9mkpfZbNzdrpmCZYzzQ0smO2QLG+NdeqdE6vGOVVRCvL6Nk9u13UOUNM9o1jvGMc/mNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=u8kgnUvXgG5yEpVaXUVdmSBY/KtQZQA8PC6m5N6d1Do=;
 b=kSPnAF5OkUwuhndIRgCp3aYtTZnqW6zrd3uIr1RKBRRrd9JWqdxte1k8CAJeECH4Tl17UJSYoVZDXIAL3UrvTXl7wUD0R/WZ7Y1dPdLPTcbf2RjyugcgO/4ZZuQR7clI2giJbYrZw5SX5P24dwtiyrYMVGqbXjxZ4P05LbzJGcY5WR670B6q3yP1O05KgCzbvq/0D6HbvnVXUVwMnDBqVbJoHhJqqev0LSEx5xzg0Zwn6pnnXJ9coE4Bbm2WR3+e4mGumCJK5dAFOuNNLMDJ6SPD17Uu+6ROC4GsLCbGx1o5z0ziSk12GlANNMZA8LnjS7UCz4jS0oDU7rOOaMEbgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by IA3PR11MB9160.namprd11.prod.outlook.com (2603:10b6:208:57a::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.9; Wed, 28 Jan
 2026 17:49:53 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9542.010; Wed, 28 Jan 2026
 17:49:53 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, Jonathan Corbet
 <corbet@lwn.net>, Linux Doc Mailing List <linux-doc@vger.kernel.org>
CC: "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Peter Zijlstra
 <peterz@infradead.org>, Randy Dunlap <rdunlap@infradead.org>, "Stephen
 Rothwell" <sfr@canb.auug.org.au>
Thread-Topic: [Intel-wired-lan] [PATCH v2 25/25] docs: kdoc_re: fix a parse
 bug on struct page_pool_params
Thread-Index: AQHckHZrUijLDi+ZnUakejtd/U/CiLVn3Avg
Date: Wed, 28 Jan 2026 17:49:53 +0000
Message-ID: <IA3PR11MB89868B3C74A4E47FA05158CFE591A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <cover.1769617841.git.mchehab+huawei@kernel.org>
 <beef1362dbec07d025ce1fafa5d32b69cf30d705.1769617841.git.mchehab+huawei@kernel.org>
In-Reply-To: <beef1362dbec07d025ce1fafa5d32b69cf30d705.1769617841.git.mchehab+huawei@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|IA3PR11MB9160:EE_
x-ms-office365-filtering-correlation-id: 5485fa88-5fd0-4ecd-35cb-08de5e95a453
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7416014|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?NXZuSk5KTTJpM2FDOFVaZWczb3hWcXFXWHNDOG53ZGQyY3NMTFk4Q1NMeElJ?=
 =?utf-8?B?RVdxNWZxUzQyQnI5RjUvRVVCdGQ2YXgyRmk4NHlDQWoyOG4rNndpZUxNSzVo?=
 =?utf-8?B?MmE4UE1JYXg5ZkZlV2J3ZkdGUXdKL1FCMEJZbTNnZGgrR2N4aVhpMm0zbUVm?=
 =?utf-8?B?b3ljaWVFNVFjdlJJd2ZxeVNyZkFzamc2Y2N3NUt6dFNoditZcEtzdHY4bG1D?=
 =?utf-8?B?dnEwaEU1V0FabjUyMTAyZFlJSU8yZ2pvK05KMmQxNkxuS0Jvb3IxZ2dKblBi?=
 =?utf-8?B?bkt4dWpPT0h3L0hlQkR2UkFEZG5PNG1hb1hpWUpDV1owWHlqakc3WTJUTHdS?=
 =?utf-8?B?c0hSOURlYlJWeHl1ZGd6cGIxRWhxZG1nd1E3a3o5d2RRYjFsTXhrUFJONHpm?=
 =?utf-8?B?V05SazR1elVIMk85Q01RYlRoNXdnWnFVdE5ubHYvbWRNZ1lKeTBKYUNpd01Y?=
 =?utf-8?B?dkt5VDdiZXl1SGU1RFNrUE1ORWtkMC9acEtKbEIyRXNGS091Z0VVZVRFT0wx?=
 =?utf-8?B?VVFXaDNoRWlYdUc0VUxoNGo4NlVONEhKTUk5N0ZTZTNxZDJhUitEeVcwZG44?=
 =?utf-8?B?d0dVZ3VGdDVNYkVPbFM1dmlSMTFTRDc3SS9OMFRkVjExQmR5SWhKVU9TVzN4?=
 =?utf-8?B?SnNaSVlGa0UwYnJMWWNuUE10SWVIOWs2MzBiNnR0RHNid2VrdXpkN0JvRUcz?=
 =?utf-8?B?a25iKytjZ0U4c01jQ0pzRUNGMmYwMFZ6VTZOb2gyWWhZSVd0aTdLR1hwK2xH?=
 =?utf-8?B?RW1XQlJsWjgxYjhnazArd1g0dG5MRS9laVVlZkxaSDhQUjkwNXBZQWgwWi84?=
 =?utf-8?B?ZkRPeWlWZHdYZlB6eHRTcUZsNzBWZk8wd2FuRkw3cXZkalF1K2wrME1vZmpW?=
 =?utf-8?B?S09CV1hnTXlVZXV4cnJSTnZVTFJ4RjRmYkU1Q05Kei9IVzVLcmFpSHJZejg2?=
 =?utf-8?B?b1J0N1RFOTN0RytPU1VJcVk0RWlMMnduakJOalhrR25oZVdRZlZqOWl3YUw4?=
 =?utf-8?B?Tll6RDg0S2Zvd3NIYkhLNmE5bG1NblVFazBjQnB4aklveGtSc3BVK0hRZGJk?=
 =?utf-8?B?VTFCb0xWam5jMmVCNy9RZ0duUWlROExnMjZkbytDSVhsZ0ZOaFhYdzVKZnNW?=
 =?utf-8?B?aEFvclZaZ1RhK2VtcEVJYzdGcGdJK0R4dzlBUjJZSU1mYUJYcFp3bmlsSGJq?=
 =?utf-8?B?M0J6WWZtS3Y1R2crQXJYS2FRRTNOeFhXQTBKaGpQbVNMd1VFSnU3bXQ2dEVW?=
 =?utf-8?B?bjRIa3ZDS01DZTNkKzlEbEFpT0VlOEZvMUgvdHJad2lRcmhoRkMyemsvRUp4?=
 =?utf-8?B?eGJxdEp2akhIMERCYWxyUVVDZkxyMEV5T0loTzd6OFVyenVnN0paekV4UytJ?=
 =?utf-8?B?ZVZFTzRsTy81RHZpUXgrV1pnRFRqYTI5ZWVCZytVWFFXSitQazF1SmppaGZJ?=
 =?utf-8?B?dkE5UDRKVWt3cXRkanJHQUNhWUVxdWFMZ2gxMk84UkFSMStUTVoxb0pZMEph?=
 =?utf-8?B?ZEM5ZElDb1R4aWhITGZqaGtQTG0xQkJkRXZxWitBdXRUNlFDZ3FvKzRFZ2tu?=
 =?utf-8?B?S211OUVMdEMzT2c5ZnpBc2NzU0l3YU9CWGc0RXUvRnZybWozYUtmcXNEQ1B0?=
 =?utf-8?B?RGo4YXFVbTJRcUxLcEJ1NkdnSnVYc3RIZTg1cmI0ZDB6YzJuc0VrcjdYY2pD?=
 =?utf-8?B?OG5YUkJhcHpPbFVMZ2tiQWNrWGVzTzl2SE53MTFEZVlOUkRBU1JFS0VmeHBY?=
 =?utf-8?B?TDNianUvamZ4cHNqaURlRDBaQlA0cWxoTjV0cldyT2dyTzlPa1JmcjRDUVZ2?=
 =?utf-8?B?ajB3SzQyTklHRTBjREpIcEcwd0VvZ2p6V2VIQ0JBRTd0cXRDaHVEeUF4YWx3?=
 =?utf-8?B?cElXYm1mQ0o1ZkNOSlJpMithdTlBWkV2cFJUTnhlMVo5T05pVERCa0lqbGIw?=
 =?utf-8?B?Q0NRbDMyRjBYeGdkSHFIZnpDZ3cweXlpYkVITGlaTjFDZkF2MHVLYnpCRkpI?=
 =?utf-8?B?SldmS1lrUXZVa2U0SEdQZFJIOG9mcG5Nay8xSVplelZYa0NCbTlQRVpVa0Nt?=
 =?utf-8?B?V1pNNVU5NjB0dU5zUjRxR1lDRHVjSHBqenI4Z2w2a2ttVVhCRW95RlJNb0Iv?=
 =?utf-8?B?bEJFZ3UxRC9NWktJTHNzNlZHcWlOSDdoNmtxVlJPQVN5OHltN0IxMm9LeEx0?=
 =?utf-8?Q?NbWCKLk3+14NO1TMOQsoy8A=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7416014)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Sk5WbndUZzFpbTVDb2RUcFR0NGkrQ2hnekRWNzVyTkl1ekhWN01rR2xuZTFS?=
 =?utf-8?B?UGs1OXZBTkxLT0lDR0V1WThEalBqS2lpTThvUDBlZStkRmNoUHExZGtSa1Ja?=
 =?utf-8?B?SXhxeGJaV0F3dERqb1h1SjVBNHNwRkI4cnNEbkxXaUJkOENJejE0UVVielNo?=
 =?utf-8?B?Z2NRSjBOV0lsSWl4eEw2M2s1eEhKOHNXV3RaRGhFQ3RmM1ZOS2ZYZ0NYWmp2?=
 =?utf-8?B?cUtMTmZRTTdWWEg3YytKK2liMXZrcXBHTkRsQjRYUHJhS1pUR2d2NWNyYnVo?=
 =?utf-8?B?aVM3VGsrdXNWbXgzREpXOGZQQjZFeU1UVi9rMmc5QktrWTJVazRGODZPY3FG?=
 =?utf-8?B?bndMNTh2blAyTGtrVzBlUnpDTzhyUFpmOVFudllQUUNCWVhpNEtibGhiNDV3?=
 =?utf-8?B?THdjTVZEZ3JYU2tRMnNlRVNkRnlVdG5nSHE0YnFVSHFGSTI3NXFFNUNSRE9B?=
 =?utf-8?B?d3ZPNzNLTXlEaUdFWTNuS01qZ1VoN0N6TDVzeGtuMzFINzJpQ3RRQ3hkZnhj?=
 =?utf-8?B?aTM1UFVpUkVxMHRtRVkwRE9JUlh3ZGVqZFVWbC8wNWpHMlVXQ0tSdkUrV1or?=
 =?utf-8?B?ODVmWmVNcVQ4SkV6NEM3YTUvRFZiMkZueUNPdmFnV2RTLzEvbzNMSDR2R3ND?=
 =?utf-8?B?Y2MyenVpcklITEc3SkQydzlCdWxPa3Bmc3hBbEJLOUFzRkdYWkpPNFdjSjk3?=
 =?utf-8?B?RHVQdjM4a0wwSGsyRWZGampEUWZWeW5YREViVU5ZWXl0THV6LzUwMGdWdlh0?=
 =?utf-8?B?bGtsUmZoYmcrR3c5bkVnVFc5Q0ZsK25ibW5DUkFYcHl4NlpScmN6UnpzbEM4?=
 =?utf-8?B?VHZNdzZWNjkwMWpWY2VyUVRZaTBmNW0xM1RWQWxCaTArM0JrRTdocURoakNS?=
 =?utf-8?B?b0tnRkM4bFc1Y1dvZm80Z2RudEE5dXVuWExpZjFKNjlrdUVpZzdXdXA3d2VC?=
 =?utf-8?B?V29TdEQyWjZQbng3cGtkM0dwbE02eVU1QjgvM3ZVa09WLzBySXFtNFFCQlVv?=
 =?utf-8?B?bGpZMUxQL2VmR01Mb3BSNWt2M2hiUTBvOHhsNlJSMWJpOHhTRjI0Vmsvb1dY?=
 =?utf-8?B?Z1FEOTh0ZlBCdTAzbU1LdjhvOVZHK1RNb1pVcFA0Z0ltVjZDK2h3VVJXSzhy?=
 =?utf-8?B?MGRvOXc5bTNYUEN1bnMvOFdhWDh5aExkb1lSSVhYcTRyYlRuYmVYcGR3T0VM?=
 =?utf-8?B?NXpQbWY3K3NtR2JPNXJYY1ZOaGtNdVNlUzBhMzZoNEx2OUt6TmJOQ1lvMFhl?=
 =?utf-8?B?Wlc2dDN3YWpia20vUWpVbzU4OVdaMVdpem56SlBJTHc5QzcwUCtBRHE3NnpU?=
 =?utf-8?B?Mm1vOGp0L0lvV21OdG5KYWk0bGp5Z1JDVUYxbjg0c2tCM2hzV2pUUU5KVHE0?=
 =?utf-8?B?eWgwamprRkxIbFpxVnMxcjNiOWJGaTB4YXM2MFJFdktXR3orczZOeGZKT0dN?=
 =?utf-8?B?U1M0cWFaV0VCWVJJR0k5R2gyTGhvTDd5cTlNcU1QeFVSdk8wZWNySmFpL29a?=
 =?utf-8?B?QnFrcDFXcUdHNDRVU1ozejQ2enpMSE5OZjN1cTlmMEVsL2RDQUlJR29qZkdo?=
 =?utf-8?B?VUV0cHk2QjJKdFJmbU9YQm55SmRSVFJhU1gzUTNpbUhLUE5WcnZqQzZUNzA3?=
 =?utf-8?B?Q05yNWhvei9PWG4vVDF1d3hla2dlNklUYkRQRGFTL0lEanljYVZiT0huT1Js?=
 =?utf-8?B?RDJ3UkpWREpJSXFLQXkzZllQWjRKT3FCN3VuanNCQUI1UzdRVUE3TmpLOVVi?=
 =?utf-8?B?TDg2ZmxpdDBQaGl6amFRdlhLTXczVUdGaTJOYTRuWWlLSU0ySGNmMGNZVkJ4?=
 =?utf-8?B?M3hIUng2YnAwNFZPVWZONHo4VWJ6eFdxN0E3aDREMWpTbSsvQmwxMHprYk1G?=
 =?utf-8?B?cEwrT09ZcmdtZG5CaGRSeG1NNFRKbktGMXd4SG9CWFUwczJNZExkN3VMcDc5?=
 =?utf-8?B?Vi9ZWUdReHA1SzJTeUlScnp2aVVTaWlSNUZEOWFMYjZXaUptRlJIK0VaQ2NV?=
 =?utf-8?B?bmZxekM1S3dlNGpiNFowbmpXbmRCR2NpOHFnNnFvbXE4YWdwWkxWc3BZZ3Mv?=
 =?utf-8?B?dDhsczNLWlR6U3lUd1ZmVkJMdzBYUEV2QTRWUmlyYVFSRXVOUTFQelhlM2tW?=
 =?utf-8?B?eFJIbWNCT1JYWjNYdFRoYjUzYjVIbzBkZFNDQlJvS1kyNVZUdEI2emNhUFYv?=
 =?utf-8?B?MWFYaUl2T055VDg1Tmc5WlBlTng3N0FjZmpKdkI4TUg4bkprYm12ODkxcDlv?=
 =?utf-8?B?TDdDSWNMWHFuU29senVBeWVUZTdzdm5uVmF0cFFNN0ZVdllsOXN2WDVpT2V6?=
 =?utf-8?B?Q1M4UUFNOG5UdjZXazZvOUtSRDhVTUVjWWVmZHREdURhK0VrWGlrQT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5485fa88-5fd0-4ecd-35cb-08de5e95a453
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jan 2026 17:49:53.3214 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4rwURcW3uaPN2Gpir8zE+jqBpVt1jivX8yOtHJNScR3IeEPcmuwBhrImGYMyWdPyZcgz7hFpzcvFrCFt3M3sXQxKzvKprFSuZltXFXnvJBQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9160
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769622597; x=1801158597;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=u8kgnUvXgG5yEpVaXUVdmSBY/KtQZQA8PC6m5N6d1Do=;
 b=EH5vm1LxAJ1gjLwzJmAgGxakFD9KrJZ1qiYs8n2zYd/XTq50KXH6woUU
 H0K1za/C6Gz+Qq3rciWNXoLEi+GUykOH4mcQiwGMSJDZszSEXRp9td1Nu
 6ZvGUI7u2sqoKSN8RJyU0o86K99Rp56jAPgc7ggX9FWfuEg+BzqPsM5P7
 1M9o/eiuocIVK8EmqbwQRw4bF4iiu+yw9Cziq2Os/fLI0rz4FsVSSf3+w
 MDVo4bY8ZuO7HOxqBpYN7MP07/YZ7btRtUiqcdcK3ZU+JybIqdGqJtNBE
 KjfDrrZ7SrOqnoWonwaMQnNYuit4NZoiaVAeE7PFUExBfY6SIRvVgU1EW
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EH5vm1Lx
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 25/25] docs: kdoc_re: fix a parse
 bug on struct page_pool_params
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.99 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:mchehab+huawei@kernel.org,m:corbet@lwn.net,m:linux-doc@vger.kernel.org,m:bpf@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:peterz@infradead.org,m:rdunlap@infradead.org,m:sfr@canb.auug.org.au,m:mchehab@kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,huawei];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 139C2A733A
X-Rspamd-Action: no action

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgTWF1
cm8gQ2FydmFsaG8gQ2hlaGFiDQo+IFNlbnQ6IFdlZG5lc2RheSwgSmFudWFyeSAyOCwgMjAyNiA1
OjUwIFBNDQo+IFRvOiBKb25hdGhhbiBDb3JiZXQgPGNvcmJldEBsd24ubmV0PjsgTGludXggRG9j
IE1haWxpbmcgTGlzdCA8bGludXgtDQo+IGRvY0B2Z2VyLmtlcm5lbC5vcmc+DQo+IENjOiBNYXVy
byBDYXJ2YWxobyBDaGVoYWIgPG1jaGVoYWIraHVhd2VpQGtlcm5lbC5vcmc+Ow0KPiBicGZAdmdl
ci5rZXJuZWwub3JnOyBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgbGludXgtDQo+
IGtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IG5ldGRldkB2Z2VyLmtlcm5lbC5vcmc7IFBldGVyIFpp
amxzdHJhDQo+IDxwZXRlcnpAaW5mcmFkZWFkLm9yZz47IFJhbmR5IER1bmxhcCA8cmR1bmxhcEBp
bmZyYWRlYWQub3JnPjsgU3RlcGhlbg0KPiBSb3Rod2VsbCA8c2ZyQGNhbmIuYXV1Zy5vcmcuYXU+
DQo+IFN1YmplY3Q6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCB2MiAyNS8yNV0gZG9jczoga2Rv
Y19yZTogZml4IGEgcGFyc2UNCj4gYnVnIG9uIHN0cnVjdCBwYWdlX3Bvb2xfcGFyYW1zDQo+IA0K
PiBUaGUgc3RydWN0IHBhZ2VfcG9vbF9wYXJhbXMgZGVmaW5pdGlvbiBoYXMgYSBwcml2YXRlIGRl
ZmluaXRpb24gb24gaXQ6DQo+IA0KPiAgICAgc3RydWN0IHBhZ2VfcG9vbF9wYXJhbXMgew0KPiAJ
c3RydWN0X2dyb3VwX3RhZ2dlZChwYWdlX3Bvb2xfcGFyYW1zX2Zhc3QsIGZhc3QsDQo+IAkJdW5z
aWduZWQgaW50CW9yZGVyOw0KPiAJCXVuc2lnbmVkIGludAlwb29sX3NpemU7DQo+IAkJaW50CQlu
aWQ7DQo+IAkJc3RydWN0IGRldmljZQkqZGV2Ow0KPiAJCXN0cnVjdCBuYXBpX3N0cnVjdCAqbmFw
aTsNCj4gCQllbnVtIGRtYV9kYXRhX2RpcmVjdGlvbiBkbWFfZGlyOw0KPiAJCXVuc2lnbmVkIGlu
dAltYXhfbGVuOw0KPiAJCXVuc2lnbmVkIGludAlvZmZzZXQ7DQo+IAkpOw0KPiAJc3RydWN0X2dy
b3VwX3RhZ2dlZChwYWdlX3Bvb2xfcGFyYW1zX3Nsb3csIHNsb3csDQo+IAkJc3RydWN0IG5ldF9k
ZXZpY2UgKm5ldGRldjsNCj4gCQl1bnNpZ25lZCBpbnQgcXVldWVfaWR4Ow0KPiAJCXVuc2lnbmVk
IGludAlmbGFnczsNCj4gICAgIC8qIHByaXZhdGU6IHVzZWQgYnkgdGVzdCBjb2RlIG9ubHkgKi8N
Cj4gCQl2b2lkICgqaW5pdF9jYWxsYmFjaykobmV0bWVtX3JlZiBuZXRtZW0sIHZvaWQgKmFyZyk7
DQo+IAkJdm9pZCAqaW5pdF9hcmc7DQo+IAkpOw0KPiAgICB9Ow0KPiANCj4gVGhpcyBtYWtlcyBr
ZXJuZWwtZG9jIHBhcnNlciB0byBtaXNzIHRoZSBlbmQgcGFyZW50aGVzaXMgb2YgdGhlIHNlY29u
ZA0KPiBzdHJ1Y3RfZ3JvdXBfdGFnZ2VkLCBjYXVzaW5nIGRvY3VtZW50YXRpb24gaXNzdWVzLg0K
PiANCj4gQWRkcmVzcyBpdCBieSBlbnN1cmluZyB0aGF0LCBpZiBhcmUgdGhlcmUgYW55dGhpbmcg
YXQgdGhlIHN0YWNrLCBpdA0KPiB3aWxsIGJlIHBsYWNlZCBhcyB0aGUgbGFzdCBwYXJ0IG9mIHRo
ZSBhcmd1bWVudC4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IE1hdXJvIENhcnZhbGhvIENoZWhhYiA8
bWNoZWhhYitodWF3ZWlAa2VybmVsLm9yZz4NCj4gLS0tDQo+ICB0b29scy9saWIvcHl0aG9uL2tk
b2Mva2RvY19yZS5weSB8IDggKysrKysrKysNCj4gIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlv
bnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS90b29scy9saWIvcHl0aG9uL2tkb2Mva2RvY19yZS5w
eQ0KPiBiL3Rvb2xzL2xpYi9weXRob24va2RvYy9rZG9jX3JlLnB5DQo+IGluZGV4IGY0OWE1Njhi
OTE1NS4uOGQ0Y2ZkZjhmNDc5IDEwMDY0NA0KPiAtLS0gYS90b29scy9saWIvcHl0aG9uL2tkb2Mv
a2RvY19yZS5weQ0KPiArKysgYi90b29scy9saWIvcHl0aG9uL2tkb2Mva2RvY19yZS5weQ0KPiBA
QCAtMjA2LDYgKzIwNiw5IEBAIGNsYXNzIE5lc3RlZE1hdGNoOg0KPiAgICAgICAgICAiIiINCj4g
DQo+ICAgICAgICAgIHN0YWNrID0gW10NCj4gKyAgICAgICAgc3RhcnQgPSAwDQo+ICsgICAgICAg
IG9mZnNldCA9IDANCj4gKyAgICAgICAgcG9zID0gMA0KPiANCj4gICAgICAgICAgZm9yIG1hdGNo
X3JlIGluIHNlbGYucmVnZXguZmluZGl0ZXIobGluZSk6DQo+ICAgICAgICAgICAgICBzdGFydCA9
IG1hdGNoX3JlLnN0YXJ0KCkNCj4gQEAgLTI1NSw2ICsyNTgsMTEgQEAgY2xhc3MgTmVzdGVkTWF0
Y2g6DQo+ICAgICAgICAgICAgICAgICAgICAgICAgICB5aWVsZCBzdGFydCwgb2Zmc2V0LCBwb3Mg
KyAxDQo+ICAgICAgICAgICAgICAgICAgICAgICAgICBicmVhaw0KPiANCj4gKyAgICAgICAgIyBX
aGVuIC8qIHByaXZhdGUgKi8gaXMgdXNlZCwgaXQgbWF5IGVuZCB0aGUgZW5kIGRlbGltaXRlcnEN
Cj4gKyAgICAgICAgaWYgc3RhY2s6DQo+ICsgICAgICAgICAgICBzdGFjay5wb3AoKQ0KPiArICAg
ICAgICAgICAgeWllbGQgc3RhcnQsIG9mZnNldCwgbGVuKGxpbmUpICsgMQ0KPiArDQo+ICAgICAg
ZGVmIHNlYXJjaChzZWxmLCBsaW5lKToNCj4gICAgICAgICAgIiIiDQo+ICAgICAgICAgIFRoaXMg
aXMgc2ltaWxhciB0byByZS5zZWFyY2g6DQo+IC0tDQo+IDIuNTIuMA0KUmV2aWV3ZWQtYnk6IEFs
ZWtzYW5kciBMb2t0aW9ub3YgPGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPg0K
