Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yK0jFv6mrmmwHQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 09 Mar 2026 11:54:54 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 987B52376B6
	for <lists+intel-wired-lan@lfdr.de>; Mon, 09 Mar 2026 11:54:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E1CE38235B;
	Mon,  9 Mar 2026 10:54:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id F5ulnDJuyryl; Mon,  9 Mar 2026 10:54:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 55FF0824DD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773053686;
	bh=YfBkjysBaOYqaKhhiYKVOpj31ylYF8Q4ipLG16afr8c=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=MUQD7qJHs6LxmOpWmZm1u+n64Moc4N7aYmU57RXy+VYc/MDEnR0RyFQjS4l48qL7h
	 jM7r+WDMExDaHfvHzoMBYfIInkAJ+jB9P/Rxaaby3M1x7XWY8fYrhiainCd6j11VUr
	 qhvnDMet6ASnouiKzrFRoIwiqv+ogViFy4kPG8IQUvQxCelyBUE58tQ/0oM+/fiw9E
	 8MlJK5TFQfwL3NIVCTTKt0ulT7GgSDf6QwspnAmyIMg52T77ghQ4rBY+ZWw3v6AgHR
	 7Dn8guhJ4sclLQ7xxxWAELDB8FEZZ/lh1sE9gAf//J0NBah5LE2LwcXqaXw2rYUena
	 MeovBlfPLFXiQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 55FF0824DD;
	Mon,  9 Mar 2026 10:54:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id B629E158
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Mar 2026 10:54:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9C34D60729
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Mar 2026 10:54:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kRXaczC5dIA2 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 Mar 2026 10:54:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=avigailx.dahan@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org DC13860673
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DC13860673
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DC13860673
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Mar 2026 10:54:43 +0000 (UTC)
X-CSE-ConnectionGUID: QqdCrMkQQt+hTKJvVX53dQ==
X-CSE-MsgGUID: ZVopB+NhRd2JgwuZhIEX+Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11723"; a="76674501"
X-IronPort-AV: E=Sophos;i="6.23,109,1770624000"; d="scan'208";a="76674501"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2026 03:54:43 -0700
X-CSE-ConnectionGUID: qvb9L5T+QdmtcEsvCFX9Mw==
X-CSE-MsgGUID: NgT6Kk0/Ssy0PCaFV6qS2Q==
X-ExtLoop1: 1
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2026 03:54:43 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 9 Mar 2026 03:54:42 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 9 Mar 2026 03:54:42 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.9) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 9 Mar 2026 03:54:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=I0AGQeo12lRj28WkeTzVNRBmoHnRY7x8/YodhDdIeXP7Q0cXZKFKm3eICpDQah3lkUBeWVK/VNbk4eK03csIUoFqYZ45ISP6ZMH04Bh+ggzaNIZlQGHPnAk5+0pSHAL+Mx2YJgc0BDJAzYkJm3XLP7T/Rf7cyXZzLSxXKwrOL1v1lsa4YvA2G8IOySkdz+gc0GI0t/oM/XkFlhFYQTNOvnKYuBdILCltMr0dgWgCahtYJK1c9AQK3nDrBvfre4tahvrzg5OCSE2X0sI0FVEUi8gNEO04g6SbP9MPLStuhDv3pgd8fwAwMXNwDCF8gfO9a6jYp7xs7IqlTqaZvPV/MA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YfBkjysBaOYqaKhhiYKVOpj31ylYF8Q4ipLG16afr8c=;
 b=nS9u6Vbg6HtRmsge1VQE/F4D7f9frL/6Q3p8++E9k43gG2ifnF8iVsz+DnQhhjTcTLcKSx2YOd766QMLS/TpHpm/5DNIu7Jc4eqj37cwvjPViJWgKH+A8fWEys/XZLFt2RKfJWbAlgayMkjIWCZuGb+IonaedVl3kIYjX8Oi74B2jxMHaiF7O08uugQNJLBlYdDva83JEaeI6yfl9m+u4GNRotIdMRhtoQdRyhm+dVPx2iD2RhrFxk1nEcv/M+CNe/bNAiMot3jQHEcijfTApB4572DrBnwifAueZ2ZpAX/l2lwQLfgL5Ak4no17D4CLqGBpXUt+0+UjMEJuqlZDEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB8013.namprd11.prod.outlook.com (2603:10b6:510:239::8)
 by DS0PR11MB6374.namprd11.prod.outlook.com (2603:10b6:8:ca::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9700.11; Mon, 9 Mar 2026 10:54:39 +0000
Received: from PH8PR11MB8013.namprd11.prod.outlook.com
 ([fe80::26a5:58f7:7e5d:5572]) by PH8PR11MB8013.namprd11.prod.outlook.com
 ([fe80::26a5:58f7:7e5d:5572%6]) with mapi id 15.20.9700.009; Mon, 9 Mar 2026
 10:54:39 +0000
Message-ID: <47e477e4-a973-459e-8b3e-41f83b8d4fda@intel.com>
Date: Mon, 9 Mar 2026 12:54:29 +0200
User-Agent: Mozilla Thunderbird
To: Mika Westerberg <mika.westerberg@linux.intel.com>,
 <linux-pci@vger.kernel.org>
CC: <intel-wired-lan@lists.osuosl.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Lukas Wunner <lukas@wunner.de>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S . Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, "Saeed
 Mahameed" <saeedm@nvidia.com>, Leon Romanovsky <leon@kernel.org>, Tariq
 Toukan <tariqt@nvidia.com>, Mark Bloch <mbloch@nvidia.com>, Richard Cochran
 <richardcochran@gmail.com>, Andy Shevchenko <andriy.shevchenko@intel.com>,
 Vitaly Lifshits <vitaly.lifshits@intel.com>, =?UTF-8?Q?Ilpo_J=C3=A4rvinen?=
 <ilpo.jarvinen@linux.intel.com>, Vinicius Costa Gomes
 <vinicius.gomes@intel.com>, Dima Ruinskiy <dima.ruinskiy@intel.com>
References: <20260224111044.3487873-1-mika.westerberg@linux.intel.com>
 <20260224111044.3487873-6-mika.westerberg@linux.intel.com>
Content-Language: en-US
From: "Dahan, AvigailX" <avigailx.dahan@intel.com>
In-Reply-To: <20260224111044.3487873-6-mika.westerberg@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0007.ISRP290.PROD.OUTLOOK.COM (2603:1096:950:2::9)
 To PH8PR11MB8013.namprd11.prod.outlook.com
 (2603:10b6:510:239::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8013:EE_|DS0PR11MB6374:EE_
X-MS-Office365-Filtering-Correlation-Id: bfe58739-74d7-4ba2-70df-08de7dca42d6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|7416014|376014;
X-Microsoft-Antispam-Message-Info: pzckN8tMbLKOx+8BdX++TBz1fESR4NB36knTeqWZKdcQyWUSTair9h60NeIJEJysJxByzcYWtsZFB/4YyRP0jKDf/3g9WUAgTNAdOUEkmE6hKEKbkhx4qPsqw5rT13MNGcxkz9qmMZ4XyhwpJjbziHsDX/khc4LvA5fwNIP05GAyu3YcDim0Cg3t22vxWRmRlbm5Ce7huwWlMPSz3blxRgDDHIZBbVuHRftfbUraP+I7nu6az9dE0hj9v4E07/NP1iFrrrkctXz2DL58+hECrkDfBLSASCMS9J6bT+70jM2YKrGXRHUSj9dK0CBetoghRDzKXRul8so9t6rVHFsV+3C9Zb5LcBi6eYfbS45UySSzHe74uW4Zb1p0tQKmUW5eK6Ml9RLaCe9bSL1jIB2ZW26oQ7O7gwsRDRUkvwOCxyM4cOiMB1MMRQo10F2EgGR7glmOnAoy2YGlKvYALHJamX8vRr2amBNVz5vD2jVkz2xf9xHil62pvWankZEs9H4FO/pJiX1rymRxlUnVIeISTX+TYCRMSHImWVcCwvhzOvhdbXrzRDAvC89JxRNBj4J5VlQZ263pFz5ywso4aP+nUWn49mKiQbBLe1D5qkgj6ryKfRc6OBcLFBVVEoyUzeFKZpQv53yQ6eLSkD/zikm+YmhTk6AkNHwwxQVzX/ZN44zdGao+TizBnkK2tTaiKZquUlD2c07V0YXSS5YaiSmO+vs00XZtPH5prS8bS7jLS1o=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SSszbmdhVGZDWHhGTWlva1lLSWNqQUVMek1BNmFkVmpsVTdxZGFiaU9xaG44?=
 =?utf-8?B?YzZnT3lTRUQyWU96VDVBL2htWTJZOFBtSFZIRjZFUEg1SUdjcDRUaFFFRkJr?=
 =?utf-8?B?WFdRYnNuTk9HOXJYaGlBUk1ETWlBa3hyTEJrQ1FiK2gzdmtCUGExd0FsZmZ3?=
 =?utf-8?B?MXRZbmVycEVvdy9zbVR6MmJPbUpKVjBqTkJ4VEw0djZkNGxselVNazBKdWVn?=
 =?utf-8?B?aWdSK0s0aHBzMUc2ekxhVDh1TXdGVzdxVm11ak9nQ1dmbkIzMWpEc3ZocEdU?=
 =?utf-8?B?WE1pWVFnU2J1K1F1M1MweHA2VHB3dThwQ0xiajJKZFlmUGZLcWhOQUNpbSs4?=
 =?utf-8?B?U3NxcXRYQmVHV3pUZEJTK0xFVHlaKzN6aGRCcFppQ0hSUGJBR2w3N3Q1RlRq?=
 =?utf-8?B?elpza2NYdjYrVUVhWmJtQ0h1L3hWS0pqak9MM2NvQzl5ZEVYbWxpNG5iYUZa?=
 =?utf-8?B?VE80K2Zvc2o4NWJtUHo1QVVrdy96Yll1YlYxQU1aTElFRUd1SVk4cERabjR2?=
 =?utf-8?B?djJMcjk4L2EvMnZGc09kS0lqNGlHM3U0M0o3TDZJeVVLQWZ6RFczZ2duZ1dM?=
 =?utf-8?B?aUIxWndmZGhXYUVUdUlUR2M3Zmd1dkhRTmpoNUNPS0JTSlVERXdEZytaNmh2?=
 =?utf-8?B?Qjg3YWh3MWZhM1ZkV3FmbHZueUFnOFN6a2tNZVlYSnB1MkswM2lBRGVHZkNB?=
 =?utf-8?B?SC9qYVNoYlpwUmV6TEdTZVBUbHhYckszTGFrRjZOWEJkUGFWZ3hqd3pwU2I0?=
 =?utf-8?B?T2RQbTBMcjc5cU9EWWxaeklMdERBc2VkQ1JWRk9pME1tc0MxMUQ0QTJpazQz?=
 =?utf-8?B?VGU0VG55THBCMFZtb1JubVh1TytUMkN0QTZybkNFSTF5ZEFnK2ZyUkNUUVJS?=
 =?utf-8?B?V2ZNMWZ1Zzc3OG8walJDMmtORG5yN2tUK0lZNU9sdkQrdTZQTm9qbGZCYUMw?=
 =?utf-8?B?S2pySlFjWnkxQTJOY0hlMHlCZE1yNUVTTFk0VzZFakh3bTMweGJwaERsMWww?=
 =?utf-8?B?WEN3KytCc0VQVDltYmJ4SVZsKzJPcTdMQ1QrUjhuLzNmQ3UwMVM2dkIvMG5l?=
 =?utf-8?B?QWVDQWhValE4UnZ6V3k4aUhnYWZCVXFxLzJKbHhxTitJK1RHNE5aSnE1dTM2?=
 =?utf-8?B?SmJpTGJCREpPbEI4ZmFFU2MvT2RVaDA5dUV0QXRqUGZSenZtRzVjcjN6YjRH?=
 =?utf-8?B?ZFhUYSszMWxsWDNrNlhmZ2FXQ3htZVRITGU3UFlvSVYyWDlVdWdLaEljREpk?=
 =?utf-8?B?eGpXd01zU08xbG1XV21ZR3AyMzZwQ1lmOHV0cmRGMW8xTHRzOVVDT2FOWE5o?=
 =?utf-8?B?WU8vRnVqaXdxdjJZUEFJNlR5NGhGV0h3SVFQdFcyZklIMjlMdi9TaU1Wbkw0?=
 =?utf-8?B?dUp4MXRuM25Dbk9mOTBKdGlrbXR4L2thc2lNS0VzYXM1SGMvTjArT0IrS1Fs?=
 =?utf-8?B?MlFzWmN2ekY1emdvRU5acytYTUlHeWhCamgzN1FzWHFMUHNhQ3B6TXVvdmFh?=
 =?utf-8?B?ZEtlemkrLytnVFBxNjJYeGpqdm1mekRHOGVTR3R4OGI1Z0tUaGplanh0UHdm?=
 =?utf-8?B?WXNqbkxWQlJDSk9xR0ZvNkc4NWJjU20ySSs2K2g4UUZmbVY5L2ZaYy9Vakpm?=
 =?utf-8?B?Q1REZ3NUL1F4a29YOW5qMDNhZjluVGhxUjJadHdLY05LaG5Ga0FpMVVDZTBB?=
 =?utf-8?B?VW5YSGhYR0grd0xFKys2R01jL0FKWFNsbDhESHFTYjl2VFFjVTNTdFpsbVIw?=
 =?utf-8?B?dXk3eWEzL0FyT0o2alZZalJFL05RNy90b3VVUk1USHYvOWRLTFo0ZHpNYzFS?=
 =?utf-8?B?WGg2cldodmJhNytuYk95cGlJaFRhSnlsSEM2b1B1cnVna1preXd0bHlXWnNJ?=
 =?utf-8?B?c092VU9kZ1dLUjY5VjFVT3R5UExzd2hKZ1FUejBZd2RvNm5TVGM3OWdLWlRW?=
 =?utf-8?B?WWVwTGU4RXczMXNLajgyVVhZNk5rQzF0WFlGUlFOZnlzbTZkQndFelV2TTcr?=
 =?utf-8?B?bmlFU0MrR2ZDODUwRFVua01jUFI4S1ZONGh6M0NFNSthVmFQN2hrZ3JiNzdr?=
 =?utf-8?B?NW9aUDJFU1BrWEVXOGF3T2dWclBjVVhJVVJnUlBKMkJmNExzZUFPcGZHZ1Jx?=
 =?utf-8?B?UzVWTW8rK3pCTVh5T01ESkxMaG94OVZTYWsvb1o5cWxERmFIakV4NzRCL0VR?=
 =?utf-8?B?eWZTUEh1Tno2NHZsWU4zWjVaL0NtcFl1RTIyMklQYU5BK3BWWWxDZGZyYlFY?=
 =?utf-8?B?NE5jbHZOMG1teFBxTTZqUnVWalpWclpvRGtEOTUxeGN6VUUwWUVBNk5RQm5G?=
 =?utf-8?B?aWNOcUpMM1BpNjhXQlpxdkd6NnhpbEJPVDh2YVZnSmRUaTFIV3FBdz09?=
X-Exchange-RoutingPolicyChecked: RRUDFPUUHZ0WPzooLfsXIxZXzoSGl8NN+luile1DwFyH1yMd/w9QIL0IweDNHah44p6xryN7WGmFRz8JTUQYOYKR4UfvrbnTvK/lftPoi6geLYLtbeveM1KSDNd83S21LJYj3XylcAvI8Waijs3iVoPUMPLl/4tYRSHuEcbcZoWGMsOE1DldaiZVt6YYsQJz5a4oYyh4xrd1ZrE5M6ONHKUwSqaOYcIpH+3Zr/xaPHLccXE+XG+AxKSNk+56CIiC87nftqymgwhId2U+jpXVjRP/FOLbfYu+l6IBI7vFQbd63OjIfkXZKzJfkyLNaijIR72c4G2vfv9vMHlaaDC5VQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: bfe58739-74d7-4ba2-70df-08de7dca42d6
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Mar 2026 10:54:39.2465 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZFZ74GcwRmLt71hKUSM6GezP17pi9bzLKxrq6vu+NkBY7fXlJaabKG1ny52etQ2oS3W81ZThHTQhk7Laj5cg3KmJD1jNvfOKwZQ03ZZxzs4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6374
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773053683; x=1804589683;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZL1wTx/rmRoqFqbrnMIIdYY8cdQWdtsNyQz3T3yGk1s=;
 b=WwRLRE6kBKFiLnRyqlUHQjfjXC99NoBVPRSF1KDLHq82PafIi6iXolHI
 Kq2c4jRuzINIFWknVJ/MrAmTRE6DGqOFKPC2DJOY4B2e/UL1QTBJAZcZY
 hr5GLCtkuR4ASDMf7tPuDH9K/fewQlh6nOB9EYAQYrjTlLiiNUBgY9F64
 Jms74ejxguwOfAKJnp7zluSLjFrVPQtQLsej9QtjLHzq83t5dwbTkCrRi
 DpeuXV3P/UTKnufc84urhysyxHpiKMbLfwHK/oMrmtfNv85hSBmDAdLdv
 S78YYefP13jb5apbfZLZcLE/d0dqFktFo4DrRARnvo7EFvzAIQwYJzWbd
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WwRLRE6k
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH 5/5] PCI/PTM: Do not enable PTM
 automatically for Root and Switch Upstream Ports
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
X-Rspamd-Queue-Id: 987B52376B6
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:mika.westerberg@linux.intel.com,m:linux-pci@vger.kernel.org,m:bhelgaas@google.com,m:lukas@wunner.de,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:saeedm@nvidia.com,m:leon@kernel.org,m:tariqt@nvidia.com,m:mbloch@nvidia.com,m:richardcochran@gmail.com,m:andriy.shevchenko@intel.com,m:vitaly.lifshits@intel.com,m:ilpo.jarvinen@linux.intel.com,m:vinicius.gomes@intel.com,m:dima.ruinskiy@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[avigailx.dahan@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[avigailx.dahan@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[lists.osuosl.org,google.com,wunner.de,intel.com,lunn.ch,davemloft.net,redhat.com,nvidia.com,kernel.org,gmail.com,linux.intel.com];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,osuosl.org:dkim]
X-Rspamd-Action: no action



On 24/02/2026 13:10, Mika Westerberg wrote:
> Currently we enable PTM automatically for Root and Switch Upstream Ports
> if the advertised capabilities support the relevant role. However, there
> are few issues with this. First of all if there is no Endpoint that
> actually needs the PTM functionality, this is just wasting link
> bandwidth. There are just a couple of drivers calling pci_ptm_enable()
> in the tree.
> 
> Secondly we do the enablement in pci_ptm_init() that is called pretty
> early for the Switch Upstream Port before Downstream Ports are even
> enumerated. Since the Upstream Port configuration affects the whole
> Switch enabling it this early might cause the PTM requests to be sent
> already. We actually do see effect of this:
> 
>    pcieport 0000:00:07.1: pciehp: Slot(6-1): Card present
>    pcieport 0000:00:07.1: pciehp: Slot(6-1): Link Up
>    pci 0000:2c:00.0: [8086:5786] type 01 class 0x060400 PCIe Switch Upstream Port
>    pci 0000:2c:00.0: PCI bridge to [bus 00]
>    pci 0000:2c:00.0:   bridge window [io  0x0000-0x0fff]
>    pci 0000:2c:00.0:   bridge window [mem 0x00000000-0x000fffff]
>    pci 0000:2c:00.0:   bridge window [mem 0x00000000-0x000fffff 64bit pref]
>    ...
>    pci 0000:2c:00.0: PME# supported from D0 D1 D2 D3hot D3cold
>    pci 0000:2c:00.0: PTM enabled, 4ns granularity
> 
> At this point we have only enumerated the Switch Upstream Port and now
> PTM got enabled which immediately triggers flood of these:
> 
>    pcieport 0000:00:07.1: AER: Multiple Uncorrectable (Non-Fatal) error message received from 0000:00:07.1
>    pcieport 0000:00:07.1: PCIe Bus Error: severity=Uncorrectable (Non-Fatal), type=Transaction Layer, (Receiver ID)
>    pcieport 0000:00:07.1:   device [8086:d44f] error status/mask=00200000/00000000
>    pcieport 0000:00:07.1:    [21] ACSViol                (First)
>    pcieport 0000:00:07.1: AER:   TLP Header: 0x34000000 0x00000052 0x00000000 0x00000000
>    pcieport 0000:00:07.1: AER: device recovery successful
>    pcieport 0000:00:07.1: AER: Uncorrectable (Non-Fatal) error message received from 0000:00:07.1
> 
> In the above TLP Header the Requester ID is 0 which rightfully triggers
> an error as we have ACS Source Validation enabled.
> 
> For this reason change the PTM enablement to happen at the time
> pci_enable_ptm() is called. It will try to enable PTM first for upstream
> devices before enabling for the Endpoint itself. For disable path we
> need to keep count of how many times PTM has been enabled and disable
> only on the last so change the dev->ptm_enabled to a counter (and rename
> it to dev->ptm_enable_cnt analogous to dev->pci_enable_cnt).
> 
> Signed-off-by: Mika Westerberg <mika.westerberg@linux.intel.com>
> ---
>   drivers/pci/pcie/ptm.c | 68 ++++++++++++++++++++++++------------------
>   include/linux/pci.h    |  2 +-
>   2 files changed, 40 insertions(+), 30 deletions(-)
> 

Tested-by: Avigail Dahan <avigailx.dahan@intel.com>
