Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D56B893DB1F
	for <lists+intel-wired-lan@lfdr.de>; Sat, 27 Jul 2024 01:16:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 88E54607EC;
	Fri, 26 Jul 2024 23:16:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tQ7Gv3OoA3Ha; Fri, 26 Jul 2024 23:16:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D110B605F9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722035794;
	bh=wBA9VM3MVgLwP9tIdurktXfhDKlrejwQUYTh8Zs6vdM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=uBIXCLyjuntB7M4sNnt9ABiYAnQ8neFjewX1TKzjnxo/arF871d9w6kMU5wzzMbWa
	 L277I/M3x47kFqnW8gnfEqIgJ+u+fFUtx2CE05HoHLRKvqYtqvP/6YYQTjJUpObwW6
	 nTjPQobHSPh1CJnXzP+Rtoo1Z/uc2ZMdvHHqJ46WkwDhRH/SpTuCpEOwj18H0x//yQ
	 ZCjJwY5nkyiOIr+6oIWY9Uy+bK4F6fbd0/O+sRodm4/DcKNGd1UOtUyvxXgdyMJmuK
	 U5taDXJO2H0wpx+plkfeCm4dz5pbnprHy8YB0SsEliPHnspkpalyv7CGy9Ylg3aStz
	 pe6kGqK3Ehb9Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D110B605F9;
	Fri, 26 Jul 2024 23:16:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DBA4C1BF5DD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jul 2024 23:16:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C5F5B82055
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jul 2024 23:16:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LlfjjnCQoURl for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Jul 2024 23:16:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E600F81FA1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E600F81FA1
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E600F81FA1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jul 2024 23:16:31 +0000 (UTC)
X-CSE-ConnectionGUID: Bw6wSZ/XTmedWHA1PVH81g==
X-CSE-MsgGUID: gOL3sCiuTba0qaWiPjkV3A==
X-IronPort-AV: E=McAfee;i="6700,10204,11145"; a="19989619"
X-IronPort-AV: E=Sophos;i="6.09,239,1716274800"; d="scan'208";a="19989619"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2024 16:16:31 -0700
X-CSE-ConnectionGUID: ixA3IfOUT4ybGN/PAPHBvQ==
X-CSE-MsgGUID: lwkpJPyBRvitkHDO44BZ2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,239,1716274800"; d="scan'208";a="90859575"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Jul 2024 16:16:31 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 26 Jul 2024 16:16:30 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 26 Jul 2024 16:16:30 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 26 Jul 2024 16:16:30 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 26 Jul 2024 16:16:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=L6BQ924vVRaFfNX6QwHQA2+dxLsUDRI2voaUlVSUiDbe8s8WRo/WWbBMxQ54x4ZGmiM6cvu6esUhxIUHMo9pfO72/j2UKEUqy/YKK6O/W1tkkySkZHv/bnybhj/as9/txZl0iNRZWOd5YVSeFMcvTXRsJiySW1iLc/zxg2WKIH0FN3FP4kilqs1rqJeEo1Z9J2tOKLdyOL3kwBzAw68UF/2kcMGsSMxHxvzW+H5KkFIBY24fTSuvMRVBhn+JmgnoOsXt6MZEuNlDvCXPE2/TZGxvzKsXKuPNJcJv2vzgf2D9TDY2DDP6TEtVUQIwMbShH/FmK4pj5MGS7TS2atS4gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wBA9VM3MVgLwP9tIdurktXfhDKlrejwQUYTh8Zs6vdM=;
 b=LRfnYKFdxD5Ggo/w+F825GD0jgBQIPVCrC+Uvut8WVKn1sN4g43iT/mgXPX/ms268ZhRBT9hFe5LFpgZdavtWxqmThF+rrlc1mpuXLdTZAVe5Pfsxwp6e66/7VWseE9zYhsR5ZIqIPi5SWLd6mixv4rb7Dv2j/7Ca0yjuDGULcCNnoFpHg0kZMBwTmtKxDBUEBlRROWNX0389rvB9nr7mImugbWdGm5tQ34Y4w64GqjLNzdq+ax//Qo09d5YxbpukTsu03ndptbF8bPmCyNL5HhZfbGKOb3Z33zAm2aVTyCnYp/mZYNk7gTmbpJllLDsf59lYF5K5wkKshH8berSdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SJ2PR11MB7545.namprd11.prod.outlook.com (2603:10b6:a03:4cc::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.29; Fri, 26 Jul
 2024 23:16:23 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%2]) with mapi id 15.20.7784.020; Fri, 26 Jul 2024
 23:16:23 +0000
Message-ID: <68ddd3e9-e8de-48d8-9d32-7de6a18bf245@intel.com>
Date: Fri, 26 Jul 2024 16:16:21 -0700
User-Agent: Mozilla Thunderbird
To: Alexander Lobakin <aleksander.lobakin@intel.com>, Karol Kolacinski
 <karol.kolacinski@intel.com>
References: <20240725093932.54856-6-karol.kolacinski@intel.com>
 <20240725093932.54856-10-karol.kolacinski@intel.com>
 <ad94e165-ea7f-4216-b43d-b035c443a914@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <ad94e165-ea7f-4216-b43d-b035c443a914@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0162.namprd04.prod.outlook.com
 (2603:10b6:303:85::17) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SJ2PR11MB7545:EE_
X-MS-Office365-Filtering-Correlation-Id: e49f44c7-0018-4b3d-4222-08dcadc8f701
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OTZIQmREazI0d3B5N3FOTzlnZHM5cXB5YmtEN05ZRVB4UEJtTWthQlNXY3hK?=
 =?utf-8?B?MTlDaEZBWUNSZWRmemVFM2JyeUQ2VHJ5a25uSFJaR0VKUzlzK1FlaFN1MFZJ?=
 =?utf-8?B?Ti9CUG5FblhCRk5Ed0xJRGp3RG8yWXd0RHVydjFVL2ZaZE9rK0l5aUJNT0Vv?=
 =?utf-8?B?TEZDdVpYU1VjUFhER0RWdlRmY0doNkt3VHgxL0drbHJ2R3lqSGRNTGRUUWVL?=
 =?utf-8?B?Qm9wKzh4eVkveEFwYUV4RU5vM2hkekpFKzc0anUxQUlCWjJJbUN4UDdwWERL?=
 =?utf-8?B?YkhxZjVLL1ZoRkZWRUY5WmhqMmd3Rk1PUTJtZEUybHVKK2ZlQi9qeFIzYzBF?=
 =?utf-8?B?bVduQWtUcTZwMEsvZ0ZoYUpQbVBYQnpkQVllRmYvdGRKNTNQN1dmVzhwTTZ4?=
 =?utf-8?B?eWRTektIbXRxTFcvbVNZNXF2WGJOaVpSOFlkTUpNUTVCOXMveUU0OXNvNytQ?=
 =?utf-8?B?RUJydjMzZENXZzlHaXlpTmxxK0ZtcVNKZFUvU1BxNml5L2Z1NnNkRnI0d01w?=
 =?utf-8?B?cWVjS0MyclljUWltTklpbFEyaFRYKzYwQTNRQTlzRXpVYm5COCtFU3lGd0FQ?=
 =?utf-8?B?Z2k2RVVZUmJiL0R0d0RLTXpiUnM2U3ZlNm1jQ01TZE5IQk9PS3h3cnlpanNN?=
 =?utf-8?B?RjI2Q2VtL3ZUT094RmQ4eDNYRUl0cDVUQVNhSjNyeHRMNms5MmZWTDVCV1JP?=
 =?utf-8?B?V3ZCZjdmOVAya2N5UTAvcVNxL0ZMWG9ZbnpIUkowTEFOTnVhakwxU2VLbWVv?=
 =?utf-8?B?NTJoYzlEdms0VnhheG5aMmdwZFluNWZITW1yd2FvWFNQc2VjL2dWZXRsSnho?=
 =?utf-8?B?ek9QblhkMTJVaUtSM3ZYMDhHdUVMTVAraThJandJREFIY29WUHljdEVPWlZ6?=
 =?utf-8?B?dVhPT2VQWFlaL2RWUUxWcFJqSUpzQ1BUazBoeXhFMlFLM2VGdDdZa0loTDl0?=
 =?utf-8?B?ZWxkRFAydEUzckhEb2NjQnkyeS9hK1UrejBCQ2tiVFNzVW52WXo5c2lPeVhO?=
 =?utf-8?B?dUFPaXZEWWkwdWJRd1pXdU9xUE9WNkhjUm5lbzVFSE9GUUNReHY3WlZqYzd5?=
 =?utf-8?B?djlpa0pHUEgycm1MYzk2UjdabDNLZUtvNGZidzZaSlBoRTdZNVltQURXZkZh?=
 =?utf-8?B?ZWUwdE5lb0hZN0tPL2VkUENhNDZGUE5QTEJVdndjMmVFbXJCYlFlRmwrWkZ3?=
 =?utf-8?B?dW9vRTBnNGZWQ0hqekQzaWJ2Q3RzZThUREdmWFppNUdIZS9LSTVsS1lpKzhO?=
 =?utf-8?B?U25XaW9abFovN0wwcCtSZHp0d3pxbEV2MEVWMWVKSkVxMTYvQk90WUQ3VUhO?=
 =?utf-8?B?RmIyVUtOQ2wvMGRRQUtFSzIvQzYxUWNkSmU2TVlmYitpM3kxdTRnT0tORnJJ?=
 =?utf-8?B?eStOL2tadmNzTHljT1M5aHpYQS9sOFN3THF5NW9pdWI1OW9mbWRmWnp3R2Vl?=
 =?utf-8?B?QlBWY1gzb1ZaSWFMbmQyblpDdWpVT09XUGxtRHd1cHdrK2RjMk5ZNFZ3dm5s?=
 =?utf-8?B?SHV4Z0YvNXVjMVdIbjdYaGJYM0k1NDRxcVkva2p2VW5sNkl2Mm1sQTBjTWRr?=
 =?utf-8?B?UUpjQ1lDNWUxcGNrSytmdzZsbVpIT2trTC9mTzVuZ1EwdG1XNUNHZ2ZoMzc4?=
 =?utf-8?B?R2NkdVlodXN1Wm5XMGNkcjNPczR5dllrdEtwSDc2V2J0bFloWmpabTBYdk01?=
 =?utf-8?B?YmtHSGxjR1pLelN5blhUNUovMnh6a2NwLzBaRThub1RtTU5SRHNCalArMGhi?=
 =?utf-8?B?SVJXaTA2bFprVmtWQXhKa3d2V3M2aEtkNkdRaWg4Z3lXbzUwTlZPOUo0dWxJ?=
 =?utf-8?B?R24zYk1XeFY0djYrL2tzUT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QnlwV1FaM1JPeVVBMWVFcElqajlxcS9XUnVta1UwQjhIbmxJZ21rM01lbHo1?=
 =?utf-8?B?OXd3K2hwMXd3TnlNZ1d5YlhIblRiVWNDbzQ3UnlLM3JqVGZ6cFM2NGd2Z01J?=
 =?utf-8?B?VCtpeEU4WGRMbHlrbmJvbGY3dTFWQ1dhSndTUE4rY1VhcFQ2S1haSzRWSEpC?=
 =?utf-8?B?ZjdIMG5jR0p3dEZxOGxTbjVsSzhYbFJIS2JUV2pZbnVsQ0UwZFU5QXU4d25W?=
 =?utf-8?B?VjNIYmx4bWV5NDg1Qjd3SGRnOGMyUi9qZkhWOTdOMkJuSXRiVFdPN3c5OVZv?=
 =?utf-8?B?V2JYcENsdXRkdzI3Si9VOTF6MUFoRGRMWmRsWUFwdEF4dForUXRHRmNRMWZQ?=
 =?utf-8?B?dm9IdkJuMjBISzlUQjAydEdlK1ZwREVSUkNDMDNRQVZaNVVadmIyNzZKZmd3?=
 =?utf-8?B?NHZUYzZpeU5EM09HSUFBNlh4S0x1b0NaVXRNZDR4UENjV3U2UHhNU29wWjMv?=
 =?utf-8?B?VEJRYXo5QnRzQS90WEtCK2ljK2hZbXhiU0loWVV6UEh1L2FnbVQxNWRIVlcy?=
 =?utf-8?B?Y09JZnQ5S3l6WklrZS9iRnZKS1R4alRkVUpkdFlleWU2SHlVVVNkREZnWTZV?=
 =?utf-8?B?eEcxdlRyb2FTR3FDTUhGYWpyTGNkMjVYdHkvck9FK2U0bkhERzVwUnQ2MXkr?=
 =?utf-8?B?TWZ4Q21aR1NZWkY1UjFXd1RHY2tRSU0wZnNDY3B6dEJzTkJRNkswTVJnWlk0?=
 =?utf-8?B?a0EybXlrUFZUUU10TTVhMlRsUFk2ODlGblJjaU5PL3dsRnc3WkticFptajRU?=
 =?utf-8?B?S3JzUlpGZTNMYUhFNG9GWnlmam1JcklzMkNnWGxMTjF0M2xYWUlnVEpTdGFq?=
 =?utf-8?B?NDcrV0JoQ1ZIc2hlRTYyL3pIZGc1SXBNYVZNOTRUL2F1VCttSE1vUnlrTUFx?=
 =?utf-8?B?VHIrb3Y5c1ovcTNKVlZkaFJqMTgxM05oZ3pXR1RNS1htS0FWL3VkWTNQenhv?=
 =?utf-8?B?OUQ3T1QyZmE1ZkJYaTdZU0FUKzVhaVUzdmV3eFRGLzd0SXllNjVxQzdaZE9T?=
 =?utf-8?B?eVdUZjZsbGVkMmcxbjV6czVROGEzYXJEYXRocURwVzMwTExJS0ZjU3dQSVk4?=
 =?utf-8?B?ckZQZXRxUkpxVHVDcHBTTm5DU21JWlpZcGE1TmxSZUkzZ0xSY2srUjhGY0pm?=
 =?utf-8?B?NHMyM0hwZ2RsRWNxSjV3aDlSUlR0anAyOGNObkFwZGRSMDB6eEdqa05UdTZy?=
 =?utf-8?B?bDE1RDI0UDZXL21FMWxQKytOZjdoRFh2Mit0MnkrSlhBZVg4Y0hNc1BCY2NK?=
 =?utf-8?B?VEFUeHZzQ1pkQnhkNjdGMVpscnIzR0Q3U011YXhLWXVlYlFtWWFYVkVxV1dB?=
 =?utf-8?B?ZXFnbTJXcTV3d2ZGZlpCcSsyb0c1Qy9PcGpHZXRLNEFuQjROcHRRcmJwVGky?=
 =?utf-8?B?WUJQTG1zMGRlZCtJMzI4TFhkd2NsSnNqQXVuMm1FUVVkbmtZcXVPOU5vdUp4?=
 =?utf-8?B?MS9Sb2tmai92REVNYTFZUHlDanJKczZWOGh2U0JvVTRtMjRRVFRVZlBuaHR5?=
 =?utf-8?B?VVJmVVhHMTJSS2p6N1Bvc0NnMmYzYytEVzVBNmJkaURYRTJPczdVUjhaRkR3?=
 =?utf-8?B?amUrRUU5aTBGTXl2blZUNmE1Rkt6c0ZSZlJmMXdWd2djUStESU1HNVhJNFg0?=
 =?utf-8?B?ZGtYOTQ1UWUyb21WanZ4TTdxMjZuUGpCL0EyNGhIMGEycWk0dEplNVpOZ3FD?=
 =?utf-8?B?NmFqOTlSSVIxbmM0b2g5TUxIeEY5eldXWU5TSlRyZkZIOHpyOG9GUDg2ZGhx?=
 =?utf-8?B?eGtkUUwwVVRsaSsranZDbWhON3dlc3gyMnNDY1RObkYybGpGZTV5RmplbHhX?=
 =?utf-8?B?Y2Z6MHNDbmVXYmE5S2ZiVlNvVkl1RitrNzN3S3JlL1E5ZEJ4bmtkMW5MaUlF?=
 =?utf-8?B?STFrNVhmT3RFRHdJMVc1Rjh6enY1R2Jrd0RPUkRnMk13a0hkOTVLUFlUVzB3?=
 =?utf-8?B?d1NhVzZTUHBvT0Mra2szMkVtd0tpRm9uS2dsM213bmYrSk4vY0VlTWdQNzhi?=
 =?utf-8?B?TzM4RllCdFdpbC8vVThvRm1qdWxMb0lUR0tTSWFWTHo5OTdBZU9SanFuTnZL?=
 =?utf-8?B?aGlFRXZmVXhTTWw3RWpMV05NVE9XbDZBSnE0N215ai9RZThYY2t1SzBWNllS?=
 =?utf-8?B?SVdJNjRNdnRrS2ZsSm9SVDRLU0NBRUM5K2NEd3FwM2VSM2JwMVZRd2p2RTZo?=
 =?utf-8?B?MWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e49f44c7-0018-4b3d-4222-08dcadc8f701
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jul 2024 23:16:23.0249 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: af3QAek+crK0QhS5d6G9T7YIxhI0BTVk1WFz/wBaascn+mpmiF9zzgS2IH0uWGLR7HsG3FjoeeBTVR/qgtkYheil3vyoNWlPPboCG5jA8HI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7545
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722035792; x=1753571792;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zPkuCArKGguMPOPR8xFjsQ/h1ZiwHNXADx+EH1c+Cpc=;
 b=K73XwjTLJi6QurKPp2z7UKbCbHF+9+KRB0XabkEjAMRqoACZ/QCX7GDe
 Vy166apJZhO5mJqlbyaUFN1BvGSmrD8wpVMdkmzFhMlczS8f6ganCR1eB
 g58CK2+36pkXqBG28IohvnXUEkhgndC+ba5RhzhV2pmUWQRLr3TpRLGG0
 JBEYiyyJVpHs3tqdP3hJoNPclDV2g91b5pYF0ALEyYpsIr7OvO/9PICV9
 pZ1HY3IJJ/V+U337/BjOWSO9zNNPSOEm8wIMqU/GH2hQtvjhaEUha8tX8
 M6qOZuJ6ZRAfRl6N23cI8hMUwB+XU+Dsw+hFPQhHOTTYpflY5J/StOyBU
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=K73XwjTL
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v3 iwl-next 4/4] ice: combine cross
 timestamp functions for E82x and E830
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 7/26/2024 6:37 AM, Alexander Lobakin wrote:
>> diff --git a/drivers/net/ethernet/intel/ice/ice_osdep.h b/drivers/net/ethernet/intel/ice/ice_osdep.h
>> index a2562f04267f..c03ab0207e0a 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_osdep.h
>> +++ b/drivers/net/ethernet/intel/ice/ice_osdep.h
>> @@ -23,6 +23,9 @@
>>  #define wr64(a, reg, value)	writeq((value), ((a)->hw_addr + (reg)))
>>  #define rd64(a, reg)		readq((a)->hw_addr + (reg))
>>  
>> +#define rd32_poll_timeout(a, addr, val, cond, delay_us, timeout_us) \
>> +	read_poll_timeout(rd32, val, cond, delay_us, timeout_us, false, a, addr)
>> +
>>  #define ice_flush(a)		rd32((a), GLGEN_STAT)
>>  #define ICE_M(m, s)		((m ## U) << (s))
>>  
>> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
>> index 9f0eff040a95..ac3944fec2d3 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_ptp.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
>> @@ -1,6 +1,7 @@
>>  // SPDX-License-Identifier: GPL-2.0
>>  /* Copyright (C) 2021, Intel Corporation. */
>>  
>> +#include <linux/iopoll.h>
> 
> read_poll_timeout() is used in osdep.h, but you include it here.
> You should either define rd32_poll_timeout() here instead of the header
> or move this include to osdep.h.
> 

Please move the include to ice_osdep.h, as there are some other places
where we will want to use rd32_poll_timeout (such as in ice_controlq.c,
and others).

Thanks,
Jake
