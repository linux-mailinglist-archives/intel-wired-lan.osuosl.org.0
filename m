Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2782897C02
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Apr 2024 01:25:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8B15F41912;
	Wed,  3 Apr 2024 23:25:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id E-1kzbKUzk0y; Wed,  3 Apr 2024 23:25:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E899441910
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712186720;
	bh=dHp0g+i/liIUDKlLn6B3zkQ5Ckl6jaweqUkQ7RHVyFQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GWcBYkefyTUtb4OxEnzzxsimiH4z2mjxAX2c6axpRhMo7vJilL9EZcn9yEQzLa0e2
	 Hx7PSkvwiKE97U332kY4St6Eqa3l6yle3PvepO+k8KN9OJSfJDIp0+Jls+tjXuuh2x
	 8U/tKejWbpy6hGxUxwYWK75cxWV3D0pjFlUGaVaVzCfNgDFnAZ2jklM2c8ZNNNnRUQ
	 lR8gUvA9svk5Tzom45SB/yBMrRz49F/EVBPczUk5ig3W5eNogw9gET5bJ/228W4VA9
	 2wpf1NFY3bTqk4KiBl3A2bqXdSYQCFJxeHYBCHWWtCryOGNysfpP++FOqrcAb4RCAP
	 iuqdl3+/VS1Gw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E899441910;
	Wed,  3 Apr 2024 23:25:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B258B1BF35D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 23:25:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9DB6B8224E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 23:25:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8otxqd3Hwvtv for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Apr 2024 23:25:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C91B982241
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C91B982241
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C91B982241
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 23:25:16 +0000 (UTC)
X-CSE-ConnectionGUID: dyeNSGSKTC6th8jdNn//Og==
X-CSE-MsgGUID: cgYCqduxSFOsmDkupEsgcA==
X-IronPort-AV: E=McAfee;i="6600,9927,11033"; a="24958192"
X-IronPort-AV: E=Sophos;i="6.07,178,1708416000"; d="scan'208";a="24958192"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 16:25:16 -0700
X-CSE-ConnectionGUID: XC/xIKXOQpqsrXKxoAhMfw==
X-CSE-MsgGUID: OMUJdOfiTOOg8AtRXPD0Jg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,178,1708416000"; d="scan'208";a="18627195"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Apr 2024 16:25:16 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 3 Apr 2024 16:25:13 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 3 Apr 2024 16:25:13 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 3 Apr 2024 16:25:13 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 3 Apr 2024 16:25:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OQq6MbUa9Ys4zyH6b8UQPxHZBZfyW/et2CYT/3uhFKbr13+YDJH48YLmnugvyhVy50jJhtIOCBuPJhCRAFM0tKunId6nUyvjvS3w+hApJM9SH42UCWQme4dvvwAv2VAykZNVu2Wx0iQ/MoFzOMl56u9WAayKKP44jqkFo8v2kIOrH0OIUDsbDhiGPTAs43GqfWIPsiX6ARv6uomfo7ooI/X7ap8L4k137LuEKb6Nz/iMy4YeNNI5w/G+tOholXmA16HDA9yjDzugLlP4RU9aXHKXdSp6+lAD1c0VzSeZSmNz2oMIaoC2HwjsAhbWwHRYLDoH+LJebVHLTafTeEB/Tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dHp0g+i/liIUDKlLn6B3zkQ5Ckl6jaweqUkQ7RHVyFQ=;
 b=D1iOUGj1kgcypsveZbkA3PP09J//6hMlX+UhIsC6P5h3oRMk4aVRsTwS7SDPQUM7KvdmGXH9k+O/SkGBn+0ACQ2smAyVKhRWhBhzIQgDchfPQ0D4bgI8O3hhaAICkuUDunuS1FjxkwfM5jotbTTaMwrL1K+VNA1f4T+VQeegVBXW5sUS95Dy/YPXbmINm4VwnaEyoyYe0Fp0taDFn5sWwTk1wgPugoI8UvgMwRi1KoqnwXy5J9kx08ZcPYq9kP3LzPRP0vbIBzn4hRTrjh93ikW95Eooc489pGMeV3xPR+X638TssvOMqFHW2CmgZFoQ3NcAWA7tUfLPtMAbC/pe5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by IA1PR11MB7272.namprd11.prod.outlook.com (2603:10b6:208:428::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.22; Wed, 3 Apr
 2024 23:25:11 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::9c80:a200:48a2:b308]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::9c80:a200:48a2:b308%4]) with mapi id 15.20.7452.019; Wed, 3 Apr 2024
 23:25:11 +0000
Message-ID: <8b263ecc-7959-f470-253e-c676af36f406@intel.com>
Date: Wed, 3 Apr 2024 16:25:08 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Karol Kolacinski <karol.kolacinski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20240329161730.47777-14-karol.kolacinski@intel.com>
 <20240329161730.47777-15-karol.kolacinski@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20240329161730.47777-15-karol.kolacinski@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0336.namprd03.prod.outlook.com
 (2603:10b6:303:dc::11) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|IA1PR11MB7272:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: rS/OyI1q2uYlTThNQrfKWb3YRq9h7pRTfb0YQw28DhDD0gvKso1fjAMJ+a53+5eBOCcyeKVFE9Uxum5L832znBTsY+lbTs/tMBl840O9rHfEI4Ec9voc/9rrHsp5d5hjJRRgrvyOaN88QttmH/RCi/dB5xnzJufvwj4bCwATzEyZpZY4mTeKI82QNVNTc3q5d703LqPAYiMWmk+c6XoQePUp54j1LIC1wrnjo/5B5VYp8xQ+i2gTReqb/nUxehKlrdGskD/MG2SdG9P7kKcDliCIWjQLzRC2YNls9XmPiLo/aZ1uWwFwNt0q1oHMpI7Ekuz0EVOru2f5qmnjdkGAXuNJ7SvhEnL3HNPuIlDu6l27ZrqIVxoXw7yEruW4cXqWyUudNGl2rvGUJ7hDvBfn27USFuoLWrW7E9NysGqPUpn6Znfe1b22c0eRDkEtnKUMK1mTINh5RgFsgKC+Wrjar3kl/feNHUet/aTwHv4d4ZvP0ZSiImNYAgKV903bTdLFN6PpjJSqP7VWQr763ONHNoX3OvVabAu0MeZVaI7ZRc+djp1e3+U54JNw3nqtAzbMeHEd/Ui6rTLfKFA05gcpIyEqqnkzSVaLOCjeKZyFYkMzKooA16K3PiuHw7VZBIY6vH63BqfYWsn/8xCi/XsA6viUy5R6UJM1P57eXIWvsUo=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aUR6QTB1V3NVMjdmVFhFaXNHRzI0TFVGeXJOYU5LU0xDb0JEL0pmMjFHbkpz?=
 =?utf-8?B?c2ZOazIxN2ZXRVZxN0RIYTkwaWdJeGVOZVpnRmttS0I1blpQTlVSRWljMDc2?=
 =?utf-8?B?ZVlOTmJ0NTNrRU1wdmQvc2YyOVEyNW10dEdhSGFnUkRBeDNpc29zNW04Qk5q?=
 =?utf-8?B?YzBZMXpNMG5NSE9IRGI5SnhWVVp1TjVHaXhybHFtejBIVkVJdmtkK25SQ1Nv?=
 =?utf-8?B?LzliNFVObnVsQmFYUVRla3FMN3F4ZXoyMFJ1UkVkblZvTitoR09QWDhOa1NI?=
 =?utf-8?B?YUdJU0JPSFBCam5mRzhvUGFmUDV2VnRsSjlhZXNuQjVYTys4dzdqTDU1RUx1?=
 =?utf-8?B?dEpRTmFid1hGVVVJRWs4WVlpUXhSdW5CWlV1Rk5vQndKSm12NStPVTNLTXEz?=
 =?utf-8?B?SmdnMjNwd1lBYVl6Z0ZmUWg2VUhnNVRIS0tCdU9MeWJBM3hXc3YzTG11Vlpl?=
 =?utf-8?B?bWxkVERZYmJMckQ3dG5IZHdjK2RTdlVKcE0vR05WaEcwYmZFMWsxUnUzS2tE?=
 =?utf-8?B?VU80Qm1rTVNZUmZiOW1TN3BrSGEzblZOTHcwaU4rdllrd1FqOGw3dXFyVWFV?=
 =?utf-8?B?eVhWb0dGTzcvbWhDN2R6ZVpvZUt6dGxxMVNBL213WVhwTktaZ3NaL2wzbVRF?=
 =?utf-8?B?eWMzT0VSNHFuTitrZ3MxSUN4N3dPZ3RWV0E0TzVpYkk1YmZWV0c3WWFpMkF1?=
 =?utf-8?B?QVB1cnd3anpsckZ1dlF1R3hwWjIvMTZSck43eHN6YkNLY2xvTXEwWHJhUzJK?=
 =?utf-8?B?YWRsMFMrWDRkK0lhR1NrdXFmeStGWGJEWE1vdUl0NGNCL1k3bXlzMldicjNW?=
 =?utf-8?B?YkNKcWV1SEpxRWlKd0tlbFBoR21OVm5mWktoNXpvMHVaVU1wcnZVcDF4K2Rt?=
 =?utf-8?B?SFJ4dnAxYU91WS95S05yRmxtakJEaWdyQWJVTUFzVld5NWJaTzhMZmUrZWwv?=
 =?utf-8?B?K0orcHh4OStTRUtJOW1QRStQZXlhZmFQMXRvSEZjdWVSMGxyb1dtUDE5SU80?=
 =?utf-8?B?aThlNDQrWGl0THJZZkdyWEhQYUR2L0lJRGZwRExzTDNUMFQ5N1VqWlBJdnZ0?=
 =?utf-8?B?Uy9yK1RGTEVPNlRwUi9TZnpYSWxBWng3Yy9qVmFLYjBDOU5yRWlyQzJPd0pK?=
 =?utf-8?B?Z0hLTGd4K2YvSlVlL1pLczArdUcwNW1LaXJDUUhCa0VMUlphT3hVOE9kTSsv?=
 =?utf-8?B?VG52Z2pmZHNWOWtlb0kwUlVObGV0WGlpeFJsejJOL2Q5WGdRcDBOWjEwWXVV?=
 =?utf-8?B?a0JzaVdNSE92WXlJL2ZCd2k2M2JOVW14NW12SEdpbVVJUzJHQ2NRVVJ3U0pM?=
 =?utf-8?B?eTdwdjZTUGc1dE5QZnE3VVg0T3Z3N1oremZ2WndkK2tGWFdyZjhRVUkxOWp5?=
 =?utf-8?B?N09ETDQzODZWSTkzZytzNU9xd2lRMHY4WVliYXRSa0pRVWFLSFB4ZnJ6WDJG?=
 =?utf-8?B?M0huZ21QaVN0WEh2NTVZQTBVd1dMNXZMUFlGQkNjMkd0YnREak1SUkdkNkFu?=
 =?utf-8?B?T29TVzFveTRpTDFxcWh1a2RaTVBBYXB1QVpjdXBDa1U0QW9CbjFwVXN5UmI5?=
 =?utf-8?B?TzBvZFJNMUkwdzhwYnl0RG5oR0RGaTB1RHFnc1dHYzFybzJnWTJiSDBoUk01?=
 =?utf-8?B?Z01nRzI5YiszQjJ2cXdyMEtNNjcrSWFESy9uNzJKT2prQXRESzdUWkNwbENk?=
 =?utf-8?B?aVdybmdEaDFITGw0cXVCalpCUEpnMVQ3ZkxrSFVJL1pkQjZFQ0FHdjZOaElI?=
 =?utf-8?B?MFZJRVcvRG03TlVMVFRDZEFBMnZwRW5Ta1BTbkIydVI0bUVXQURuRXE4T3Bv?=
 =?utf-8?B?bTdyeU95aC8vcVd3SHNHWmU3a1ZvT1FRSUEvS0IxNVBVaWp3THFVenVQWjJw?=
 =?utf-8?B?akwrN3VLS3JsYzk5MEdNTUlxVUk2MTFpd1pDWkoxbU9TUEpKMnlaN2d5WDdj?=
 =?utf-8?B?YmNVazhteEFNRVBTNHhCbGdHd0ZzVk9ScDBOZFNGSmJCOXBLa3RhRHE0Q1pG?=
 =?utf-8?B?SHJvamd4cWhNQUpWNG01NGxDdDVCZEg5dnUxUHdQbnhNY25oTUcrMlBKd1gv?=
 =?utf-8?B?U2JNa2w3dEN1WXNidG1iY3NsV0RQVnA0YjlqbTFWZEF4Mi9RSDRIbllhLzdF?=
 =?utf-8?B?SlhJUGQra0lPbG9YSkZ3K0lxUkhwQ3U1czBGWXlKVTFWUzBiMGtJUWhvands?=
 =?utf-8?B?MkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5506a206-efcd-4ee3-8282-08dc54354eea
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Apr 2024 23:25:11.5713 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Y9IiAJ2QYvN4aEkjDVf39cOKdYMVFwLIhxnjMrtJxXNvk5eLNqm74hg9uTfg/7HAfcGeaQ9+XLTk5KyKQWDLiM1ZOq1aBrxrh7RZWLDsmOA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7272
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712186717; x=1743722717;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2e/QWVTxY3sdI6lNZp/2yO+YqjCmDSmbegiE8S+eiy4=;
 b=hfgYZ1NhNZXLQZprgSd3ll9YFuU6UvmLER+6FcP1ihz+YW6S7ooOfzuj
 YFTBrguzgIJnVabNKQVS3xlDMFj0/AWlOPR7O1PXC0VMpnvSlk9zMi5Lp
 2oKcPwziCTAzZsvhPfwrWfj4h5PauyLglPJGmi9S85VIQW2FNvzeWG5eo
 nwlv6rPlQj1BnUDV0r4Dwlb9QTwZeVsYQEicHa3hikXoZyNsTw8FnZIbw
 RxIdJzWNlzl+4gzbfU8lYOJ7ofw34cWtfGwUjssrIrH6jf7Mp8RgGKWrv
 IbtAI78N9g1efDxDe2z0YYZVxuTnIc2okgnjpO0daR5kuuQg1bTXRW/YT
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=hfgYZ1Nh
Subject: Re: [Intel-wired-lan] [PATCH v4 iwl-next 01/12] ice: Introduce
 ice_ptp_hw struct
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
Cc: netdev@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 3/29/2024 9:09 AM, Karol Kolacinski wrote:

...

> @@ -1229,7 +1229,7 @@ static u64 ice_base_incval(struct ice_pf *pf)
>    */
>   static int ice_ptp_check_tx_fifo(struct ice_ptp_port *port)
>   {
> -	int quad = port->port_num / ICE_PORTS_PER_QUAD;
> +	int quad = ICE_GET_QUAD_NUM(port->port_num);

Need to readjust for RCT

>   	int offs = port->port_num % ICE_PORTS_PER_QUAD;
>   	struct ice_pf *pf;
>   	struct ice_hw *hw;
