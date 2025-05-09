Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AD034AB1461
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 May 2025 15:08:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EADCE41572;
	Fri,  9 May 2025 13:08:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rab_55mTtTeE; Fri,  9 May 2025 13:08:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5CEEE41560
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746796127;
	bh=L/oVW4WL6TEahxPXs4fFZvAZ8VjhxTgQtfTyJD/Xt1E=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Q05/CPIMgjymCbKxI3iHbU+OFjlsdCp3KOeyQ6lIC4MvjoKfPhKXEEbLr0oqF1T0r
	 V6xleDpXmc/ofOHbSS4QNm6HXWea2wxElyku1Myw2HoBlmLbKKMtgZJMqd/5AoRkNh
	 D8OAgt90H8jgaxjBtG0ioUZVR3z3DGwBWSKlQgjkjMXcMv8jajWJIpF4Px+sCjxkH0
	 KGeDRdJUVk4y2fbryFO8GTZ/qDwcqMLKg6NyGFrK2p+4bat1FjUaRneVZyumj7mVgb
	 rgPfcsLuckyxpB10RU8ny7iURLzhCC0WKX/ROgWbTA4MXVW6+Oeou9FzcSPg1k2s9c
	 JQWbeXSrt9xnQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5CEEE41560;
	Fri,  9 May 2025 13:08:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 3181A1A9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 May 2025 13:08:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1717D811A3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 May 2025 13:08:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tnyBGNxhPAdY for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 May 2025 13:08:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4722080FFA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4722080FFA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4722080FFA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 May 2025 13:08:44 +0000 (UTC)
X-CSE-ConnectionGUID: PVeUSWfXSPO+5RwaOwRXGw==
X-CSE-MsgGUID: CcHCFlvwSWmDsJRRTWtTDg==
X-IronPort-AV: E=McAfee;i="6700,10204,11427"; a="66156547"
X-IronPort-AV: E=Sophos;i="6.15,275,1739865600"; d="scan'208";a="66156547"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 06:08:34 -0700
X-CSE-ConnectionGUID: UvXQq5QuT8ydOxPRmBpYmA==
X-CSE-MsgGUID: otL0GudOSaib+nZX9Ig3vw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,275,1739865600"; d="scan'208";a="140672387"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 06:08:33 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 9 May 2025 06:08:32 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 9 May 2025 06:08:32 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 9 May 2025 06:08:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YKDCncUkR0FljMjrh5jlveWfD8egjf7dU69qp88LzRwDtebwMFMSNZ0rRzmYjALOHDkvsD4u8dVIvMlCASi70M20s4G08D2t6k97NpL0CsE1kWUAbrz6SHug7/AAc4+gGFbWXha6gqC2IeLptNsu9MGy7W94kr3KfUaeB5kFEJr+fFHpYGb+chlD2k8UTWXvtgKfAR2ZhiQ6PWesNRLh5bm8o3hK04h0CKQJPjoTUnkd8gmE1QnuMTlhIgdPiOvoWQKXKyDQkoJP25MtZbQB2QGKjoZJQ97lnUjlXHo7SLrbt33+V80RKchcqIlxpn7pVX36LuoPfEOuChunGnUGsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=L/oVW4WL6TEahxPXs4fFZvAZ8VjhxTgQtfTyJD/Xt1E=;
 b=dyqBljnv36yEM+YisUyuK9huFdJ+0/vi0tvzDEn/52dFktoCRByBkGkGfQFnmJRZvaQW63DE2zVsgN/UylwMkAIEYHbwwc/nxa4yv6y2Dej18NvG/8CuBMpp3NZSDV+b7j4ob7qNI6JWi3187o6IVJZPv+cjZxjPOvyvtH4Nwkk7wVIfqvL3gPczvmcKmtvDOW8G/JKQghfUjL3dXqe3dP+UrNBRZFP0iE/pKS+uiURznTad9LFMrgixxamgo5E1HbT5BEMZGpTvICYsx6V/fKpHMNP0PYHClvAiDZJbZHtfoyqH86SN2Vsj5ooaDu94j9U7kiYOIZ2JF1bdChjxmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by CY5PR11MB6486.namprd11.prod.outlook.com (2603:10b6:930:32::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.19; Fri, 9 May
 2025 13:08:01 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%5]) with mapi id 15.20.8722.018; Fri, 9 May 2025
 13:08:01 +0000
Message-ID: <a214afa6-e9d7-4152-9b43-146cf7ce0076@intel.com>
Date: Fri, 9 May 2025 15:07:56 +0200
User-Agent: Mozilla Thunderbird
To: Michal Kubiak <michal.kubiak@intel.com>
CC: <maciej.fijalkowski@intel.com>, <aleksander.lobakin@intel.com>,
 <dawid.osuchowski@linux.intel.com>, <jacob.e.keller@intel.com>,
 <jbrandeburg@cloudflare.com>, <netdev@vger.kernel.org>,
 <intel-wired-lan@lists.osuosl.org>
References: <20250509094233.197245-1-michal.kubiak@intel.com>
 <20250509094233.197245-4-michal.kubiak@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20250509094233.197245-4-michal.kubiak@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DB8PR06CA0052.eurprd06.prod.outlook.com
 (2603:10a6:10:120::26) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|CY5PR11MB6486:EE_
X-MS-Office365-Filtering-Correlation-Id: b8c3b412-12d8-4578-eabb-08dd8efa86a7
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cElQSmFDUmRaUERPNXl6ZE9UZTdlVEE4Vk9xVTIwdE1MSjNsV2NpN3h6NjB6?=
 =?utf-8?B?UHJIcU9MT042bkpNN24wWHk3R2NSN1JWSDJBMnBjWVdQR1AzeHBLYjRXWjZP?=
 =?utf-8?B?TThSOHMvSG1uWjA3VTJNRm9GejFHUWhoc0dVOXNjeDJmQmRxS0xxM2p4OU1C?=
 =?utf-8?B?TzhGdEkrb0Zma0ErZEtyT3d6NTExU2Y0eWZQVndCOGxLR0RFVVZGbUZQa0tq?=
 =?utf-8?B?d0h6aTJ4dmd0M3EzRm9Ralp3RFo2ZlFKU1ExRGNQUDBjT0xnU01ubDdWMVY4?=
 =?utf-8?B?QklqUFlCb1dXZFdHRzZxaFgvb0NMemk1R1pNb1BhSVYrMGhsdlp4MHkzNTlE?=
 =?utf-8?B?YzR6KzhvMEhLaXoxUVFnZ21sYnJ3SFZxNTIzR1hWeE43blBBS0psd2NqQVl5?=
 =?utf-8?B?NEdRaExXcFlCazNUWElxVE9FSytRdVBzTi92eVJBdVhOUUQ4V05rRThVd0JB?=
 =?utf-8?B?OGNJL2o5S2ViNDY1dVpVYXd0ZmVVMGhJaVJUeVZzQS9IRVJiT1BEVUNUdUdw?=
 =?utf-8?B?a0FhMjFUbnVicVF2bE5FQUMvb09Na052eUE5MkVxbFlyc28ycWxoc0d1Q1Mv?=
 =?utf-8?B?K0RsSDJHOGV3TjFTRkNibzZoUTVkTTRPZ2k5Z3JpL1IyQWNqQno4WSs3emJv?=
 =?utf-8?B?SE9aQmx0bURoK3hnM2lrWFdydktyMzhtbjhVQmcyYmQ2WXVPdTAyWHVBUi9z?=
 =?utf-8?B?TUtiWHZHSUJoVXZDdTA4cGFFSHFGem9yRkRQVytjZXhsVjVhT0p5VjF4RUtl?=
 =?utf-8?B?QTVBR3dwUVJLUi95QlFxaDVkSlZ4K1NIMDROS0VPM1dIYitGMGlTVm1ZWi8v?=
 =?utf-8?B?YW0vK2hTQjRyYzlkZWJjdTJ3Zm5iL0ZQNEFOS0RMeFRRY2JJdi9sMGVzMlpK?=
 =?utf-8?B?RHkxYk41cS9ieXNHT1hYQVVRcEtheSt6WnVIMkY1c1dyU0MyUG9rWlAwR2lG?=
 =?utf-8?B?V2JHNlNaNnNLMktCZzZSUEZ5amlYNlM4WjB4OEo4M0hCZTMzTHlMYzg2em9F?=
 =?utf-8?B?QVhHR3c0Y3g4TWZ5a0pPNTd3UjBaQldYV1dTYjdwUlJFY1RKWGhRV2ZDaXJi?=
 =?utf-8?B?OHU0U2FrL2s1RXVlb0FvM3NCNmRpS1BiWStIREt4SWtON0VkRi9ZaXJmbjhn?=
 =?utf-8?B?cUhlbnlZejdGK1VqREVoYVcrUW8xcEpPbEt4RU9TWHhDOWl3RmdObUllLy9u?=
 =?utf-8?B?R2s3bEhqM2J0ZlVhQkRURGgxQ0xFMEt0eUorU3JPM0tibVQ1VkFZeGQvOG1j?=
 =?utf-8?B?a053TFl2eUpLWXZrcS9jOUlRb2V2MDNLNzIvU0tOaUZubVVEczQ0ZlA1VGpO?=
 =?utf-8?B?eGdGZ1NJTnpSOHBNS0NwK01XaTVPWFAwL3d0ZHBhZFFMeTRkeUlsMlJiU1hp?=
 =?utf-8?B?Wlc3blFDekJYNnd3YUh5ZEt2RktZd0tvRXdnUU5jNkdIbnBhUURCSlRZUFp5?=
 =?utf-8?B?SGtJeWVSNWpUeUZkZExZbHdXWXorNStRUmdBOTY1QVNEWGFxQkRNKzU4R3Jo?=
 =?utf-8?B?OWtmS0NlQ29Pdnp3eHREUXZ4UVRUTDYzTEV5Zml3RUpIcHJINmxIcjFTNEdW?=
 =?utf-8?B?a2dERkVmcWViem5hdkhja0x6dXlJemdpYWswcTVEdzdURnI5SHl5VWVWL0pq?=
 =?utf-8?B?Uk82NWIzR3dFOTJQUlhnNzI3b0xWaVhlamxZRUJnbDk1ODh3ekdKRGk2Q3Vy?=
 =?utf-8?B?Sjc4ckYydU5zSHIrWUpQNzd2ZGlyemt0WVVKWGNjRktma0IwellIMTlXMGls?=
 =?utf-8?B?TlZlR2VBS1c1ZHh0N0RDRncycTJmb2N2MkpNY2hKelMvQUozRFp2WEFrYm1a?=
 =?utf-8?B?VWZnR3ppQkNtRXBHYjg2ZTNUT245TXpnQkY2ZkVhcjFXYXlvdzM5OGxxVERq?=
 =?utf-8?B?dU1ValJPT1dVRlVNMUY3UW5JVU55VHUvNU9IQmFIM3E5dEFqZWQwZkpqRzFl?=
 =?utf-8?Q?2q58f3w0xqY=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aVJ2VE8yRXFtV3NwTlBFTHFibFU2b2JjQi92K3YzdkZKVTA5NXRMTUNwb05h?=
 =?utf-8?B?MWRFd1RmYTV2L2wyRU9xMHRGTC9sa2V4b2NPNEtaMVVPSklkVkIzTklzSWVN?=
 =?utf-8?B?VmEvMjBOM0RHc2pGcTNUTEl0cVJxMkR1cUNMcUFYOUx3R0FkSDNpR0tGUkpU?=
 =?utf-8?B?MStjOFBDSGtmRVZCdG5FVzJZRW94eUh0MURYL1ZBNXp1bkg2aTJvSWJ1RVBU?=
 =?utf-8?B?RS96QkdqdmNLbHZJUUJPOUpjUmhIdkg5U2w3OFVNcDBRdVdWbGYyVGJyYkZs?=
 =?utf-8?B?bWR4S1B2cTJJOHovVXpPd2JzclQ3bFFwSDBIRE9sdmlKTFBUL282ZVlKeFp3?=
 =?utf-8?B?U2hjTDRDMllmU0pleDVDMUpkMzBSd0V6Y3NMTjd3OVl1REdVM1J5T1NlZ3du?=
 =?utf-8?B?alBWYUI5UmVlM2xwd0NuTlVPc2FTcWYvdUNWNkRXc2VNQ2cxMWFqS2xKOGlu?=
 =?utf-8?B?M1N3TkpaclkyR3Zvcm9VY1d3R09HV3lXZ3I5L3R0a0V3MEJEM1lvbTN5OHBH?=
 =?utf-8?B?bGNCKzJTNlpKOCtXaFlMSHFSVlFZcENVUEhITG1weS9EQlkwNTREWEd4K0xC?=
 =?utf-8?B?Um9MY2NTTkpsdnZKRnkxcmtwY1g3c3BFM21OTFdvbzZITjdHTFF5K1hhWWNt?=
 =?utf-8?B?dEQ5eU85R2NtSUhXVTgrSjFkUWN3VDMvWjEzTzM4TmN2YUMzZzIvUzZaZkNJ?=
 =?utf-8?B?Q3RCZFhHNFRSMXd4eWM4OGx3SHRiMjgrZ2h5RjgrbjVJMlloSk0yYkxSdFl2?=
 =?utf-8?B?RXdhZUk2cWNvTGlDaC9KZDRKMmVRUHB6TC9iYXZMNVM4eFlVVTVETndIKzVo?=
 =?utf-8?B?SFVkT0U4WmFhVVpFelAyNWdyaFhCY3RGaXYxd1dxS3Y5QmZnMEVicmpabFNp?=
 =?utf-8?B?Vk1oN2lQZkRRUkVrZ0RReFB3aGFVeGFWN2lXaUMxTTJCUTh6R2wxaHoxMW81?=
 =?utf-8?B?L2FWOEozSW5lY1dhWVQxTjBFMUI2VkR3V1h0TkpBVm1ubzA1NExZK0w1QUtW?=
 =?utf-8?B?bnE0bENGMzVUWTFDcE5qK1cvMFRHelFYK0FDMVVsVVhWTjF2TW5reDF2aWFt?=
 =?utf-8?B?cXNMUXIyaEdoSlZxbC9sMkJkclZhak1yYWVYYS9NeHFjcTBkdlVlYTBxbGVC?=
 =?utf-8?B?UlgxWjJwZFN0L1VnYlJBcnoyMHZNSXEzNHhiUGF3QlgrcmRIWm16dThuaTRY?=
 =?utf-8?B?SElyQVBpS09xcC9lUmliRmkzMFF3L21LZ2xwVmZqT0R3RTFQTmJOMURUQUhF?=
 =?utf-8?B?VnJ1elYzaVJGaE5UejlaWmtkV3E0UFhjZndFZ0NoQ2cwZ0dMRGY1dUhUMDlE?=
 =?utf-8?B?OE5BS21uUEcwVjR2NEFiMWpRUEpQalo0Y3M3YURudVUrVG1xcXhIbXBjemZU?=
 =?utf-8?B?NTlERGp5R1BTalJEMHJObkJiVVdqT25oVzhTZjF6OUlIZDI3MitkTUs4eTJM?=
 =?utf-8?B?LzhmOE8xbTdRMFl4MTJuQTFLR0N1T04wQ0dhak8rT1N1YVhQK2JJTUppN25B?=
 =?utf-8?B?cE9YQWo1QkJTNzZxQnpxQjF2dzRzMmdtdW1KUzJDKzhHSWZ6T3dreXpjZWlL?=
 =?utf-8?B?dnZOUGJrdG9BMWhTYndpK0ZPa25WaEg5NWdvU3ZGRkVXangxdDl6VFFpbTJY?=
 =?utf-8?B?RVI1eWVDcXVLc3hBanRhcWJFQTI5RnFQdzM3S3prOEw0QnJ5UjhuMWRYL25a?=
 =?utf-8?B?VmNNZGZraklZbStwVjluYTd0MSt4L2ZlelJDck92RThVb1NBQ2pqY3l3dUVX?=
 =?utf-8?B?SDZqd0RKOWM3Wk9wUE1pVCtxZkN5VUY4ektVdXJrZFVNK2l2dmxUZnozS2l4?=
 =?utf-8?B?QWtQM2ZtWGhVSVpaYTcwTFVJUVFRaVlTM2VqNHlXdE5HOHB6TXVma0NjbjB4?=
 =?utf-8?B?a3lRRmF1L3REcE02d29pcWp4RTM2dXJEU0FRK2dmQkZyc1ljTDJxRVFXWUs0?=
 =?utf-8?B?VGtQdmJXNUN2dTJuQThkOHRBSkY1ZVdvZzBOeXhySXFHVm5wRjQxWk8rYmFy?=
 =?utf-8?B?cUNXMmxPSHl6YWh4UDEzRzJuNXo3ckRIUDJtK1FBVW5LbWZ4b0FsSzlHVHYw?=
 =?utf-8?B?UFZ0Vkpnc1RmdGY5ZFZ6cnp6dGw2VXRWYmRNYXpWTkNIK0JaVDlBRjU2RXFv?=
 =?utf-8?B?Qjc1OFRhbWdrVEZsT0lzSDZMWWh1RUgvV0dSSVA2aXdMSFc1dHVWVWUwYXBh?=
 =?utf-8?B?MGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b8c3b412-12d8-4578-eabb-08dd8efa86a7
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 May 2025 13:08:01.0941 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: D+5QvSwvpNBmODDF6/CMw17J14RPAf2IFYC06L3n9yC/KsvGjk268Rp6ky0Guf6J/6F3fVPN++eXNMR+tP6Mf3k+Z9mzk0AYqvouklyJm1I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6486
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746796125; x=1778332125;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=li1T8EtJEmKo8xW+77SSzbepHIRm9zHBWXuKvuUBi9U=;
 b=hCpm9vzR1w8u49Dwt64QPzv/SM54Zc/qUJnIWIJHfYfcX2gMEN9Omy6T
 NP+hxkarSA1H+R0KglWD8wW45GVjtb2C1LioV/9AKsq9FXW28Grp3RxXx
 8SI3NpYOmsBD8QZa0xTY16fIne/zqtPDlacj9FyMNjk5eximzxj/E5WYG
 idRPHeGQNrtAsGl5VumRJN99aqTcH+6PhVV7PsMeUXj155/+tgjYiYTwy
 39nwIkPwlKUf9NUoHC6C00FhJQys9JI/bFxo2U28QTSwHd8e5Jw7KQzt2
 38Uq52s7MrLxJbry589j7oHpWBvOFxgSJj64UygALhQKzyX3EBaeZkc+v
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=hCpm9vzR
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 3/3] ice: fix rebuilding
 the Tx scheduler tree for large queue counts
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


> +ice_sched_rm_vsi_subtree(struct ice_port_info *pi,
> +			 struct ice_sched_node *vsi_node, u8 owner, u8 tc)
> +{
> +	u16 vsi_handle = vsi_node->vsi_handle;
> +	bool all_vsi_nodes_removed = true;
> +	int j = 0;
> +
> +	while (vsi_node) {
> +		struct ice_sched_node *next_vsi_node;
> +
> +		if (ice_sched_is_leaf_node_present(vsi_node)) {
> +			ice_debug(pi->hw, ICE_DBG_SCHED, "VSI has leaf nodes in TC %d\n", tc);
> +			return -EBUSY;
> +		}
> +		while (j < vsi_node->num_children) {
> +			if (vsi_node->children[j]->owner == owner) {
> +				ice_free_sched_node(pi, vsi_node->children[j]);
> +
> +				/* reset the counter again since the num
> +				 * children will be updated after node removal
> +				 */
> +				j = 0;

I know this code is a copy-pasta, but it looks that there is no need to
reset the counter (whole array isn't reshuffled), just don't increase it

IOW, would be good to check if this line (and the semi-obvious and
half-wrong comment) could be removed.

you could keep my RB tag, thank you again for the series!

> +			} else {
> +				j++;
> +			}
> +		}
> +
> +		next_vsi_node = ice_sched_find_next_vsi_node(vsi_node);
> +
> +		/* remove the VSI if it has no children */
> +		if (!vsi_node->num_children)
> +			ice_free_sched_node(pi, vsi_node);
> +		else
> +			all_vsi_nodes_removed = false;
> +
> +		vsi_node = next_vsi_node;
> +	}
> +
> +	/* clean up aggregator related VSI info if any */
> +	if (all_vsi_nodes_removed)
> +		ice_sched_rm_agg_vsi_info(pi, vsi_handle);
> +
> +	return 0;
> +}
