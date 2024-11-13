Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CBE69C78A8
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Nov 2024 17:22:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CE1FA40405;
	Wed, 13 Nov 2024 16:21:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MdZMToCKfDid; Wed, 13 Nov 2024 16:21:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 96932403F4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731514895;
	bh=ueB//XfdU88mLW/g42PE3gW01ukkSrlRzIEDbp92mAE=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Q4hUIB5Mxxis3SXJCzCVGklXcdAwc7jgNEgbCyT/c3nkSjPpJV0VN73eMZBDQa/Cr
	 OJ9vDEKnyw2MfhGmZzFMMem/gMZBGZ2GDBtGtHDX6AFVfKZm59sY//62T9hw7lPlT0
	 L260bEUTEEmnYdF3he4apLw/wbYmNcLLXtlRXWW91YtQoFwGV1MmL5TIz38/go7ght
	 dxnA9IKV90TjlIafYec3jTXxzGGpOIQ1itZ9evWiU709Dn2Xv5vtJlOd1YScPi9RQc
	 FQ5zsuey+ww9tslFmaHdf66w+yMJ/OI6+OlheuR2yTp20N65J/3PVrVt/AGhT4paEy
	 aYXrifUONwqNA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 96932403F4;
	Wed, 13 Nov 2024 16:21:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 722CD6C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Nov 2024 16:21:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6D7F9608EE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Nov 2024 16:21:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jZrf8Jc3rJUm for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Nov 2024 16:21:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=lukasz.czapnik@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 560F5608E6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 560F5608E6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 560F5608E6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Nov 2024 16:21:32 +0000 (UTC)
X-CSE-ConnectionGUID: iqVLmQbwQsu7AIZ7sIuWXA==
X-CSE-MsgGUID: 31HiVK6GQe+NeYRDXjHyXg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="48868041"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="48868041"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2024 08:21:32 -0800
X-CSE-ConnectionGUID: Nl4+F75oS7+JBTOxBcrp+A==
X-CSE-MsgGUID: DECk5lWMSa2GFlpr73UNyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,151,1728975600"; d="scan'208";a="88308712"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Nov 2024 08:21:31 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 13 Nov 2024 08:21:30 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 13 Nov 2024 08:21:30 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.170)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 13 Nov 2024 08:21:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=g35tm7LENFcZi784XVMSDCqSVgoVg49x37tPehBKqM6EhHBbZcJFmhch2Qyc3miblfl0wnMWPHSWies+zHQ43hdAECV07zFibRVedqxhfaUy8HucRUb+E3DkPl6AbciH7ZpgCQenc0tSM+8UwdY4McRHYSP5qHrkcmV0iCx5eo4NWern2H1doBrw+hhruqVC42CrWYb2TebfXG9X2TSKZR8f5bCHSx9zkslrmTKMnRTFQI6PTGlJ6U0Pp/376q960v6P8nd2LELzcd8ZLOGlYxy9708o9bek6i5CppDfSp2o0XYEw8Pywrgw8ouu12XyhZcAC1t22Q6EeHSdJVpyJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ueB//XfdU88mLW/g42PE3gW01ukkSrlRzIEDbp92mAE=;
 b=Zoeknts9vGK2qdYpzwghANi2G7zKUxO9I/fLmb23hkG0ZiZeF+qKOEB5FpzDOxUEk6fbu1tcocOMflv2Q3PUFB/faSXNH0kNZZbGxy6wEn+N9Q+6qHjpow1tyV/R9qxApwjazJeFz6/8ECavTKIdGMjuaJBgZpyz04zk9goSFKuV7fRs4frnW+dWrRvm0y0CG92UM9uC0mBjLjTq8gJpHM12PucksvqS0k247xw98SMzjr6Gn0SUYRGkkWuk0e1WV8ijyoV/Wekpa9AfWLmP2CNcXiBGj7f/ZNaPlVVetvSqFtokSdLm0JSdy/zO1BHF9xRoiNWJYBLzSOVbzVFIOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6267.namprd11.prod.outlook.com (2603:10b6:208:3e5::8)
 by CY5PR11MB6389.namprd11.prod.outlook.com (2603:10b6:930:3a::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.17; Wed, 13 Nov
 2024 16:21:27 +0000
Received: from IA1PR11MB6267.namprd11.prod.outlook.com
 ([fe80::30b6:4b51:6cde:faa9]) by IA1PR11MB6267.namprd11.prod.outlook.com
 ([fe80::30b6:4b51:6cde:faa9%4]) with mapi id 15.20.8158.013; Wed, 13 Nov 2024
 16:21:27 +0000
Message-ID: <5eca295e-1675-4779-b0d6-ec8a7550516f@intel.com>
Date: Wed, 13 Nov 2024 17:21:20 +0100
User-Agent: Mozilla Thunderbird
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 <intel-wired-lan@lists.osuosl.org>
CC: <pmenzel@molgen.mpg.de>, <wojciech.drewek@intel.com>,
 <marcin.szycik@intel.com>, <netdev@vger.kernel.org>,
 <konrad.knitter@intel.com>, <pawel.chmielewski@intel.com>,
 <horms@kernel.org>, <David.Laight@ACULAB.COM>,
 <nex.sw.ncis.nat.hpm.dev@intel.com>, <pio.raczynski@gmail.com>,
 <sridhar.samudrala@intel.com>, <jacob.e.keller@intel.com>,
 <jiri@resnulli.us>, <przemyslaw.kitszel@intel.com>
References: <20241104121337.129287-1-michal.swiatkowski@linux.intel.com>
 <20241104121337.129287-6-michal.swiatkowski@linux.intel.com>
Content-Language: en-US
From: Lukasz Czapnik <lukasz.czapnik@intel.com>
In-Reply-To: <20241104121337.129287-6-michal.swiatkowski@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: ZR2P278CA0004.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:50::8) To IA1PR11MB6267.namprd11.prod.outlook.com
 (2603:10b6:208:3e5::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA1PR11MB6267:EE_|CY5PR11MB6389:EE_
X-MS-Office365-Filtering-Correlation-Id: 5642e287-23d5-4d3d-9cc2-08dd03ff3905
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SGJZSml5YkUzSm1aRjlJYXFMTTBWUEZySUg4L3pVT28yS1hFd0UwOGFXT01t?=
 =?utf-8?B?bURqaFFMbUY1U0VGendMUzdoWVkwcmsvS2N2TElEck5WY3JjSGV1bXhBeURM?=
 =?utf-8?B?bHUydnVxTG5PWVc4OG1UK1VFUGV6TUpoVzJJZXgrZG1OTTVVUXNTTXJMME5C?=
 =?utf-8?B?WU9RUm00RVJMbXFDN3A5R3Q1YU45RC9Nb0czeXRob25vSlN2WENFM0pTOFo4?=
 =?utf-8?B?eWNCcVVKMEprYkNseGhYVlFRRXdMUGN1U3FLUElUK3p5dFVQaDFBSHA5QjBC?=
 =?utf-8?B?R1U1OEFyWnY5S3JWQjJNRU9jSG5lVG5aYkxjcVpUT0xzcHcxTGtkUW5odzll?=
 =?utf-8?B?Tk04YlV6eENTaWhMUG02Mjk3SFJGL3BlV28vVEdFWEo3MzRSdFBPVlpTME1S?=
 =?utf-8?B?RUU3anRhcHRWVngzdFFxRDB6dlkxT2V2RklUNUZ5RmU2eTN3TXdkZEdjMEtl?=
 =?utf-8?B?MmZVUGR4emhDRDBxYmk0VWRnOXRFZUV4dzQvMXJEWFVNMmJoQjN0Z2pwTGxj?=
 =?utf-8?B?M0VGVCtiZ2dHSlBlTThkZ21zMHdRVnJzenMveCtpWStEMnlvUHI0bG9DSDVp?=
 =?utf-8?B?dmFtNVlWQllYWTY1TE9FTFIvOHZobUVTUDRGVkdvL1N1TXRBWWFNa2FOVFh1?=
 =?utf-8?B?a3hHSC8vNDg4Z0VwTXNiYnhURDBQMDZsYzhRVmNMWERwYkZLUDIwRzEvQkp1?=
 =?utf-8?B?cFpIUTVERktNZ2pPbjJNSjdtL3hnSVNvQjZBMUdMcjdJTXdqdThLY3duVFN4?=
 =?utf-8?B?aXJQT3JtYnR3b2hvN1ZZMUlPWkw3c3QrYys1RVlROGpZZ1VwSDZROTVNb3BR?=
 =?utf-8?B?aFRUL0NDR1dWc3lRdkRvb0VIRkpUMVY4OUNpbFBCLzh6WWUrNEhVNFk5Y3BY?=
 =?utf-8?B?bFpXYmd1NHJrV2hiWjdFNHRvQXovMHc2bWdaQ3lrWWhadEsyRU9sSi8rY20r?=
 =?utf-8?B?ZjE2aW9PREd1Z1FSOFVIZ0VNVnRsN3hjT1loMkVNR2hXK1FOdHRqcE5sc1E1?=
 =?utf-8?B?OHdYMm92UVpNQURSbW9RQ3ZkV282d1FlcnZGeER0NW9mU2FTSTRKclhlSDdN?=
 =?utf-8?B?VkJKNFVYMDN4NEhwOGU0OVdydExFK1dLNlo5RWF5TVVBNWpadkRCUEY4WFhS?=
 =?utf-8?B?R3pxcjU5d1RCUm03VnJNNnlCUWNpa0wzS1E0a0tMNWgydFdSaFUwZ1pIMEti?=
 =?utf-8?B?VzNGKzk2b0tJbFNUcmhSU1lLemJYZmdxY2VsYU1WcEcyU1czb3o5N2YwZXNN?=
 =?utf-8?B?d1F6ak53RExNOXk0alpJTitOR2plZUdxbVVORmtiSWN3SytmdUhTQUZXdzFZ?=
 =?utf-8?B?ZUVDMGdLQ3RxdFFoZUZlb1NPbDhoaGRCVjltM2wrRUxQZTJscWdIZy9oN3Bo?=
 =?utf-8?B?M09HajJBc2M3a3p0UndlYWNUdnRNdjVDRTFyVGg5akl5N2M3aHZHVVVsTUJF?=
 =?utf-8?B?V0lydkloWUpWYmxLNnVXTHZWbkxoUW9BWXNYamwvUTZxMU5QQmh1amE1OGVG?=
 =?utf-8?B?VVZEajNMRnBWSjY3RWN3Ny9aZi9KR2JxQUNJcldoaFZONW5qdGtsbHRhSGVv?=
 =?utf-8?B?MlVoam5RK2hHOGxaS1RCR1FOcmZHVnZET1F5UGVzT05reUt4aUVydnhHUW1q?=
 =?utf-8?B?NkN0aXFqWmRJaEQ5TVl4T0lnckpTUHlaTVFncEdBSDVzalBFL3FPdld0Uk5K?=
 =?utf-8?B?RWEvd2RRT1lhNG5WcDJ3N3VFRCsyRVFrZmxRcldtQW1YalpaaUhmdUVWWkJH?=
 =?utf-8?Q?Mow1Au4UYmi8LEoDpQ=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6267.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MTFhU2N3alJxM3o5SkdTMGJjdjZJc29taGdxaVdlMHNGOUtqVTMzNWtPVjdK?=
 =?utf-8?B?cjhtcFB1QXE1d25VNjdWT0Y1b1VpUFNVL29xbXpScDdSMXRza2c4cW5wRHFT?=
 =?utf-8?B?TzBsYUdxSU4rMjRIbXBRUWdqVmJvS3BuK1NyWmVRTkN2U1BWbEk4bkI1N09E?=
 =?utf-8?B?YTcxeWlUSG5BSk1oMWNzTXRiOXM5c3Z0Z2dWQU95Z05iV01vdUdIdDFjdDF0?=
 =?utf-8?B?YnRjUzFFYjRDVE1nanRNb0hwWWFydjkvMGxRSXZUSm02QjN5aGlLUjJDRWs4?=
 =?utf-8?B?OVFMNEdJZ3NJY20rTU1CYzFnc3FLTHlTL1NSRlN4T29pcjFYNVVtalMvQ0pB?=
 =?utf-8?B?ekJWYWV5dml3WkZrY3V1a2l5ZEpObFR6NmFVdjZCVkt2LytidHFraER2b290?=
 =?utf-8?B?eVdWeWhRVm9sbnk0YlIxSFNQU1NwRVVlbUVmb2FsVjNLK0NxWGtlZEh4L0hN?=
 =?utf-8?B?RTljRlBQZmlwdzNyZ3hZaVlXRWhoaG5sYWJXd3dHQW9xTDJtLytNalBjUDVu?=
 =?utf-8?B?VGR3eXpkMFpmc2Y4eGlMRVg1K1RESW5QSVZvOTlFNVdRL1JEZzd5MjhSbnBl?=
 =?utf-8?B?NzN0UGNwTUFMZHpKNXYxMlAwUkdkSzk2ZWVKWmNqZ2tsNXpTVWJRaDR2YlUx?=
 =?utf-8?B?YTZTc2JtQUF0VTd6c1ZRbzkzTUdXdFJYNTVtSGo4YVBpQ0t5cGQwYjJKNThX?=
 =?utf-8?B?bmRyVkoyQXQxeVBqT1NJNUVhMG1OTXN6UUFWZ2VxSDBTU3BPanV1WXhpRERq?=
 =?utf-8?B?d1dFK1VtNy81aklzLytuREZicEFWRmN4YlhLUHpsK0N0MXd0UUhhRGRvNUND?=
 =?utf-8?B?ejRsVncvOWwyTlpwazJpUzRrRHRkZU91dHpHSnZxUXNDK216SGpVay9EZWZD?=
 =?utf-8?B?c3BldU9FMTNNbVdDaWtEdlIxc01nRjkxenlOSlpXTzVUckxVc1VuTG9YOG1a?=
 =?utf-8?B?TnVwYktMd1poVFZRL2I4eUlWUHdoSG5XYk9aTmszODVHVWtNVlh1RVdzRGt4?=
 =?utf-8?B?YjhhbzBuczdBR21DREV2bTU1cnhEcENTUm9pcTNWdWJBY3ZxSEdXTzdTSVRs?=
 =?utf-8?B?cmpwUnl3blpua0xhaks1a1BPdHl5WmllZXBSdGcxVFQxNktnMzkvZ1Q3SGpy?=
 =?utf-8?B?SXBIaExaV0p2S0RQa0NZNkNiTUJQVFNTc09JUjVHaWwzNlpaSlY2QjI4WXpn?=
 =?utf-8?B?dERrVm50L1R1VEZRZlhJejZMbVpUTjlOSEdEd0RqczFzeU1mU0NDdEo1VmQ3?=
 =?utf-8?B?anIzL3RTNk4rcktsOEtZbFExZmwzNU5kcFdLeXVnSWRidHpYRlRyOU95UnZM?=
 =?utf-8?B?WUVhVVYxVTZGTndHT0ViZVU4d0tMZWh6c3RxR0RCMitndmdGeUh4R2pEY1NJ?=
 =?utf-8?B?ZEFGN29oMGNDLzI0bnFUMUVEUjh6OEhOaWYwd0puS2JUaUp4V0V0enZuYXRa?=
 =?utf-8?B?MXdDSWNuMHZRek9sQ2FUTmxLckh6OFM4Mjg5YUVxaU5SMTlrUnRSbDRKSFFF?=
 =?utf-8?B?N3FmblRWUjBaZkpsQU93U3R0Y1djRUp4MUNNTnZDaGMrTVNlaXIzWTduMFJt?=
 =?utf-8?B?a3JscldiS0JMMWtHSytpNUtYZlNJZFNWd2ZoR2wvN29PYlVHSUYza3RJdExz?=
 =?utf-8?B?TnNqcVpta3VOTWRSSDJRTVNFbE83QVE2WXlBemNzWWlUeUFUYnJPdXZpWHpv?=
 =?utf-8?B?dWFqSlpQTFFaRExKUDJuUFg2eDVKcTQ3a1dSZlE0SldjZEp4WDAxWEt3TTJY?=
 =?utf-8?B?blRyaG0vcmtDOXJOdHR3bm9FT3RXV1A4REhIeE41YzdPNDc1UVd0R0Y1NFJV?=
 =?utf-8?B?cjNkRmVnMXBlSkltM1BPSnh2NkdmVUpSdEV1eGltS3dCSGVFTzdJVmVVU3Av?=
 =?utf-8?B?cGNjMzYxcVBLWk51ZFZ4aGd4NlFkeVNLdnErTURVNU5SZHp0RUhjaDc4WjlB?=
 =?utf-8?B?eUVkN2lTT1lSeGpjMlVrSjh0Qys0NE1DMkJ1WjVrbW9SaE54WW1TVGdzLytj?=
 =?utf-8?B?MzhIRTI2dFFES2h6MVdtMTBPQmpUc1pRdWR4bGtraHlKa0cxUW1qTDYyMEJF?=
 =?utf-8?B?K0UxOUcyQkoyQnpwcWtoOFlmTjMrVTUvSXRObXRFZzJqNTdYc0hPQjF3V2lq?=
 =?utf-8?B?RlpCcHdnTXNPc2xLbGQyT3VsR2dZR2RoNWNlVElkMUhXdEtTRkNGUXJ2Nzkv?=
 =?utf-8?B?Unc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5642e287-23d5-4d3d-9cc2-08dd03ff3905
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6267.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Nov 2024 16:21:26.8356 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: h7+ScIpPrze0rrcgsR1JWX4q6yCvnjNrQaNkdbs7+3Vy1wRl0jNEyEFBtzGmrHhyxjAVILv/qA8rebDeun2D98wYtLEUqk0fUqoibgQzF8g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6389
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731514893; x=1763050893;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1SN++9hYewyYBep+Vk6v4/G2bj1LQ/Hzfx3kfg87IUg=;
 b=EyiJcNdgM3J1WjpbKvdq++jB/W3+M/5+2rnN2xmNYPekZjVXFr+yVjAi
 NAEsdTkMIvXG7PLqC1X4hDxH5qro4cacFqOjoNTjNFgZTM2KSM4ough1E
 jRr88pvCkXOQqg/Bk0cuRuvjqIWU3yRHmo7O64FB0X4BblqS2ZxzbaOAC
 qRCmN17efekGF4s28AMtI4AKxEmFeSg6c7dPWUQWvWi5RoXNhW+p3rUVn
 qh1SGRsze+l6FyO8gFtKyHLF+mZJ5VxHahDl4WXJSy73BPIg0zdNKX8D+
 ZMdj3Ngav8fd8kz+AbS5CuH9sbr2z0BQIUzk1/2JqX5yr5C0z0++3z3RB
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=EyiJcNdg
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-next v7 5/9] ice,
 irdma: move interrupts code to irdma
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



On 11/4/2024 1:13 PM, Michal Swiatkowski wrote:
> Move responsibility of MSI-X requesting for RDMA feature from ice driver
> to irdma driver. It is done to allow simple fallback when there is not
> enough MSI-X available.
> 
> Change amount of MSI-X used for control from 4 to 1, as it isn't needed
> to have more than one MSI-X for this purpose.
> 
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>   drivers/infiniband/hw/irdma/hw.c         |  2 -
>   drivers/infiniband/hw/irdma/main.c       | 46 ++++++++++++++++-
>   drivers/infiniband/hw/irdma/main.h       |  3 ++
>   drivers/net/ethernet/intel/ice/ice.h     |  1 -
>   drivers/net/ethernet/intel/ice/ice_idc.c | 64 ++++++------------------
>   drivers/net/ethernet/intel/ice/ice_irq.c |  3 +-
>   include/linux/net/intel/iidc.h           |  2 +
>   7 files changed, 65 insertions(+), 56 deletions(-)
> 
> diff --git a/drivers/infiniband/hw/irdma/hw.c b/drivers/infiniband/hw/irdma/hw.c
> index ad50b77282f8..69ce1862eabe 100644
> --- a/drivers/infiniband/hw/irdma/hw.c
> +++ b/drivers/infiniband/hw/irdma/hw.c
> @@ -498,8 +498,6 @@ static int irdma_save_msix_info(struct irdma_pci_f *rf)
>   	iw_qvlist->num_vectors = rf->msix_count;
>   	if (rf->msix_count <= num_online_cpus())
>   		rf->msix_shared = true;
> -	else if (rf->msix_count > num_online_cpus() + 1)
> -		rf->msix_count = num_online_cpus() + 1;
>   
>   	pmsix = rf->msix_entries;
>   	for (i = 0, ceq_idx = 0; i < rf->msix_count; i++, iw_qvinfo++) {
> diff --git a/drivers/infiniband/hw/irdma/main.c b/drivers/infiniband/hw/irdma/main.c
> index 3f13200ff71b..1ee8969595d3 100644
> --- a/drivers/infiniband/hw/irdma/main.c
> +++ b/drivers/infiniband/hw/irdma/main.c
> @@ -206,6 +206,43 @@ static void irdma_lan_unregister_qset(struct irdma_sc_vsi *vsi,
>   		ibdev_dbg(&iwdev->ibdev, "WS: LAN free_res for rdma qset failed.\n");
>   }
>   
> +static int irdma_init_interrupts(struct irdma_pci_f *rf, struct ice_pf *pf)
> +{
> +	int i;
> +
> +	rf->msix_count = num_online_cpus() + IRDMA_NUM_AEQ_MSIX;

I think we can default RDMA MSI-X to 64 instead of num_online_cpus(). It
would play better on platforms with high core count (200+ cores). There
are very little benefits for having more than 64 queues.

In those special cases, when more queues are needed, user should be able
to manually assign more resources to RDMA.

Regards,
Lukasz

