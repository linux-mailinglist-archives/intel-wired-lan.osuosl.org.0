Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 115D09782E9
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Sep 2024 16:50:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 829A44059D;
	Fri, 13 Sep 2024 14:50:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bbj0F2piW37t; Fri, 13 Sep 2024 14:50:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E39FB41191
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726239049;
	bh=yrq/lLKEHeR07HI3c92nTlFhPoU5IGyzcsM1EWmQbnM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=u36aYuYE26v7+aKZdeTI/pnO5EE1sM3UN0VpwHUVIODbm7Ez1kBdsaKmKhyHrw7E8
	 SjtV8gSpy3CugJPjrdx3tCdq4Ctlkj5WqzCYw4u/juTYJ07x5w2KfLJfvkWKGmFptS
	 7UGn7QOoACpkGMrD4vOA3EeO4/LcfQQ4KkDlqB9UOfSqPQ8Wo4C61UuRIcOEz5DUAl
	 omG+vejkZe3N+L2HQMH+Hee8jw7J2cWQlZaFR3SOpKuu1UEqCeZIc1agfZYbjwHJ6T
	 PvWOyQ+MDx3SqydkmQGsy8qAGJuthBJS4YjUQDwFr5F+vzicvqWl0cgfUKHoUT/zOZ
	 xcSacVDslgssg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E39FB41191;
	Fri, 13 Sep 2024 14:50:48 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3DDBC1BF315
 for <intel-wired-lan@osuosl.org>; Fri, 13 Sep 2024 14:50:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 379C042413
 for <intel-wired-lan@osuosl.org>; Fri, 13 Sep 2024 14:50:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jySoRqfFHR2a for <intel-wired-lan@osuosl.org>;
 Fri, 13 Sep 2024 14:50:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=jan.glaza@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 10E9441A27
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 10E9441A27
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 10E9441A27
 for <intel-wired-lan@osuosl.org>; Fri, 13 Sep 2024 14:50:44 +0000 (UTC)
X-CSE-ConnectionGUID: 5xzVVJudR7GGVHvW86g7DA==
X-CSE-MsgGUID: TwVw5f65TlaXlQy/YHipsA==
X-IronPort-AV: E=McAfee;i="6700,10204,11194"; a="29034963"
X-IronPort-AV: E=Sophos;i="6.10,226,1719903600"; d="scan'208";a="29034963"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2024 07:50:44 -0700
X-CSE-ConnectionGUID: /eearCloRL+3B9I+pFhdcQ==
X-CSE-MsgGUID: fY75vjPVST6/cV3eGivJag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,226,1719903600"; d="scan'208";a="68011203"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Sep 2024 07:50:43 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 13 Sep 2024 07:50:43 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 13 Sep 2024 07:50:42 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 13 Sep 2024 07:50:42 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.42) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 13 Sep 2024 07:50:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZKl7Xtdv2V20fPkzfMrWktsb+LZVvCW7vIT94fplUfx1WrU3vXKUUqMLvs7d2NE+pKmeqTROMcAbmy6s2MQq72yxIPMSgrnIdmBz7pzO034bbOMuhUlmAqcbrRhfSqygnwG8PFV5QUdZZKIszc3M5uWNwSsogbJx8mNUZkZiuaSYPnXOHNeyPKJDsNDes8tVJxSe3VO5TL4sSG6IL8sjZtjFnsyjK2tY26Gb0QzGpKuE6nrJ76dGPLVhAhmRYNAXaDMWu7yTcm5eRTl/B2UVnxB5GbR09KrFPQtYb/cpj6P5hS2GIhUaSYEiTezvVZf57YOG8nIKkKhNcOWwlucutg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yrq/lLKEHeR07HI3c92nTlFhPoU5IGyzcsM1EWmQbnM=;
 b=noFrxmzNmNjEfPOGWObliqBBPgXSPpDxDHYSFujKfTzm6Xz5pRb1VLQCSW6/7rlUqXhuiBL46JEmK72DPt+2DPSpioZ4ubFnP+hpbxXUEHonvsjlTlo4oSaSYOahrk7pbx8eJotbbrS0sZUmHWLrPUPHgqYjtVa9gyyC7xHU1amFhNeQc3MwDAaJoCJ1V5gikHhRRbbPJISdEz92u+uDRQQ1ozK85lpQ20bjrRJhSnjxXfuiqcVvCVYoCvqNoyzGNA5JvUt5f7lKuz5KhZKSwWg6VT3h0bYLvGA4/2nhldC/GDt5aac8zolFqHCO59TBaMrBq7RjMA+6Dvl02W2dKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SA1PR11MB6807.namprd11.prod.outlook.com (2603:10b6:806:24e::7)
 by DS0PR11MB8717.namprd11.prod.outlook.com (2603:10b6:8:1ab::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7939.24; Fri, 13 Sep
 2024 14:50:38 +0000
Received: from SA1PR11MB6807.namprd11.prod.outlook.com
 ([fe80::b42f:a07d:8100:7f80]) by SA1PR11MB6807.namprd11.prod.outlook.com
 ([fe80::b42f:a07d:8100:7f80%4]) with mapi id 15.20.7939.017; Fri, 13 Sep 2024
 14:50:38 +0000
Message-ID: <ef41438c-b311-4922-a6bb-3073f69bfa96@intel.com>
Date: Fri, 13 Sep 2024 16:50:34 +0200
User-Agent: Mozilla Thunderbird
To: Faicker Mo <faicker.mo@zenlayer.com>
References: <SJ0PR20MB6079EE704620E28B3AD45286FA8B2@SJ0PR20MB6079.namprd20.prod.outlook.com>
 <5dfb65a7-8625-4149-9d8a-b6bcda530882@intel.com>
 <SJ0PR20MB60797AE7B7293BB912545B37FA962@SJ0PR20MB6079.namprd20.prod.outlook.com>
Content-Language: pl
From: "Glaza, Jan" <jan.glaza@intel.com>
In-Reply-To: <SJ0PR20MB60797AE7B7293BB912545B37FA962@SJ0PR20MB6079.namprd20.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MI1P293CA0020.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:3::18) To SA1PR11MB6807.namprd11.prod.outlook.com
 (2603:10b6:806:24e::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA1PR11MB6807:EE_|DS0PR11MB8717:EE_
X-MS-Office365-Filtering-Correlation-Id: dac4c209-a5bf-4b67-e296-08dcd4036e9d
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VWV1KzROMm9tTUw1aVROclN0M3BDb082Zzc1ZDU3RUJIbk4rOUFmUG0rNTdJ?=
 =?utf-8?B?U3Iycm1ORFFaR0ZBM0RBMTFkcEN5ZW1VRmxjcmE4M1JUWUc3RmkycWJqZGpW?=
 =?utf-8?B?YXUxZUxLcmw3cVZZSEpwQXhzTjlEUy92UlpBdG83bDlVSmtJOWFxQzFtbU53?=
 =?utf-8?B?aXBvM0wvRTEwcG5kV25EQVBvdVk3bHNIZ2Z1dHp6SVB0TEhRdlBjYlpaLy9y?=
 =?utf-8?B?Qml1SWhTYmVTN2lYdDNRSjJDaWVUcU1hSjdLT2Z5OWZaL2hVTTJ4WXkxUjNG?=
 =?utf-8?B?N0JSMHBOMlh3TFdCNTJuTk1OMVU0dnhibVl3T0JEMlRBaEFOYXlZdENGZFZL?=
 =?utf-8?B?VFk3V0xYb2lBbE5NTHBEdXBLM0VSWURnaXovVzdBTERHSVFWd1BON1ZabXla?=
 =?utf-8?B?am9xU04xMnNyT2pZREJIbW1NMjdDMGRURk4zYnN0QndQK3Z1K0g4RmJUOWlh?=
 =?utf-8?B?WTg5Y0FESmZvcDJocU4waFgvUG5wT0pDM3VDbEdoNmdyMnVpWHlwbG9TdDJT?=
 =?utf-8?B?enllNmJ5MGhOR01CeHMxenZRWVRWUlZ3MHBwdWhwd2llVEJBVlJXZVI3UHNh?=
 =?utf-8?B?bmRYaVB4aHU1bTJiNTBiYnIvdWQ1OGNLUWlydTZlUjBwdHk2RkVIRG0xNVZ6?=
 =?utf-8?B?L3VxalZVWDZXakNJUHl0TmEyQ2FmZ21EVmx0MFg4WVZTc1JQTUdKdEJvTXIy?=
 =?utf-8?B?bUIxL0ZReGl4NnF5WHRnTlBteXNDc0NwMFlRZGN2UDdvWkJsU1VCN3NNajJw?=
 =?utf-8?B?L3d3Mm15bGd4SmZJek90TWwzdnU1alNKVzVSSjBZQkwzK2R1MFJ0WkNWNVh5?=
 =?utf-8?B?UE13TnZ0YURqRmRaYjVMTG1TTWR2Tksvb016OWNDZy9EeURnZkhpdWw0K3h3?=
 =?utf-8?B?R2ZiRVV1S2l2cjRsazZQcVh3dkNlalJzK1BXZFB0TmEyZ2lrK29FM1picGl4?=
 =?utf-8?B?ampMZW85YzBRVVpkeDExTWZRdWtSR241dWZoRG1uaGJ0S0FjK2dRTVJVbVVz?=
 =?utf-8?B?SnQrZ295S1QrRXVSdFpId1YwUFdvRkRLYWlDSEdWOFhEODN5OUt2MDdVb0k4?=
 =?utf-8?B?M20xWS9YeEhHVmZja3AwaFk4K1M1NWs4Zm5hcUxVRldPZ1VNUXBYZjFRcXlw?=
 =?utf-8?B?TUpYdXpnUk1SYkRUQUhqM05Cd0swNGxUUFVtNndkU2JJcjhGdzVaaDgvNU9Q?=
 =?utf-8?B?MnRSWnpTQWhXTVdDMVVkZjQ4NWtIdVZRelZaVVZSTmhRR2ttWER2S2lNeTE2?=
 =?utf-8?B?ZzFOT3QrcjRmM1paL29wSEMvUTBDTWZnTERrR0ZBeG9pUm11STBLcHFyN0NW?=
 =?utf-8?B?cWNWdU9BeXdhTHREVWxDRzhGcjBDeVJ0MWhaRnU4R1JKTnIzbnpzYkE2TVJl?=
 =?utf-8?B?a3pHY0dpWW9rSy9JNVREV3FVZEtjTWQ1Yy9HMElLYjZvSkEvbFZ0endqUyts?=
 =?utf-8?B?L21BbHZOWHd6YkhqelF1TVJlM0FtdEY1eEZKOTgxLzdpK0FNTGRONWtyK1Zl?=
 =?utf-8?B?VFNycGIzS3RENHlpUXJ0WVd4cnltQUNLZnIybTF5cktRUVhQc0Z0bXlmaFNz?=
 =?utf-8?B?NTdPcjdsOGZpZjJGczdHQkNoK1hzdGV0dC9FVGVpMDFDbW5oa294SjM4MHcw?=
 =?utf-8?B?WklWcGJwVkZ0NXQrUGZLK0ZJYVd0VlJYVjFYbzVJeEVnblhHcldtNnA1c1JJ?=
 =?utf-8?B?Vk1qSnJtVGtuMCtONElocGFpc2FVdis2TExqOENKcVQ2RjlETkh6SEVaZmN2?=
 =?utf-8?B?SWJNRDIyNUFFQ0I3dUVHTDMxKzdxei9iNVlsS3VvL2dEbDBpZU03RkJmeVRC?=
 =?utf-8?B?WU1wblNMRnMvZy9PT3A3QT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA1PR11MB6807.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eWVZVlM1TnlmQnlvMjhKMXFVb3FtTW9HNHkraTJFUEJ0Q2s2NzJ2VGJ6V3pH?=
 =?utf-8?B?VUtLcnJoSGxvcDIzbk1qRlNoM1hWYXRCYklXWW9FSWdpRElZbmlDZzZ0UVhK?=
 =?utf-8?B?aUVKZForRDNZZ3Y2RTZ6VEdvcjF1NFUwOG10dGFHRTFBTWtvMHdHNEs5SVhx?=
 =?utf-8?B?bUpHeHJRM2JuWjNKUXRMelhxS01YbTZhOTFFSHlCSnBlR3pxWHlaR2lHRmVJ?=
 =?utf-8?B?SThjWG1zR0RyZnE0eWl6RDB4VDdqSnk1c29mYkxkZkVMWmV6ODNPK2o2VXh2?=
 =?utf-8?B?a2VCYmFvSXc5OUdtZmJTYWpQdStaaTJMbXY5dnNqR0RSZ3VDYlJtMGEvZkha?=
 =?utf-8?B?NVRnQVhUOWFIaFE5SkZmRlhPWXE5RnowZ25NYUFnZFJ4WnN6b3l6M0Y2K1FQ?=
 =?utf-8?B?byttWnI5RzhEQy84djNwUC9aNDdXbjd6b0EyaGI2cEhQelR1NlRxL01SZDhB?=
 =?utf-8?B?aXBTczFZazRjd2hhRWwrTVlQclcvazdLNTJRZXo0RlowMjMvekRDYk85NUpW?=
 =?utf-8?B?U2tqY2hBM01qM3F4ZmdIb1o4QXBiQ05WN3kySkZNaHZKc250WnBRQjAweGR5?=
 =?utf-8?B?eFpPUmhJTUM4Wi85T0FPMzZrQ3ZlbzVYdUZOUHVEcjFEaUZKSkZ6aWNhbDVt?=
 =?utf-8?B?dXNUdmRNQk9VaDAwYUVOWCtZcUNPdkxwVkJmNDJnSjdKcDY4MEFhRGlLb0hH?=
 =?utf-8?B?dFZkZTQwbllMeHBoUVQ2N2IrVkRZNWhCVm9acDJNeUR0RXBNU0cvWEpEa1R3?=
 =?utf-8?B?dHVnWnpuaHNFeVZYR1pweWN3SFNBb24wOUwreUhFUjBybWRsTzhMK1RlLzg3?=
 =?utf-8?B?RkhkNlVHNlNsSTdHZEF3R0pOdWN4NGVFNjVWbWZ4VHZFQmVnT21TN3lPWmpq?=
 =?utf-8?B?OEdpSi8vYWxUNlJPOEQ4bzZFQnRoa0dnUHdxcjQxeHNCS3lDSGpGUUk0TG9P?=
 =?utf-8?B?enlCQ3I0WFNpc3BGZ0VJb1NNQlhRWmEvMFM5TitNNU45VGJlRXZPNUNRemhJ?=
 =?utf-8?B?NSt2ZlM3aEhkSldWTityRlJZUkE0Z2FzQnVxSlluKzhJc09sQUNtNzU5TVZ6?=
 =?utf-8?B?ZTAyNmJuWGU0eTYxVHd6OTZnS25LWStmQjRIMitvRmNEVm9ET1NsWG9lNHpu?=
 =?utf-8?B?SkxCb1V5YndTVktNR3VYSkIwTytLbnVidUYxUVpPazV4UXM1QTRKek0wVXcv?=
 =?utf-8?B?K1VIM2NWM0Iwb1VLOVdyRWR6TUpLL0xBL2hYdEVDUVRXOTFOWDM4TTlTZmV1?=
 =?utf-8?B?ditxU2l5WjI3Z3RvT2d0c21uNzBlM0I3aitQOFpYSE9uSWxsSEhYRVZ6MnhY?=
 =?utf-8?B?c010dnFuZWhlSk4yK2N6THp1bHJYRWYrMHQ0TVpoa2pxRC9BLzEzLzBhSCtJ?=
 =?utf-8?B?Qm9ZRUlxLzRZU2Z2U09ZUFA5ajAxMW1yRGJNQitzaUJJSWVkRXp1dmRnTVBC?=
 =?utf-8?B?dnQxTjJJOEFLanBZRUsvZDJHMkcvYXdRYWpaS0dHOUdBTElSYkxiRUpKMTMv?=
 =?utf-8?B?R0FycjNFanNUUDBVQXI0c2w4anhTK0xudzlHcndubjBMN0lFMm5NR0pBV3hH?=
 =?utf-8?B?RVRZZTZGa3ZONU1RQmpjQXRQZHJ0TXdmRzY4Yk1MUFR2aElyclkwc0svS3pT?=
 =?utf-8?B?VFFyUmsvNnpsdGJKVGFCc0VCb2IreTZuUURvZGJ4ZWMzTG15bWdhL2ltQWJX?=
 =?utf-8?B?RmZZZGNUMGtJTlVOT3E5OC9wNVowTkhqZm5QOFBvekRwRFNZTUFzMzlrTXIr?=
 =?utf-8?B?UXl1NE4yOGJzeklmWG9GMS8xMVhUMklCaXBadkEreXFweEVJcjJta055Z1FC?=
 =?utf-8?B?MVdiZHBreGRSK3MvOENKcDc2Z2VteUc4a2dIZE5QeFJvK3VpQ0ZnS0U4UmNF?=
 =?utf-8?B?ZFR3bzdkUWZtUmFjdEVmdFRCRXl4MlVVOURkWWU4QTlwQkZnN29HWklaQnJq?=
 =?utf-8?B?NmtpU3A0OTZpaU5lZVF1VVBRTzJvTjNjUCswU1UwUGtqUUJ0VlF1dmFtRHJY?=
 =?utf-8?B?TjJ5dm5YeUlSUExudzdobGFVUkdpZ0JQQmVWUi82WFpGb3EyZnVCNHRvMmY4?=
 =?utf-8?B?YWltbkUvUkR2SHlGVTc4TSt1Q0ptdU9MQjdlbmIzb3E1M01SU25TMHFJUFpQ?=
 =?utf-8?Q?lumsJLflV04RaQggMYd0D0K1q?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dac4c209-a5bf-4b67-e296-08dcd4036e9d
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB6807.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Sep 2024 14:50:38.8317 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0oLdfV5TqnI3AV0PQw/PudVrd9GRKiSfDWlB/s/KeFD9mhzbMI9ahVnNTQJO6juZ6bzqc5+zD+SeXDlvbM28yg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8717
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726239045; x=1757775045;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+yFmqTWz+pyZVS9Jpz9nfDsLzG1QD71Y3ejWNAlFbFE=;
 b=Pyp20G4mVQPIsShVCGve5MuTLnrioen2h7XTZVZGWzwD7bc/ZdYrM8yp
 56eAqo3cIUSAPdM/QWRzlx221JirR+TRcCSem3i9MTog0RAaZiyY4p66R
 Twav4i/wTLhq1SxhDDTY8ymbfGxjZ5G0AppDLg8XNhpv98m6TH3hwfzqE
 SGlzsxjkTA8ZPyGdqqqCfll74SbpSTtTMMrY9ryaAV5btgUWsf7v/HzX4
 bkwikxYXfphR/8HBTGUoKekGGWnOUouAWvq7cpkxXKqw0ZO2ORaRMSn8B
 hHule1a8G7x8HBSRXv0PMFj1iIzVdlS+YzDwyR2QtpP8uAlKXuwubAuso
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Pyp20G4m
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [EXTERNAL] Re: [bug report]iavf: deadlock on
 detach/attach vf to VM with net_failover
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
Cc: "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

We were unable to reproduce it using the following configuration and steps:
HOST:
  PF Intel Corporation Ethernet Controller X710 for 10GbE SFP+ [8086:1572]
  OS: Ubuntu 22.04.4 LTS 6.11.0-061100rc4-generic
  FW firmware-version: 9.50 0x8000f177 1.3597.0
  PF version: 6.11.0-061100rc4-generic
VM:
  PF Intel Corporation Ethernet Virtual Function 700 Series [8086:154c]
  OS: Ubuntu 22.04.2 LTS 6.11.0-061100rc4-generic
  PF version: 6.11.0-061100rc4-generic

Steps:
1. Spawn 1 VF
2. Use script in order to get xml of the vf, it should spawn in /tmp/temp_vf_config/
#!/bin/bash
temp_dir="/tmp/temp_vf_config"

if [ -z "$temp_dir" ];
then
    echo "temp_dir variable is empty, aborting to avoid destroying filesystem"
    exit 1
else
    rm -rf $temp_dir/*
    mkdir -p $temp_dir >/dev/null 2>&1
fi
for VF in $(lspci | grep -i "virtual function" | cut -f 1 -d \ );
do
    busid=$(echo $VF | cut -f 1 -d \:);
    slotid=$(echo $VF | cut -f 2 -d \: | cut -f 1 -d \.);
    functionid=$(echo $VF | cut -f 2 -d \: | cut -f 2 -d \.);
    echo "BUS: $busid, SLOT: $slotid, FUNCTION: $functionid"

echo -e "<hostdev mode='subsystem' type='pci' managed='yes'>\n<source>\n<address domain='0x0000' bus='0x$busid' slot='0x$slotid' function='0x$functionid'/>\n</source>\n</hostdev>" > $temp_dir/$busid-$slotid-$functionid

done

3. Create VM
4. Attach VF to VM while VM is disabled, then enable VM
5. Hot detach VF
6. Hot attach VF

Expected result:
VF detaches and attaches successfully

Actual result:
VF does not detach/attach at all.
Possible to set down/up VF when it's detached.
No error in dmesg, actually nothing appear in dmesg.

We had to replace the XML file provided as it would not produce a working configuration. Can you advise us on any setup inconsistencies or changes that would be required to reproduce it?


Best regards, 
Jan
