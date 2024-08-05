Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A0DE2947C2D
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Aug 2024 15:49:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4FD0240286;
	Mon,  5 Aug 2024 13:49:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lvkjleI8RVfh; Mon,  5 Aug 2024 13:49:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4EFD740250
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722865783;
	bh=00pWC5vNRygsb4HMwCg55bykFI7bRTjYA7U6GY5zd2M=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=eigk5S223P/s/pb/9rvy4dhSgvfsOEdxYDnFfLxQFe9hf8inmTnDpOHtnrXczZlya
	 n5EjUY83Oqv3wTOIwU0Ba3kPXiOoGUHWgr7fPSBNyzY3MOz8FsGQuAHyi1kgX/81UU
	 0Z14xf9CUgSvx3EtIIxZtslj/Z4Gcrs1x3KbrPdAG8OKnNH9pev4mTYbmVUyN6DrZu
	 WgH+6DGwi0XGY2mZERppKFRD9xB0Wg7zkG/bbpEConj3CFshS2IlGMbw1j4MHNtfEP
	 uSIPFcdUtUIf7gLD3Ctd4YskLdHsXoZltqG2Jr0Z3wk3efkkMXOd/2ZiWNsOXFjjR3
	 knAGUIdA1+L3A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4EFD740250;
	Mon,  5 Aug 2024 13:49:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 832761BF334
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Aug 2024 13:49:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6F53F400D3
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Aug 2024 13:49:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id c6oYoMW0JK0x for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Aug 2024 13:49:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 07BA840010
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 07BA840010
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 07BA840010
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Aug 2024 13:49:39 +0000 (UTC)
X-CSE-ConnectionGUID: DGgCM063TEe1gZtGdMn19A==
X-CSE-MsgGUID: ashZ/v4rQ1agLneEEXXsxw==
X-IronPort-AV: E=McAfee;i="6700,10204,11155"; a="31986332"
X-IronPort-AV: E=Sophos;i="6.09,264,1716274800"; d="scan'208";a="31986332"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2024 06:49:39 -0700
X-CSE-ConnectionGUID: req+B3LkTQm+SFGb9Apqsw==
X-CSE-MsgGUID: GxsFPvNNTwSjoOtnXdHU7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,264,1716274800"; d="scan'208";a="79443181"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Aug 2024 06:49:38 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 5 Aug 2024 06:49:37 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 5 Aug 2024 06:49:37 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.170)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 5 Aug 2024 06:49:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iNqmyKRaUTY1+CNOlocF/bFv/fwylPPoyGYpDodB/TYUwxHPA08msZy6b7YTqYsRc05qrXjcmPRSp7MTNb7dmc8UkjdbncYr1HfYMbljsdwYOU7MTP82W2jz6aSsYhEKSnaij+gRFk2HE+TghHkf2oUZOFit7kg27Bp8cVYTTwzVTyOevU1EWvPXswSVn9lNXJoZVUMhX9NLK0WM85ECGYZGwHMkc5bVTxSwPuZ95R8dnmaBn98zxDIEFDGaQk70Q8rD0R6+JW3Ya7uBCLl4PY+jkbb8mad8i4U2xnvKvxiKv7v8bSjgobxRaHxw2Z0nU/dwQqG47bmvLGXK2nv0aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=00pWC5vNRygsb4HMwCg55bykFI7bRTjYA7U6GY5zd2M=;
 b=A0QUePU6cpi76jEP9rWAPcfw4qn7Bc2qBLOG7FQs3GKFOjiRmADvDrtwIJJurcNi9oTlL2HVymVJ1JpJUj6yGUSYWvUnYGaypLielIQabr0nUcHK/RGgGs36XC2sCVYwQe6E+KeEOuE0zpPvnev2t1BZwM01MWXhQRFU/K+M48doKPy3zEIcdTLiYzh0ABiNN3aUKGF+XhzR4QE0MUul7OF04KMIGmqKMarQ11CpJCyXf+eFkdQMA27+BTXsEjnI/yI3doGSvCrKxDSVUiISbOrZlsl5jNrH/R13Z/u2a5qu6o3qPdn3Aorqs//PT3LMTVWVb2l0l2M2nQHoOh7efA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by SJ0PR11MB6694.namprd11.prod.outlook.com (2603:10b6:a03:44d::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.23; Mon, 5 Aug
 2024 13:49:30 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%7]) with mapi id 15.20.7828.023; Mon, 5 Aug 2024
 13:49:29 +0000
Message-ID: <959e5cd6-21d9-4397-a22e-4e383083c186@intel.com>
Date: Mon, 5 Aug 2024 15:49:23 +0200
User-Agent: Mozilla Thunderbird
To: Wojciech Drewek <wojciech.drewek@intel.com>
References: <20240805124651.125761-1-wojciech.drewek@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20240805124651.125761-1-wojciech.drewek@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MI2P293CA0009.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:45::6) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|SJ0PR11MB6694:EE_
X-MS-Office365-Filtering-Correlation-Id: 0ed2cda2-08e2-49b3-7bb8-08dcb5556dc4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?R1NVTHVrcmVoTVluUi9scVZNbmlaTERGVmUrb1NjeGRKQ2VvcWM2Skg4cUR6?=
 =?utf-8?B?a2ppUTQzVEFhQytwaU9KdDlLSlFrOXFOY25CaHNQbk1LYWpNUDh0ejhuQUdO?=
 =?utf-8?B?dHVuQ3NDanlhRmhhWklzN1lPRXNqanY0TFVMTHcxdUZNaldFMTh6VVJERjh4?=
 =?utf-8?B?UWIrV0F5R2NDTDJOckhWek8yak5GNmw3N25MRTlmTGwxVEFCZEVtNkhXSXhi?=
 =?utf-8?B?NmlsdVV2ZC9KR0FLYzdRNXhnUEQ0OHErUlZFTTdEbGVSWmQyd1VPcXZUbHlE?=
 =?utf-8?B?Yk1GSmtOKy96QjBjWkttV3UvdnJkbCtZVU1hSzBNbEpqODdBT3hhLzBmeWVa?=
 =?utf-8?B?eWNmc0hNaXBwMXZ3TVd2R3drRnBwTHduZXNmQ1R5ZS8zODBFNkdsK0I4RVB1?=
 =?utf-8?B?M1dFNWxJWi95dE1nQnQ3M25uN0ZYZ2RwSDVlQnhoczl4WDZac25KNURpUG1I?=
 =?utf-8?B?TjdxQ2lmcGU4TlVPQWh0a2dsbXd3cmVqdnNkN21MV2s2Z2QzVVBwK3pRbnkz?=
 =?utf-8?B?b1Z6UzBFOC8yeEdtUkRSc29LWndYMDNxQTh2UmgzNzdaaHJJWS9pSmp4L29r?=
 =?utf-8?B?OVdydGZPSkdvMjRocFR2bFlkN3hvTHBHY0JnU0p0Z1dJUGl0cU1uOUp5Y2F4?=
 =?utf-8?B?ZzZaT2crYVF1WWV3eWZsa1g2d1hWT0ZOL0hNbytDN3FKTjBVTm9DWkpMMHRV?=
 =?utf-8?B?MXoyU1pCTlMzLzBzb1loR1pqemsveUpDNlNMVFZHeEE5STdPUXhKQWs4eTFu?=
 =?utf-8?B?b3dZdkhqTFdiMTdDNDhNcGlYZVo4Yml5TnJjZXZodGdUczZwR2lNcEF3cGdB?=
 =?utf-8?B?TnZ6ZS9QZTd0NlhxMVBEeXZkZDYvTlZ5MG9tWVQrbU5FZTZtOExTNEx5R0pC?=
 =?utf-8?B?cDI5QW8wdHhkYW1SbGFtRlhBSy94OVlwRkVuc0tXYXdMcmNiWVNzb0ZqZTZZ?=
 =?utf-8?B?YUgzN1ZCL2prWkc3bWNOUWVDTGNkanVKNjFsL1JHMFpOUVptMFdEN0lYYkZt?=
 =?utf-8?B?V2s1ZUJSYzZBUDNtMXBVRVMxNE5Nd3ZHWU1ySTJzNU5kWVJremtlTmRKY2xK?=
 =?utf-8?B?V2UyQTBQaXNmOU9Oc0FOcXgyTVhBZUtxblFxaUgyeWJuTUJ2cHovbUhIem1F?=
 =?utf-8?B?UFFhYzU5WmJKRmZoZ2ZJZlVrb3h6UVRVdkwydkJkcDFXSElLdG54YkRwc3Qx?=
 =?utf-8?B?bWNwUkdEWklLSUJQZ2h5WUx0S3NpUHVZb3pGV001YjVrbmtFSE1WRnV6RVVk?=
 =?utf-8?B?TStJV0NVclE0eGNuZmVXaFBJWnN0Vm12MUtJZjBvb2VCNzZMcmR5eGtNYUtt?=
 =?utf-8?B?VWZKUlRnai9BaXdNS2FGT0hMODRlUWl6ek42N0JIR0NiQ1ZyV3RZOWtxTmF6?=
 =?utf-8?B?TEVnSmI5a0xGTGdoUXJFczZBVkZnUjE2V2NkN212VXVFb3FrQ3VsOGcvRjZN?=
 =?utf-8?B?UWhXbFRzb210VGxicFhYV0lqWXg3RHEyMTRUMmtIUG95OGg4R1FSTnQxU0t0?=
 =?utf-8?B?QkhJTkJMWHN6YnRDQWYyVmNoaUhlREJwekxOOXhtMkpRNDA5bmFMU2t5endW?=
 =?utf-8?B?Rml6WklzaXppVXJicGpBU0lKamcwQVV4cDdyWjZPbXBjVE9EcmV3UC9KcEU1?=
 =?utf-8?B?NGxJQ3NqVzNqMmw0cE5BNzFueTNRdVBMMXJqK25keHEza2UyMktLVzlDRm82?=
 =?utf-8?B?TFpQZ3orbUxyYXpRQ09nWGxTVkdqOGZmdXZFL0x3V0dxdHZVUVpJeUh4WGcw?=
 =?utf-8?B?eHQ3NDl1aEU1aGRla3hncGFOV1crR2pGOXRYZlNhSnVpVUJxN1pkTEV5Tytn?=
 =?utf-8?B?N0pobGM1bkNuT08zSzY2dz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QzMvcjRGRHUwS3dlOSttR1dkQUVZdHRvQWRVVlNiKzJyM0U0ZDFwbUhaNjN0?=
 =?utf-8?B?d2p0cjlidXdUU2VJZEFzb0tqMC9veUxXS1o3UjN1SFhOME8yL1hKREI5RzNv?=
 =?utf-8?B?b3ZYUHFHKzdwQTkwejlWMUxSNExGOVZuVW91UytKZkdWQjJWZ2VzaWhmWGFI?=
 =?utf-8?B?ZERYOWFUdW5UOExCSkR2UzRHUjRudXVzaGovYSsxemUwc29KRkVOM1ZtQU55?=
 =?utf-8?B?UWowRUhOR0ZKazVYRk1qZ3dCZDhuTFh6aHVXaWw5Q2lnMmxualNENCtHNGdE?=
 =?utf-8?B?V2pDTkpyVkl0QmJqa2xhdXRqbEZrNUY0b2VseXNmVG5YekhndlUrTTJyMUVi?=
 =?utf-8?B?eUJ1QTVSeFd1dnpFTU03Zy9ZcS81R1JlalRnYkl3TzU5dmljZENwZ0pGZStU?=
 =?utf-8?B?cys3V2dYZ084RGRPQVVBWjRLZHBIbUVEVmpYbTRyb3V4R1pYV0dNVzRrVll0?=
 =?utf-8?B?eXRybDR6V3pMS2dESGNZNTdYRzlsTFN1TGVEa0VqeDVuYnp2eVVSRUpzQmsy?=
 =?utf-8?B?cDRPUGdBYmVTcTdQcjYwUUFPQ0YzRmhmNjhJYmVUaThVRkJIYnlLUTI5RUt1?=
 =?utf-8?B?VzZOdEEwYVZoZGRnR25pM2FKaWJBemY3NnNESG5yTGw4QVJSS1hRWVNrc2I0?=
 =?utf-8?B?TGpBQ1dEaUtlOHl1VlgyQVYzYitaZXZ2WEliVmdtOGh3bFdnYlpVaG1jU21O?=
 =?utf-8?B?eVlrMUlnQStEeHV0V0Z4SzJOTmxNUlhSblA5d05WSkVQLzVnVVBWSmN1cktM?=
 =?utf-8?B?VTVCM055S3F2bjZOWUdaeC9KTzlaYzhaTjJoaUhHR3lOaEpydFE0bUd1amc2?=
 =?utf-8?B?VkNnZHY2Y0dXQmcxSGhMR2U4dElxbHBjaEFiRWpjRkVpK2JWNEJpQmtwa0NG?=
 =?utf-8?B?VVViYWE0RmdaTjZRK3hBZ0NTL3Z6Smx1Q01jNVRYL1ZsWld2cHgxY3RrNG1x?=
 =?utf-8?B?VVIrUXhXVzg3Yk03NUhsR2pWaDJkVmU3NkNJK09OdDQrZWJ3b2pORy9PNXlh?=
 =?utf-8?B?dDlnMHM1aVByUnMwVmZLSUZlNzBQRHdTWnJ4ckF5TDRLZEl3R0EvYS92RFRT?=
 =?utf-8?B?N21DRTBTWHpDYkhYSHNEdDJrWWhLbW9RUzg0eXo0STdydGcvMFg5MUE2SUMx?=
 =?utf-8?B?YzhVT0FMRHZ3YkFra3FrWXlXSkhVZ3RSQmtuWkFmRVQvWWw4SEZTb3htcmlH?=
 =?utf-8?B?Q2kxNThoMnlHQ1FFVFRmQmJKdEErdFFROWxuRFFpRUhFU1F2OGprSW9iUjRW?=
 =?utf-8?B?YWtHaVF2NFIxNFk1bTE3dTNjMW9kZWdUUUwreVo1VGVYQVVGUjhKSkZFVFRU?=
 =?utf-8?B?MzBhZ0kveDdBMFVRQzM1QXduZ21obmc4MTlBbmE1dGRpMjBEdjJxMVVjOXpQ?=
 =?utf-8?B?Mlo0NENxbnYvZElNVjdyVHVLQzIwN1ZiZm41bC9Gb0JpRWgveWR1RTkvbmYv?=
 =?utf-8?B?ejcrczY5eUV1a2s2Rjc5bWtPL2o4SFFPRTBaTEZQeTR6dTlYQ1N5RCt2QjhK?=
 =?utf-8?B?eWFsRSt5bDliYkJXcm1idW1lem9tM1pTbE53SmtRcFFOZzF6bk5sbm0xdXVK?=
 =?utf-8?B?Q1dCeEtsVlE0dnduazV2WjE5c3VqWjJQaTArdERBZTVQaklTd3NFcW5CKzJN?=
 =?utf-8?B?Vk9idUhpVk5Nak9odGtaYm1acVE5RGxoL1poTHpiZ215b1Ywb01Dd293TnpH?=
 =?utf-8?B?YXRNKzNZc25UNjBjckUrckQxRDR6VjVjdEd6eSt5NFIyb0w3TExwWWxBSnE0?=
 =?utf-8?B?dXhuWWhBdm5kWjJVdnhEUUVYOHhVZEdNMDk2TDV6NFRGU2h2VU1RWU1jTVZY?=
 =?utf-8?B?QnlCb29iSitlc2g4ZUdiS1ZqQXZmeGlDZ3pZWEZPRFBrc1lOaDJVMWtKcXNw?=
 =?utf-8?B?MUIva2dTWFUrRVhrdm9kTEtCNFdubEViUmY2dWMvWmpOK3ZMYkhhZ0lCN25s?=
 =?utf-8?B?bEpVU0s2eHV2bk5peFRJSytGd25vL25ueGlNSnptbVJZb3JzbkdENU16WnR1?=
 =?utf-8?B?cjQraXpzZlJuTVltYWNKQ1BUUTdCZGZQN3ZCS1lsaDF5MnRDYW5rSXlwdHpB?=
 =?utf-8?B?bDZxR2JPSis0VW1MaW9jUmtKQW1ZSXViNXN1RnNZU3MrWXFkaTdrSkN5c2hW?=
 =?utf-8?B?bWNEaENRZi9RQXpWczM0cXkxNnJWbjRVR2tPdlpZZlVXMkpoc2E4Z1pmRUZr?=
 =?utf-8?B?a0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0ed2cda2-08e2-49b3-7bb8-08dcb5556dc4
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Aug 2024 13:49:29.9058 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +Z9oQeBGbXwp/LGO/XfwvDf4/YZVYYJTkdwYQRMJI51FfChH99R93/5o0y/Pn5M4IwmIYOwHzKx/yIHlJjcMNDssoJ1ge8l7Vpu05zWmI0Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6694
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722865781; x=1754401781;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mMjvI0uRLyPFAUxUAaRXrBUPeYdTaveWHcgxBvTEvfI=;
 b=DGIYVlfrCAOpP87f/CyV8dX/6SsoZoka0kbvdzNM2EhLjwOIC6iMKKww
 7ZmUfmCQDfqU39bmQxvqjTaX+SugSx3m40pRfUJOELwP/wRxHYLUimz3U
 fzRWFuevUzdDv2D8u2CAHQrp5UEfRpbuaOR4tt5Otcz+hbGi8Wof/Gi15
 jby2aAduL6grHNCb8Bx9vu6bPqdR2b+IBlsdMEnR6WqzsweVrUKImMHgo
 KwhajsaC4Wo+3AckVLWlj+ab7s8hBVQSL/2sRr2//rt7pBncNfHS7u2rD
 9wxohrlR8UJFtV49yAjuJoy2ne15D29kOsIXFWRweOtWQ0dsgD+TdWA2B
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=DGIYVlfr
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ice: Implement ethtool
 reset support
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: netdev@vger.kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 horms@kernel.org, kuba@kernel.org, intel-wired-lan@lists.osuosl.org,
 pabeni@redhat.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 8/5/24 14:46, Wojciech Drewek wrote:
> Enable ethtool reset support. Ethtool reset flags are mapped to the
> E810 reset type:
> PF reset:
>    $ ethtool --reset <ethX> irq dma filter offload
> CORE reset:
>    $ ethtool --reset <ethX> irq-shared dma-shared filter-shared \
>      offload-shared ram-shared
> GLOBAL reset:
>    $ ethtool --reset <ethX> irq-shared dma-shared filter-shared \
>      offload-shared mac-shared phy-shared ram-shared
> 
> Calling the same set of flags as in PF reset case on port representor
> triggers VF reset.
> 
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>

> +/**
> + * ice_repr_ethtool_reset - triggers a VF reset
> + * @dev: network interface device structure
> + * @flags: set of reset flags
> + *
> + * Return: 0 on success,
> + * -EOPNOTSUPP when using unsupported set of flags
> + * -EBUSY when VF is not ready for reset.

nit: technically it could return also -EIO, -EINVAL, or -EFAULT if VF 
reset fails
I don't know if this list needs to be exhaustive though

> + */
> +static int ice_repr_ethtool_reset(struct net_device *dev, u32 *flags)
> +{
> +	struct ice_repr *repr = ice_netdev_to_repr(dev);
> +	struct ice_vf *vf;
> +
> +	if (repr->type != ICE_REPR_TYPE_VF ||
> +	    *flags != ICE_ETHTOOL_VFR)
> +		return -EOPNOTSUPP;
> +
> +	vf = repr->vf;
> +
> +	if (ice_check_vf_ready_for_cfg(vf))
> +		return -EBUSY;
> +
> +	*flags = 0;

I'm fine with zeroing the flags here even if the reset fails afterwards

> +
> +	return ice_reset_vf(vf, ICE_VF_RESET_VFLR | ICE_VF_RESET_LOCK);
> +}

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

