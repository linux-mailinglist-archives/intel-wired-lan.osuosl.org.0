Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C80B8A5B819
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Mar 2025 05:52:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7B6C840C7E;
	Tue, 11 Mar 2025 04:52:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aPQBCN_yi5lN; Tue, 11 Mar 2025 04:52:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7593D40C7A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741668775;
	bh=GoZl7zksvePpxPTd+S+BY7kVj16/Tjmne2Bx9up6hYs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5CdI7MBmRolOlq7n8KMKHXDh1Xh/NHG0JuF0Q1euWXVKeJWxGEE3WipY1aNVBFM/9
	 WitJE/npDbMfc8X5gVlmfiw4ew9MQVwLzmwtzT+Ibhl81CkntqM4iut3mv0EetFkQS
	 UNmHy1DnYAjkY1oBSHWtBvTl/c0jKbRwOzhtoBv5SaaeyYcKO6dyO4jqH7y/Qx+gFZ
	 2fpYGTaGruPSn38cjelVM9Qe3c+jqMZ/Jh2gt8NPCLLiGUA+VHQfFLmyPH4q+5v4kJ
	 SzamEtFX8XbRyb2gB6ewmodlDB2SHJwT7S0cJzIZTPuJdOIlFb8slII7i7lB0PLo+o
	 VMOHpO5gUkCzg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7593D40C7A;
	Tue, 11 Mar 2025 04:52:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 694BBEDF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Mar 2025 04:52:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 55F624025E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Mar 2025 04:52:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id v37BsOj35Yeq for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Mar 2025 04:52:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=emil.s.tantilov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 19CEF40102
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 19CEF40102
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 19CEF40102
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Mar 2025 04:52:51 +0000 (UTC)
X-CSE-ConnectionGUID: YcKDR+yzRkyNNE3OfIIfmA==
X-CSE-MsgGUID: jUVEFBFsRduMSw0O2fzmiw==
X-IronPort-AV: E=McAfee;i="6700,10204,11369"; a="42564035"
X-IronPort-AV: E=Sophos;i="6.14,238,1736841600"; d="scan'208";a="42564035"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2025 21:52:51 -0700
X-CSE-ConnectionGUID: tLHzu8eaRni2nWtWHEobDA==
X-CSE-MsgGUID: FqZ0fXX0RDe2/fUOQwux6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,238,1736841600"; d="scan'208";a="125103519"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2025 21:52:50 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 10 Mar 2025 21:52:49 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 10 Mar 2025 21:52:49 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 10 Mar 2025 21:52:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=S/dH/TT2OPPZ2LB3OA78QDrHPveHgiCnWZZbba1ds2wFgwA/z/1XUWGPnDs0PIN5ty/C3UrdBoytFbepwmMDk8/qhZOS3xF08LeVz8z7ndk/a8Sa1efyG8Y/9wDqW9+YIQgYzD2XjJ3UHhsCqPGydrvlZ0p6NXOHumM8zC6NXJ05fSUvOKF5i+YFm3nqxuNYXdBZoaEaicCilhiZYwRKENeXCvZ4jT75hFGSiDyyOEoO5e+3KEFoeFgA2GRII4qHTj/G+n0wg3TU9HHfza7Xd38zK38b1Y3yQpD7iDu0CoWQs8nlTmqAeR9w7KUQMfADXfZEY+rkjOoWO9zjjK6ugw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GoZl7zksvePpxPTd+S+BY7kVj16/Tjmne2Bx9up6hYs=;
 b=Sz6HSGBV8Xgf3PHniaHZZU8LyKIqO1XLBWy0CILMiUMwkhuohogDXrdPXsqGkOZs/lO0R6wtjYJmlzFljyCfFavDs0xjFFSfG5Oq7r2FkibAGU4EJ84l12JWpmm8Al0ah+eJ5Uel7PFT4QBX/bIDYpZlOUWt1IHHBJIiThRjv/79gBG6xRLPrlEYqqR4CgelyaTzVY9hMEWpa3BEgTlS8RGZz06R1yVIa0+9jLX7sLk9bNoApt8wgwkY7iZpGxzF54jAhyzOMxBvLMZ3JI1tPjFEay7ruvWNiOBWnk3k5xx2MSi83QctcCzMul7mHf5W7dyYleM0U9HwFkvIyBtKbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW3PR11MB4538.namprd11.prod.outlook.com (2603:10b6:303:57::12)
 by PH8PR11MB6998.namprd11.prod.outlook.com (2603:10b6:510:222::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.27; Tue, 11 Mar
 2025 04:52:32 +0000
Received: from MW3PR11MB4538.namprd11.prod.outlook.com
 ([fe80::e117:2595:337:e067]) by MW3PR11MB4538.namprd11.prod.outlook.com
 ([fe80::e117:2595:337:e067%4]) with mapi id 15.20.8511.026; Tue, 11 Mar 2025
 04:52:32 +0000
Message-ID: <9fa390cf-526e-4ac8-82e8-99f616b807b6@intel.com>
Date: Mon, 10 Mar 2025 21:52:30 -0700
User-Agent: Mozilla Thunderbird
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
References: <20250307003956.22018-1-emil.s.tantilov@intel.com>
 <Z8qK/Z/8lYtdR2UM@mev-dev.igk.intel.com>
Content-Language: en-US
From: "Tantilov, Emil S" <emil.s.tantilov@intel.com>
In-Reply-To: <Z8qK/Z/8lYtdR2UM@mev-dev.igk.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4P220CA0001.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:303:115::6) To MW3PR11MB4538.namprd11.prod.outlook.com
 (2603:10b6:303:57::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW3PR11MB4538:EE_|PH8PR11MB6998:EE_
X-MS-Office365-Filtering-Correlation-Id: 8f60b065-5bec-4f01-25cc-08dd605888b6
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|7416014|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QzAyTExnbXZmNlhSZTJwRmJKU3czM3Rxb2k5NzZGK3BYNEYyME9KSzVNN0pT?=
 =?utf-8?B?cUQxSWlhMXpIalQ5SWd4SnpFdzNUT1QraFo4bGswTVBiTy8zcGZiWFRKQVZN?=
 =?utf-8?B?TG52RThwRkMyQ1BrU0FuNExYUXppbG11RlNWWXJaK1dIbXlGekk0Y1NLbmhr?=
 =?utf-8?B?TUdaTlZIK2REd29RZ0Q2UlpIUi9teGNBcUZNek1IZG8vdHhhakt2NmlTeUZm?=
 =?utf-8?B?UmVTbW9IWVF6eTBEMDE5emhGaXNOU0lna3RLTnFNbzBYMklIZFYzQ0hlTWwv?=
 =?utf-8?B?azNCekdERVBlNmJ3eVZadUNJMFlLR25TazlKK1REQlVYVnhOV3NOa2NQMnJT?=
 =?utf-8?B?QmdFdEl4WEZiY3dUV1F4d1VrQXpSTEkrTHNPbWlXRjI5MjlIKzZsaFIxZVls?=
 =?utf-8?B?NCtqK2Zja2NXazZ0Tzdpdktxb09EMnNvSWFpT3BKYkNLcUpYcjZ6TDdETWZu?=
 =?utf-8?B?RGpBd2pyNUpoZURaMThaOXM0b1UzOUt0NzBEV2xJVUdZTGNmckg4Tk9mU2lk?=
 =?utf-8?B?MnM5dzl6OGl1MFNUclJObHQ5MVo1TGtoQzkrUjhjc0EzV1JjQnlpeHJ3Rzdm?=
 =?utf-8?B?R3Q1L0NxU2Rza3ZmM0ZKbHA5SDlBdmdNcFRmYkxNUGU3eFpvdlJkcW9kVVdO?=
 =?utf-8?B?alVRZzlkS1lRUVdBU0R0UGYyMlJUbHMrOUFZbjAwTHZ3S1VRR29CaUxNZnJ5?=
 =?utf-8?B?Y1hMd1lrOU1PTzVkVk8xSTBPQnp0bENpRUJUdHpWemhMUklmV2FiVTN5R2x4?=
 =?utf-8?B?NGdnLzBsV0dzTVFMWGtMTjFPNitPZGk1NW8vMDkwc2l0UVc2SnltNFVBNlcx?=
 =?utf-8?B?NUNCY0d0a2tPbnBoVW5WaXRZYWVOeUNTSHIxSEhSakVRck5rblZueStzc0d2?=
 =?utf-8?B?ZDRPMXBWWVNYcys4bmxzYktheXBjeGZnQUdLM0JEcmY1cXlNay81cTRFWlgx?=
 =?utf-8?B?QTl1UlcxMXMwVC9la3krMFdDUGd5bUZkYzNremZ1djhTRlZVQUpuYmlpRVpP?=
 =?utf-8?B?VXpSMWQ5cU04b05vQ3BRQ2JpT2l3VytvTzZGcjE1MFdTZEN5bEtTQTlIVnZZ?=
 =?utf-8?B?UC85QUFoQ1NYZnU0YVg1Qk9ZUEQzRnJoOVJ0eWM5LytxNmZtbzZUWnN5UXFJ?=
 =?utf-8?B?cVJOUnVTYnJoS3lGNDMwWkZBREc1aEk3djBWWU5kNXR2QTlmSFM3dFA5dzln?=
 =?utf-8?B?Nnp2US9uM0pDUktBczVXRnJUV0tJWGNkSXhBbnlHOWViWm00aCtoSXBiVXlE?=
 =?utf-8?B?WHlWSXhzRnBrRzU5WTAxU0Evd1EzbzlwcmNKM1V4OS9rSG96a3JFYmIzQTVj?=
 =?utf-8?B?OCtFaGg0TVkyNDVTUXNhcUZVSFJaQ3JKL3Q3UTF2QjlYdTRFdjkydTM4WFEx?=
 =?utf-8?B?MkMwMVpNMGx6SFJucTk0Uk1mYWt6TFo0aUZaNU12bXFYQXA2NXJuR3h1M2dt?=
 =?utf-8?B?OGRrSnloWENGbUtSbFdiTFViQUdRQmZMcUcvUll3L1ptZW5pQlRnSWhiUTg0?=
 =?utf-8?B?U2RaS0lKcFl5NTVsVW84dldTZUZCdnd3dUdNdW9qSDFnUUlkSkFoWlRYdFU3?=
 =?utf-8?B?TUhTVlBJM3pUVzlIM01DK05hdmxjdUJyZzZLY2Q3UVZOb2hpcHNGR1k3RWli?=
 =?utf-8?B?Y3JFS3RIdDNlTnpZMFV6c3ZkNTZKdUFzb3dHNEg0dm5zT0tVYWdKSHFJaDVm?=
 =?utf-8?B?VHJzZUhNMFl1ckgzUjZBajFkODNuUUFmeHVnbkEraG9HWm82QWpCRmtDcm0x?=
 =?utf-8?B?M0pxU0gwUEpHVzhGdWxHQlRzVVc3OHVpUEpmQm9MN1EzRlpOYVUvdnhycUZn?=
 =?utf-8?B?NkRRZjZWZEhVU3IzR0RIR2FPbzNua0c1L2NUOFhVSFBYQmt4OC9yUmkyalV5?=
 =?utf-8?Q?deuXbUy5mEcCJ?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4538.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T2tpWTZzb3crbkhIbE5xS2loQW1peDdDQzlVcXUwQXZDVVhPcEVKWERVdXZH?=
 =?utf-8?B?cE9paDkyR0lzYU9OK0prOTljc1NES3pMRUJ6Sk9INWJUUnRneGYxZGwyYTlO?=
 =?utf-8?B?SjNGdklzdk50WmdhWFJqYlBPQVl2MVZ2RWhBRm5XYm41TVBmajB2eFAwYXhW?=
 =?utf-8?B?cCtsaGg3SzhIMWVXTlVKdzBMQXpIWEVMQzRCMTRGbml3Q0grS0xpdjlWVmJa?=
 =?utf-8?B?Ukp6aXYwQXpRN2ZHdGdxWEJ5L1M5c21HdzA2N2hEeWw0VGtvS1lxNERBcUVh?=
 =?utf-8?B?Ykc5ZmFZN2owU0Q1SmJiK2dSUXRCdzA1QTJ1Zk8vckVrTFdjZnpoNzlZWXFk?=
 =?utf-8?B?MUpFaTJXSzBETlRJcmhVdy9OSkR5cEp4VGFuKzN2VjJtaUN6Uk9oY2RoVW9m?=
 =?utf-8?B?VjdsdEZSdzYzSXJWZ0dISXgzSEdSczVzSzcyZGJ0L1JMbVFhdS94ZDRUSkpj?=
 =?utf-8?B?QXpZeFR3TFRnUHh5anFCWk9KREVNN2hwdzV0cjJKb2tIdXJoR25MakNrNU90?=
 =?utf-8?B?Vi82ZnQxZFI1Z0Y0MUpQdjZxSlRTbFdBc0N1WE9OcTU1NnU0TVBFMmxNdWsv?=
 =?utf-8?B?bUJyOFhxMC91WmNtQndxZVo1bkZ0TDdQNStMaFpJNk9NbDRTYjR0T1ptMU5X?=
 =?utf-8?B?aTZFV01CUEVuRzA4andEV1gyL08rcTVuSEVuNzVUV05xVDM0MjNrdk5FTXZF?=
 =?utf-8?B?eWhnbFhIQUd6RDJJdWRvRExTZDF2U1poWUdTaDVRbnRvdGprcE5qMnNaUVRv?=
 =?utf-8?B?c2hjbHFkdW95MjdGTXNPaEwwWlVsOU43VmorWElHUDRDUXdBT3JNOXRRZk9S?=
 =?utf-8?B?NDRIMGttOHpLSHdzOFM5eEtONk9NMTNjdnBONTF6QnVyckVEMHBpOFR3TUdQ?=
 =?utf-8?B?QjVDcnprQTBPbmdWTk0zcVNCR0ZqNmhTaGF0R2NUNW5wY0FyRHFSQ0ovdXZ1?=
 =?utf-8?B?NGRvRU5jbnlZSHp3aUE1YUZzaG4raDlZVk9ZRkx0cHlISE42bHNaRThNR2sz?=
 =?utf-8?B?dkExVmxpT2dicCtKSUY0azFKSHZjUVI4M205VXlIME0vVkZpMGc0bk9keDJR?=
 =?utf-8?B?U21rSDdlWHd5cUo0Y2Z1c1RRdUpPcEFhVTNDNmJ6QlZKeTR4T05BKzc1NU9L?=
 =?utf-8?B?UjFlcUxhWnBrMzhWbFpWZnlQVTNCZVE4M2F3citSYVFSSEoyeUJvMHNTTFhm?=
 =?utf-8?B?UlgydmJEK0hXc1pCcjVFVjhLd2RXK2VkcE9ydjVkQU9EaGQ5YXc0ZmJrQXkv?=
 =?utf-8?B?eUl2c1loVjBFL2xZL3UvMzZaaWllcWZVVE1TOUdaU2tqNHF4N2ZtZjBwY0dT?=
 =?utf-8?B?eTVIVVlVZjVOL2txWlNsVFFlRmRIL0Yvbm9QN1A2bXZIWS9zcm1XcWdIZ1pP?=
 =?utf-8?B?NVp1YXF2bEtDVFlLZmxrRGtTZlN6MWswS0l1bGxMSlhEWnFNV2dpQzlLTW1p?=
 =?utf-8?B?TDdIRThZUGcvalQvNFRtZHRNd2UrVm5LR0RnSjBFWWV4bmFRS3MzUmRaNkZJ?=
 =?utf-8?B?TnljczUxc05rNmJxU0JTbDhsVUNMMXlWQ0NBT1FVYmE3WCtOSlNiY3FKWUJZ?=
 =?utf-8?B?T05tb2JuTmhjUU5KaTByTWsxMHluaFIxYTZlb25VRm9nTW9jNDRyNldaV1U1?=
 =?utf-8?B?ZTJ5UDBHTStibWhjMFJERy85TWozYm1sSis5ZEdLRHN6RFVMb1pQQWhTUmdJ?=
 =?utf-8?B?a1dzSnRRRVp2Mk1CZlFRL1hYWkZCejlkYVVsUDBxWis1eHRPcm13NGNVUWFq?=
 =?utf-8?B?UjlQb0lQRld4cTExbFllOXRCRng4WVZSZUVHRmduS1YycVpUdzlCZFhldFVy?=
 =?utf-8?B?RlJRNlF3NlpnQjJJUjB4TE5Qb3RYVUlRQ2dWNW9kc1g3dnFoVW45aGFpWndj?=
 =?utf-8?B?dzBzR0Q1UHFXcHVxVE1SelVrcnlzTXZqeWM1U0o5ZGU2MVlPUXpHVmxkSlQ3?=
 =?utf-8?B?bGU4VWkzM05NMXNWZ1ZnY2FHMzR6UDN2NVp3bUpvWmZOTnpqZTVOc0VxWmZU?=
 =?utf-8?B?cVZqNk5TSldXRG9oWHhYdTNoeHNKckNrc2QvMUtkd0MvNDEycVVVUkNBOUZp?=
 =?utf-8?B?V2ozZ2ZacnNRdnF2YlFOVVc4R3BKNXRTSnA2cFJtVWMyaHdreVBlZTZqUnhD?=
 =?utf-8?B?V0VqV205V1NDcjhmTHZRNmlFSktWZytrUTBBdHhrbzRPcW1KY25jOEt6dk1s?=
 =?utf-8?B?WkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f60b065-5bec-4f01-25cc-08dd605888b6
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4538.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2025 04:52:32.4680 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 28uQpjuiqSCz24HIuoEs3WBvvr/kxD6RZENErgYz3Rre8YpYaK27zD5bHPFSxnMKDd3jTNik2zKtubTELrbZ9pEzZH36vorWfXclIkHSrWs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6998
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741668772; x=1773204772;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=EJ6vGfYt+GO3KINfR7sb0QxJFQKohcCBhxjF58yI25s=;
 b=DLLerqSmwj4wsPZK7t9NbBK8l69RW2jmeDmue7e5sLy2itlVZ3DvJD3q
 S0TQF2aHYIMSAFxq7cEDW/SRlh4GUmCDCwWuj6mSd6qkl/f2aMeqP/Cor
 m4t+Rsyevca+Es1PKIPi0747spslmFubd4k1ZHrOXYAHuK9iu2DNYxSWl
 m0pd4y7N2HZ1U+YnclvnMUYanSmMlU+uHk5CaRtVtR1wvbnkHV+dFcG2u
 4tUJNIoqEBKyw9Xxe2jeCrhqC9FPhFts0wydIQj5TeNaieEaw55bLh7+p
 Wf6JiZ+qvKCLKfQBEtyBaLdNNhtU7dkU8aYFS9DXsXmy5SrVYRrxarKn9
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=DLLerqSm
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: fix adapter NULL
 pointer dereference on reboot
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
Cc: willemb@google.com, pabeni@redhat.com, netdev@vger.kernel.org,
 yuma@redhat.com, Aleksandr.Loktionov@intel.com, edumazet@google.com,
 madhu.chittim@intel.com, anthony.l.nguyen@intel.com,
 Simon Horman <horms@kernel.org>, kuba@kernel.org,
 intel-wired-lan@lists.osuosl.org, decot@google.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 3/6/2025 9:58 PM, Michal Swiatkowski wrote:
> On Thu, Mar 06, 2025 at 04:39:56PM -0800, Emil Tantilov wrote:
>> Driver calls idpf_remove() from idpf_shutdown(), which can end up
>> calling idpf_remove() again when disabling SRIOV.
>>
> 
> The same is done in other drivers (ice, iavf). Why here it is a problem?
> I am asking because heaving one function to remove is pretty handy.
> Maybe the problem can be fixed by some changes in idpf_remove() instead?

It was indeed handy, until we ran into the crash. I did look into fixing 
it in idpf_remove(), but I don't think I have a lot of options. I can 
simply check and exit on adapter being NULL, but this types of checks 
are usually frowned upon, so I looked into alternatives.

The main difference between idpf and ice is that idpf will load on both 
VF and PF devices. From what I can tell, the VFs created by ice are 
supported by iavf (0x1889 device id). With VFs created, on idpf, we end 
up calling into idpf_remove() twice. First on shutdown and then again 
when idpf_remove calls into sriov_disable(), because the VF devices have 
the same driver, hence the same remove routine.

> 
>> echo 1 > /sys/class/net/<netif>/device/sriov_numvfs
>> reboot
>>
>> BUG: kernel NULL pointer dereference, address: 0000000000000020
>> ...
>> RIP: 0010:idpf_remove+0x22/0x1f0 [idpf]
>> ...
>> ? idpf_remove+0x22/0x1f0 [idpf]
>> ? idpf_remove+0x1e4/0x1f0 [idpf]
>> pci_device_remove+0x3f/0xb0
>> device_release_driver_internal+0x19f/0x200
>> pci_stop_bus_device+0x6d/0x90
>> pci_stop_and_remove_bus_device+0x12/0x20
>> pci_iov_remove_virtfn+0xbe/0x120
>> sriov_disable+0x34/0xe0
>> idpf_sriov_configure+0x58/0x140 [idpf]
>> idpf_remove+0x1b9/0x1f0 [idpf]
>> idpf_shutdown+0x12/0x30 [idpf]
>> pci_device_shutdown+0x35/0x60
>> device_shutdown+0x156/0x200
>> ...
>>
>> Replace the direct idpf_remove() call in idpf_shutdown() with
>> idpf_vc_core_deinit() and idpf_deinit_dflt_mbx(), which perform
>> the bulk of the cleanup, such as stopping the init task, freeing IRQs,
>> destroying the vports and freeing the mailbox.
>>
>> Reported-by: Yuying Ma <yuma@redhat.com>
>> Fixes: e850efed5e15 ("idpf: add module register and probe functionality")
>> Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
>> Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
>> ---
>>   drivers/net/ethernet/intel/idpf/idpf_main.c | 6 +++++-
>>   1 file changed, 5 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/net/ethernet/intel/idpf/idpf_main.c b/drivers/net/ethernet/intel/idpf/idpf_main.c
>> index b6c515d14cbf..bec4a02c5373 100644
>> --- a/drivers/net/ethernet/intel/idpf/idpf_main.c
>> +++ b/drivers/net/ethernet/intel/idpf/idpf_main.c
>> @@ -87,7 +87,11 @@ static void idpf_remove(struct pci_dev *pdev)
>>    */
>>   static void idpf_shutdown(struct pci_dev *pdev)
>>   {
>> -	idpf_remove(pdev);
>> +	struct idpf_adapter *adapter = pci_get_drvdata(pdev);
>> +
>> +	cancel_delayed_work_sync(&adapter->vc_event_task);
>> +	idpf_vc_core_deinit(adapter);
>> +	idpf_deinit_dflt_mbx(adapter);
>>   
>>   	if (system_state == SYSTEM_POWER_OFF)
>>   		pci_set_power_state(pdev, PCI_D3hot);
>> -- 
>> 2.17.2

