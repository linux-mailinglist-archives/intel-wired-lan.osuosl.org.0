Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cFQCOSv2nmm+YAQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Feb 2026 14:16:27 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C50D7197E14
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Feb 2026 14:16:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2152483EC6;
	Wed, 25 Feb 2026 13:16:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ygxv6kGL7l-t; Wed, 25 Feb 2026 13:16:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3058A84072
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772025384;
	bh=0C4gnoDf9a+MQSW/yESoODklGyEaMEsL9SGm1krELWw=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=oj6SZH+lQkXKfPI3V2LnMj81ac/HNux+Cv98F0LH2bGar0FVz6KsGT1uLLfBW4j9a
	 CPVbn3VIx0FVmk6wAZR1SH0cayQ+wbtlY47zgNuPJHWKJdrALMEPmRYcXgPkTtj8H9
	 2bkn2V3Juc2b9y1rGR46TKYPbmdDCYAR2vDpk81q37R45gB8DhQXoESRL/fOe2/+AY
	 7FbhfO2iaBCuIwAVDfUE3x2WlgKlqaUUQFVfj0Wkp/FkjdYKptg7DbFpmOyUiBM1hO
	 xR0a6TqwF/qF4nqagtuxWHO6FEhBzPO2lcm5uOIS+lCJl1bUYm+peotsZO3s/3gAVK
	 NhDSg3D+mXMbw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3058A84072;
	Wed, 25 Feb 2026 13:16:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 5EE05204
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Feb 2026 13:16:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5C77B41EC9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Feb 2026 13:16:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ow8siwiEGoWL for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Feb 2026 13:16:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 89A0D41E89
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 89A0D41E89
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 89A0D41E89
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Feb 2026 13:16:20 +0000 (UTC)
X-CSE-ConnectionGUID: bPIxqNCpT1m5wrceAgVVWw==
X-CSE-MsgGUID: XnpIpNdURyCopXS5wjQIpw==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="76894829"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="76894829"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 05:16:19 -0800
X-CSE-ConnectionGUID: s9xrbM0eR86Kb8Yx/DtevQ==
X-CSE-MsgGUID: QX76m5/FQ7+TU3SliWvQ7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="219639576"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 05:16:19 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 05:16:19 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 25 Feb 2026 05:16:19 -0800
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.50) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 05:16:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VXmaupyhNfelUpsredw7bYXCVsI412XVCbZ0SrfHzlc8UCnlNFjI9fDllibq05KPN65fzPQZD3iRnqXUXnn4luxU78P9jYNyHpozctN9A9c/kX8JUs55qJKRRoq44J9b1gHqD/BRj1+KAug5ShmBNXoQU8yJ1e2PclBzjfM5KyZzGnDyRenqUSF+Ca9RyvTjfyCSuBY0vnSX6Hwr452YNXgNgkPtGfDYRjJfvH0oysobXVvKWOqnWMzZyEfG9sZk9ipG0zvGC99tduoQLgvfIn6lQwi5tjEjuEKNsGoYVzkx24tQvQldITNbLR36XPRSUTE7dzUCTwHFeywa1rLzGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0C4gnoDf9a+MQSW/yESoODklGyEaMEsL9SGm1krELWw=;
 b=GyEPsM33fD7Nxyp9rCQRxS7Guqki1Dviye4oRlsqCpychfCg6vZo8c7K/Th4j2Ud0ubzXmf/O0cLGtggOHnmWaqM2Q4xBHDWXVFbRRgyz7jpoKBC6cpcKNym4mOZPV0KYdegXXWXoFrthaYBzlkEDW0CW1najZZ5LO6xwunWS1mYxk5hXscyhwGAWHxRvRAZB/NgguyMuJE5w4F9T4nmO4qSdCKulkkai7eAZeR4wovFBWV9mn3GPPw7ZhEyeqfL9sLQUs6Rj1v3ccgICEPlEhLE/mZnZSCF27/JkTuamUPf+1EBGa5eKMYFWXLN5c/TA0X824qs9z7M4CRk3rJC7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by MN2PR11MB4631.namprd11.prod.outlook.com (2603:10b6:208:262::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.16; Wed, 25 Feb
 2026 13:16:11 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::8d98:e538:8d7:6311]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::8d98:e538:8d7:6311%5]) with mapi id 15.20.9632.017; Wed, 25 Feb 2026
 13:16:11 +0000
Message-ID: <b8cbb9e2-b34c-4058-b43c-725c064d4220@intel.com>
Date: Wed, 25 Feb 2026 14:16:05 +0100
User-Agent: Mozilla Thunderbird
To: Bart Van Assche <bvanassche@acm.org>, Bart Van Assche
 <bart.vanassche@linux.dev>, Tony Nguyen <anthony.l.nguyen@intel.com>
CC: Ingo Molnar <mingo@redhat.com>, Will Deacon <will@kernel.org>, Boqun Feng
 <boqun@kernel.org>, Waiman Long <longman@redhat.com>,
 <linux-kernel@vger.kernel.org>, Peter Zijlstra <peterz@infradead.org>, "Marco
 Elver" <elver@google.com>, Christoph Hellwig <hch@lst.de>, Steven Rostedt
 <rostedt@goodmis.org>, Nick Desaulniers <ndesaulniers@google.com>, "Nathan
 Chancellor" <nathan@kernel.org>, Kees Cook <kees@kernel.org>, Jann Horn
 <jannh@google.com>, <intel-wired-lan@lists.osuosl.org>
References: <20260223220102.2158611-1-bart.vanassche@linux.dev>
 <20260223220102.2158611-20-bart.vanassche@linux.dev>
 <51a3c969-6fca-415f-a27c-d1ad8c9d3c71@intel.com>
 <cd678a22-79f1-4267-ac3a-f340d92e994c@acm.org>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <cd678a22-79f1-4267-ac3a-f340d92e994c@acm.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DU7PR01CA0028.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:50e::13) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|MN2PR11MB4631:EE_
X-MS-Office365-Filtering-Correlation-Id: 2bed3985-a23f-479d-e6fb-08de74700b66
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|7416014|376014|366016|7053199007; 
X-Microsoft-Antispam-Message-Info: bomvPC1IKD7/Z4jqGC/FvLYOap0sUttpTXdw2LCZfVe0Ac3gy1yJ65XazU2GWNUF5GQ7pI6vwATWjS83Nwk6+Qv4I0ku2iF9a8c2SyGRBy8qo+SgNtQ1E/0uNx5Gv8HyZzintxs1uXfLSI/R5vOw09GBQ78AQ2kKTTjGbHL6xjPHjm+Nw3bi9h3vgrD0p1mn6UBdWIas86+ApxZxORA/bVvgog3Nm829nbAlQK5CXqMcTTj9fG17aDel2JbSFQWaeinSn83vCbH1gPTY9AZkoPnUSlJnLHC/ogftV6QiE1ZfBsRVmFAooWYHQ3xOy3M/mLGLx9kY2FoXz58V80d7HxJZYnY4XcLBTuvSV1fkY+UDQx2CejfO7hjdHLkIQ+vxY2zQbLO/RIWJMwrXaZMJ3VAaLvMRFct4K/eQTbEMB7k47fmLo4N0KYT9d1JzeeQay9ArB1KIFV640OG+xc8cH9a1a28LsymA3YIbMXPHY7w/zy8A8dobLZu7etHBbLEmJFlmNDdOlMJsfP80rcvx5lttUBROaHF2AHilv4EGsHbsStQCbJEI3ETvfEcFxBCBt1ebjQjq8Bc6cx+ByrUCT25eJI7Xggr6bFNCoD31FnxHLjggy8//NaaZOKWL8SU7ItLuE5rTSRepBICKjFd3H/uWTWsgBTBO5TR/fjpxYHKZMzdxdADIOHmw1YVa4MP9ZhZ5Afa4mwzp89cjAproIsE6oVRNako8EgRSTdvFT9U=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RjllcUVYWXEzekpGeEpLMVY5NVlFNExRcGMyVGtiZEFweEJjYzNidkFOMklt?=
 =?utf-8?B?eE8wbEo4TndsSzhuR2pSN29PNXM4b1JWazFDbC9iQWRBUHVLVDBqaWpHWlZq?=
 =?utf-8?B?NktaQU83L0RGTHRUT1Nxc2RLTnJqVHBISXRMWGFpTEcyWHd0cjlCdlJLQmZI?=
 =?utf-8?B?MVo4clI1dm0zdDhCQW5BTFVESVd4NExjdUZCS3M5RWc3akpMZXZ0SGRVWkk2?=
 =?utf-8?B?d2pKTGllSHZjMmh0d2g4Q1dvUWU1VWlvbkl3VEJYMys3WDJBSXVJaUd1TVd6?=
 =?utf-8?B?T0daMGE2ZGQwVFBqbWxNeEF0TFhnNWdkMkJjc1cvRjAvZlh0cXNTdnArZklD?=
 =?utf-8?B?NjVRNEdKdlVvdjJsSVUyRzZOZmRLTkVBWEdLMjlPTFphQWdqYXZuYnJPVGFj?=
 =?utf-8?B?WHZTeUdBK0ZXdGhmaHRaNWJCRUZlR3cxdkh4ZmdtTlhXVjdhUEhhaFJWN2ha?=
 =?utf-8?B?eU9YTCsxemRmZ0F5K1NXQ2NBMDU1TzZ3ZTZYZmdqd3cwdXloUmc4d2RoM3hV?=
 =?utf-8?B?ay9tcWFxNVlsL0RxZVBzTElTUTQvUm9HN25wT0Y0NVNtOFBHZGF2SFFmellK?=
 =?utf-8?B?dFhEZk1pUG85WEZsTUJibzd2SngwcnB5QkxqcFR1dzg1TlEyTHZwSzZ5Wmxq?=
 =?utf-8?B?ODgxdDZVbWltc0k0WS9COWFEQlMwVUZYbGZHbVNMTFY4R093TEErNWF2M1JG?=
 =?utf-8?B?cndkaE9kb09VN1p1NEdOYnZ1R3lvWDBRYXRtVVltYkxJNFlDV3doK2FQV2xa?=
 =?utf-8?B?UUNZejhma2pvY3Z2T01zaEtxUTZnM0xMbmw1TUttd1I1SDJOYXM4Rml6bjJG?=
 =?utf-8?B?U0hYTEYrL1lDUm5ZbzZyNmJ1a0l0bVdzNUxHYXBRaVRxZ2V4emNDRHhOUjdi?=
 =?utf-8?B?OUVGRTl2dDJ0RXhXSllEN0Z2NlhOUmNmWUp3R1B5b0pGOGVqNFpkaVF3MHRu?=
 =?utf-8?B?TkJaMy82RGJyekVvbTRHMk51SExaSCtPRkVOakw0SDgwbTJlMlgrWW9RSVlj?=
 =?utf-8?B?UHdtRFBLSkRlMEdSNm0vUFpLc0d3TE1CRDZpSzBaSFI2RzlvdDY4eGFNd1Ry?=
 =?utf-8?B?TmlrOHBJbnVyU1BhcjF1WWswa3RRVlcreXhxNEZwZUtqMlluQVRmTkRmbmlv?=
 =?utf-8?B?RG0xMVRndFZqb2xqcy9ONThpdDNGYS9sc2NJMGduVzhOdGkySmdEclpHM0RS?=
 =?utf-8?B?RncxKzAxMjNoMlRLUEtsY0JJTVRhSkl1NmNlZ0p2NUZmZG9tTmFSWkdFM1hZ?=
 =?utf-8?B?QzBqdXNLRDNMWU5Ba1pJN2VJdGpJL3hRTm8wK091RXQ3TXN6NHlYaFlYQy9w?=
 =?utf-8?B?YUlGdGhNYXlSYUtWa2dodGxVc2NxZ1RhVVRzays5SmRjRGhMMmVXMTI2dTdF?=
 =?utf-8?B?bFdaSzN3VzdjMmtvbFV2RHplUkI4cXZINkhpZHdlbGJ1MUpPRmtueFF0aVZ0?=
 =?utf-8?B?bS9xQ2xoOFo5cFNWVVVLTi9sUWZCNENwMzJuUzV1NVpjbnh6N3REUEV3eDY4?=
 =?utf-8?B?UUFzY0VZZWxyT1ZsaDFDUUFURjlFSk1yUGI0eXVJQWhDZkVqNTFub1VGdERn?=
 =?utf-8?B?dXcrblB1TGE3czhLaWhFYktvcys2L2N3M3JUUTFhQ3F2MmJsTm14YTA3UlE0?=
 =?utf-8?B?bmF4TVZjTFY4MmNhZ3lmN2V0SEFZWjYvdE4xRy9rTFoxWlBJaFVCbVo4Wkdy?=
 =?utf-8?B?a0s3OHZCNlBmc0dvZGJkbDA0SkNvTkpnSHpVYytEdXh5TUZhbm5EZURYNFNq?=
 =?utf-8?B?bm9tR1hNMkplY2NhcDlhTENYbnF1T0JGTGViMWhsaDlIemNqMmVNMkowdmpH?=
 =?utf-8?B?aEE4K3BRZVduZy8yY0lENWVzTHhJdVF1RTMvbjgveU5XN29tQitXUXl0SGVh?=
 =?utf-8?B?RVcraGE0NnJ1OGNBcXhiUkQ5WnRvN0Q5cTZCOGNkbUlteW1POGUrUWM0VGJN?=
 =?utf-8?B?c0F5enFtdGNjWkdzaE5NZW9kMHFYMkJVbGVTV2VaRk9INFdScFhTRU9ma2ZL?=
 =?utf-8?B?Z1psZjN0eGlKZGlIbWxBeGhudldyVzVKUXJNVDcraDlCOUFnZTFEc0gyaDdt?=
 =?utf-8?B?LzBSTnZON05TVDN5ZUJGZDdMR0QycEc3LzJDdnhJZGpSRk9UaXhkaVlzKzVi?=
 =?utf-8?B?WHdNUDQ3U21HWDZmcHZHMWwrZW1zODEyRVEwU3lJT25lL3RwbzhnWUc1ZnpS?=
 =?utf-8?B?MjUrNnZmOURnTER5cndpd1l1RC90YkQwMkUvazFhb3BBQXU2Y1ptR1ZLeFVD?=
 =?utf-8?B?RG82d1h0WSthVkp6ZUdrQzY2TEtpbzFBcUVsa2o5R29KVXpNdHRmbldmV3NJ?=
 =?utf-8?B?Zy9QU09vbGpTMm1hUExTSWJNcEpiVHp3YjdrMmZ0RFdnSnU0MlBMY3pGQlo4?=
 =?utf-8?Q?qP0bjXWU2ro43Kf0=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2bed3985-a23f-479d-e6fb-08de74700b66
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2026 13:16:11.2824 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: foEx+wFWoEbeTMcUjN+veINnYwvaLLlFcnYOaTCYNxH6zsuEN1OGXPp10PvqYeSVLoktr4qfhWkUYTO3v7bSudzfQu+sg3CCfdn5dCEfoPM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4631
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772025380; x=1803561380;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WPQ3+RAFTDRApKqaIj0aHXXBPfNCy1lMLyB2D10a0ZQ=;
 b=OyN3dY+6mkUOqeDjNcD0B6kd3VpOAIWLwhcY3DVj777W2LKrp36cZPlV
 oh+WiDn/TNgDEn/TECnHGmbMX+Cvt+BNzpmfA/m+GmXnaiKQmwPz2NbHL
 lArTLwX+HyQXEfEqDgVjG0vD0IDJjsOPx3HJP97HjDf/hIef4nqrhut4M
 mbdis0A/UwGpcF/kX3yTkEmPQ3tqRQqBZTlkSsP/rjgSZ2sNllqh3FTqx
 CL7FyfA+wJ7+1yGkoqzirD+Qj/IdWkTUhXvFJwQZg2AuzlaxP/EJ5rrYz
 mL/RtFfB/Zxw3omEjkT0HIP9lIWUF3XjZ+gNTLR/jtTGNOxvt5dW3TUyY
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=OyN3dY+6
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH 19/62] ice: Fix a locking bug in an
 error path
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:bvanassche@acm.org,m:bart.vanassche@linux.dev,m:anthony.l.nguyen@intel.com,m:mingo@redhat.com,m:will@kernel.org,m:boqun@kernel.org,m:longman@redhat.com,m:linux-kernel@vger.kernel.org,m:peterz@infradead.org,m:elver@google.com,m:hch@lst.de,m:rostedt@goodmis.org,m:ndesaulniers@google.com,m:nathan@kernel.org,m:kees@kernel.org,m:jannh@google.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.997];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,osuosl.org:dkim]
X-Rspamd-Queue-Id: C50D7197E14
X-Rspamd-Action: no action

On 2/24/26 18:43, Bart Van Assche wrote:
> On 2/24/26 12:40 AM, Przemek Kitszel wrote:
>> On 2/23/26 23:00, Bart Van Assche wrote:
>>> From: Bart Van Assche <bvanassche@acm.org>
>>>
>>> Move the mutex_lock() call up to prevent that DCB settings change after
>>> the ice_query_port_ets() call.

s/./, as the other call in ice_dcb_rebuild() is/

>>>
>>> This patch fixes a bug in an error path. Without this patch pf->tc_mutex
>>> may be unlocked in an error path without having been locked. 

suggestion:
This also fixes a bug in an error path, as before taking the first
"goto dcb_error" in the function jumped over mutex_lock() to
mutex_unlock()

This bug
>>> has
>>> been detected by the clang thread-safety analyzer.
>>
>> Thank you. This is a good catch, and current error path is obviously
>> wrong, in the way you have described.
>>
>> From the commit msg alone, it is not clear why moving the lock up,
>> instead moving the unlock to match the lock order, is right.
> 
> Please take a look at the prior discussion of this change, available 
> here: https://lore.kernel.org/all/61e3cc7a-af79-48e4- 
> acb6-8ac7c8d2552c@intel.com/
> 
>> But from the code, I see that you are right - we call
>> ice_query_port_ets() again under the lock some 20 lines below (L566)
>>
>> Let us know If you want to enhance your commit message (including the
>> subject), as it looks like a big quasi-automated series.
> 
> I have been asked to split this patch series and to send it directly to
> the maintainers of the modified subsystems. Suggestions for how to
> improve the patch description are welcome.

ok, that aligns with what I wanted too,

see my suggestions inline above, and update Subject, perhaps:

Subject: ice: fix locking in ice_dcb_rebuild()

please send with the "iwl-net" prefix, as a separate single-patch series

> 
> Thanks,
> 
> Bart.
> 

