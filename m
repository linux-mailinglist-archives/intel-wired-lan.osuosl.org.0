Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E5E97C083BD
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 Oct 2025 00:19:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F2EBF40CA4;
	Fri, 24 Oct 2025 22:19:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Zr8wnA3o2aPz; Fri, 24 Oct 2025 22:19:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 335E740CA5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761344390;
	bh=1XcYcWD6AwMDj23FDdeT6G58iroAsL0yq7ZNyN6+LuQ=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=0MlzPh4/GKzHm5GoY5SgOtMay6nL/2Arm1E0hVqgzMrLFAMTkh0Ewjd463wLV8EhB
	 uLg4+O9zqmgNrJMY5bintCLi28LfQxBKGeSS8U064WUHoIUcujj5gCSWUeGl+faIEM
	 FzVK+UfU2sqQYQk2MzworQ1bywgVNW0JJJY3+QfZFjcwYEsghfER0k6GpdLyoEOJvx
	 zvIipsGZwMXl97zrx90aFXv9pQ72nWgGE19dlQqEm341xQZ7lq5rwe5GgdMvad9biu
	 pP7qALamRMIcQOBX/YO6wHugye3/mBuM/WhQYVgoaCIBm7g5u9/m9Ys9ZIBenY2YZB
	 ApCdU/PLSLXRw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 335E740CA5;
	Fri, 24 Oct 2025 22:19:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 43267129
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Oct 2025 22:19:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 34D6E40C9E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Oct 2025 22:19:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BmYZ8m8N0Grv for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Oct 2025 22:19:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2F8EB40C9D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2F8EB40C9D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2F8EB40C9D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Oct 2025 22:19:46 +0000 (UTC)
X-CSE-ConnectionGUID: 0vo+KSZJSc6skxMNBayueA==
X-CSE-MsgGUID: x9iWdBhCQ+2RAjkecxCZVw==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="67362727"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="67362727"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 15:19:46 -0700
X-CSE-ConnectionGUID: uxsQr2gcQhe/bTIPjaR9sA==
X-CSE-MsgGUID: P+OwpKYaSB+/7fYfZMerBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,253,1754982000"; d="scan'208";a="184241430"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 15:19:46 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 24 Oct 2025 15:19:45 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 24 Oct 2025 15:19:45 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.69) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 24 Oct 2025 15:19:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=F4J4A0AWCW6YRdceGjWRjsjU/qKRikRO9jS9YgnqGuemScmSzIF0YUpwBSLg91NPOBtasiKtngBszI/zWssTKtwW9PU7DBd2JkoVfEzrA8+UZwXppytEuvp1zjsB3ARNlnuYPwfSyBvwxXLUtZ6IcJH/E7OhVicIe4bS2fxbwjx4RYNmJ1/NMygy/vRur5f2YG/1O9hvIIxnulyDqhEU5Ew7gNuHR8b7g7W6PI6piWurVj66xIrMCNgPmyCPMhPKbJZqi5IHOGSJUtA74BhTsdOsrmmpkmParb+BbebZjP8a4JB02zhzswVHCGzYB5ziyeZvhd7TXAzH4Vp7prWL3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1XcYcWD6AwMDj23FDdeT6G58iroAsL0yq7ZNyN6+LuQ=;
 b=hXIcXuVXlgqaOzAulnBZzmJMBB2j9f3prQA2+1FV4PcLOwOpXTLMlcUth2yNgTjZIzrpECkUlXdbWCS0g2j1AQr1G88uBo/ll5eOY1zf7Pie33SUVYTgSYBjG5wtg3z61pYUVvF+PPPwnhrNNuveHb3Ns6f0tYaaQzqurpsoQDtgRVhRAEJ/3XlGySEtNpUhl3IyQUAN5cGPTAMP3ncjoIVbSacTt39qTIvieyOBSzlMZ3JWYDRwOSL/DBvlyFIqcYpcmimbccNgIbsFqywAD2szEgm1dr8QEwAnKu08iDfbfBTE/dKvHGJ4Y8+SfoMyrAqm89jggkTszZyrvevoKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by SN7PR11MB7603.namprd11.prod.outlook.com (2603:10b6:806:32b::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.13; Fri, 24 Oct
 2025 22:19:38 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::24ab:bc69:995b:e21]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::24ab:bc69:995b:e21%6]) with mapi id 15.20.9253.011; Fri, 24 Oct 2025
 22:19:38 +0000
Message-ID: <2e02d47d-6b91-44dd-9646-bff185afd3bb@intel.com>
Date: Fri, 24 Oct 2025 15:19:35 -0700
User-Agent: Mozilla Thunderbird
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 <intel-wired-lan@lists.osuosl.org>, <jacob.e.keller@intel.com>,
 <kuba@kernel.org>
CC: Przemek Kitszel <przemyslaw.kitszel@intel.com>, Dan Nowlin
 <dan.nowlin@intel.com>, Qi Zhang <qi.z.zhang@intel.com>, Jedrzej Jagielski
 <jedrzej.jagielski@intel.com>, Simon Horman <horms@kernel.org>
References: <20251022131225.2304087-1-aleksandr.loktionov@intel.com>
 <20251022131225.2304087-6-aleksandr.loktionov@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20251022131225.2304087-6-aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0386.namprd04.prod.outlook.com
 (2603:10b6:303:81::31) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|SN7PR11MB7603:EE_
X-MS-Office365-Filtering-Correlation-Id: 4bd3e07f-d1ea-42b7-a6b9-08de134b6b6c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QWQ0NDNDbkFicUJ1Z2x3bDlTbkhwY2JTUEJHY3RSK2N4SW52aWgya003aWtP?=
 =?utf-8?B?WXNmY0JNNUh3MndYOGJKUmVDYVZ2VU52NUt0cjZhMExZR1dtdEgyTjJNQmRp?=
 =?utf-8?B?VmNGL3FCZGs4WGo2djdqc3JoZTBPaHI0Rm1pMFVFbUVlanFuRU9OUkFjc3Vr?=
 =?utf-8?B?UDdaem9uN0VyQ0g3NmFDRDZsam10Wnp4RmZNYTVwUnB5U1NTQWVTL0U3LzEv?=
 =?utf-8?B?bFpGZ0duejBrV3dEcHV3cUVhemlXZXZBcnBlME9Zb0w2Zm5lUnlWc1VFN1I4?=
 =?utf-8?B?RkM2MHFldTBVbVlnZEdmK3BlYmNJSi9JN21BTGJEVXMrSlZrc3VPdWRqVno3?=
 =?utf-8?B?a3dhVlZscVpXdnFxREhoV280Z0dTWG84TmNFMERiY1dpMXJQTTR1LzYySUZO?=
 =?utf-8?B?amhITFBONDJ3bUdRUTlxYWp1dHlTM1FpblIvb1JQbDNuWDlieVY4WENzMjRu?=
 =?utf-8?B?NTQ2eTBrLy9ZdUx2VnhaL09jYmFremN3VFVnMy9oZVZEeEtUM3ZWOUUvYXpD?=
 =?utf-8?B?UjVva3lBeERaSUNmN2pmTFJIbGcvVkQ5czdiTVpwWGwwd2U2TmF0VGlSdUtt?=
 =?utf-8?B?QWFJL0Q1TVZsNFd5ZXRIQVpheVIvY0xtRHhqMjZDSkJ0ZGZTaHcrQUJGcmJi?=
 =?utf-8?B?VC95WXFJbnhiKzREeS9MdjEzRUd2ekpRb0E2Wm1WWUs4bXF5cVZueXpJZ0Zm?=
 =?utf-8?B?bTd5NEFnc3lpRUZjWnNEeDhJS0FTalQvYVdxSWFueUdKMDZTUktIVG5mY2tu?=
 =?utf-8?B?S3J3TXRZMkhFM1phSUhZVnB3OUIzQkZsem5KR3Nvd1RUaDZBSUdWVk1JalZx?=
 =?utf-8?B?bVZaNUFiZC9KbkNnaVdIVC96OW9xV1hXa042VStaUkxkd21xQTZ0RzIwVWlT?=
 =?utf-8?B?ZGJOOFBTWm1aUDhybW01UFROMDh3QlVHMVEwWHdLbFlRV09obU1GbWVPZHUz?=
 =?utf-8?B?dUFBQmxmbzhxa1RPOTBWM0lJd2NGOFlFMktHVVdiZjBISkRJbCtmcWIyVFRH?=
 =?utf-8?B?a3RabFI5NVFqL1A0bmNkYmNITWVhb05tbE8yWVdIV3cxTnA2aUk1MU1PT3Zy?=
 =?utf-8?B?aVVNeHJuWEp1azFCTFpibzJFamVnbURLWVltZTlGcW5NOXRhcWNrV2x2Tmo5?=
 =?utf-8?B?andVM3VBSUpHeWdMbGpCeUhEWURZekVyWVM1ZFVuZ3pTWk1wQ3JRMU5YKzVQ?=
 =?utf-8?B?VGY1eUh6UndCRU4va09TbDdoODd3UncydzJZUS94dTROSmkzRkwyZU1sS2pN?=
 =?utf-8?B?RmxSdnBsTjNVYjdEVCtrL2ZTUFhWc2ZVQnlYMm1CT3BxalM0QnFCbmIrT1lu?=
 =?utf-8?B?eW1iN2Q1MmgrQnBnY0FaelRBT3hGbXVVVnhyUXdZVVlrK2J1WUdTbkZUR0lX?=
 =?utf-8?B?L3FuWCt1blcwalVLR2p2VFZ6NVF6N3dGSzczak5FN3J4U2ZhYWV1a3BZVDBC?=
 =?utf-8?B?LzJQb0crcE9KbkxIU0dWOWNkY0k5amt1TzA3SWw2QW1kajY1RXJsU1ZETVdi?=
 =?utf-8?B?ZlUrV0JHdlE3U2J4ZFFHbEJuNDdFV3phYURNV0c2aVVZM3grTEVIdzc3Rk5F?=
 =?utf-8?B?R0JwY0h4NjBON0JRQUx5S1ZId3dwZmszYWI0K2JsbVFCa25DNm5scUgwcVJm?=
 =?utf-8?B?UEFoeVhZY2oxekNVTEpXaTRaclIvMWl3Y3JGMzZMSXFZS0xaRWo4aUMwZFZQ?=
 =?utf-8?B?c0V6RlMxSFdmN0V5c2Fia1FJT1MzdWg2ckNkZkFxdmFPeTIzeGZWVnRteHVZ?=
 =?utf-8?B?R0t1MFZzbFZMaHFlYzU1V0ZWZW5UNWduMkRYV2h3TWtFVkdJbU5SWnBURW1N?=
 =?utf-8?B?ci9YYkxuYTJOdzUrcnM3enYzZTB2SllQUXZrWmdVSXE1VnRxQVNHNmVkeGVx?=
 =?utf-8?B?N3N3VU1ObmRRYUZBTFBiYlB3TTR3YmI1Tlk4NmNmRTRtOU5DNTVGNTdGZCti?=
 =?utf-8?B?YmZwdWZHY1RYWkRtRG5JVEhDN2hKckRRcktsZmx6aTBLK3kxTk01eVNtSmRO?=
 =?utf-8?B?NjRwbEErRmJBPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bmpHUTVBczlFK3JMWVRSQ3FnK1ZaUjNlZUpBY2luSEJ3ZXNPZDBkWFFWSVV1?=
 =?utf-8?B?ZDNIeVNXbFQ1VWVGKzVsakZOeHh0c0doK1pXakg3VUxnb0kyaFEwdG5HUkFx?=
 =?utf-8?B?eS9CUE1tMTE5VERNUDFYakxKaFlyNkh2S0xHQTFIVlJ1NnRPbm5IK2JEckx4?=
 =?utf-8?B?bkRETitSZXlyUnVhcld6dXZJNkh4dS9Vbkp2a0R4bk4weHRZRG5PeDJNUi9m?=
 =?utf-8?B?N0JtQ21rdzk2ZGRwWURHWGhPK0lKMGFjQTl6VnBOMHVkSHNsbTA3Sk9aUW5J?=
 =?utf-8?B?Wm5OdGM4VlBHUkYxa1NVN3FHemFzdlZyL1o3VEo2Y3VBdnlGYkZ0RlZsci96?=
 =?utf-8?B?Q1dBdkdOS2pMVXNyQStiMFJ0TExHUWhoMzZxbDRoa3hWUzNsUFBRWmF2ZFpl?=
 =?utf-8?B?dnkydVY1RFpFVC9vNjlieG1lOHh4U1ZCVnNqZlNHWHc4a3AwZE4wb0tNUEtX?=
 =?utf-8?B?b2hKcWlGZ0Zmb2N4d0JZcjVuVVQydWtvZFVqblpISS9neG0vMlNWNmVwNDMz?=
 =?utf-8?B?RjJjVDNBRjFJcyt0Y1pHb2NGekZxck9WVHNzQWw5NG5CUXVkSGw4emNaL21F?=
 =?utf-8?B?THdqbVJXaUpvWkxrbXlQRloxbUpsRFBXdWY2UmRtUmJKUjVtUE9WZ1E4ZmVu?=
 =?utf-8?B?NmJWK1IzTTlkTjEzVzN4ekRPUUpMQitXR1RDdU5DUkVqWnFvV0kxeWpQSFhU?=
 =?utf-8?B?V3hwNDNPaDAxRUhlUUVlTTdncW4wSkNKYVBwdHN3TmgwRWN3Nzk0WVc2czBk?=
 =?utf-8?B?WCt4djFaS0QrZHRiTk1kcFJlS3V5ck16VjRRQVJEbXgra09tOXdIaHRCQTVX?=
 =?utf-8?B?NCtacE9zbDJLWnlpblFCMnVzVDlxRTRMbTBRVDBiVnJJSEN4S3VITmJxWW5V?=
 =?utf-8?B?R3VWcGhvUDhtRWFaUGpmaVVubUdqVmlvN3hlalpSOHVIcDRURDZyNXQ0bSt4?=
 =?utf-8?B?MTJBN3dQbVdBdDdRWUpPMjkybkdiQjNiQlUvdXhsYUxHNk5iOGVVWUo1VGdR?=
 =?utf-8?B?QSt6cDNhWmZlWks1eDEyb3ZhRUVYMDRyZFdERThUcmVLaGhuUkZ0aFhDalRX?=
 =?utf-8?B?eVlDazNOR3VQNTdGYjZvcXBVUnlMVlZsZEI2RllUVlBsM05yZjNPN1ExYkF1?=
 =?utf-8?B?dS9YdUlTdGlaUlpXSG1JcE0veHBwaG1OKzQxcm1QRm85MmRYaVRBd1RZNHB3?=
 =?utf-8?B?aVBwOUdCN2RyT2dTSThYN0E3eE12WVlqbFl3UHUrdFlXWWNud3htSnl6VHcr?=
 =?utf-8?B?ZUFSM3h6Ry9aV3NVWGI3QlNrekhISlJNOHpvK29mZGY3RHdxTmR2bjNINk1t?=
 =?utf-8?B?YTM1RUx1OEdLZ2xNcCtSV3Y2K2o4dFNaaDg2NVBYeGExeWVVK0xMU2lucGV5?=
 =?utf-8?B?Ujd2RlUwM1l3c3pvQll5SHNnVHdiaVJBZlliOG12bTcvYmJQSXdlK0VEODZy?=
 =?utf-8?B?dmVrMDg4Rjh6S1BiWGpVWVVGZk1tR2xyZktRdkd1MkhjeUY2YjlEbEx6THJw?=
 =?utf-8?B?NHZlY21Jbm9WSlpzV0FrbytmZ2hsbWdSTGlmYlpTYWN1MmltdDlrUTVmekcw?=
 =?utf-8?B?WExEWGpWanE5cGNleXRYSkZBU2JFL3VZV2lEeUtSK1oyd0U1TndQeDJkSlFI?=
 =?utf-8?B?OGNvbldwelVTVGZvUHNJTmtzTGZUN1UyVnErVEZYMHovNzQ0WHZqUGsyM2VC?=
 =?utf-8?B?NTBtNDBUNGllS05qK2lLVFJZU0g2NjlRckYrT0ErdzBOQ2xhczdUbnlKcHBO?=
 =?utf-8?B?V0VsTEkwWWJxYTE3bEt4SlBzRVFuOStJNTB2MUJqbU9RZEp5R2RnL0t4Y2tJ?=
 =?utf-8?B?RVMyUzlqRUlHMGkwMXVLTW56My9CWlJNY3QwYnVOenpvbVZLK0EvVFhTNGVY?=
 =?utf-8?B?V1g5VlJPeVhmcjlwWjMwOWV6Wllxc1RIK0JjS0Vaak0yeUlaMkVVUGdvbXBK?=
 =?utf-8?B?bXpheGxwTkZ2ZDZtSklsamZncElmdWF4U1lzS0J5N3B4UFlWWVQ2amV3Ukx6?=
 =?utf-8?B?YWNBZ0FHWTNIcXNVaVVnTk9ZUEM3OWF0Tzl2aHMremNVTFlFWkFtK2dXUmw2?=
 =?utf-8?B?bURPMGxCUzNlNFdRR0VMVzdwZStzT2RycmZMNUNJdDgrcW0xeXd6NkJtYWJo?=
 =?utf-8?B?MnhyQ2p5OFI2WHhjdjd0REhYSnJtVlY2RUJ4d2YzaVVmdE1CWDRSNk5JQ0F2?=
 =?utf-8?B?T1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4bd3e07f-d1ea-42b7-a6b9-08de134b6b6c
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Oct 2025 22:19:38.0584 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jF11V26N84Kgw7qJwrXsUP9y6CaWwgFTSyWtDHAENPHFDor0hb6VuPsuLJjONz2HEY/u9AHlsPZTFZ1tH2AmqVRbjVHMeM2v40EBT+GD5J4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7603
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761344387; x=1792880387;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QyUKsFJyPTz6pz7KwOPPtTkM4PbrB6ZoRMDadmDrouE=;
 b=Zok5E1U4fcHV8T3orEJPXeCPTShiQfa/AjBB+Mc0jY7PWOpmOSFWenGp
 cHyINHv3C7GrNQM9SBWuhNgmsO7k/rbdRp0MZW42ZUsqLy551p+jxndNy
 FReLtKfCKaXVyv4Na6POrqdBacRZQrZZe7SHwadca4luiZoqVtKx8k4EP
 th7shHfwPB/lZ/gK2oPXg8JHN/NTCvaOotyKLHDBcl1uJ27qIW4PDiiHG
 L21wCXpCMZli9tSF/iIAdy+OAnr+sAqt/jl/eAyjPte9NbhaAuAN71Qjb
 7ZMRZViMokh9Ltl+Dtl7yUBuP81mMpIMRATx7Rw2MQLnDYoVFoxA9DbvI
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Zok5E1U4
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v6 5/6] ice: Extend PTYPE
 bitmap coverage for GTP encapsulated flows
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



On 10/22/2025 6:12 AM, Aleksandr Loktionov wrote:
> From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> 
> Consolidate updates to the Protocol Type (PTYPE) bitmap definitions
> across multiple flow types in the Intel ICE driver to support GTP
> (GPRS Tunneling Protocol) encapsulated traffic.
> 
> Enable improved Receive Side Scaling (RSS) configuration for both user
> and control plane GTP flows.
> 
> Cover a wide range of protocol and encapsulation scenarios, including:
>   - MAC OFOS and IL
>   - IPv4 and IPv6 (OFOS, IL, ALL, no-L4)
>   - TCP, SCTP, ICMP
>   - GRE OF
>   - GTPC (control plane)
> 
> Expand the PTYPE bitmap entries to improve classification and
> distribution of GTP traffic across multiple queues, enhancing
> performance and scalability in mobile network environments.
> 
> --
>   ice_flow.c |   54 +++++++++++++++++++++++++++---------------------------
>   1 file changed, 26 insertions(+), 26 deletions(-)

As was previously pointed out [1], these should be removed

> 
> Co-developed-by: Dan Nowlin <dan.nowlin@intel.com>
> Signed-off-by: Dan Nowlin <dan.nowlin@intel.com>
> Co-developed-by: Qi Zhang <qi.z.zhang@intel.com>
> Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> Co-developed-by: Jie Wang <jie1x.wang@intel.com>
> Signed-off-by: Jie Wang <jie1x.wang@intel.com>
> Co-developed-by: Junfeng Guo <junfeng.guo@intel.com>
> Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_flow.c | 52 +++++++++++------------
>   1 file changed, 26 insertions(+), 26 deletions(-)
> 

[1] https://lore.kernel.org/netdev/aPDjUeXzS1lA2owf@horms.kernel.org/
