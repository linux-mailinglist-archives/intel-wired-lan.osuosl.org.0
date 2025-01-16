Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 62886A13F22
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Jan 2025 17:20:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0CD67416D7;
	Thu, 16 Jan 2025 16:20:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3cMXeFo09-2G; Thu, 16 Jan 2025 16:20:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6C84541741
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1737044422;
	bh=rFWK2wBUGjqIGeMwLkpacR59ywlIGxIo0CRQZ7arHYM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=n9LRb8rkAfyIdqa4x51NUU/CJZanotwViVIaGsTR6Syx/6vkeT0izBoOD1ehasdd7
	 mFagfV6JmOLEz0BG5qkYrbiiCFr2DtBAVr1528Y+d/X2whxR0L4nmApHJQ/ZUy69L5
	 9CezgzZiYNTOgpq7cOq3y1j2cjYWUMq4u1tQhP3Of2GsoM8HaUQwKO/fSxjnD3xMAV
	 sqMNtL2OMHP2Z6DuIbcDGPPS0ct44REzHei1j9rTJjigBGKV1XWqUpB/2cvLE4EXcX
	 FOFnGJAQWa+p3jZ9q/nVAu0+8SpE/YJOlvu8EhACWV1c7O4AnYPNIutSTIHvMSk1+0
	 dwqJK5SUxAFRA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6C84541741;
	Thu, 16 Jan 2025 16:20:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 4044B94B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jan 2025 16:20:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 17AA2413C0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jan 2025 16:20:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GCNcYctgZPER for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Jan 2025 16:20:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 606DB412FA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 606DB412FA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 606DB412FA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jan 2025 16:20:18 +0000 (UTC)
X-CSE-ConnectionGUID: eUf1mzSBQCCWfs+Xz2A1zg==
X-CSE-MsgGUID: dpGfVaR4RKuj5bZuVAlBiQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11317"; a="37599480"
X-IronPort-AV: E=Sophos;i="6.13,209,1732608000"; d="scan'208";a="37599480"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2025 08:19:56 -0800
X-CSE-ConnectionGUID: f4YsChTvSk+86hpR0/h1uw==
X-CSE-MsgGUID: qREb7OfXT6SEgfksijbkWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="105391973"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Jan 2025 08:19:55 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 16 Jan 2025 08:19:54 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 16 Jan 2025 08:19:54 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.42) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 16 Jan 2025 08:19:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aGqAk2aEDbYV7az5JlCshX4YIwQRsx42aJeOtuVs1sQmYKuAzvkiguhOC1/UOsi11Ggn0lyDGhwJd34wNNJ8PpQLvGcalVwplxlO/W36cQU6tsayrqe6+cDSrGAYOQ5+sQS1zXN9WWrYO65ytDfzJH7XQbVskzH0lEoJr6jZI+c+49FRt2hgs0PRc89dMqCfbruUzP1BYweMdvIbzAaGjRIcOQv6ZeHkaOCtlliWLWaZML4wlbhVgGBW94MoypK6liwSTYjLPuBhTRbcfW3xSqeF+9JYau0EwkglTPr4R47U7zmA9kGjKtsot3JNVQpaRvqtKWa0TAvJK6fpxaah4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rFWK2wBUGjqIGeMwLkpacR59ywlIGxIo0CRQZ7arHYM=;
 b=g8LDxYo9ji6FA2HPOxQFay31djriE7ADlrLGCf6zodMqHmW6V0Wd3biqi/atVPZOL3g4YKJ0hJsqlZE/ibt0/AKUoN5QLKFfrjJz+lDrauv3WPoJo22kWAvyY/Wvlh1TQaqJ7WW/+tmKD528OU4nASmDpV95oDLl+bSwIsnPoJXl9xVd8qjIo4EyZ7d7WevqD68R2+CxGB9TI9Ku8QpBL7HaFiW4X+XjpvRjnio+QtBpaUprKL2kE5C4jSi8uFqCrOy5kRZ4tnYV5CUr+GrswGtiziZ6nGUByr+5TtkNaDqyr+jqroYB/iRcBfcBVRXvcZg346lonZmUW8KMhCEh+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by PH7PR11MB6523.namprd11.prod.outlook.com (2603:10b6:510:211::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.18; Thu, 16 Jan
 2025 16:19:49 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%6]) with mapi id 15.20.8356.010; Thu, 16 Jan 2025
 16:19:49 +0000
Message-ID: <97dffc47-3363-4a0d-983a-5620fa5ad745@intel.com>
Date: Thu, 16 Jan 2025 17:19:43 +0100
User-Agent: Mozilla Thunderbird
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 <jacob.e.keller@intel.com>, <xudu@redhat.com>
References: <20250116153908.515848-1-maciej.fijalkowski@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20250116153908.515848-1-maciej.fijalkowski@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: ZR0P278CA0011.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:16::21) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|PH7PR11MB6523:EE_
X-MS-Office365-Filtering-Correlation-Id: 09a0f673-de4c-467b-2623-08dd36499976
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dFA4TXQwNFBuS3dSU0lxTS85ZWppdVV1VXFKdnFBak5wTzF6UkFqSldKVlNU?=
 =?utf-8?B?S0xvaVdmTlUrM1Q3NGh3NWM2alZDZE9JVHRKUE5XM0ZMT3hkNnZoTm9VT0M4?=
 =?utf-8?B?UzQzWlc0cjVLM25NNWt5K0xoUjhWZy9SaUlRSDVkWFFDTVplVEcyNDFNNHBt?=
 =?utf-8?B?Q1hqS0pmWk1rME1tVXFwbFM2ZTFpSTRBdjEvMllLQjBPdDNUVmFicTd5ZXVE?=
 =?utf-8?B?dUwxa0F6bjBhVHFKRlNvdGVoZFgxeXNTVFpmdFlMNG1ydmNIQ3FkckdUMDNX?=
 =?utf-8?B?dUd0SWRPMHVaY2pQVEVUSnlVSDc0UHJJT1dWYnEzbG8yTzRhWDVVSVp6aWF0?=
 =?utf-8?B?V2NhdGVKQjZPcW8wYmJ1VWlJR0lhbHpxcHY1ZnlxRFE0ZjFBRTdUMTNPTTYv?=
 =?utf-8?B?aUVGMWZjWmwrRVY5Ymp4NGh6SjAwdlFXVVh1NVFhRUZFYXNwd0p6Z21INHFq?=
 =?utf-8?B?bkFUM3hVdGU4S0pjVGg3YUNaM213ZEN0YkdsOEU1bXZCMjEzeFVydjV0Rk0v?=
 =?utf-8?B?bXEvSnNOL3NIQ0VjaVM4ak5ZemF6bUQ2ZnNqOG9TTGpTTks5VWJZdS9pRlp6?=
 =?utf-8?B?ZnYwaFMyU1lEejJkbzlkYWNzU2pxcGUrMlI0aVROTDZHUnUyU2VYSUNpbFpz?=
 =?utf-8?B?TlVBQjhjUEp3SHYrbTVMUXRaRForUjJVbU15UXlUMXRpVVVIVHpTNUpRN0dn?=
 =?utf-8?B?dDlWa2I2cVFKRnRyRElwZVN3ZkV1ZC9sUU91OWlxR3M3aGg2c2ZnTTdnNUcw?=
 =?utf-8?B?dHN5NHJ4dVZuUWpUY0hkT1hEeE5rU0x0d3VBc1R5aysrWDV5b2Z1VjZLWkFF?=
 =?utf-8?B?dlFidGFubFZJNjV3elRwbTlsRzJWWGdhMEVUalZ3WUxiMmVPMkNjS3d6RFMx?=
 =?utf-8?B?LzBvQzRYdzR6dUthRlJrUWdXWVFFdHdiSEJyamluZ2p6em81Qkc5ZzhmYmhK?=
 =?utf-8?B?YWRUb3BqMTFleURhdkF2cnBOZFV5OHV2a2E1c1FqY0toeXVOMUkzbjFqbTVE?=
 =?utf-8?B?WFdQMVdNM3JpYjYzMVgyWHpqUjdWM3d5NVY0S0IwelRUeEl5N1hkd0dVWGd2?=
 =?utf-8?B?T0MwK2RPOHQza0ZHeS9kR2gyWkQ2U3dJTU16Q2VLRDhFVUNocVlQOGh3dFN5?=
 =?utf-8?B?aElGMUFnQ3VEVUFlbEFpcTV2dXZQWE5Qb09VVkVIbmN2aFpKVEk3TXNETkZC?=
 =?utf-8?B?RGk2S2hwSk9kQnRjYVZvUVh4c2xDMUtXL3VyTmtNbXQ0aHZubm9rdGVNVlBB?=
 =?utf-8?B?aVo1MDIwQ202NndPU2dZci82cG5SOEVUb3Rib2hTc20zQThRU29yWG53MHV1?=
 =?utf-8?B?NEN5dFNyMmI5SWM5d01jamQ4TENxNmZMY1RCbnUvVHR2SDlLV21obFBOWThZ?=
 =?utf-8?B?eEtEVmwzUVF6UStOaU10ZTNBMm5sTzF6enJZVmRMS2k4M1NmRGhtaExTbm5w?=
 =?utf-8?B?ZFZsSG5GUGlOcmxBaEVFZzNJekhLWUhsR0xOU29tOWw3WXYzUWRFNnIwT0wy?=
 =?utf-8?B?UHFiRDVjZFJXKzZDQkFCUjNRYmVmalJLZHUzTWFpUHpidTkyMVU5b04yNlc2?=
 =?utf-8?B?WmF0VjRLZ0N5VlhlamZneTVOVllMT1ZwTldmTHUyRGlkQTE3RUdkOXp3M1po?=
 =?utf-8?B?NTFqMlREeFVMRFNMemRiNm5YZ2JlenpEVWpSRGVlTzkzbzMwWFhRV3NJVzVU?=
 =?utf-8?B?Y2FhUzBodVJhL1NNYkp2M0o3NWlsQmloZlVnZ2RtVzlNVUNkTys1bTcxbzZ5?=
 =?utf-8?B?c0o5RG81bHBGdlV5dzZoSklNalRiSzVyYVFUUVJGNDhhUFgwd2hQVTEzL04y?=
 =?utf-8?B?MjVNWVdYdkNEWWVYdXhpZHZyRFA1WGFObDUxdzJjclB5VGRraFlyWktDYnlX?=
 =?utf-8?Q?s7mM/KDihxVHH?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cXkzL2VCSXZYNzRncWl6VGJVdTJiYjZBWUdBRXd6QmlrMW9WT3dReHJZdys5?=
 =?utf-8?B?RzdPT3hJN0o1OGVRUjQ4alozMXBxRytrS1dFSjFSQlU5c0ZUa1VRdXNpOG1R?=
 =?utf-8?B?VTFyUjBRY0hoWGt6cjZDVVFJK2V3MW8vb1pvZGtKYWkwSGxFN2h1NVN4SGxH?=
 =?utf-8?B?Vm1pdzc0bnh5enZEZzZyR3lmc1lOVElaK0JCV3pYUnJnYXJsY2RPWXJmQU5H?=
 =?utf-8?B?emFmQ08rTnZVejZiOVlDdTB2bDd0cnpFbkJOTDJzT21yZjZiR2hoWHBZd0Zx?=
 =?utf-8?B?eUVHd3kxRktDcnJ4QkNUTlRkRlY0c3g0ZWFMZEJRVytSVVJzcDBzOXJMRW5i?=
 =?utf-8?B?RUZOVkFHSWVuQUxkRnd1c1d4eURHcFByV3grTC9ydzR6NGd1UFZjSjBwNWor?=
 =?utf-8?B?QTBiNGFqaGRrZVJvVnF5aStNRm1ERFpRYmk0MEFrK0doVnpqNFZ6eUVVVlNa?=
 =?utf-8?B?VEZFNHk3TERBN1dSdlNYdE41ZSt4T0ZtK3pGQzgrQ3ZObnR2TWRuRFRGTERs?=
 =?utf-8?B?NDByeUhLN2NxS293N1Z1KzRqbE1mSm8yVDI2Mk9TN1dGcE1sRmlZOWpKcUFP?=
 =?utf-8?B?OE1kbURjcGpIbktvR0xBZmg1eWdGMVlLMkJqOWFEZTY3alk5TUZESFo3aU9L?=
 =?utf-8?B?UzVxSXhxTWgySGF1S21PbDBCMWNLTDFPUmd2VjdWVHdTT3JHdjdoS21Qak1W?=
 =?utf-8?B?T0pBR1NwNGdMVkNIRkluYlFmK2dId1o5M0hraHB0ZG5lKzI1WW5LNEovamti?=
 =?utf-8?B?N1hYQ0pxa3ZKU2Jsd21RRForb0xFNG5NaU5YWlpwNHBPY2tLekx1NU9vZlg0?=
 =?utf-8?B?b25YTTdpNDRDU0ZEQS9pL1cyOWVDenBIVUZYTXlDYm0wSy90ODgvellFTGVu?=
 =?utf-8?B?MU8wSHR6UFFKdGRNM3RXb29hS1BLM3IwYStyaW5FYysrVWl1bS80UXJMQjJN?=
 =?utf-8?B?cVR6SG9wYURhdzJJT2VTc0Y1MUMvVythNWpvanZ6dE00R3VUTUtQTGpWTGVt?=
 =?utf-8?B?bkdhRUFPdWUrMjZ2NzArTXFMejRvbENRY0d2ekpuSWpWYU5qRWhML3ljS28v?=
 =?utf-8?B?TDkxb29ieHRhVHdxaXFvMTFTeE51V3gxOVFVdGlFY0UvN3VsWldxVm4wSkk3?=
 =?utf-8?B?UmVjeHdwVG5QYkhJaXNncFdTMHl3MHVHTmVnQWlYT20wejkwZkdhMFpraUIv?=
 =?utf-8?B?Uk9MTk5mcko5Q0FjL2RIeVpiOFdhaW0ycG5nNkVRRElLd0kzRU9zNHpRaHpr?=
 =?utf-8?B?bjc5VWg3UGJOZXVGZjdzSEdWMzhnazAvdDVUSjlmdm1yZWxMNFJOcjgvd2ZE?=
 =?utf-8?B?Kzg3b2huNngvN0J4S1JzVHZqSlRYblhxUWMrL002dHhOWk5OdisyS282L3Ns?=
 =?utf-8?B?NklTSDF5R3hWRnl0aVczdTg2L3JjK1pUNmdWWElqL1NJS2JjZVFaWk51UnZv?=
 =?utf-8?B?S01uUFA0VG80Y3AxWjQ5YVk3NEFHWDUxVzlPMkhIdXNvbE1KUzh5Ynpmdmtk?=
 =?utf-8?B?SEpRTkwvN3lyZVZldTVKRUNDNGR1aE92YnZ2WEFSb0xQQm40SHRScXNkNlFY?=
 =?utf-8?B?K0VYSzI1L2JCMVAva2RXRS8yVGdoc1RmOXpVRk41TlhiOGNQa21tQ0NFakQ3?=
 =?utf-8?B?dG41dW4xL21NUTRRbDdsamZDT2wvWnJZdm1wenBhc1crY3hPMGRrdGlqMkxi?=
 =?utf-8?B?UTlEU0lEbUkwZWtlRHV3OWpRRzJyc2YrTjk4aVJ0QXRPSmg3RlA1K3VNM3lr?=
 =?utf-8?B?ZzgwWjhYcmZtdDFlVzZXTFRFa3ZMVVBxSVhJa0RuRnBndWw0RTJhMWtZTDhI?=
 =?utf-8?B?VzNoZ2ZWRkdKbERxeVBoMFJsRVlNM2tvTkVhVG4rNldIUDczSTVvZXNtN2dz?=
 =?utf-8?B?eU02cFRsOEZETlpORCtCRUYzWEtLV1NTVHJaNzZURWUvT2ZPYXpmaHBXcUJ2?=
 =?utf-8?B?VGc0aFRGbzVNZCt6RTNzR1lQKy85eExqSTRIYXZ5ZjNUNWwyeElZRTdZK3hD?=
 =?utf-8?B?TXowM0ZMbDBCVGVPS3NreEpQR0VrU1NxSnpMNmdjVEMwWWtiWDBwUFlvQnhp?=
 =?utf-8?B?MFE4NWdDU3ZJSUFVQldWRVZsZzRlZ01VMG9lVXI1dzdwZE5FeXRpck1uTXE2?=
 =?utf-8?B?UWR3dFBNbzRmbWJseDYvUkFEZ3ZhSGlYSDJJS3dkY2ZCUlNkQzAvT1lnOTdi?=
 =?utf-8?B?K1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 09a0f673-de4c-467b-2623-08dd36499976
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jan 2025 16:19:49.3745 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: e3h6+/JGd7c2BNC83ZSJFxDS1HIl7Hy7AWuhyL4tHoaXno1VqtxtEhI9eNPJTCMk8s4JcPMVXDeiSBkAkYfkzyoA7SXlto1WEx4aJBCd3tA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6523
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737044419; x=1768580419;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mqlTrRlAe+eQGORiBYIm2Mabb3Qd9JcpZ8VGb5nXmTU=;
 b=aYlXskKyMNpwPiu8/B99g7IVMDA57DWpJW7q8kIQxniN5Dq3XsJyJwJn
 rpWJD0X+7G6mrcO4rmfEheskony+eBKp9umX/DCsIxwuHQxPJQTpIvk0n
 ReQgWi/RAhgj/pGrlZpO9JmYjitjOAqHD6/LF9QAgglwCw3f2ex2TqCj6
 iFUEzwnblfNya2kaz9zbkPGuRCpcvH2eWaKhim4naN1JXghsJUNarT5R4
 en4aoRvUmsDP0rAMbupA5iSFpH6YkxSs3Wx8quv4g0H9D5k6JBoxm+DyQ
 cdMjmErxATf3GOk4xJFozn/zGtP/IVlDOExPXhWHJ/rkamfBVWQI1Vdgo
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=aYlXskKy
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH intel-net 0/3] ice: fix Rx data path
 for heavy 9k MTU traffic
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
Cc: netdev@vger.kernel.org, jmaxwell@redhat.com, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, magnus.karlsson@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 1/16/25 16:39, Maciej Fijalkowski wrote:
> Hello in 2025,
> 
> this patchset fixes a pretty nasty issue that was reported by RedHat
> folks which occured after ~30 minutes (this value varied, just trying
> here to state that it was not observed immediately but rather after a
> considerable longer amount of time) when ice driver was tortured with
> jumbo frames via mix of iperf traffic executed simultaneously with
> wrk/nginx on client/server sides (HTTP and TCP workloads basically).
> 


> 
> Special thanks to Xu Du for providing reproducer and Jacob Keller for
> initial extensive analysis.
> 
> Thanks,
> Maciej

Thank you all for this piece of gold, including description.

> 
> Maciej Fijalkowski (3):
>    ice: put Rx buffers after being done with current frame
>    ice: gather page_count()'s of each frag right before XDP prog call
>    ice: stop storing XDP verdict within ice_rx_buf
> 
>   drivers/net/ethernet/intel/ice/ice_txrx.c     | 128 +++++++++++-------
>   drivers/net/ethernet/intel/ice/ice_txrx.h     |   1 -
>   drivers/net/ethernet/intel/ice/ice_txrx_lib.h |  43 ------
>   3 files changed, 82 insertions(+), 90 deletions(-)
> 

It was a pleasure to read this series:
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

