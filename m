Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E3E9A5E80A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Mar 2025 00:10:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C08EA60A45;
	Wed, 12 Mar 2025 23:10:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ao994-7hmZzz; Wed, 12 Mar 2025 23:10:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D22C860817
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741821004;
	bh=Mglh0kdQ30n6hnBNGaEmxpKN2jpEJMoa/6LfnjoqbSQ=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=hVmuC1IXtQbzJObIMYpFyfYWExGVSW9J3G80tfVKRrowVOZEMQqTUJ4ia8OeoD/gz
	 lshTFAGCZFHDBeRcpJNi4s3jcYQfzD4i5v28ChQ2JxB1udYXx3UGiBwMUjC246LoYR
	 tXUhHJnw6Xnq2rzssjRl8xbXLC5TM4wm6MIzEn2dKvdGp+3BVaOmdw/Dk5BkMpQb9H
	 Ly/oTvxwJZ1lk4bYrhHpDS1Aq4DCMY3LywTvB3npjG8L87cjnN6EYe8ivxRb6JlnJX
	 oApCS8lpHjYb1ABq9ikFBJslGaBKmD7iIMNhPgyog3UMhXjAEQXwUbjAMZ05bDjaQC
	 FBwsZuvFJ6KAA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D22C860817;
	Wed, 12 Mar 2025 23:10:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 7E6CEE0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 23:10:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 65E5E405E7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 23:10:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PN_7h7k4qP9h for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Mar 2025 23:10:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2411A4063F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2411A4063F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2411A4063F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 23:10:00 +0000 (UTC)
X-CSE-ConnectionGUID: xrN07Gc/Skyu637eebmxsA==
X-CSE-MsgGUID: U1Cqtxc3RnSE8RH4nn73Cw==
X-IronPort-AV: E=McAfee;i="6700,10204,11371"; a="53571916"
X-IronPort-AV: E=Sophos;i="6.14,243,1736841600"; d="scan'208";a="53571916"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2025 16:09:53 -0700
X-CSE-ConnectionGUID: CzIWg1EITBSKAn3tQj/frw==
X-CSE-MsgGUID: ZzoOHvOiQg2XHfUYFMph2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,243,1736841600"; d="scan'208";a="120583627"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2025 16:09:51 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 12 Mar 2025 16:09:50 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 12 Mar 2025 16:09:50 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 12 Mar 2025 16:09:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=g1r1s6UueY7yD/EnM8ZxEu53dneJ961ipfcuOC81pTt0RRvP/Ws1UFfMRzfORAFPZLa62FfQpLJ3yp1K0Rp4Tyu/xqvlhC6jar99GN8am5R+aH5UWbC41a+Mz4Rdz8XW8MDF9Hm0HxdcZx2zU0Q5ufS5F5TuSkzuRAuouzVjo02W1ebwCXrSYB6B4NLMaU7u8QUgNpgajIIn6BTcwAsRGoa34U67GEB2Gh4M9q4HdUELp1uy4LVepgIvthnh+qxENXIuadmnHhceM1MrEUHN9owvKdAR4Ts7zS3v71emOECA3pLi95Ku0feC8+CUqOgryQ4HP/7Cz7mpK5/SZvGq6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Mglh0kdQ30n6hnBNGaEmxpKN2jpEJMoa/6LfnjoqbSQ=;
 b=IzYZ+WJv7zBKFqRTXVqLz4DWtCCZbhMnFR8fApqTEg7fsbv4sefhQuq5JAIG/Kl24iPsRfAJWtLl72t9XpRec2LTevR7y3hmYV6NGr9KAkVc9/j3YAbB5CdWt4N/MRzFyf7VqFcOJi4mPsDf6h+yPjDThmUVxrZDKhPb7LG79Argwt0XpFr0ItfINDgPq0i/3O02YNPaK14NyBCeSVtfoskoN8v9m/HWORYh+0af/HH62iUwsbEIUcn/gitMozPIco3A18D/Eo666plVWVwzzqAGtofqBdeR5JJj8RwcDE8z62ZynaqkCUEvgM3KlesdjZMFYr4TQ71tbBWFiAGf0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by PH0PR11MB5064.namprd11.prod.outlook.com (2603:10b6:510:3b::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.27; Wed, 12 Mar
 2025 23:09:06 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab%5]) with mapi id 15.20.8511.026; Wed, 12 Mar 2025
 23:09:06 +0000
Message-ID: <80d3322d-3afb-4386-8ed3-4b3813ab785c@intel.com>
Date: Wed, 12 Mar 2025 16:09:01 -0700
User-Agent: Mozilla Thunderbird
To: Karol Kolacinski <karol.kolacinski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
CC: <netdev@vger.kernel.org>, <przemyslaw.kitszel@intel.com>, Michal Kubiak
 <michal.kubiak@intel.com>, Milena Olech <milena.olech@intel.com>
References: <20250310111357.1238454-12-karol.kolacinski@intel.com>
 <20250310111357.1238454-22-karol.kolacinski@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20250310111357.1238454-22-karol.kolacinski@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW3PR06CA0014.namprd06.prod.outlook.com
 (2603:10b6:303:2a::19) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|PH0PR11MB5064:EE_
X-MS-Office365-Filtering-Correlation-Id: e2cb0a88-3868-4a8c-cf1c-08dd61bae354
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NWlpeTJtdi9QU3NOTko0YWtqaE5QMEMxSzc2VkdFTUxVVlhuNXJPcWVJeFor?=
 =?utf-8?B?cUg5cHpNQmhrQzZsRTNzZmxCZ3JKUFF5TG5FdXdScmtlWXlhaHhNRWtubHpn?=
 =?utf-8?B?OGZYckhubGMxcFpXWmU0VUxwWTBnbU9CS0tnZVZnZWcrR1hQV0QxY1cxejV0?=
 =?utf-8?B?cm9SZU1NbXhSOHhnS1FZaE90a2JTaHFpSkF6YlYxQXdXUzR4Z2hINmpaY2ZP?=
 =?utf-8?B?UDlhUVpBOTRuMmphL1IydnBGVkt3SFVFcHlrbEk1RnBNRjF3R290WjZsOU1s?=
 =?utf-8?B?NnBTampRVnJDTEs3UGlEdWhpdmpWdS9OUko1MGFZMnJVbC9SWWRBQ0w2WG90?=
 =?utf-8?B?NS9wdTFyNjFHT0RkSHMyclB2dXVTbnFrb0MvOHB0d0JLZ3dxdU5QeFZBcG9r?=
 =?utf-8?B?Y29oWnpZK0lPL2hDcHJvR2ZYVFBpM3FXNVVnZXluaGkyeExOZnEzam1zcXo1?=
 =?utf-8?B?MVd2MUFRMWdiaEhaVnhyTjE0cUhRT3ZSVVNqc3JsWHdMekczb3RvaXplcEdB?=
 =?utf-8?B?SEpqWE1CUjZ3RkVqeENKSVRtcHRlbVk1emR0NGFCcmpJRk5sb2JiczM1Z3Fq?=
 =?utf-8?B?T28wVGxVRWYvcTRCcnB2MUVaYms0Smhnbmk5QTR4b1QySU5tYlBvUVllOW04?=
 =?utf-8?B?NTJhQWhvQzVZQm1oZjRFQ1crUmVPeUNnOWgzdVg1K2JrRUxIVUpTRENMeFgz?=
 =?utf-8?B?dnVlUnMyTEJudDJpTlVsN2FDYUE1VTVSNmFkU2N6Qk9JbDFhakl1VUNkVDZk?=
 =?utf-8?B?elowcVBsdys3dnRiSmcyT05iUzRtUm5NbE5qakpDRUVVcEYzeGhvL2JhRWVR?=
 =?utf-8?B?R1kvbEpMbzNGWGZHNnZuTGJvdHovVnJVaVZrSWgvZTI5S0duRHRvci91SGto?=
 =?utf-8?B?ZGYvcnVmak1reGR6WG0vdXozdWdoZ25uamlLcytrZHFoWFFsU2pqMjlpNGZI?=
 =?utf-8?B?cUs0S2FxWm55OTUvd0p1dkdZTGJQQlJjNk1xZ0NhbWY2MjlIUlAyNUdxY1dr?=
 =?utf-8?B?TjRGVnRDSmlDakJPWGduSmdTU09vMGdGN2doVzhtN3dETUlXeDF5dHdqR1VV?=
 =?utf-8?B?QWxvNXp5aTV2SldRUXdqdVlvTDlMaUxGWDZVODZHNVphNU0zRS9rMTVjMi9h?=
 =?utf-8?B?b2xxMXpoRXo0MUpGOU5sN0hQLy9yWG80V29DTndhRk1TSTVGd3FUQ1dkd1hI?=
 =?utf-8?B?aXZnTW9vVTZ0RXRnNUtDcXZEYTlMcDMva1d2dzFxSFhIVzVqQmRNS3hCVENh?=
 =?utf-8?B?TU5aY1NpRUcwYTA4SHZ0N1RJZHZ0NEdFRjI2cGJ3WnRXQjRpZFQxdzB1bDdU?=
 =?utf-8?B?WTc0MTBvaDlHYXdaSVlLazQwdHhrSWJXa0gzS01nQTVreVFMVTl4UzlGZlRz?=
 =?utf-8?B?ZnF6WHhVVHBXalhKdDBPZ2QvOURJdjJMSlNkK2FCMktLNVNsUXFieTJlRTFl?=
 =?utf-8?B?cm5Ea1pZbHZON29aejloN2FnVEJIdjNTaWtzT2x6eTR1eXNHMHYwYnVLSEwy?=
 =?utf-8?B?ZDdmb3lET21MNWZxcjdPN1JRdG13MFJKUm9tOEdrY1VGZzJ0czlKK2FzS1Yx?=
 =?utf-8?B?b1dPemFhbGV2OFY1M2dYMEY2Y2wvNmdPVUVCMUppTFNuWktCL29CRnExaU5l?=
 =?utf-8?B?UEZVc3dLaEtmbEoxQWNvOXpVaHJJaFY4L1FiQkpBVzdUTkw4a0dKWmN5dmtD?=
 =?utf-8?B?Mi9lUGRMbmtWT3UxOGsrMHNuV2RCaU15KzVUUnpuNnNNSU9xZDJaU0YzbjRI?=
 =?utf-8?B?R3pwTlJJK1hSaC9xdlpEbCtBelIrUVZJODk0TVFKUkFvVTVoK1FWeURNb0pT?=
 =?utf-8?B?UUlYT3ZuVkNURTdGTDJTdExaZE9qT2IrRWYvN3RLQWVoRTBzRGdRWGNrMFFH?=
 =?utf-8?Q?3/JWwxROdXX7i?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZmVZMFBsZ1psaGRiNHRDYmVTQXZxUkRjb2xHRHBCT0diMUFReFhHeExYSXd6?=
 =?utf-8?B?TmZIb045dC9Qb0Fxc3lkMGpORFJFd1hXZnNaNHc5M3R4MTNpc2xyL1h4UHhi?=
 =?utf-8?B?aVZyQkdxZVNxN251QUJSMzBZVlM5UmgzUjlXSFFQNm8yaW9kL21DTUN2UnFq?=
 =?utf-8?B?WlU3ekZSYndXNVpCUG1lMlgrcnpNR0hBOGNubEE2MCt3NGFSc0h6VEl0YU55?=
 =?utf-8?B?NEFLOXRXNENnOTlFUndESURlRU0yN2hyWExSMmFzS0RveUxwRDFzZUVuODJo?=
 =?utf-8?B?YjgxT215cG1QNUhRV3dsVmNlbURuV3lXbGNKWGJBYVkvQVovcmJaVXlibXEz?=
 =?utf-8?B?cWV2S0RGeWtEbWVlUG5NS1UvYy83Z0ZBTEw3Z0djMFhFMzdCMmROMEhUQUVL?=
 =?utf-8?B?bHRWT3R4Skw3ZzF1cVZIT2FjTHRlbkhPNUNQQlZkQ0ozWDQzTHdlT0hLYUND?=
 =?utf-8?B?S3hsaUYrUTBnYlFPRDFtMHZyMjBET3pvd0k0Y2k2SnRoYUsxNmNKb1Y2VkVq?=
 =?utf-8?B?VlpabnVjTWp3VVg0VnRYUHE2TFJIQlZuY2pVTmtaUFZpbkZpeFN3MUJUck5J?=
 =?utf-8?B?UU1tVHFsZ2p5RExjWFRxelU2dCt4azJRbWlrdERSMXhjU09ZZkVMcHJ1bWFI?=
 =?utf-8?B?OW9qNFd3T3NTTTBKeDVXVlhUYUNxUHFHY0Y3Z2l2VFRhU2lrcmxoQ0QxV01P?=
 =?utf-8?B?eVZkdUZyUHhRZ1A3TlF1M1JpL3R1QlJRdTRqeG1zZ0FzWXlpNkFpdmQ0M2pa?=
 =?utf-8?B?UVZjckdNQjMvaVh3VXNjb0JwamZwSDVjZThiYnd1NzE0V2tlZTBmMkd3ZlNB?=
 =?utf-8?B?VVpUeVh0cGpzWnBUSXVZQzl0c2Y0ajc2ZnZjQ3lZTkd4cWFCb2RWMXRyWDUr?=
 =?utf-8?B?MnVmK1lWYytCdEgwM2pSczFZYTRHL3pQNVQ5UnJrSTlycXl2VFZJbmdXcCtn?=
 =?utf-8?B?R2dhWVNJN1k1TlhQeE1KTmJvbUREZGczVlhMaWk3WTRvMWcyZnpzc0xMWTI0?=
 =?utf-8?B?YjNDMFN6OHAyY0M1UlArbzdJZXBrOWJ1RGQ0QVk1RG1GRHRITVpUMTlrdUxW?=
 =?utf-8?B?aE9EdUkrWHl4enNOSDBPT3JyOWx6QlhzUmdSUkt3U0FNZkJzaHNpZ0hQUkdx?=
 =?utf-8?B?MURrWDkrRkxQYnRDUVZTZG9JUjgrSnVSL1JucnA4c0JGVE8vTlAxczM0Ulpn?=
 =?utf-8?B?UXdScm9WZzZZK3RoaERCY1RxUlRkKzN0RlU1QmVreVRJNzY5Mkc4ZDRmVzRE?=
 =?utf-8?B?dDM2cTZrRExYdXcvNDE3WU96NFRYb2FReGNVblFnNnlyYUs0S3A3QWs3NTBx?=
 =?utf-8?B?MUlrVndQM2g2bWhjYUduUlRTcG9NZUxWUmxWMEJ5V2tvSTRXS1Z0K3ZBbjQv?=
 =?utf-8?B?dDJjaE5qWEJrVjNTOURGS0UxbXQrd3lLS2svV2luNHd0SkcxM0tHNHNaWXhH?=
 =?utf-8?B?WkRDQ2NybXlMYTJlQ2ZTd3FQM0tTclZSOFh5Y2gyVHRTRERUQ2xPSC9IRStS?=
 =?utf-8?B?MXMrdzJ2aEMyUU43RWVUSmcrZ3J3OGl3OGVPQTY0Smk0c3U5RHhESWZ4YUNR?=
 =?utf-8?B?UEhMYU5tVE9FQWFFZVFCa3drR3ZQdUhPeTlwWmtTcEttSXZTNnFzVzhJa2VW?=
 =?utf-8?B?VWJEWlZCSzZmOTVjQTlTTlVRMjdWTVlsSzNvWlI0WjBWZkdUN2JlcXdHK0N5?=
 =?utf-8?B?RVVrM01wWXdVMzIxVUFyQjdoQ1B4MmR4ajJwRGtJdDlvUVZ5NzlvYVFSZVpN?=
 =?utf-8?B?T0R2aDg2enRXeHJ5MW9zbWZHZnkwTXlUSGVDMm5hYzJ6YnJoRjhWenBZaXVZ?=
 =?utf-8?B?alU4enRBckpHZG9TZmJsekt5ZFI3Ukh6VW9Ha0J1N284Z3A5dFRDV256dE1D?=
 =?utf-8?B?TURxUzhQUmFYWU5uVW1GM2hGYTFaWGhHL0JwZ1BJSlZXWFdnZmo1N1Nkb3lr?=
 =?utf-8?B?VUtlSDdKVlZGVk1JbnYvd0JmdDZlSTc4NTdRc2ZWdE42YmU0d0s1ZFJTTzN0?=
 =?utf-8?B?NmVDZjR0SkJiVDFBd2FveFFhZXp1eC95N0VkS1BzenlNZkl6bHlHRWlsdHdU?=
 =?utf-8?B?RitId0tuTnJyZVJPQnFHMWJ4M0JDblEwUmdBY2xXNll4bUtMb0gwT2crMHN6?=
 =?utf-8?B?Y2FucUxvMmU5UDg0RG95bml2ZzlCNVdyOUI0YkJJbU9DNS9NaEdjUERiNlUy?=
 =?utf-8?B?UEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e2cb0a88-3868-4a8c-cf1c-08dd61bae354
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Mar 2025 23:09:06.6546 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EUOppn1xAPeb1Jg+fM0dzU1Miw7qhmgU4LTh06u8auzJSGfAIVG0csvdOZeACHXdKHr6JHcIz4jiXd9Ea4Ox6HvHH0pnUjny1UQejm9RvKk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5064
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741821001; x=1773357001;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=m97BeWbdraP3AzYvba1gRGOz8bhqn0vhr8HWi1rikKU=;
 b=W0VPUQXcOrW1kT5zPb7Hyn7GVmjzoYy83qoo9s4uFPH5CQzUq9FnT6DG
 UvB+viDxFz9HED6/iuiwUDZd5cU+cXpRqxX2glz7QCzOwTSpi8W2JxzEv
 BEtH/FYOnkELnV1IkrsntatNWf4gT/Gza4J/9WSB9KNgQ0/lJgJ7P2BFM
 NuFl9PXMjlJNq+78bnK01Heops4tvfZprhIkwhPQCQlozuCzJn9hgQGcj
 11Zq4myOARYwJiTRkJ2kx50PjLJUFMVwYfEXtGPopnrddwzeSPniy1MNu
 Eckh5UGPsjNEvXD811jLlPWXeJ+vpP3VQ2y8t6mQ0IkTEls18RCIPFXjl
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=W0VPUQXc
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 10/10] ice: move TSPLL init
 calls to ice_ptp.c
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



On 3/10/2025 4:12 AM, Karol Kolacinski wrote:
> Initialize TSPLL after initializing PHC in ice_ptp.c instead of calling
> for each product in PHC init in ice_ptp_hw.c.
> 
> Reviewed-by: Michal Kubiak <michal.kubiak@intel.com>
> Reviewed-by: Milena Olech <milena-olech@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_ptp.c    | 11 ++++++++++
>   drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 24 +--------------------
>   drivers/net/ethernet/intel/ice/ice_tspll.c  |  5 +++++
>   3 files changed, 17 insertions(+), 23 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
> index fdeb20ac831c..5fbd77e0cb17 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
> @@ -2864,6 +2864,10 @@ static int ice_ptp_rebuild_owner(struct ice_pf *pf)
>   	if (err)
>   		return err;
>   
> +	err = ice_tspll_init(hw);
> +	if (err)
> +		return err;
> +
>   	/* Acquire the global hardware lock */
>   	if (!ice_ptp_lock(hw)) {
>   		err = -EBUSY;
> @@ -3038,6 +3042,13 @@ static int ice_ptp_init_owner(struct ice_pf *pf)
>   		return err;
>   	}
>   
> +	err = ice_tspll_init(hw);
> +	if (err) {
> +		dev_err(ice_pf_to_dev(pf), "Failed to initialize CGU, status %d\n",
> +			err);
> +		return err;
> +	}
> +
>   	/* Acquire the global hardware lock */
>   	if (!ice_ptp_lock(hw)) {
>   		err = -EBUSY;
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> index 689feac7baf9..ba97a52917af 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> @@ -2107,22 +2107,6 @@ static void ice_sb_access_ena_eth56g(struct ice_hw *hw, bool enable)
>   	wr32(hw, PF_SB_REM_DEV_CTL, val);
>   }
>   
> -/**
> - * ice_ptp_init_phc_e825 - Perform E825 specific PHC initialization
> - * @hw: pointer to HW struct
> - *
> - * Perform E825-specific PTP hardware clock initialization steps.
> - *
> - * Return: 0 on success, negative error code otherwise.
> - */
> -static int ice_ptp_init_phc_e825(struct ice_hw *hw)
> -{
> -	ice_sb_access_ena_eth56g(hw, true);

Are we losing this call now?

> -	/* Initialize the Clock Generation Unit */
> -	return ice_tspll_init(hw);
> -}
> -
>   /**
>    * ice_ptp_read_tx_hwtstamp_status_eth56g - Get TX timestamp status
>    * @hw: pointer to the HW struct
> @@ -2784,7 +2768,6 @@ static int ice_ptp_set_vernier_wl(struct ice_hw *hw)
>    */
>   static int ice_ptp_init_phc_e82x(struct ice_hw *hw)
>   {
> -	int err;
>   	u32 val;
>   
>   	/* Enable reading switch and PHY registers over the sideband queue */
> @@ -2794,11 +2777,6 @@ static int ice_ptp_init_phc_e82x(struct ice_hw *hw)
>   	val |= (PF_SB_REM_DEV_CTL_SWITCH_READ | PF_SB_REM_DEV_CTL_PHY0);
>   	wr32(hw, PF_SB_REM_DEV_CTL, val);
>   
> -	/* Initialize the Clock Generation Unit */
> -	err = ice_tspll_init(hw);
> -	if (err)
> -		return err;
> -
>   	/* Set window length for all the ports */
>   	return ice_ptp_set_vernier_wl(hw);
>   }
> @@ -5580,7 +5558,7 @@ int ice_ptp_init_phc(struct ice_hw *hw)
>   	case ICE_MAC_GENERIC:
>   		return ice_ptp_init_phc_e82x(hw);
>   	case ICE_MAC_GENERIC_3K_E825:
> -		return ice_ptp_init_phc_e825(hw);
> +		return 0;
>   	default:
>   		return -EOPNOTSUPP;
>   	}
> diff --git a/drivers/net/ethernet/intel/ice/ice_tspll.c b/drivers/net/ethernet/intel/ice/ice_tspll.c
> index 37fcfdd5e032..17c23b29b53c 100644
> --- a/drivers/net/ethernet/intel/ice/ice_tspll.c
> +++ b/drivers/net/ethernet/intel/ice/ice_tspll.c
> @@ -474,6 +474,11 @@ int ice_tspll_init(struct ice_hw *hw)
>   	enum ice_clk_src clk_src;
>   	int err;
>   
> +	/* Only E822, E823 and E825 products support TSPLL */
> +	if (hw->mac_type != ICE_MAC_GENERIC &&
> +	    hw->mac_type != ICE_MAC_GENERIC_3K_E825)
> +		return 0;
> +
>   	tspll_freq = (enum ice_tspll_freq)ts_info->time_ref;
>   	clk_src = (enum ice_clk_src)ts_info->clk_src;
>   	if (!ice_tspll_check_params(hw, tspll_freq, clk_src))

