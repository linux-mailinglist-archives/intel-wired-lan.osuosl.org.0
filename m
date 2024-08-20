Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 779AE957F23
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Aug 2024 09:12:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9200981088;
	Tue, 20 Aug 2024 07:12:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Mkrl3rfm4e74; Tue, 20 Aug 2024 07:12:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5F49C810C0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724137920;
	bh=XMYdGfSsbE0B3j7/BPOkR16Dch2FekHrElPRmN3XGq8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UFQ3hJeXFltPi72wV7ZlXw7hjC0F35k1qdTvJcvoRsQRa1PYAAjWT55Zluff27y3P
	 Cz2iPCg4sNZCg8eGGSx1CJmGzU3hY/k9o7h8HBMJpjaXxqsHGVq3R8wTrcjkk+t5fM
	 lWLVM43se/BUDQJxjCW/q04tvSMq5B/KUoBjFYCMwCakrjj36HxM/bNJWBjXvZv54G
	 S4Nju78NljnaYcx6j+D4EGtLzQXIzFATJDgXPMdHA1GfVudtsU3hn3FmJLmJ/Ss3ke
	 lF32n9AmXa+gVK/XJboaGsqFQn1EI1mifGbXZwsUNEdpuESskKuwb57exGD9eH0Gpy
	 1GMEyAL+g5row==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5F49C810C0;
	Tue, 20 Aug 2024 07:12:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4979F1BF345
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2024 07:11:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3496D81021
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2024 07:11:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JwjvV4wlOlME for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Aug 2024 07:11:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=morx.bar.gabay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 84C1E81010
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 84C1E81010
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 84C1E81010
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2024 07:11:55 +0000 (UTC)
X-CSE-ConnectionGUID: 9Es6pveTSZmEY/siK82yUg==
X-CSE-MsgGUID: zIjyq5otT5iA4IDL67OoMQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11169"; a="22302578"
X-IronPort-AV: E=Sophos;i="6.10,161,1719903600"; d="scan'208";a="22302578"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2024 00:11:54 -0700
X-CSE-ConnectionGUID: SH9e6PU7RFaqm6OPIUAznA==
X-CSE-MsgGUID: 2QftGSXjSbyxjrPGm+IPOg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,161,1719903600"; d="scan'208";a="60950311"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Aug 2024 00:11:53 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 20 Aug 2024 00:11:53 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 20 Aug 2024 00:11:53 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 20 Aug 2024 00:11:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ygaSzp5rLAotdowpDlNNRKJql7RErOX4LrmPL9dVHe0uMFATTUHxiqACWAmhAUqIVrYpqd8LkjBpH1D7ePOIvUFBXjNplJ8wft2bbpjmWtExtK6iEke9KpzC0S5PAD+cu3ZDS6pmWZ0gG2WaQOziAP1HhdRbHUjkX+YQwKrNKBPgmrofCyemvY7tXcPKFSNXksMTlcI42jtp9vML/r1LUndtXKFFs+BAfD/NJiowHdkadrM8CeqXhn1I1oIohl5QPTO4ZzHFsxFUr3rzl1ife3AGP/1Ttmw0dYZPlNEj3Yv6pDy/YdbxrFaxIWVRd+xMdwbxN3B2tr3nHlqlsxxOhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XMYdGfSsbE0B3j7/BPOkR16Dch2FekHrElPRmN3XGq8=;
 b=UsCA62qLSuICO1xM9zdkbJnR+1JPGE0SbxB5g3aqa8Crz0mpNsXCbrdIX/NB6laG7d1CS1ICUYSVTTiz9TWBiMu2SvouHC7wzOVa+d8qflbfYo6VPz2fwshpAmkGPxScieyhPLFZGJ482fonm4v0DvtqOWZnW7yDFaUZSm8NzmQvlAWwglLEXX0YP0Xnn/kDfo+T9Yc7E9gFU0ORFtXqCj6LzPkAlJY+il2F+VxBuysPtdfKgeMKRcmKxSce/KZG3ZHE+eNarElNiLkSbmI8g9kAj0I15AJvp7Rr8ZUhEk4JWyhnwt5upeFEeX+xeEdYuzomIEZ5ckXW62kSA+hpkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SA1PR11MB5803.namprd11.prod.outlook.com (2603:10b6:806:23e::8)
 by DS0PR11MB6494.namprd11.prod.outlook.com (2603:10b6:8:c2::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7875.21; Tue, 20 Aug
 2024 07:11:50 +0000
Received: from SA1PR11MB5803.namprd11.prod.outlook.com
 ([fe80::e976:5d63:d66e:7f9a]) by SA1PR11MB5803.namprd11.prod.outlook.com
 ([fe80::e976:5d63:d66e:7f9a%4]) with mapi id 15.20.7875.019; Tue, 20 Aug 2024
 07:11:50 +0000
Message-ID: <9860b97a-871e-4ce2-8d24-dbe3d217773e@intel.com>
Date: Tue, 20 Aug 2024 10:11:43 +0300
User-Agent: Mozilla Thunderbird
To: Vitaly Lifshits <vitaly.lifshits@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20240806132348.880744-1-vitaly.lifshits@intel.com>
Content-Language: en-US
From: Mor Bar-Gabay <morx.bar.gabay@intel.com>
In-Reply-To: <20240806132348.880744-1-vitaly.lifshits@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL0P290CA0014.ISRP290.PROD.OUTLOOK.COM (2603:1096:950:5::8)
 To SA1PR11MB5803.namprd11.prod.outlook.com
 (2603:10b6:806:23e::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA1PR11MB5803:EE_|DS0PR11MB6494:EE_
X-MS-Office365-Filtering-Correlation-Id: 01ded7b7-48ee-45a4-a6c8-08dcc0e75c76
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?THhic0lPM0xDd0JkL3RUdEdnVlNmTWUzTU9QeC8xdENrYm9LY1Y0cFh4TEt2?=
 =?utf-8?B?UjVPaUovYVZ5MzkxenhDR2xBaDJpQm5LYU9hbkRydFZRNENFS2hXOERGOUNl?=
 =?utf-8?B?NW1temc4RWF5V0hqR1dHaVhBdXZZOE5KZHM2VXJkQ2VUOEREYkNFT0NxNER4?=
 =?utf-8?B?M0w5QTZNNnljS2cyR29wdU1DVXl0TTVDM2lmSmZQc2JIRG9oQkdOUWl4Q2cr?=
 =?utf-8?B?b21TSUFzMWdzaDhVL1FQQ2dlUUNTYlgwTHQybTJCMTBLWGhHL09TWFIrV1FP?=
 =?utf-8?B?bmlJbEYzcTJJNlpuR3Z0UnRFeWdxb1l3WHk1TWhyR2JvZWJScmMzbHEyMHNv?=
 =?utf-8?B?Z1NzUEc3MHdhZE9WeWxhRjZYbnJrdUZzZFM4S3F2dWdCR3VwM3VUSXFPUDRo?=
 =?utf-8?B?TjZuVkFYc005OWJVYWc0Q2tVbkdtU0hUd2xIa2lCNjBwV1dUbGhZc3hrNXpo?=
 =?utf-8?B?RWdBRWhRNWVURE9Pdk42Y2F3c3JhV1BjeEpNLy9IZGI3UzFacE9abGphZXJJ?=
 =?utf-8?B?dmZZbTFIaGhUL2VkL1E0M3ZocEZsQzE0V2orRjZFNitqZ0JhcDZ2SFZiRFFm?=
 =?utf-8?B?T010akxKQ05WVjlla09WQlZwTjFpRkxBNVV0R0JjdTB6NTQrcVMrdjh2NXla?=
 =?utf-8?B?SGYxYzliQ1QwTlhVUVBvRTRGY0tTRWwxOWppUXFpa0tOM29xTVVkREtyRkhv?=
 =?utf-8?B?OHVta3Nnc2R6ZW4xOXZwbnVUOVJLdXJYN3dhK1hZVnI2N213TkJMdmVkSWlo?=
 =?utf-8?B?T1RRQVlKdGdZN3Fwb0hyQWFMditnejdObHZ0anhSKzdsUVBEKytWckRWVmJV?=
 =?utf-8?B?bEEwbjhvd2tJWDh1RUdtT2lqSUc4RUFjZTBvdXhaSGlwZGhsYTN6SEVmVW1z?=
 =?utf-8?B?eVZ4R0crMWtINEFlYy9lRkIyWHhTSWttQ09vRVlSSXo2UWNjVHBOSjJyVEV5?=
 =?utf-8?B?VC9ETmJsZTF1NkJrUHMvSWJGTittTzg2Z2lzZ3JnVnhGdFYvNkdWbEJwRko4?=
 =?utf-8?B?VURqbGdZdUFjaHlsemhEdTFQeEhmenBvbG5NNUVSS3NuNWFPQXEzclErTVVu?=
 =?utf-8?B?WG9zdnE5NVpaTDVtQ3Z0SitjVXpFTzJnTVFSYXNva3E2TXhSd1pXS1JyMjdV?=
 =?utf-8?B?ZDVibWZyYjZyMlV4blY4SzJ3eHFDdHpGeFZrcEwxcmhza0Y3Ry9kSGFqMTQw?=
 =?utf-8?B?VXdUSFV1NkRkb3lvaGRrZWxyOUdCTVdvZE9qV1ZRbGJnMldZVTBzZUpjeFJB?=
 =?utf-8?B?MGtmNnUyUFRnajhlOU9UdmU1NGlhSVIrN2hWTEI3TGR3VStCS0lhYlI1STBp?=
 =?utf-8?B?bzgyYWFMNkxCS2V6MDhRR3hYWk0zTzJoSFZHY0dNV3NmbTVPcDNpMG5nMHc5?=
 =?utf-8?B?SnJvY0RpMlVnTzlPaFdUdUIxVGl2VnQ5bDVYN0NHYmJad1JTMTJKZHkza0FF?=
 =?utf-8?B?YkdvNVlZU2NhZkZEemNZUmp3eEx1eWJUNnk0dE42ZWFxcDArY1BzaHFCQXFB?=
 =?utf-8?B?MmlLam9KLy9wbVk0STduaGFqSmtDU0RoaStjQW12OE4xUnFXRGxpa3RzelRx?=
 =?utf-8?B?STQvTW1GUGxPUjE1TzNFakxEU2kyTVVMZFc0ejlZTW40SE9udHhlSVkrVTN6?=
 =?utf-8?B?b01QWVdjRXQvSUp3TWVkNklvRXhFVWJZUFdiL0o4TVhrYlZhQmR0VC9wSzVE?=
 =?utf-8?B?VmEyWUo4RTg0UFB4bUxMSGVJbEM5bVRqYmxVbGl1bmV1aDNnYldlNEcxcnJz?=
 =?utf-8?B?Y3VwbExHTk9LTEp2d0pYdVExTm5KMGNPakUvSmJBYm11VW0vYnNMT1hzLzlh?=
 =?utf-8?B?U3Rmd1c0bUFKd0xJSEZtQT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA1PR11MB5803.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VzRFZWRaaUd3VnNyOEk1eWEzUGZtQ3lmK2JpdmZLWjdwRzhHQ2t6NWpGTkdN?=
 =?utf-8?B?V0VmcWV1cmNFWXE5SGZmQWR3SGVkQjNBOWdWc0VZOGxQbXNGWjRZWURrWVBz?=
 =?utf-8?B?aEV0WXJJYjl1UDczQ0xuSFB3Z2xMcXpZbFNOOUlJQ1VRNWFTKzk2cnhUMGxk?=
 =?utf-8?B?Ny9MQmNXUG1CZFU2ZEtobHdjd0plQlAxVGhsMVVQamlOczAvclpPbXBsckhx?=
 =?utf-8?B?SVloaDFOMXYyRkh4aWc4Q21OaitGaDgzUjZBbHFLazNyaUdoZm9TR1JhSG5w?=
 =?utf-8?B?OWh0b1g3QXNjT3l5YUVjcWpHclRsRHdrdjVJK05tUHo3U1Q3K1lIMHN2cTJM?=
 =?utf-8?B?YVBoZkJNbEdTYnBicXg2M3o1SnNYNUlEZURkZS9ZalFQTDRHeVJIYThLdmlE?=
 =?utf-8?B?MkxxaGFEc2FwWVBnejltOFpjS1lyclZkK0ZVNlo3alNGeTZHNzhCdlAzeWJT?=
 =?utf-8?B?T1FkMHF1bGowZmZsRHZjMlZ4U1pkdm5OODRZd2YydExSeXhrYmU5Wmw0eGdo?=
 =?utf-8?B?amZIQ01XWmhkL1hNMGFaMjJFNTNrSFoyUUd2RWhUdVhaa2dmNVJILytGY3E2?=
 =?utf-8?B?eHh0SHZDTDF1SEIrc3ZyZ1cxamVFRkxOK2QybWtSTnpiM1QycHVvM2VSa0pa?=
 =?utf-8?B?U2Z6UTR0blpsc2Z3ZVVXSkEyeTFScUJLNktGTmxadFd6OTRBQklaUUdyemtw?=
 =?utf-8?B?dktCWVVsRFJjemczQks1QU0wa1ZyemNtU3VnU1cwZ3VNdHpsbGN6QWhJcjhp?=
 =?utf-8?B?VVRzaTZScitnd1BvQ2xFaGNCazJPeDQxK3hjVWxBNEVHWWpXWWx0NXJ3cllt?=
 =?utf-8?B?VUdDLzdESk9QYmgvTFpNaFh6TkkrUjlZN3E2ajNzaCswL1BpUU5hREFmemR3?=
 =?utf-8?B?NEhGMTF6NEN4YTRXV1Q1UCtTVzFVU210L2NXbjgrUTZOUzYzNDBoYXpZU0Ju?=
 =?utf-8?B?SkF0UVFCeDI3L2dEMFNqTEM5dEg3bkFCRjI4K1ZLSmY4RExBSHBSRU5LbW5v?=
 =?utf-8?B?NXF6TGxJWDF0R2ZTOGk3bE04SlNjMm02T1ZwaUhkR1Jtak9EdEdFam5tTEdr?=
 =?utf-8?B?eEhhajFnQm5jQUhPZ28xL3k4eGMxdUYyN3IyQWN6QitJWUgzSUhsb3ZpZlVm?=
 =?utf-8?B?TFI4bnlyeTBoVERIb2dhMUJHcTcyQTA1cVhzQm1WVittNndaSFM5YjU2VWph?=
 =?utf-8?B?aFoxSlBPeFBmalRaNUZ6U25WRHRjOTdUaDRWY3hNTVJnMnBxZTZUTlJvNnlv?=
 =?utf-8?B?QVoyUVdtanBEb0R1emNsM1Q3KzVXUGZqejJMd0N3cEZlQTlmMWg4RlZWaEwz?=
 =?utf-8?B?YzRyb3pBTFZoKzdKblVYRVdZWEFvR0JMRE55OEl4eVZtQktyREdlYnQzaVdo?=
 =?utf-8?B?dFlJSWM5d0EzclV5M01lUCtzRGFraDRvcGphYWtPNlJFOEdFM2s4bzVhYU5W?=
 =?utf-8?B?MXlxeVVwMFNteTJTZFB1RmR2VU1ZUG05QTNYaXNLTUtzeG9EQmIwSlBqNkMx?=
 =?utf-8?B?UnBtaFBxQUFnUXBQc3ZzbWNrbXpmODVEUlJ5OEgrclp2c3RWZDQwTEIwdkJt?=
 =?utf-8?B?UnBVd2FCelBsNzN6SWI2YjJBODA1cElWV25lUlZabHluOVB5SGNhMDhOTVdr?=
 =?utf-8?B?NDRRVkJSNXIvb1pVN3BPMHViUlZ6SHZ0TXVuWTl5N2FvbjdUUWNuU29MWTkz?=
 =?utf-8?B?MlhhamtUWURxRjJNOStzMGd4YXJydWlnOVh2OUZQNEgrZUZCRFJEalUyRFVv?=
 =?utf-8?B?OFhkc0s5Umo4clY2Wi9YOG1aU0NsTFlGYm52aDZNcFVvT3NXMDN4L0hmVHIv?=
 =?utf-8?B?ZTFJZXpWK1pGc0l4VHp2ZkxLQWt0SzdVUUFEZndyTVd6UTAyeHB2bzVHRmNY?=
 =?utf-8?B?bUttT1JaTEYwNy8wYU5DMEtDNktzQjdYbkt2UWZ1eHZBRU1KUkVCU0o3ejdV?=
 =?utf-8?B?TncrVlFCOVFNTEU1N0liZUZnZlZoTFdHTXkxOEhWcmJHUFNCcGVoNHpRdCtF?=
 =?utf-8?B?WUl6ai9sUjIrVUVUZ0w5QU5sTmhIK0E0OXc3ZytvakgxbGZWUDFvMU9NWGc0?=
 =?utf-8?B?N0kxeDBqTnZpRjJYb2JTQW9rQ3VCRFFmejdkdWFQTWNIRFJBbSsyYnY5VUl3?=
 =?utf-8?B?QmhjZW5XQlFHWUtDU1I4dFFpaHBzSlFBVmJoa3dsMkMydDhOZnZLYVN6RWJt?=
 =?utf-8?B?Z3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 01ded7b7-48ee-45a4-a6c8-08dcc0e75c76
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB5803.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Aug 2024 07:11:50.3664 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sHnquoQkPIVXgGT4qWCEL8cUqgaUv4iBXS0w+Qs9T5oqmZWr2RQ27pdFnL8lCv27XgpThnhEFS2Qa8cNe3LD2w/tChs4VH8YYfT73rp1T4A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6494
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724137915; x=1755673915;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IoSmI45r+3zW+yb466/P5pGpFc9wPHSX+8X1sC8eaaM=;
 b=dbPE+JJvJ7s3CfNMJon2rQH+BPy5pTR8PiCfR/SNd6UEEZqffNb8Yik0
 DmIDn8ZY+8p1bJhxQdsoPmIGVc0fprHT3jX+GF6SGCtYNArYgwFZoUfVB
 7UQfshZG1+U2/A1R+ZQWS2m9kC39+NWF/ds8sISjtFEeeH7bXBdlEIwtt
 ltKv0mVnKgbaCsqQvs4fBhHrjWPs45dThzS0fbQV0sVMKT2AeHw+1Irss
 A7lwidevk+d7Bqhhws5jLBSudiUEtFtR9uVzP/QsvaB9y4gLp0pstaa1g
 bCN2nSOKbcKVOxVtynInJQHPtN6ZgpmjNCF+nawbRTuuzqImn1XdxAx9c
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dbPE+JJv
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 1/1] e1000e: avoid failing
 the system during pm_suspend
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
Cc: yu.c.chen@intel.com, todd.e.brandt@intel.com, rui.zhang@intel.com,
 Dima Ruinskiy <dima.ruinskiy@intel.com>, lenb@kernel.org,
 venkateswara.rao@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 06/08/2024 16:23, Vitaly Lifshits wrote:
> Occasionally when the system goes into pm_suspend, the suspend might fail
> due to a PHY access error on the network adapter. Previously, this would
> have caused the whole system to fail to go to a low power state.
> An example of this was reported in the following Bugzilla:
> https://bugzilla.kernel.org/show_bug.cgi?id=205015
> 
> [ 1663.694828] e1000e 0000:00:19.0 eth0: Failed to disable ULP
> [ 1664.731040] asix 2-3:1.0 eth1: link up, 100Mbps, full-duplex, lpa 0xC1E1
> [ 1665.093513] e1000e 0000:00:19.0 eth0: Hardware Error
> [ 1665.596760] e1000e 0000:00:19.0: pci_pm_resume+0x0/0x80 returned 0 after 2975399 usecs
> and then the system never recovers from it, and all the following suspend failed due to this
> [22909.393854] PM: pci_pm_suspend(): e1000e_pm_suspend+0x0/0x760 [e1000e] returns -2
> [22909.393858] PM: dpm_run_callback(): pci_pm_suspend+0x0/0x160 returns -2
> [22909.393861] PM: Device 0000:00:1f.6 failed to suspend async: error -2
> 
> This can be avoided by changing the return values of __e1000_shutdown and
> e1000e_pm_suspend functions so that they always return 0 (success). This
> is consistent with what other drivers do.
> If the e1000e deiver encounters a hardware error during suspend, potential
> side effects include slightly higher power draw or non-working wake on
> LAN. This is preferred to a system-level suspend failure, and a warning
> message is written to the system log, so that the user can be aware that
> the LAN controller experienced a problem during suspend.
> 
> Suggested-by: Dima Ruinskiy <dima.ruinskiy@intel.com>
> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> Link: https://bugzilla.kernel.org/show_bug.cgi?id=205015
> ---
>   drivers/net/ethernet/intel/e1000e/netdev.c | 19 +++++++++++--------
>   1 file changed, 11 insertions(+), 8 deletions(-)
> 
Tested-by: Mor Bar-Gabay <morx.bar.gabay@intel.com>
