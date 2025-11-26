Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E72AAC8846A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Nov 2025 07:30:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 58C4581B6D;
	Wed, 26 Nov 2025 06:30:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Sjdav-v7kLZ9; Wed, 26 Nov 2025 06:30:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2934281D65
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764138632;
	bh=wNssS7ycJGtsmy6wp+5ec5CKfrx2pefIZnx3AWfY/qI=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=itESxpNk8ViXu5H4EsSUkMShJbBfnaUKukuZJ633s6/3mu70s63bJT/Kw4jjD8nK4
	 pNOCeIpSR2OFseUhPwcXHIPtj+wNYpf8L7zpX4sMNMm8JlfPVBPUODYjVBHTSCxDKG
	 jlzRUXgFUZtxyUrJUqBXQi4EdiiIb9hYRsKia0ZUoS/Ew6DEf8Py1w820qjqTOFpiJ
	 gpqOlyCl16McyOlK+t3Y3T/TaWOTa0VBMqL7l4NiUAo9fNN7DQ++a46a83v+lB8Zt3
	 pl7DRczZMikdiaW9dV2cyGeSyCsflhKMDAbmsKFrNmLSm54lymNH2jSXuiVywCOwd6
	 xX8oojnw4ERpA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2934281D65;
	Wed, 26 Nov 2025 06:30:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 3B445359
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Nov 2025 06:30:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 353F9402E7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Nov 2025 06:30:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ltluOrj52jQN for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Nov 2025 06:30:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5A50F4006A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5A50F4006A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5A50F4006A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Nov 2025 06:30:27 +0000 (UTC)
X-CSE-ConnectionGUID: ZHww0e7TQpqSzGV1Q7FJKg==
X-CSE-MsgGUID: ahhK992kSL25+nthwuISRg==
X-IronPort-AV: E=McAfee;i="6800,10657,11624"; a="66114188"
X-IronPort-AV: E=Sophos;i="6.20,227,1758610800"; d="scan'208";a="66114188"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 22:30:27 -0800
X-CSE-ConnectionGUID: LYh6XJyFStyYGwe39atb0A==
X-CSE-MsgGUID: 0tCpqzxXTHSgxkOO9krJcA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,227,1758610800"; d="scan'208";a="223822741"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 22:30:26 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 25 Nov 2025 22:30:25 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 25 Nov 2025 22:30:25 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.29) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 25 Nov 2025 22:30:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=f24EWCkcsYjaipZ7nzirTWCONSw6/u9DT9VgIzZaC0VyoSxDBQtkB1fNMIp2+2/hbp9ScBrmJwL+BqS04V0BWEFbNEumIkvpUsmODjksjTpluor7VRpAI3iWbAgP3bQ8E7aVLOGVfPah5+dvjhNEVZWQuvnjaW9PARMwGJrvolFgeqSRZ+MQ3q/53cmAG9h4tlTBEICod0Ufest4pteSVaMs0yjR6fZD9hBiDsBDRMfEfZA/bG9HAtDe90wQ7EaSvMaeSEEn6Vj6rIE7HXdYIS3plajvRqQwD1QiCBCeGhp3AD4o/pQVh2JxlsmCYJ7S1vsFjXhPtALJuVvNBW3vaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wNssS7ycJGtsmy6wp+5ec5CKfrx2pefIZnx3AWfY/qI=;
 b=Ym7dZl9sCgaJlkGS8HVxQaNtk6yS3GG2JKQow5CrAMgajPDQ2D12gJusMLMr6UeS4TR57o4TMFU+og/RGpH9jDBDbdZ0A6Rk69rN/WKuDMylfKl2uXdVcmt0iasLwWbhZlg/DuA4uw3Qq/EuUgpHhUt6UaEROckvcMAPlrdA5zPnfHkzcakuz7+o+hsa0txpdN4OAalSR1p2nMNzob1TAbODmWgGphw5FiY5ZmVYwlC2unvqLD1LG/JQdjukHdF3liUQjQPqQe0+GJuR3lPa1uXBXV0EFVqSF1Fc8svjWJQP3cQ8ATuJb3wobuBj/g1jdM3GDwJVRAjZDljD5wBPBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by IA3PR11MB9423.namprd11.prod.outlook.com (2603:10b6:208:582::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.17; Wed, 26 Nov
 2025 06:30:22 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%6]) with mapi id 15.20.9343.016; Wed, 26 Nov 2025
 06:30:22 +0000
Message-ID: <abf25d3d-30af-479f-9342-9955ec23d92f@intel.com>
Date: Wed, 26 Nov 2025 07:30:18 +0100
User-Agent: Mozilla Thunderbird
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, Aleksandr Loktionov <aleksandr.loktionov@intel.com>
CC: Andrew Lunn <andrew+netdev@lunn.ch>, <linux-kernel@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
References: <20251124174239.941037-1-andriy.shevchenko@linux.intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20251124174239.941037-1-andriy.shevchenko@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DUZPR01CA0111.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4bb::12) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|IA3PR11MB9423:EE_
X-MS-Office365-Filtering-Correlation-Id: 4821eb92-7017-4fd9-59ca-08de2cb5470a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZTFSc1RmY1pMTWNJNUdGTGMzdkMwRkRsa2FzMlpSTmJ0RjlEOWFhNk55dmZs?=
 =?utf-8?B?U2dkakJDV0s3ZmpkZ3l4TGlGZElaYnZhN0hXRDdnV2lUWVRITWwyU004V09N?=
 =?utf-8?B?SW1FdXRVQXRoQyt1SW80UkxsZ1U0OVFIUDhYUWFnQnNHTFUvMFJodUQwd2tL?=
 =?utf-8?B?WDVVSDI2Y09FdGl1ZldWQ3MrYnBsSXFvWGQrUmlPZ2loYUNUUHd5WlMydmd6?=
 =?utf-8?B?TFJNM2x1TnJ5Qk9qYmxmbkdHaE1nYjBCVXBnWkxVZGYzMDNNNDZFcGw5L2ZU?=
 =?utf-8?B?WDRyKzg3UmdpaFpxeUNBUjF6WWlwSTBoRy9teXYxSEYvaERuMzQxZVhianhz?=
 =?utf-8?B?dnpOeWJ4YzBNMEN6TDUyWElhM1FBak5hZE5WUXp5ZGdZU3dmaTdrMFFWbWU2?=
 =?utf-8?B?OEVuL2Z6MWg2V2VaM0JiN2dXMkVyOEo3TkRRMHFRVXVCNEQxdTBLN09BWXdm?=
 =?utf-8?B?L1hPc3pndVpObmtOMGt4eC96clA1clBtNXVkcXYwOXk3b3d6Rnk5dHZRRHR1?=
 =?utf-8?B?ZUIyNFFvTUl3UkJUMDhhZVdMMnE4VFVIVVpKa24vM0VIQWc4STJwVklNc2Vz?=
 =?utf-8?B?RGhOUDZoYjYvRDVxdTd1VktrYTgycnRTeG80bG9hYTdjYWlpT0llVVlnY1dM?=
 =?utf-8?B?LzR5UjVvS2FBK0N3K3FhSXp5MHNGRWc5NGlwenM5emhnbFRpZUVxTEZhNUhR?=
 =?utf-8?B?Z3lzUWhOLytFOWpPYktwNnNJWWpWSG5KRnhIbisxZENRazhiY0x1OGQ5SFBD?=
 =?utf-8?B?UmdvdWVIY0VRUjR6WEpHM0NDd0VGNDh0eTZqeWs2Z1BybENSUks4N0hNcVFu?=
 =?utf-8?B?R1UzMkFMeDVqNmp2OWduZ2lxQzhmRUx3NnNKdG5YZFRUTW5EUlRZenI3Vitx?=
 =?utf-8?B?L2k5K3BrSGpiNUhsQ3FJMzR1enlzZWdJdjlpdWprOVQ3aS9hWjhLNGdPM0do?=
 =?utf-8?B?enZjaUpCMkdQWVEySkZ0c3l5NUc2UFBNeWxaY1pnWExHN2dtMTBUT1lxZktP?=
 =?utf-8?B?WkpBa1ZldE5GVmN1dHdRM2ZuUkszUzRYeGM2cW4waElXZ0w3YStVRGVHZ3lQ?=
 =?utf-8?B?dkl1NktYcGc0VW5pOThNZlpOUDlVRDBpdndpbGRpaHVzYXlpNGFhMW9rLy9E?=
 =?utf-8?B?YkM2dTNpMXowSkY4b1pjR3pLYW5YVW03cGxxYlEwRTJvM3lFemFJOW1vZlRi?=
 =?utf-8?B?YUpENms3eUFCNjRTd3pPanIrOVoyMjRiUnN0aHAwUHFVVlIwaFZJSmQyUi9q?=
 =?utf-8?B?emFXV010ZWR5TU1FUzhGL2gzdmZJVWViSjJsNEdrN1RmVmZ1MjM2MWJjVEor?=
 =?utf-8?B?SWN1RzhCYk8yQTVSSll3Y3BxMURMWVFzbFJsK2tueGtGVFJYZjIraFU4c21R?=
 =?utf-8?B?NUd5Y1JaZkg1aTVRYk5oTWgvQ2VTL3FubzBZMkRZZlpUazhzencyWEJVODRF?=
 =?utf-8?B?NDR1NmdRenc2MGJVVmhLcW45emtBQ0dmTGhBaFdiVllYaGZLS3dkWjcvSjVx?=
 =?utf-8?B?cndoRzIwL2pSTkVaeHNNdWtiZFFLL3REeUtGQVZBRGwzMDZzN2srREVaU25Z?=
 =?utf-8?B?c1J3NVFpRzBtb0srSFpVMSthemtRc3lkMkxIVmVYM2dUY1F6M0xZVHBMWm9J?=
 =?utf-8?B?R2oyTlExbTZoRFhGYThXemNsSVhpc3BzZlRENnRlQmdFYjZZTzFNSDdpUE8x?=
 =?utf-8?B?MU1ZZE9zc09BY2pXdGQwbUNJbC9jWFUrM3NJaEZQbUgvSmd0ZzB5Wit6ZTNB?=
 =?utf-8?B?SThuZjJOUldtTjFBbjZ0VS80c0lsaW0rUjAwNGNIclRpVFlaM2NPRXhEUGky?=
 =?utf-8?B?ckpibGpmSWJvR0lmaU9OT3U3VDlRWnJHRjB6ZmRnRVptOFdKOWtkT3RXWm1H?=
 =?utf-8?B?Mkd3WFgwNStLNUsxQjdnS0lSNVRYaEx5U2oxOG0vNE5HUkJXTkdWWWdkcnJq?=
 =?utf-8?Q?5Clv3ZPUBSpox/0XTwo71pb+ulyGWeKE?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c3B5aVBNYnlJRlYxWEY4dTdlc0Q2WXY5YmJtUjRiVjF4SWsreVY5MzFvcTR0?=
 =?utf-8?B?aHBISURid2RraitPZ2dlb0RHd1VVc1pqT0tXaUNmQXVrcUdvNVcrRVlQYmw5?=
 =?utf-8?B?S3plL0xLQXQ1aFZOUVpFendSOG10UzJ0aWpidFA3ZjBqbCt1TmhkbS9tR1pC?=
 =?utf-8?B?azREWVNPWDNEeFh2c0d4YVVuRzlmTTlwYTlDV2FIbXppQUU2b2QxVTZnVzFD?=
 =?utf-8?B?M0IwT2pTc0NWUzYrL0JzVmdLUytKelNhUUZJN09WSnR2S0pVaW96MHpyUnY0?=
 =?utf-8?B?TWhjUEFETjJmaW9XbFJ3UCttWVBIQ3lPeVkvbjdrc3NxM3Vzc0p6dU1wRWp0?=
 =?utf-8?B?THNjTWNPcG9Sb3Z5aTBkTTlBR2RIKzJ1UmdqdlQzVW5LQmVOVktTREFQVzd2?=
 =?utf-8?B?UGNad0FzQ3hnR2I4S1ZHMHEzQjcvdzFObjVSQVRzWWFTSnJqeFBkKzVxVzNt?=
 =?utf-8?B?ZDhKNnhvdVh6dWY0YXVkT3dtei9qdWlNeVJRRTZhTlJWTEJIaE85ejNudFM1?=
 =?utf-8?B?WnFURytoanI3dExZT3ZDWnRjWngvS2kza2xIelZtOUkzTkEzaFJCM2JpK3d0?=
 =?utf-8?B?ei9pRzd1K3ZBSVkrNURWQlY3a2hIV0pBWFQzekhJRzVZZ3pYNjNqeFBzT2FZ?=
 =?utf-8?B?RGFwZVJWSjFIczlydnB5WkFhMHJ0T3dBWE55a0xIR3Q2a1ZaL2RFNzgwbC83?=
 =?utf-8?B?SHgrMEh1aDk3ZGFBV3RUMzdiNVcwY0dyZGE3T2hod2kza2ZIQWR0V3Foby9n?=
 =?utf-8?B?WURteXQ2TUZjYUQwQ3g0THU5bm5oRU9YOHVOc2RkOW44YjAreFFCSjhEZFNS?=
 =?utf-8?B?a3FwYmI1dGdFTk1GMXZRSXZ1ZVFkOGNEZzB6RHNadU0rQXpENUdwOUV6S21u?=
 =?utf-8?B?bnVDbW9iOG9KditqUmVtcWczd0hLd21mVkVCMTF2ZGhxR1RjSnNhU2VyZzZt?=
 =?utf-8?B?LzB1SHhXVGQyd2IzUGN3NGVyTUpPVy9hRU5BbnJGVVl2V1MwNGt1NHBqWlk5?=
 =?utf-8?B?ZHVUNXdKQVlETjZHbHU2VXpZbm9BVURpOXRPMnVyUWh5VnVvTWlrOEgrVnpR?=
 =?utf-8?B?bEtFOE5qT0JReGdYZ244NWJMMDZjTzJmd1lwRXNldEVuck9xNFhQSXBxQk1m?=
 =?utf-8?B?TlNPWFRvYmEyNExhL1VMN2k3OHlPSlJOMWd4WUczcGNPU2FPOVZ0YUdiandm?=
 =?utf-8?B?QXdhb0pZT2QvaXNVYkp6aU1MdUszaHBVYnNpK2xqRHRxK3FZQXg5NnowVE5j?=
 =?utf-8?B?YS9SOWlVSEIrNU5DdS9CRStkbm93TmhHL2tSeENURitpMDMvRlZoUXpJeGli?=
 =?utf-8?B?Vm1BK0NFeE81NjJmdWVqMG9uTk9iNVM5SmRLNm53TmkyZXFlMURMMG5UbWpF?=
 =?utf-8?B?emZUZVMzby9kNlBjS25WdlJSUWh0T0ROWHZnOS9qcGFvMGlPM3dCN09UcUgv?=
 =?utf-8?B?aU5VN3BHalUyU3hqUy85aVBFWkQrbVNLS2lHSEN2OGNsVDBaMkR6YWhNTzR6?=
 =?utf-8?B?VWlMTnh6RExOYmlFMTlEcXVGUzdWZXN3UzNiVHoxTHhiOUlqRUZabVVOVWpt?=
 =?utf-8?B?L1dVdlF0bWNpdWFiMWNzVldEdDdKZzgyRjYzYm9QK2ZlLzVSN2F2eEt4em9y?=
 =?utf-8?B?UGN2c0tZT25pWk5HSGs3N0RjZXJQcmdLcGFWNndPczh2QVlIQnpCOFRJUzFz?=
 =?utf-8?B?YW1hVjlRY2R2QmkvMVZESjhkZEJzSmhRTTRDK3hpRmNHcXZ0cC9hMXBwYTMz?=
 =?utf-8?B?a0hQcDZRdnZRZnhiNHg5V3Z5SGcyNmcvRGN5bk1WK1VSOHB0NVRTQkd4NmlI?=
 =?utf-8?B?dzRzUjFZT0I0ME1lazVKWXdrUXdRSGlNRmd2Wnp6Zm5kbEVPTzBkMTQ1eVZI?=
 =?utf-8?B?WUxxZ1JYalBJc3hMdHhpTW02cnJUZ1E0c0JLYzhocUc0cUJ4c0xrVzNpczRH?=
 =?utf-8?B?M1pCeWtwWGkvcG0xQ0NrSWhBcmlRNEdFWTB6clVKVHc4cCtsOTRaRUUrTmhy?=
 =?utf-8?B?d2luMGQreWc4cURCaEd4dkJ5TmRsZFRHVUpFOWZBOTlHcExOZFEwY3R6Yk5H?=
 =?utf-8?B?ZjZRS29rQU5jaGpLbTJSV3VQblF4VXB2WEY1djNpZFVWRDlzRkFTeU40QzBk?=
 =?utf-8?B?Mkh4VHZPcmVLM25md0VPeFkzOGF0L3VCNEpnS1oxaWNKeTB1VGVBR1dvTnVS?=
 =?utf-8?Q?UUYvBgL9hbh1R1/J+FPq0oM=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4821eb92-7017-4fd9-59ca-08de2cb5470a
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Nov 2025 06:30:22.7542 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: e8fd2dPKQlAtxBIlx4zLpBJQRxYnHPWjf7OSlqLy5Hdo12nEb3wH99lHNsf3XxRZzpbyy7se57ASecSAhM3KVvLDjKpax7VG4K7AsF9x9z4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9423
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764138629; x=1795674629;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HKpFVmHUAUPdQB50S+i54YN4hxhkQAjNh8/U4N6SmcA=;
 b=IurNN7/7wzmfJP7DsMMQA2vRkGSq+7a9Pyvyy13/THxpWdybsXFPsnxQ
 2wyMdgDlx791wuSbImlDrM9bJT2jin6FxNXnYFwH+hHr1lAINu9mQuUMN
 /0c0gR9bznAkyEH+wMDS/vDZ8ixdlmx65IL83k46ES2S4//NzVjP0p+yR
 1XZcNBNUHOSxVSaJGz/drF6rKKFxZ8sgnR/xLMgA5Xbk/Nxf0dcQqqXnD
 1y13aReHqVbF0EgHy5JvE5sh8EpRHOqcrHPmVZlxw/znlT/B68ix9jFzs
 XQhz20AgGkruzctkDallUUrTeH0IDKMipnVoJ3vFJ2E6pTf+RR5w1CbUc
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=IurNN7/7
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1 1/1] idpf: Fix kernel-doc
 descriptions to avoid warnings
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

On 11/24/25 18:42, Andy Shevchenko wrote:
> In many functions the Return section is missing. Fix kernel-doc
> descriptions to address that and other warnings.
> 
> Before the change:
> 
> $ scripts/kernel-doc -none -Wreturn drivers/net/ethernet/intel/idpf/idpf_txrx.c 2>&1 | wc -l
> 85
> 
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> ---
>   drivers/net/ethernet/intel/idpf/idpf_txrx.c | 96 +++++++++++++--------
>   1 file changed, 59 insertions(+), 37 deletions(-)

this is small change and leaves the driver good for long future to come
I think it is net-positive in terms of minor annoyances for rebase or 
backports, so:
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

side note:
Alex did analogous work for the ice driver, and I stopped him going
public, as it was counted in thousands lines changes for little benefit

usual rant about kdoc warnings:
agghr!!

> 
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> index 828f7c444d30..28eb34c35d57 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> @@ -19,6 +19,8 @@ LIBETH_SQE_CHECK_PRIV(u32);
>    * Make sure we don't exceed maximum scatter gather buffers for a single
>    * packet.
>    * TSO case has been handled earlier from idpf_features_check().
> + *
> + * Return: %true if skb exceeds max descriptors per packet, %false otherwise.
>    */
>   static bool idpf_chk_linearize(const struct sk_buff *skb,
>   			       unsigned int max_bufs,
> @@ -172,7 +174,7 @@ static void idpf_tx_desc_rel_all(struct idpf_vport *vport)
>    * idpf_tx_buf_alloc_all - Allocate memory for all buffer resources
>    * @tx_q: queue for which the buffers are allocated
>    *
> - * Returns 0 on success, negative on failure
> + * Return: 0 on success, negative on failure
>    */
>   static int idpf_tx_buf_alloc_all(struct idpf_tx_queue *tx_q)
>   {
> @@ -196,7 +198,7 @@ static int idpf_tx_buf_alloc_all(struct idpf_tx_queue *tx_q)
>    * @vport: vport to allocate resources for
>    * @tx_q: the tx ring to set up
>    *
> - * Returns 0 on success, negative on failure
> + * Return: 0 on success, negative on failure
>    */
>   static int idpf_tx_desc_alloc(const struct idpf_vport *vport,
>   			      struct idpf_tx_queue *tx_q)
> @@ -297,7 +299,7 @@ static int idpf_compl_desc_alloc(const struct idpf_vport *vport,
>    * idpf_tx_desc_alloc_all - allocate all queues Tx resources
>    * @vport: virtual port private structure
>    *
> - * Returns 0 on success, negative on failure
> + * Return: 0 on success, negative on failure
>    */
>   static int idpf_tx_desc_alloc_all(struct idpf_vport *vport)
>   {
> @@ -548,7 +550,7 @@ static void idpf_rx_buf_hw_update(struct idpf_buf_queue *bufq, u32 val)
>    * idpf_rx_hdr_buf_alloc_all - Allocate memory for header buffers
>    * @bufq: ring to use
>    *
> - * Returns 0 on success, negative on failure.
> + * Return: 0 on success, negative on failure.
>    */
>   static int idpf_rx_hdr_buf_alloc_all(struct idpf_buf_queue *bufq)
>   {
> @@ -600,7 +602,7 @@ static void idpf_post_buf_refill(struct idpf_sw_queue *refillq, u16 buf_id)
>    * @bufq: buffer queue to post to
>    * @buf_id: buffer id to post
>    *
> - * Returns false if buffer could not be allocated, true otherwise.
> + * Return: %false if buffer could not be allocated, %true otherwise.
>    */
>   static bool idpf_rx_post_buf_desc(struct idpf_buf_queue *bufq, u16 buf_id)
>   {
> @@ -649,7 +651,7 @@ static bool idpf_rx_post_buf_desc(struct idpf_buf_queue *bufq, u16 buf_id)
>    * @bufq: buffer queue to post working set to
>    * @working_set: number of buffers to put in working set
>    *
> - * Returns true if @working_set bufs were posted successfully, false otherwise.
> + * Return: %true if @working_set bufs were posted successfully, %false otherwise.
>    */
>   static bool idpf_rx_post_init_bufs(struct idpf_buf_queue *bufq,
>   				   u16 working_set)
> @@ -717,7 +719,7 @@ static int idpf_rx_bufs_init_singleq(struct idpf_rx_queue *rxq)
>    * idpf_rx_buf_alloc_all - Allocate memory for all buffer resources
>    * @rxbufq: queue for which the buffers are allocated
>    *
> - * Returns 0 on success, negative on failure
> + * Return: 0 on success, negative on failure
>    */
>   static int idpf_rx_buf_alloc_all(struct idpf_buf_queue *rxbufq)
>   {
> @@ -745,7 +747,7 @@ static int idpf_rx_buf_alloc_all(struct idpf_buf_queue *rxbufq)
>    * @bufq: buffer queue to create page pool for
>    * @type: type of Rx buffers to allocate
>    *
> - * Returns 0 on success, negative on failure
> + * Return: 0 on success, negative on failure
>    */
>   static int idpf_rx_bufs_init(struct idpf_buf_queue *bufq,
>   			     enum libeth_fqe_type type)
> @@ -779,7 +781,7 @@ static int idpf_rx_bufs_init(struct idpf_buf_queue *bufq,
>    * idpf_rx_bufs_init_all - Initialize all RX bufs
>    * @vport: virtual port struct
>    *
> - * Returns 0 on success, negative on failure
> + * Return: 0 on success, negative on failure
>    */
>   int idpf_rx_bufs_init_all(struct idpf_vport *vport)
>   {
> @@ -834,7 +836,7 @@ int idpf_rx_bufs_init_all(struct idpf_vport *vport)
>    * @vport: vport to allocate resources for
>    * @rxq: Rx queue for which the resources are setup
>    *
> - * Returns 0 on success, negative on failure
> + * Return: 0 on success, negative on failure
>    */
>   static int idpf_rx_desc_alloc(const struct idpf_vport *vport,
>   			      struct idpf_rx_queue *rxq)
> @@ -896,7 +898,7 @@ static int idpf_bufq_desc_alloc(const struct idpf_vport *vport,
>    * idpf_rx_desc_alloc_all - allocate all RX queues resources
>    * @vport: virtual port structure
>    *
> - * Returns 0 on success, negative on failure
> + * Return: 0 on success, negative on failure
>    */
>   static int idpf_rx_desc_alloc_all(struct idpf_vport *vport)
>   {
> @@ -1424,7 +1426,7 @@ void idpf_vport_queues_rel(struct idpf_vport *vport)
>    * dereference the queue from queue groups.  This allows us to quickly pull a
>    * txq based on a queue index.
>    *
> - * Returns 0 on success, negative on failure
> + * Return: 0 on success, negative on failure
>    */
>   static int idpf_vport_init_fast_path_txqs(struct idpf_vport *vport)
>   {
> @@ -1557,7 +1559,7 @@ void idpf_vport_calc_num_q_desc(struct idpf_vport *vport)
>    * @vport_msg: message to fill with data
>    * @max_q: vport max queue info
>    *
> - * Return 0 on success, error value on failure.
> + * Return: 0 on success, error value on failure.
>    */
>   int idpf_vport_calc_total_qs(struct idpf_adapter *adapter, u16 vport_idx,
>   			     struct virtchnl2_create_vport *vport_msg,
> @@ -1692,7 +1694,7 @@ static void idpf_rxq_set_descids(const struct idpf_vport *vport,
>    * @vport: vport to allocate txq groups for
>    * @num_txq: number of txqs to allocate for each group
>    *
> - * Returns 0 on success, negative on failure
> + * Return: 0 on success, negative on failure
>    */
>   static int idpf_txq_group_alloc(struct idpf_vport *vport, u16 num_txq)
>   {
> @@ -1784,7 +1786,7 @@ static int idpf_txq_group_alloc(struct idpf_vport *vport, u16 num_txq)
>    * @vport: vport to allocate rxq groups for
>    * @num_rxq: number of rxqs to allocate for each group
>    *
> - * Returns 0 on success, negative on failure
> + * Return: 0 on success, negative on failure
>    */
>   static int idpf_rxq_group_alloc(struct idpf_vport *vport, u16 num_rxq)
>   {
> @@ -1913,7 +1915,7 @@ static int idpf_rxq_group_alloc(struct idpf_vport *vport, u16 num_rxq)
>    * idpf_vport_queue_grp_alloc_all - Allocate all queue groups/resources
>    * @vport: vport with qgrps to allocate
>    *
> - * Returns 0 on success, negative on failure
> + * Return: 0 on success, negative on failure
>    */
>   static int idpf_vport_queue_grp_alloc_all(struct idpf_vport *vport)
>   {
> @@ -1942,8 +1944,9 @@ static int idpf_vport_queue_grp_alloc_all(struct idpf_vport *vport)
>    * idpf_vport_queues_alloc - Allocate memory for all queues
>    * @vport: virtual port
>    *
> - * Allocate memory for queues associated with a vport.  Returns 0 on success,
> - * negative on failure.
> + * Allocate memory for queues associated with a vport.
> + *
> + * Return: 0 on success, negative on failure.
>    */
>   int idpf_vport_queues_alloc(struct idpf_vport *vport)
>   {
> @@ -2170,7 +2173,7 @@ static void idpf_tx_handle_rs_completion(struct idpf_tx_queue *txq,
>    * @budget: Used to determine if we are in netpoll
>    * @cleaned: returns number of packets cleaned
>    *
> - * Returns true if there's any budget left (e.g. the clean is finished)
> + * Return: %true if there's any budget left (e.g. the clean is finished)
>    */
>   static bool idpf_tx_clean_complq(struct idpf_compl_queue *complq, int budget,
>   				 int *cleaned)
> @@ -2396,7 +2399,7 @@ void idpf_tx_splitq_build_flow_desc(union idpf_tx_flex_desc *desc,
>   }
>   
>   /**
> - * idpf_tx_splitq_has_room - check if enough Tx splitq resources are available
> + * idpf_txq_has_room - check if enough Tx splitq resources are available
>    * @tx_q: the queue to be checked
>    * @descs_needed: number of descriptors required for this packet
>    * @bufs_needed: number of Tx buffers required for this packet
> @@ -2527,6 +2530,8 @@ unsigned int idpf_tx_res_count_required(struct idpf_tx_queue *txq,
>    * idpf_tx_splitq_bump_ntu - adjust NTU and generation
>    * @txq: the tx ring to wrap
>    * @ntu: ring index to bump
> + *
> + * Return: the next ring index hopping to 0 when wraps around
>    */
>   static unsigned int idpf_tx_splitq_bump_ntu(struct idpf_tx_queue *txq, u16 ntu)
>   {
> @@ -2795,7 +2800,7 @@ static void idpf_tx_splitq_map(struct idpf_tx_queue *tx_q,
>    * @skb: pointer to skb
>    * @off: pointer to struct that holds offload parameters
>    *
> - * Returns error (negative) if TSO was requested but cannot be applied to the
> + * Return: error (negative) if TSO was requested but cannot be applied to the
>    * given skb, 0 if TSO does not apply to the given skb, or 1 otherwise.
>    */
>   int idpf_tso(struct sk_buff *skb, struct idpf_tx_offload_params *off)
> @@ -2873,6 +2878,8 @@ int idpf_tso(struct sk_buff *skb, struct idpf_tx_offload_params *off)
>    *
>    * Since the TX buffer rings mimics the descriptor ring, update the tx buffer
>    * ring entry to reflect that this index is a context descriptor
> + *
> + * Return: pointer to the next descriptor
>    */
>   static union idpf_flex_tx_ctx_desc *
>   idpf_tx_splitq_get_ctx_desc(struct idpf_tx_queue *txq)
> @@ -2891,6 +2898,8 @@ idpf_tx_splitq_get_ctx_desc(struct idpf_tx_queue *txq)
>    * idpf_tx_drop_skb - free the SKB and bump tail if necessary
>    * @tx_q: queue to send buffer on
>    * @skb: pointer to skb
> + *
> + * Return: always NETDEV_TX_OK
>    */
>   netdev_tx_t idpf_tx_drop_skb(struct idpf_tx_queue *tx_q, struct sk_buff *skb)
>   {
> @@ -2992,7 +3001,7 @@ static bool idpf_tx_splitq_need_re(struct idpf_tx_queue *tx_q)
>    * @skb: send buffer
>    * @tx_q: queue to send buffer on
>    *
> - * Returns NETDEV_TX_OK if sent, else an error code
> + * Return: NETDEV_TX_OK if sent, else an error code
>    */
>   static netdev_tx_t idpf_tx_splitq_frame(struct sk_buff *skb,
>   					struct idpf_tx_queue *tx_q)
> @@ -3118,7 +3127,7 @@ static netdev_tx_t idpf_tx_splitq_frame(struct sk_buff *skb,
>    * @skb: send buffer
>    * @netdev: network interface device structure
>    *
> - * Returns NETDEV_TX_OK if sent, else an error code
> + * Return: NETDEV_TX_OK if sent, else an error code
>    */
>   netdev_tx_t idpf_tx_start(struct sk_buff *skb, struct net_device *netdev)
>   {
> @@ -3268,10 +3277,10 @@ idpf_rx_splitq_extract_csum_bits(const struct virtchnl2_rx_flex_desc_adv_nic_3 *
>    * @rx_desc: Receive descriptor
>    * @decoded: Decoded Rx packet type related fields
>    *
> - * Return 0 on success and error code on failure
> - *
>    * Populate the skb fields with the total number of RSC segments, RSC payload
>    * length and packet type.
> + *
> + * Return: 0 on success and error code on failure
>    */
>   static int idpf_rx_rsc(struct idpf_rx_queue *rxq, struct sk_buff *skb,
>   		       const struct virtchnl2_rx_flex_desc_adv_nic_3 *rx_desc,
> @@ -3369,6 +3378,8 @@ idpf_rx_hwtstamp(const struct idpf_rx_queue *rxq,
>    * This function checks the ring, descriptor, and packet information in
>    * order to populate the hash, checksum, protocol, and
>    * other fields within the skb.
> + *
> + * Return: 0 on success and error code on failure
>    */
>   static int
>   __idpf_rx_process_skb_fields(struct idpf_rx_queue *rxq, struct sk_buff *skb,
> @@ -3463,6 +3474,7 @@ static u32 idpf_rx_hsplit_wa(const struct libeth_fqe *hdr,
>    * @stat_err_field: field from descriptor to test bits in
>    * @stat_err_bits: value to mask
>    *
> + * Return: %true if any of given @stat_err_bits are set, %false otherwise.
>    */
>   static bool idpf_rx_splitq_test_staterr(const u8 stat_err_field,
>   					const u8 stat_err_bits)
> @@ -3474,8 +3486,8 @@ static bool idpf_rx_splitq_test_staterr(const u8 stat_err_field,
>    * idpf_rx_splitq_is_eop - process handling of EOP buffers
>    * @rx_desc: Rx descriptor for current buffer
>    *
> - * If the buffer is an EOP buffer, this function exits returning true,
> - * otherwise return false indicating that this is in fact a non-EOP buffer.
> + * Return: %true if the buffer is an EOP buffer, %false otherwise, indicating
> + * that this is in fact a non-EOP buffer.
>    */
>   static bool idpf_rx_splitq_is_eop(struct virtchnl2_rx_flex_desc_adv_nic_3 *rx_desc)
>   {
> @@ -3494,7 +3506,7 @@ static bool idpf_rx_splitq_is_eop(struct virtchnl2_rx_flex_desc_adv_nic_3 *rx_de
>    * expensive overhead for IOMMU access this provides a means of avoiding
>    * it by maintaining the mapping of the page to the system.
>    *
> - * Returns amount of work completed
> + * Return: amount of work completed
>    */
>   static int idpf_rx_splitq_clean(struct idpf_rx_queue *rxq, int budget)
>   {
> @@ -3624,7 +3636,7 @@ static int idpf_rx_splitq_clean(struct idpf_rx_queue *rxq, int budget)
>    * @buf_id: buffer ID
>    * @buf_desc: Buffer queue descriptor
>    *
> - * Return 0 on success and negative on failure.
> + * Return: 0 on success and negative on failure.
>    */
>   static int idpf_rx_update_bufq_desc(struct idpf_buf_queue *bufq, u32 buf_id,
>   				    struct virtchnl2_splitq_rx_buf_desc *buf_desc)
> @@ -3751,6 +3763,7 @@ static void idpf_rx_clean_refillq_all(struct idpf_buf_queue *bufq, int nid)
>    * @irq: interrupt number
>    * @data: pointer to a q_vector
>    *
> + * Return: always IRQ_HANDLED
>    */
>   static irqreturn_t idpf_vport_intr_clean_queues(int __always_unused irq,
>   						void *data)
> @@ -3872,6 +3885,8 @@ static void idpf_vport_intr_dis_irq_all(struct idpf_vport *vport)
>   /**
>    * idpf_vport_intr_buildreg_itr - Enable default interrupt generation settings
>    * @q_vector: pointer to q_vector
> + *
> + * Return: value to be written back to HW to enable interrupt generation
>    */
>   static u32 idpf_vport_intr_buildreg_itr(struct idpf_q_vector *q_vector)
>   {
> @@ -4003,6 +4018,8 @@ void idpf_vport_intr_update_itr_ena_irq(struct idpf_q_vector *q_vector)
>   /**
>    * idpf_vport_intr_req_irq - get MSI-X vectors from the OS for the vport
>    * @vport: main vport structure
> + *
> + * Return: 0 on success, negative on failure
>    */
>   static int idpf_vport_intr_req_irq(struct idpf_vport *vport)
>   {
> @@ -4213,7 +4230,7 @@ static void idpf_vport_intr_napi_ena_all(struct idpf_vport *vport)
>    * @budget: Used to determine if we are in netpoll
>    * @cleaned: returns number of packets cleaned
>    *
> - * Returns false if clean is not complete else returns true
> + * Return: %false if clean is not complete else returns %true
>    */
>   static bool idpf_tx_splitq_clean_all(struct idpf_q_vector *q_vec,
>   				     int budget, int *cleaned)
> @@ -4240,7 +4257,7 @@ static bool idpf_tx_splitq_clean_all(struct idpf_q_vector *q_vec,
>    * @budget: Used to determine if we are in netpoll
>    * @cleaned: returns number of packets cleaned
>    *
> - * Returns false if clean is not complete else returns true
> + * Return: %false if clean is not complete else returns %true
>    */
>   static bool idpf_rx_splitq_clean_all(struct idpf_q_vector *q_vec, int budget,
>   				     int *cleaned)
> @@ -4283,6 +4300,8 @@ static bool idpf_rx_splitq_clean_all(struct idpf_q_vector *q_vec, int budget,
>    * idpf_vport_splitq_napi_poll - NAPI handler
>    * @napi: struct from which you get q_vector
>    * @budget: budget provided by stack
> + *
> + * Return: how many packets were cleaned
>    */
>   static int idpf_vport_splitq_napi_poll(struct napi_struct *napi, int budget)
>   {
> @@ -4431,7 +4450,9 @@ static void idpf_vport_intr_map_vector_to_qs(struct idpf_vport *vport)
>    * idpf_vport_intr_init_vec_idx - Initialize the vector indexes
>    * @vport: virtual port
>    *
> - * Initialize vector indexes with values returened over mailbox
> + * Initialize vector indexes with values returned over mailbox.
> + *
> + * Return: 0 on success, negative on failure
>    */
>   static int idpf_vport_intr_init_vec_idx(struct idpf_vport *vport)
>   {
> @@ -4497,8 +4518,9 @@ static void idpf_vport_intr_napi_add_all(struct idpf_vport *vport)
>    * idpf_vport_intr_alloc - Allocate memory for interrupt vectors
>    * @vport: virtual port
>    *
> - * We allocate one q_vector per queue interrupt. If allocation fails we
> - * return -ENOMEM.
> + * Allocate one q_vector per queue interrupt.
> + *
> + * Return: 0 on success, if allocation fails we return -ENOMEM.
>    */
>   int idpf_vport_intr_alloc(struct idpf_vport *vport)
>   {
> @@ -4585,7 +4607,7 @@ int idpf_vport_intr_alloc(struct idpf_vport *vport)
>    * idpf_vport_intr_init - Setup all vectors for the given vport
>    * @vport: virtual port
>    *
> - * Returns 0 on success or negative on failure
> + * Return: 0 on success or negative on failure
>    */
>   int idpf_vport_intr_init(struct idpf_vport *vport)
>   {
> @@ -4624,7 +4646,7 @@ void idpf_vport_intr_ena(struct idpf_vport *vport)
>    * idpf_config_rss - Send virtchnl messages to configure RSS
>    * @vport: virtual port
>    *
> - * Return 0 on success, negative on failure
> + * Return: 0 on success, negative on failure
>    */
>   int idpf_config_rss(struct idpf_vport *vport)
>   {
> @@ -4660,7 +4682,7 @@ static void idpf_fill_dflt_rss_lut(struct idpf_vport *vport)
>    * idpf_init_rss - Allocate and initialize RSS resources
>    * @vport: virtual port
>    *
> - * Return 0 on success, negative on failure
> + * Return: 0 on success, negative on failure
>    */
>   int idpf_init_rss(struct idpf_vport *vport)
>   {

