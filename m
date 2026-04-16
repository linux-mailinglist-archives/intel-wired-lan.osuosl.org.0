Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id /dH+NXBi4WkoswAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Apr 2026 00:28:00 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 557AA4153AE
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Apr 2026 00:27:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0367260B30;
	Thu, 16 Apr 2026 22:27:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DrCu_YHzqSYB; Thu, 16 Apr 2026 22:27:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7128C60B34
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776378476;
	bh=yYu5/aaNHeH13/3NAl3udREcef1nm4bBumw95SY+EHg=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=r46X5mJLoQDBx5qgN4b6trYO2VenmLuIhNgJG5IDa85aoZn3hBgYvFWGBB6YIZ2Ye
	 +uEUWlv1DdEP7c0m6Q9BrKflvLIJqF7kPkDPkyFl077UMdVe4OKuuoyXqS+hFFM1ux
	 uAM9ggkZ4d3/RqkZRxS34XJSQNUdGWpwqN19e524DCZhP/I083V0qdcaG+Jl8bSsu5
	 5f9eZYdA0rQAZAdQyCY+0fhkY6bY7yYr2eqlASaC01GqZxuChCXyy2sjlOEIMySkPg
	 y9hUFTYk3MmVMFf0x3fTtgfjzwznQ7tLk9bwoj8W/76lV7sgZG3Q8xZBu4AM7C/15z
	 RmfN3qRAt+ehA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7128C60B34;
	Thu, 16 Apr 2026 22:27:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id CF5A2396
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2026 22:27:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CC902811F9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2026 22:27:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nG0DoeVYQ5Kv for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Apr 2026 22:27:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org DDE42811F8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DDE42811F8
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DDE42811F8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2026 22:27:53 +0000 (UTC)
X-CSE-ConnectionGUID: o4pPwIgnTVC8isE1Mb2v9w==
X-CSE-MsgGUID: Rtq7fz5EQcGmgx+80uba/w==
X-IronPort-AV: E=McAfee;i="6800,10657,11761"; a="76558476"
X-IronPort-AV: E=Sophos;i="6.23,183,1770624000"; d="scan'208";a="76558476"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2026 15:27:53 -0700
X-CSE-ConnectionGUID: 7ITFU2jnQjiS3kO0+0cxYg==
X-CSE-MsgGUID: AUWquGRaTs2yy25XAgvYsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,183,1770624000"; d="scan'208";a="227723393"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2026 15:27:53 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 16 Apr 2026 15:27:52 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 16 Apr 2026 15:27:52 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.29) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 16 Apr 2026 15:27:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Rqtnz2UD8k5INS0oUcC8amMThfX4UTLCoY500zlW2nb4QWxQ3N4GVOhJfo3v+BWG57oA1Dt4IE83ecacCpD1WEkSMEqe/kMgpO9WUqPVhHhTwIEYPR5cUiYYAFfilA2vSkqL6SPopjZIbweY0EFr8VaV0339nKf+AbpM44tr1laEXMXS/8Q7WTJ4El0RwaILKKfdQUp89aVC9V/3DlPgXGrXqihve6GoICo2h+VcqMpXJNXruBIUrZw4lxwQ7U0Vd1YftuVHA/IpMu12mjlHJ46M8kWxxs7Fj7rW7CwHzTP+pZQ9e6YiuWMSQ8a8L270BOiH8NpeZnXy/UZQYIk0vg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yYu5/aaNHeH13/3NAl3udREcef1nm4bBumw95SY+EHg=;
 b=nt0f56EDp42x0SrIzWPZDovBg1bvrDcpcA28v0p/IwqwpLcClXCW88LIu41rwMPhzDrKJDDFUAmFcXevnQTrxI2PY6bR9aa898ZzFGTiSeRyeZMDTtHa3CmaeAOu0HRbgzoHbkF4YCWzPQLGEesX3CQeJFZMgNVn+Wd6mLJ33xTWprEMyvgna+uWUVOuwwuOp78CBoIQqfvzDvbYNno1y682T18MRv9ZlFAPd4VeRD+HGx+/uUVYlO8Xk3pveFze5NBBUr82CaXhpnzLlnk+TOX30pjEljz8V1a99XRVVSQ78a+QT9RtgAh1O277VEcjLkzbTApEZ7qH/pOJBZseFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB7588.namprd11.prod.outlook.com (2603:10b6:510:28b::16)
 by CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9818.25; Thu, 16 Apr
 2026 22:27:46 +0000
Received: from PH0PR11MB7588.namprd11.prod.outlook.com
 ([fe80::42ad:6451:1ae2:edd3]) by PH0PR11MB7588.namprd11.prod.outlook.com
 ([fe80::42ad:6451:1ae2:edd3%3]) with mapi id 15.20.9818.017; Thu, 16 Apr 2026
 22:27:46 +0000
Message-ID: <51e90f6d-d2c0-43ae-b5c4-1eaedf7f497d@intel.com>
Date: Thu, 16 Apr 2026 15:27:45 -0700
User-Agent: Mozilla Thunderbird
To: Przemyslaw Korba <przemyslaw.korba@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
CC: <netdev@vger.kernel.org>, <anthony.l.nguyen@intel.com>,
 <przemyslaw.kitszel@intel.com>, Arkadiusz Kubalewski
 <arkadiusz.kubalewski@intel.com>, Aleksandr Loktionov
 <aleksandr.loktionov@intel.com>
References: <20260415102511.1560665-1-przemyslaw.korba@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20260415102511.1560665-1-przemyslaw.korba@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4P223CA0014.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:303:80::19) To PH0PR11MB7588.namprd11.prod.outlook.com
 (2603:10b6:510:28b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB7588:EE_|CO1PR11MB5057:EE_
X-MS-Office365-Filtering-Correlation-Id: 2e89e1f0-d675-46cd-5f4b-08de9c076297
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|56012099003|18002099003|22082099003; 
X-Microsoft-Antispam-Message-Info: qt/hAtr7JDz2/tgSV48yWa2vDo3rgSjKwIBe8+sLXEp1MBq6MdgOJoQReJVKzSaq13Ju/pheLQV2XCe0izNqLsLEfjqZ0q072ZqLiWUHNCo8b08bD3yVzQYlZ51N0WaJ7LjLmbWxRjORDEzcGkiUmPZkdlZAcHyMmTJWhwsjT61HjkqINKPtxyz9Pw+ijgH/PfQsdetGlKlnXNj9xC/Ek5b8N9dTQjQlMPn+Zd8cMNEfOVZRI8jhuqn/u4CnsN/eJlb+SlJi35UJW5t+jkzXJe6FiiTb18ppPoyOeQnICWAieAZ/dX3dctheztKBNNdFZJAnkJdoiAKM307HxNEMRr3487u89fZrRVvrNnkgR3dtpGtDCz3vWnx6Yzou6LFuvZ7gz1p14hu7mlF1sV8rUHcCT2zTzyXZftbmAn+qMjsxCv3deIajzJ886QDKUqENqyJZXeR7ctU8tsRAPHDkAKKylmdkD0xhSYXopOd/2wBpc0Ib0FZ+Zx1g2z8GV2P3cInJORfQqkRxhqvB148Uihd32GQYUaxtGNgH4w+RNaHDwMqBjNTBOrvv5L0+1bNd9/MWmhZqnI0/Nzn4LbSSh2cI7xqbfpinE9Uct1AvyXpDdXhXoent0P7miJtjTtfPYbGFJ5x+lf7Hjp+wnYWBru/WMOzuMdg6qqEFB9t3PTXyyhUnL+HtxSM3J+PoOfM5iP2Jx5LFZcDjzMHVn5Gre9kRxiH7SITpfD76fPSVsmQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB7588.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dEpQbkZ5M1lNRmRjQVU5ckpOVmU1SWduRVNPM1ZVaUlES0Zvait6TmtnajRE?=
 =?utf-8?B?SnZOc1BJNzdQUS80ZGV4dUVQNnpGRU1objBFblB2OWgxM1lKVEhTSFR1NTRU?=
 =?utf-8?B?MFRJU29IZFQ4RW5XTkp3NVhIeHZEaGNjSER5SlJjREV2K3NWUHNjRmIveFhQ?=
 =?utf-8?B?TzdHMFZJOGFZUmJ4YUFQeEprOEJISU56WXNvL3Q2V2xmOTFjaGFMajFydzJU?=
 =?utf-8?B?ZC9HeisxSmxEelRyYVhtSVQ5dysrV2RpWlozNVR4d0VzWUxWYjlDaXpWUVJC?=
 =?utf-8?B?QzVhRjRSdjJnZjU0SUNoQXlBVFNZMzVMakRKM2N1RVNvcXJoTndJREdUSEhu?=
 =?utf-8?B?S3ZNWnBBcUhSZ2VvWWRwQkFZdGhnTTJLU2E5aVdxdjJObENoTk9sdkdaUHhX?=
 =?utf-8?B?THhyOUFiYjYwS3RFbjNFamJYb0t6MFBZUGt2Nm5rSUFFczc2MGljTzRPSmdI?=
 =?utf-8?B?RExkcWNObmZoblpmaFpxYjdRenVpbm5EWXRkUnRUMnVTemlxMm4rS3QraDdo?=
 =?utf-8?B?cmJPM2k5THBaNTc1Q3BXM1NUcnFHTDBGV0lFUnJneFhrckxKQStHZjMra2wz?=
 =?utf-8?B?MnFKMzFkS2h2SjY2WGVCcDVxa293elpHSENTQm5pQVk0aTJmcVE5a21DR2hC?=
 =?utf-8?B?N3NEdXZWUHRRU1pPK1dLQWYvNGM3N09sUkYwK2poUXUvQUhrNjUxd1lPcEFO?=
 =?utf-8?B?bHFGRzZIU0JNNGM1TlhLS2twWUE4VlVjdmFacG8weDBzWSsxRUtIOEtENUlB?=
 =?utf-8?B?a3JYQ3VIVFVkdFNaaStBbzQ3OEVpZ3dLMWRPS21BODlqWHhrd2RxRE1BNVUw?=
 =?utf-8?B?R2ovaHdMNGVtNmRuSWt2QjE4NjJIdW9EcW9vS1JFOTYvZ0RwdFByWHY2dEFX?=
 =?utf-8?B?U2dhRHNadmZTWm9jNk1vTnRUemtUOE9mU0pGaUhHcHlCTnBLSkVKYkxJVlVq?=
 =?utf-8?B?aVI5RWRUdmg4U0puSkNkanpHZmtKZTdLdDV2aVNUL0xoV1A5TzEyeGc4SVo3?=
 =?utf-8?B?THBlck9vdkpNRGtSU1FQOFVnNlN3QXJwaGt5OTRxd0ltOWVIMzNXaGVQMDNY?=
 =?utf-8?B?aklTTkszVU9SY0JOWmlWaFo0WXRPZmE5cGt5czFkVlRBYWhXdFY5dTBuZlZ2?=
 =?utf-8?B?U1p6YXIrcXlzMWhCK0tpT0lqVndvTmhVcXY1UFhKSGR5VUVCSWcvMzZvem5l?=
 =?utf-8?B?VlZMOEZOT1diM3hsQkk5QS80anVvUjlYaG5wSjk4enU0ZmVpZ1NsaXN5NC9J?=
 =?utf-8?B?WmlCMmIvd0Y1K0xKZnVqN3lXS0VCRzVTQjZoenFLenB3eUlpenlkdzliWVN1?=
 =?utf-8?B?endWRjRkT1dFTTkxU3N3cHlmTk8raVovQkpleEJXQjJhOEl1VTEzMTVEc1pv?=
 =?utf-8?B?MjlhMTBpMkVtTEZlajFSc1NYNDF0TjJrSWRkZ1Z0aktMVHlEN0xFOVZvbitR?=
 =?utf-8?B?cWRmL1ZQaHpKMFVlSTN6azU2eE1DaUIvTUE5RWRoa2YxeUZpRnl5QlhHVXAv?=
 =?utf-8?B?aHEvUzhnTWNpQmNnd1FsdDB0MFNjbStvdFgzdS9ETU1nMW41RHI0bzlUL3VK?=
 =?utf-8?B?MXpZU2FFcGtjbEpRaCtqZHBuNUVxUWxjOGxUU2ppeTRGcjdRclR3a29GN2F2?=
 =?utf-8?B?bGQ1RThTNnBMQ3FETUN2TGJZMUN3L3pCbmdyWG1FOFF1Wmh6KzVlVHJmM0xm?=
 =?utf-8?B?M1ZCMXJ5dGdiNkdOODNLZW44MVdnUFMzTHltS1VEb3U0bThiamczKzNGV1BN?=
 =?utf-8?B?STkvckFwZ2dUVi9oWXVwWHJrVWdzYnFNSUp5T0R3MTFQTWR6R3dySTZnSGJX?=
 =?utf-8?B?d1Z5TlpWbndLZnVqdm1uLytXTTRmeE9OT1gyMFpkajBkb0M2VXp4aElWS2Zh?=
 =?utf-8?B?TlN3dVBJMGYvRHBtK01ab3RlWDVZdTZmd1BJT1pHVHN1OGZoNmtIRFV4QktY?=
 =?utf-8?B?U1E4THd5ZFpzRzFEMHROYmZ4VFM2Y2dYWktSNVpmMldLbGpnd1NOZ2VOOWhP?=
 =?utf-8?B?dytpckVDalBLMG1PakxXeGhNRmNyQU54d0x1TXhzUkhZYllIWnc4ZEV5ZFlC?=
 =?utf-8?B?YzVFUjcrMFM4bHZPRTc5WDRqUWhOM2IxZzJMQ0dsS0hSWXlIdlNpdE13SVlT?=
 =?utf-8?B?RFZtSUt0R21LeDlVVFRKQTc5NGMrMmd1Zy9lV3BKNzUxQTdjUUUxN24yM3Jy?=
 =?utf-8?B?VURPbVBPZTlyc2tKQithdkhRMjk0VXgxWS8wa2RIUXpETnUwankwNHUrUWdW?=
 =?utf-8?B?SjdUMjdmOFJ3aUEyWnBFOWFod3ZWeENLMjJVU3ZEOS9JbndIQk56dHdTSHlR?=
 =?utf-8?B?ZHdqVkRhZFhFUC9ydU9XcG5OMVRBbklDNGx5T292MzJXOHhhdDgwdz09?=
X-Exchange-RoutingPolicyChecked: XOGIRYncqIUu+BSyB8WcXZOu0begeljLY9WUzdpDiWtAVh3JsAnKzpgJfuVDjHnSeG+YPtLtF4OZkDSxrKGqzn0cs3MKacKyOFB8C2Kx0RD8UcPsgxDDxX6jYcAyM8bXESDocGpDaSPpCQnBN40m9Ed3ezsqFhPLGg7ZzwMKV2FdYts/Y0h8T2OPaH+2KdsZXL0coIfP9JN55VjYtpa4g+4L9Gj6uY3T7EB/nxUBRpUZWqrU0xQt2sp9paoNEsWpdQ8lJkipRxiViP7/S02v8yTAWHVmoeYRN2TzKN5irV/h78hQ8v3pz5o7DHgmpDcKCV+EWzBk22mUwOC+ODP/Jw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 2e89e1f0-d675-46cd-5f4b-08de9c076297
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB7588.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Apr 2026 22:27:46.6985 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Xa6ImrnheY2e/KhTdmLcQ59SANcYnJz/N8Q58SUQngf8FEjyWUZSyWO1vwFtY3VV/W92s1xDQJMFblOkdOh58D0QLHhfCuyDqt+uzUjAJ1U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5057
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776378474; x=1807914474;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lyWqF79kKSzKSmOU6w0ZmLsNMwrvPZRenSovmagmcYM=;
 b=O0zd4XaDS1WBzG7v4ztJjvcKVmNXjPK/dOPoh1RouySOb9lS18DK1MR9
 emupsg6XQudmIF8HjpK62l/EOjyvtE+MxeTA0OnkMbd51smnNO7/OH76H
 doEofGfY6rmQkqRGsaGWibQr2G6q2ZiuhOvUPb6PLSpZVn9q3TtPa+gfg
 zRwDt+FzE9LcCwq18hygNE9nW/dOnxFVCnJ3Xfb+RshTktWtSO2FJ11w1
 XpzTUWicD9W2YI1xvhWfjKev1RGCMNH0b5VWyKRfYywPKb1EXDf5wSoVL
 jcarQlbdtjKjeVe8fVPOyo+GbB3QAcm+KH9mYbva0mpdJaAHtOVILpUIY
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=O0zd4XaD
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] i40e: set
 supported_extts_flags for rising edge
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
X-Spamd-Result: default: False [8.29 / 15.00];
	URIBL_BLACK(7.50)[osuosl.org:dkim];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	BAD_REP_POLICIES(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	R_DKIM_ALLOW(0.00)[osuosl.org:s=default];
	FORGED_RECIPIENTS(0.00)[m:przemyslaw.korba@intel.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:arkadiusz.kubalewski@intel.com,m:aleksandr.loktionov@intel.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	GREYLIST(0.00)[pass,meta];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-0.691];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCPT_COUNT_SEVEN(0.00)[7];
	R_SPF_ALLOW(0.00)[+mx];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 557AA4153AE
X-Rspamd-Action: add header
X-Rspamd-Server: lfdr
X-Spam: Yes

On 4/15/2026 3:25 AM, Przemyslaw Korba wrote:
> The i40e driver always supported only rising edge detection, so
> advertise PTP_RISING_EDGE, and PTP_STRICT_FLAGS to ensure the
> PTP core properly validates user requests.
> 
> Fixes: 7c571ac57d9d ("net: ptp: introduce .supported_extts_flags to ptp_clock_info")
> Signed-off-by: Przemyslaw Korba <przemyslaw.korba@intel.com>
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>

Thanks! This is the correct fix for net, then we can update i40e to
support all modes in the future as a next feature implementation.

Thanks,
Jake
