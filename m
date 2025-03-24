Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 91513A6D812
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Mar 2025 11:07:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4EBF981EFE;
	Mon, 24 Mar 2025 10:07:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kQXGWb_l2_fs; Mon, 24 Mar 2025 10:07:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B25B681EEE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1742810832;
	bh=T7AcjG23VHCcksh1R4n8hFJN0IaiLfCP6cZbI3ZYgws=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xMgEm2oa6Pfsk27pZ1TNQaYxf6Ev/0/qGbc7SrBB1hIZ+PBjF4xBxgVOt1IRl0kbz
	 2EG4QIITmJqfb988q5AikktxcNbrgyMT49uGAjgBnrrR2u69yU5/JDznoeNDlwUjxO
	 HxkUSzRVHl+8CxIHO88JwWS2dokEXt4U+LUvKNCSZEOJ5dlxfqXMRax4WGs/a7wb7W
	 IKpk05yP0nvNXRW+3yHZ2boNvYLFfkRC5IIYHBF785dNh0O/+sLSV8QrPgsxzgs/Hb
	 /S8ycCTjQ946l/JE0Ry3SsV+qfhVV2JmOSX2BJb8le3b33nIAUps2hVTWYYu+fAbOE
	 QAloVzDZVTvOA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B25B681EEE;
	Mon, 24 Mar 2025 10:07:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 8DA645E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Mar 2025 10:07:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8AA4B40922
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Mar 2025 10:07:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YI44Ef9TiKVt for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Mar 2025 10:07:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D1B8940898
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D1B8940898
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D1B8940898
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Mar 2025 10:07:09 +0000 (UTC)
X-CSE-ConnectionGUID: kdFZ4od3QLWm+KUlSkRIcQ==
X-CSE-MsgGUID: 2v8uj7h3QfShmCW53/YeJg==
X-IronPort-AV: E=McAfee;i="6700,10204,11382"; a="61403738"
X-IronPort-AV: E=Sophos;i="6.14,271,1736841600"; d="scan'208";a="61403738"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 03:07:08 -0700
X-CSE-ConnectionGUID: B1S4z8ZjQJGnxG3sVBnTYw==
X-CSE-MsgGUID: TlpYMBHUQDKa8eDOqQGcPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,271,1736841600"; d="scan'208";a="129112952"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Mar 2025 03:07:08 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 24 Mar 2025 03:07:07 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 24 Mar 2025 03:07:07 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 24 Mar 2025 03:07:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=X5OxWP1rDFTNBqEcbkY8vO2j2ml5q63LelKyVtuNAnhHKkZNUdjvYy6bdbgPblFeQYu4LFjh4JHH6edMQdfvh9VSHnuNQWr1zj34/9XZnakPBVMeQFR/38r2ZH2SO47qEN+WYwBLTe/w6XhHQuyHVSMqeT7VZrTO/B9PMtfF2upv5+myaKQQmgqmvin3db7SLfx5IeV8tibsFbqCRgV2Vc3jQuJq7jNLB5mNYnUgl5UU7pKgdONIAxrSqq5ETJtjS0PyfhXAPir9Y8noP7rQlFitpzhO5enWFnxsFAyI7G7ARqpj77X1H2cs2/YMqSIqCd6iR0roFGl+5z2/oTzI+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=T7AcjG23VHCcksh1R4n8hFJN0IaiLfCP6cZbI3ZYgws=;
 b=y+4+blWB1RJtqq5lJLdUCaM0pNiVhfc8ajACvfdzfOau5FHNblgo69rtTCvYHKIFpMA5JqPfjC35o5AVL1UFYWChcRH0Jghq9xsFaUMP/7oFPWBvPkxM4anMhOijVibuMCeGcYaYy6IEvOekle2HLJeDIbJRuXS9EyxfStMvKYNjUrZgwVTjzGk+llTgQ1428QDMsLjLrp8u9gUlMuYIdZ9rWnNRC9V+iNDlMAUwYU1bqKQd286a16w/YN24AmCZkfTcd+dGldf4yl1nQgsJyVMcm5y+CXU8vQN1P2KmDPK/wAU7t1znr3wLVeQqEtf5fAGZ4jkT5QYu/VUpLYY4qw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by PH0PR11MB5784.namprd11.prod.outlook.com (2603:10b6:510:129::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.28; Mon, 24 Mar
 2025 10:07:05 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%5]) with mapi id 15.20.8534.040; Mon, 24 Mar 2025
 10:07:05 +0000
Message-ID: <a3022053-18a9-45fe-af14-cbcede33e94f@intel.com>
Date: Mon, 24 Mar 2025 11:07:01 +0100
User-Agent: Mozilla Thunderbird
To: Michal Kubiak <michal.kubiak@intel.com>, <intel-wired-lan@lists.osuosl.org>
CC: <maciej.fijalkowski@intel.com>, <netdev@vger.kernel.org>, "Michal
 Swiatkowski" <michal.swiatkowski@intel.com>
References: <20250321151357.28540-1-michal.kubiak@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20250321151357.28540-1-michal.kubiak@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: WA2P291CA0014.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1e::25) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|PH0PR11MB5784:EE_
X-MS-Office365-Filtering-Correlation-Id: f3b8a1eb-fb27-433e-ef00-08dd6abba171
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WStnVFN0ME5FMHlWbkpab3RxVlpRTG5VNDNVYmkzT3RTbWhFcWxRdjFPOXZt?=
 =?utf-8?B?d1FMOCsycWFJWmluYmtadTBsbDF4dU5YQXg5T01jcythMlNGQ1R2YUdrWTlL?=
 =?utf-8?B?SUtDdmJONzJ4ZnNtTm1JaG9CTWJjTGp6VmFmc1I3TVByMG5FUnh4VHFSWkZs?=
 =?utf-8?B?RHBrWEgrRGhYMFVua3RzQkl3a0g0NkwvSFFveWNmb01oMzdxd01ZUVZ6ZDFt?=
 =?utf-8?B?Q3B2RURKVzNnVHAyYUE3YXVmUUFCUVp1YVV4Q3l3WC9jMlkzeVZUZnhUbk1H?=
 =?utf-8?B?U1NSMmlGVmY5NTMraldOUHc2U1JyN0h2QXlxcVBkRDFrZTErOWJmVDZnVkRH?=
 =?utf-8?B?cDhWZjB3WDR1b1M2eHg2T3JWZVFzNGV1ZWFXNmczSWVpeWRYNTRJUmVRUnZ4?=
 =?utf-8?B?NUJkdW9tR2ZrTThjTndhRWhiZkc2djk5MGZMSE1SNnNOZ1FEY2kwbWNGZjFW?=
 =?utf-8?B?bDkyMU5UYkV3M0pxUXpLcGpHWUhvV1pEWGV6R0xhSUNLd2ZteG0rdmJJLzVv?=
 =?utf-8?B?NUc4eXZTUnRZb1BKVndMaGd6RC9jeHdyQTFFODR5UmZXaWREQ0VzdzZaNzQy?=
 =?utf-8?B?QWlPZGsycFUwVDFBRXdVTkpnWVdBS092bUFQeHhhY2VjcTh5bnRQOG0wL3RO?=
 =?utf-8?B?bUZGZ042cit5K2pPWE5mSFhTbmthVG9JUGJMQSs5STVJSTRkWFVLNkNRREJw?=
 =?utf-8?B?TlNvUmRUYXZsbkFWWVp3Yk43dTZJN0JIKzZLT2FSYkRUYm1BWG5OcEJULytB?=
 =?utf-8?B?RXp5NVFDcU9DRENGY2M4UHVzT0ZFa0dpNFdMenQ0NUw3OVdoaVVjMUJBZWls?=
 =?utf-8?B?VDk1ZVpSbkdVREdOYUc4S2VRTUxnb1p0VnRuT0tweStLKzZ3ejV0OUlSRHQ1?=
 =?utf-8?B?M0IvZ1U1aUVwNVFXaWNEUkFITzJRSXQweEtadWpnMlZQNDR1N2Q3R040SWZY?=
 =?utf-8?B?KzZTL0xwMklGM1RWOEY3ck5ITXZrRVZ3OC9sWWJINHVPODE2OFpBZ0hXeTgv?=
 =?utf-8?B?c2NpeXpkemdKR1ZreGhoL2VKaXZRTnplbzNnVW9WbVhxaVFyOS9SYkNZS29U?=
 =?utf-8?B?Z25vSFpMQVNjUGZjVHdzdFBZL05Ka0VrVnVyYUVpVTlxWHFDSXFtYUw2b1Vs?=
 =?utf-8?B?azUzdmZpVGFQNi9RK0t1Y2pBTUkvUUg3dzBuNjMrNmFrTFdGUXkxZlhxcll0?=
 =?utf-8?B?OWxJamlFbjVWblJlTFd5V0s4VGlaWDhFS2Z2WHJzMGxBWVpGWitCaHMvRTcw?=
 =?utf-8?B?RUdjOEMrS0hocW5obFhRVWcveHRHdVNpY3hvbjNIS3IwVjdub2tZNHNkWk9q?=
 =?utf-8?B?WEdVSE1mNWVoY1JQeWVqMVZGOWZueFlmRk1wWVlGNDBNdTNuK3Q1MGRiNDJ1?=
 =?utf-8?B?ZndNSzhSQTRaWVowcm92VlhkRHdaLzh3eXdvMWUyYnRUWkdmdjNJQS9UNWtH?=
 =?utf-8?B?RjNncEVlSitmRU9NZlN0R2NQNDF0cldhWHVSMjlRcXl0Yi9GRGx0ajl0OE9B?=
 =?utf-8?B?ZDlNYy9xNHNWd0hQMks3dmE1WjNvc3VZbVZacjRpdkd5bUdnWlluY3RJU0F4?=
 =?utf-8?B?eGtEQTgxbVJ3MlBsR20wbnhpQytqOE1mR1NCT2NzOGVJYnRrV2xRWXIwQm93?=
 =?utf-8?B?SVRSRVM4NkY4VHZ4OXJHWnFXcldhM0dFY2F5cms4elFTV0swNVd0TjlpdzUv?=
 =?utf-8?B?WEZENEdWUmkvSU5XWWZNMFdhYW9nTFlhOHVHVElML1FPR0hJVCtUVnpUbkRW?=
 =?utf-8?B?Sy9XZnE4c3VkYis5RWtuLzgwY0pJMVMySi9EbE1GQ09jd2F3eFByM0xxczVu?=
 =?utf-8?B?TmZpdGpnWDBpNDJMUkoremdwMkxQU3djSXR6YlBnd0Z3SGdWZGJRUTlVNXBM?=
 =?utf-8?Q?FTADFkwB2YZ9Y?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Q2Y1TnBaa0lEblZtNHAwbUphOTNwUUhpa0ZwTU5NbFlGR1B5SDY5U1dQcmRk?=
 =?utf-8?B?YTJmd3htMzhnemszUVRnQ1VGQUlPZVhwaHZtV016Y3lQaWZtamVsTHZhMEVS?=
 =?utf-8?B?aXhMZFlFdWtSeTRpdElZZmtYRGpmWUtvMVZwemFicndhUlE2SmxDcEpzajAx?=
 =?utf-8?B?dWR1WUJKWVBGeEZvWGd4N3JmRTN3YVpEZGVMM1pILzVRRE1ETnNxNTFsenRO?=
 =?utf-8?B?ZWJhSi9CaVowYk4ydHNDV1IzQ0NyNzFZaW5IcGJ6eGVDcEhmZ2JHZDYweTE5?=
 =?utf-8?B?enJ5dUlYVHluaFVUSFp5SUhPRjBvNmpTMmZzZTVkbWxpam5pOTNtem5rc2oz?=
 =?utf-8?B?ZnV0YmFOeFNyWS9NTTVyNlowSmxJbkszeCs4NUlqWVJNRTJKNnZra0tQUS9q?=
 =?utf-8?B?TmF6UFZjR2pkVEdhSDUxUzZmZy9tN0NZZHNobW9zUno5cjA1TFlCdWE0VDBm?=
 =?utf-8?B?NnNRTFFBdDdiSHM5MU9KN29HK1NvSHdUT2txS01XUXFibU9BaUlkRy96WUZ2?=
 =?utf-8?B?elVGVUw3YzhoVVJHUzJ2aWRUaXV6dkt1NmlKWEFRWXRNaTRhVTJOa3JTZllB?=
 =?utf-8?B?V0FvY3dVU05ITzN5WUJ2ZTh0ZDZGY01CdkNnWE4rV3ZMNjVkQjQ1UW5FaEkx?=
 =?utf-8?B?aG1GQzlxeXozdCtlb2srRDU1L1l3N0JWQzA5NThrSXV4c0ZpZHBndmZlT0Nt?=
 =?utf-8?B?MU1pRHFJR3JCa2lmMVc4Q05kU09JeThTdStoNXFzcTNNamt5M2FkRG4rcS8w?=
 =?utf-8?B?QnJuclRJYWF1QkZML0cvb0dLR0E5K0txYjRLVnduS3FLbldFT0NjcFpITktC?=
 =?utf-8?B?NWQyUnlJNzZxdUpnSEhBNnZpdko0YWNQM1VWQ3hUL1dSU3dKRXVURldoTVlR?=
 =?utf-8?B?SGVIWFpoaE5NWjlRandkTEhqOE44elA3dDFYV1pUczJwYXlEK1dPUmpSYlBO?=
 =?utf-8?B?bVRKYWFwdzh4czZlQ2p5MDNxbmFIa1YvaVIvYWpKVWRhQzFKMzVUSTEyWitP?=
 =?utf-8?B?aEM3MktRV3B3UWNHY3FkUmNYTXVVZytkZE5wMFJRNU8zNXEyc3QyUDVDbS84?=
 =?utf-8?B?d25kcEx6SnhFSWVaK3lObE1WQ24zSHRRbHp2cGt5dkZ1UjZjZnl3cEpqRzho?=
 =?utf-8?B?VEdRNStzVlpPRXZVUC9PSmRlR2xxUVZKN0J3WThBcEU1aFp4SENMVWM1UEEv?=
 =?utf-8?B?UVBnd3NDZ3R6SEdFNW0wWDdkZTQvaWRSdktvTE8wNHc0czRuVnBOd0o1QWE2?=
 =?utf-8?B?RUNkYkt0azJGMkNmMmd1dE1WSUhEeCtMdkpXTmdHU0k1WFVsNmkrTWdiSmJZ?=
 =?utf-8?B?allLdEloTmNWMnYzejJMRWNjOVk2U0p2QnFpZDRqTVpCUHZDV2FBRWJiR3Ez?=
 =?utf-8?B?UnFUaHhsLzlkT2FiZmZWY05wVmlMNmprUEtWL1VVNlJ1a0g4UzRWZUR0V3pL?=
 =?utf-8?B?Y3EvRmc2d1dkR29zdjl5dTFwNlVtaWMxL2R2bkpWbjA0RDVoT1NzQVRxSGR2?=
 =?utf-8?B?ODNDSG9aZ0wwQmV4aVczSFlqQ1FGdDczSkFzZVdnOFEyQTlweG5YSEdkRXNE?=
 =?utf-8?B?VkJRSVI0WnhkeUlrYWNMWkNmZ1JIbGJqS2wwSmgzaC95UDlsT05ETGJDZFRV?=
 =?utf-8?B?L2gyN1Z1S3BpazJrM3dLWHUvSWI4R1g5OEFpSURFc2NXWit2MnpKNUVFRFRC?=
 =?utf-8?B?VkwwWTlkR2dBZk9vS0xVN1JlS3NBdWpPcjJVbmY0WXRSUThWV3pWT3N3Y1lv?=
 =?utf-8?B?dDFsYm1DQ2gzUUQ1VGNQdFdjQ0xrK2gzWHNsdVgwR3BGK1V2Q2Jjd3BtZ1Vo?=
 =?utf-8?B?T3NaNFdGNmp2VEduSHNYdnRQN0FnNUpDSWNkaHczSm1JQkZmaG9leGVlM1hY?=
 =?utf-8?B?bkxGSEZWTldwc1B0dkkrMkIzdmV0TURXcFdHa0x5L2EvQjJ2eHQ4SlBEVDFQ?=
 =?utf-8?B?WkYzNlVQSGV2RmZWajNzUklGcE5UWTFEVmcydU5teHU2VFgwNTk5YWhUK1lU?=
 =?utf-8?B?cnlJSG9LMkxpOFVkL2szREFvVkl3dmZTL3NPcnFhMW1HQ3kzRDJiZFBzRmN0?=
 =?utf-8?B?ZnBxQ2w5OVZGTUYrT3pTRnFZaDdzQ3NjZ1dLc3UrRWRRRmdpTDVlbHdlSldN?=
 =?utf-8?B?UEIwYTF3cjJ1V2Z0RUl2VGNpZ1ZGb3JaTVpaZUZxLzU4UjFsRmlad0daM1Bo?=
 =?utf-8?B?UkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f3b8a1eb-fb27-433e-ef00-08dd6abba171
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Mar 2025 10:07:05.7504 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SM0fh1DZk7jvSx1b+ojCFfiXbcdAuA7JylcUUpESo2QwnDw4n+UKURA6b/ApCm9HASvPTaUBjLTM737tYlPPR1/SYBTLn0+H5ia6R+T66N8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5784
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742810830; x=1774346830;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=nSV8FLHWPiwV8kkYho+GKWTHcHPsSavuIIG6YTLIJb8=;
 b=F/a6PaRLtyA6Bb3wY49g2F1VDsWP66IUBiPejpXvukD6M54lflvIQkl5
 449LdBDDxAYi9z00NGPJsODk8kbsbk1HWV4uglRzwXimdwKDCw5pGVv3v
 ZdldpcmMcwQ5zpNkyl/tCuNiaOcQ7GyOzMQq2zqnBxJgwMeqRukoHc//3
 XV6qnDC+5HQhso2BMg8jqSlx3b+6VMv3Ha40ArUoAr2iqROERUqMH7uCy
 zd/MCTm34BMEwDkd75NX4XhkvdaEzdpcfytKbugBhsui1TNb8PjdC/W7J
 2slATZ0M2mvQyVpRiltyaS1DPd1TzS2bTOG73osQjYWJXfl0DM1/Wgief
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=F/a6PaRL
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: add a separate Rx
 handler for flow director commands
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

On 3/21/25 16:13, Michal Kubiak wrote:
> The "ice" driver implementation uses the control VSI to handle
> the flow director configuration for PFs and VFs.
> 
> Unfortunately, although a separate VSI type was created to handle flow
> director queues, the Rx queue handler was shared between the flow
> director and a standard NAPI Rx handler.
> 
> Such a design approach was not very flexible. First, it mixed hotpath
> and slowpath code, blocking their further optimization. It also created
> a huge overkill for the flow director command processing, which is
> descriptor-based only, so there is no need to allocate Rx data buffers.
> 
> For the above reasons, implement a separate Rx handler for the control
> VSI. Also, remove from the NAPI handler the code dedicated to
> configuring the flow director rules on VFs.
> Do not allocate Rx data buffers to the flow director queues because
> their processing is descriptor-based only.
> Finally, allow Rx data queues to be allocated only for VSIs that have
> netdev assigned to them.
> 
> This handler splitting approach is the first step in converting the
> driver to use the Page Pool (which can only be used for data queues).
> 
> Test hints:
>    1. Create a VF for any PF managed by the ice driver.
>    2. In a loop, add and delete flow director rules for the VF, e.g.:
> 
>         for i in {1..128}; do
>             q=$(( i % 16 ))
>             ethtool -N ens802f0v0 flow-type tcp4 dst-port "$i" action "$q"
>         done
> 
>         for i in {0..127}; do
>             ethtool -N ens802f0v0 delete "$i"
>         done
> 
> Suggested-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Suggested-by: Michal Swiatkowski <michal.swiatkowski@intel.com>
> Acked-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Signed-off-by: Michal Kubiak <michal.kubiak@intel.com>
Thank you, a very nice improvement

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
