Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5DF66526AB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Dec 2022 19:59:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E572840490;
	Tue, 20 Dec 2022 18:59:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E572840490
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671562753;
	bh=GzoM/+3x7IJrErJXZr9ZyA6OLIuoavNnLAjbVbXlWck=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=a1nZtP0vx70jEamvZtJQ5ODkcUEFXGtMMrgSc9GbuHPkMVloW20imSig9DJR0w8C9
	 GEay9ATj4bnu5N0I67TSe2cnCFAeN91CFZmWenb4kLufXa0YZlaOibWMKQLCAhFmVx
	 ZzDaYjKVx3PlqrguZCeacz5xwjzwh7u6i0FERw6pbnKcywTv/ZNG1aadArs7BEEWp4
	 pK2J8Y6BhsnavC8jZkNHZTUAbM8Wu+L5cTW85gpcf2r42kqhg8k8skjySZioiHLZZ3
	 0SKN3oaff+mmBt2/Hlj5R4M7y0MZhHQNTpGB80OG8tnz+WUgFKii58BcPAtB80q2KP
	 s9bmhFCxga/Cg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HEzly5xbBM94; Tue, 20 Dec 2022 18:59:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DF16740377;
	Tue, 20 Dec 2022 18:59:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DF16740377
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 584461BF23C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Dec 2022 18:59:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 30ED740518
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Dec 2022 18:59:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 30ED740518
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id v0O6Z-vtC-Pv for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Dec 2022 18:59:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6A96040493
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6A96040493
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Dec 2022 18:59:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="300034880"
X-IronPort-AV: E=Sophos;i="5.96,259,1665471600"; d="scan'208";a="300034880"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2022 10:59:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="628845800"
X-IronPort-AV: E=Sophos;i="5.96,259,1665471600"; d="scan'208";a="628845800"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga006.jf.intel.com with ESMTP; 20 Dec 2022 10:59:06 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 20 Dec 2022 10:59:05 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 20 Dec 2022 10:59:05 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 20 Dec 2022 10:59:05 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.177)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 20 Dec 2022 10:59:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NsENw/vr7JQjUtw+UnAwMA9lQLIXbUXcZR2uXlvyQ4t5l43/KAtZrlN3bjlYcdC9eA7eg8GBpO1d568XmtuYW2t+G26vBNRFVuJcCHgtCTrQgeW0UP5xEyjDhzhi7v7Kt97flwGQI13kIyq8MmpFbxJo/KLe0LDZ1WJfCD51l+xzZSWmqdrHFxK00R51LtUgztxjKxGIfSR5i/lS05E5Yg87gkWH0+XgjLtUtDjKUfs/OCPci25KQlIGTS059zyUWyLAnOegkC7HnHI8HWc1mpzQzRgDO+D15WvYW6mTSjzZ2zkBJjLSrAywYC7EuV/vs8p6WPwyQnoMCxtIQUNqfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mUtL06BBFGaMzK+GeDZkc8u394pd2dK35ZIoSU1U46o=;
 b=nGVTQdDSoyBHYxRE6ZdpaBL43UNVlK9LxZrTTVOBbAKXmYhsafiLullu64F7ZWTHWQXHTsCTbltzslEVBCW5iNQHRGqH/8RdgYngDLpTVRNUrV4ir11u/Ka7j2niXDClM6TdM3PCjwaycEWpm/baXspGpVuvlXcsdvW3oLSSSbR2ocF+nc10Dw57kRh1uNDeOJ18q0zroo19+hpgVzIu49GGFI88xIxUseOE5tpFiq6KHHZcW/hnwqzGeM9YEBfiSM6q4/zRk0OVCY2Eudch0G8LGlMdVXTIwqm7t3qSffHLEzycjpS4OWrx7ap1NIPOMfcapqfI/lmwEC3rmus8gg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4852.namprd11.prod.outlook.com (2603:10b6:303:9f::10)
 by PH0PR11MB5927.namprd11.prod.outlook.com (2603:10b6:510:14e::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5924.16; Tue, 20 Dec
 2022 18:59:03 +0000
Received: from CO1PR11MB4852.namprd11.prod.outlook.com
 ([fe80::57b6:7aca:88fe:4c8a]) by CO1PR11MB4852.namprd11.prod.outlook.com
 ([fe80::57b6:7aca:88fe:4c8a%9]) with mapi id 15.20.5924.016; Tue, 20 Dec 2022
 18:59:03 +0000
Message-ID: <eea3a653-06a1-f6b4-8cf5-80c42a41c100@intel.com>
Date: Tue, 20 Dec 2022 10:59:00 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.4.2
To: Alexander Lobakin <alexandr.lobakin@intel.com>
References: <20221220160506.173628-1-benjamin.mikailenko@intel.com>
 <20221220170822.749685-1-alexandr.lobakin@intel.com>
Content-Language: en-US
From: Benjamin Mikailenko <benjamin.mikailenko@intel.com>
In-Reply-To: <20221220170822.749685-1-alexandr.lobakin@intel.com>
X-ClientProxiedBy: BY3PR04CA0020.namprd04.prod.outlook.com
 (2603:10b6:a03:217::25) To CO1PR11MB4852.namprd11.prod.outlook.com
 (2603:10b6:303:9f::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4852:EE_|PH0PR11MB5927:EE_
X-MS-Office365-Filtering-Correlation-Id: 31ac9a7f-ca83-421b-ed0c-08dae2bc42d3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Wa01buSDNgkqit/wprCwAUR11YyFS6mYtdtJoUDR69DDx6TuE7D6TvvTPW0JYFs5q3UpkYjwPc0d1P++9Wn33fOkJ9EOsLPFSeyBsFY/IoD03NH1AvME+q3VhCDYB8YMU77pSVZYymsOkvUsFD0fVItXGg4QwiafBD5iG5WhB6SRUVht0LN4mk6JqscuunsR6/kM3WKF/UqAJQrPIyYlR+B7NTWzTloRcQrqss5INzRSWQCm/MZNJ935JGsk+sC4e8g9prcYlgvcR3lg/pUDdhSA/4YVYocGpu1MSREjziFakpjm4JCRsbitIMomxY5XeloOYLpGmpWTezQrp/X9MtXuUIECMeHi6wzO6vkOV7EwlMpzdBMMODIB2zR89byVpcHsz4AS9nfqpmTpMWveVkGGwtPgk6sAQ3T49rKaAAQ45PsgyZ1ck8XRVzMHqtLuLNrNvelf/buV83AB99hn3vyTkVDSf0fFGMr1yI+yV/H+dtMop3Z3++K/ObY0sTVNiI0Zb7FHZ2VITng2ZfdmTaT46HvBFfuL5S6G+/bFzLcTpuYuvEPQ5XHYNVXQXsupSNBVwgcVQDaheqNVza9iRGHUUBooJigqAPsw0bzCI1g+vHxXBFCxXPBt7BMJT86G1NgXYM1921e3cwFR4xkML5M/Uo93xmdSAOCVIxZ+xGwliz6GD0JcJNON4KO1oylPjlDBbQhMwZyGwpYBBKqR1lkSw29bq+HhV/Pxr8xvF0A=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4852.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(346002)(376002)(366004)(39860400002)(396003)(451199015)(44832011)(38100700002)(82960400001)(6636002)(478600001)(6486002)(31686004)(2906002)(316002)(31696002)(36756003)(8936002)(6862004)(66556008)(2616005)(5660300002)(66476007)(86362001)(66946007)(4326008)(8676002)(37006003)(186003)(26005)(83380400001)(41300700001)(6512007)(6506007)(53546011)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NGJ1ZzR1enN1UVJ0Uk9QZVNFaVBocE0rSjVuQlRJTDR6WkEyek9MSHRMSnQw?=
 =?utf-8?B?YWZsRDhPRFVVaDl2QTFBbmdHZjR5U0VjeU8xWGF0MW9ERDhNbDY1cElyQitH?=
 =?utf-8?B?YmJJRWJtQ2hjNCtSS2Z4R1ZNUTVKRkNqUit1bEkyTlNiR1hIQXM5RnoxYjJx?=
 =?utf-8?B?cnYyWTIvNEJyZWxocnk1aFR6Lzh6VHovbXZPUWRyeDZoTzU2MktpdGFkOFlB?=
 =?utf-8?B?Y2dBZTNrbnpCc1hJV0hNMXBSd1dRTHRRbUVKajc5NzlYNDZaQ2UzaUhZVkVO?=
 =?utf-8?B?WHF4ZVJxd003YlFid0VVd1hHVVNhTHVKeFo3Y2VsZ3NndEE2dklKSmFPYVZC?=
 =?utf-8?B?QVY3MUJVZ2lSVTBLdmxQamdablJ4cWJGOFYwUDhPTGgvNEdDcVFEdTYwaENt?=
 =?utf-8?B?S3NNMExWbEhGQkh1c2FlYnAzSzZpWlkySjdRUUNXcVFoUE1tNURwb0t6NTNJ?=
 =?utf-8?B?bDVhaGVaMVNRaEJwbHhHb0R5Qk5HczlXL2VXZUpjOHpoYzlzV2NzbnZJTDBT?=
 =?utf-8?B?N0lxRXdORTdWelM1bUhjTXdRbnNBbnVzc1hydXcvaEZUa3BCNlRBcy9veTRl?=
 =?utf-8?B?RGo1U2pTdmlrbnNObFAzN1hlTUZXUk5oRUhyd1EwTzVmemhSYzIzL0lENHN4?=
 =?utf-8?B?RW94K0hrZ3J4Q0ZnV0VXcUYxaTBqVVBsdzJFSWk3eE03Wi94ZHdkb3Z0TmlB?=
 =?utf-8?B?cll3VTVaZDN3eGVqdFd5NHp5Q3RGV0g2UkZxUy80UjRLMFNoMUR3OWZHVHdQ?=
 =?utf-8?B?Q1Ztck9UZUJKb2RDbTNQa2hEUHV0OVhIdnNKem0vZVNjaVhHQndiRmJIeHgr?=
 =?utf-8?B?c0MzcmZkRVFubS9EWllJNzFwWDE4YWsrLzdlb29QU2VQdjRkOHVSL1VHN1hQ?=
 =?utf-8?B?elNxNDBJTGxPckRLTUJYS2FJZ1cwWUZaUXNEeWxOSGdaalNiOUxWME5OSlJ2?=
 =?utf-8?B?Q3AwdGNlTHlRVm92aXZtOEZMSmJ0WSs0SHNBQlFGYXhmQzBPVWxDcTF0V1VH?=
 =?utf-8?B?eGc0enFqaEU5b0s4UjhIMFhNaWhZYXFuVWJsdGVyekhRTXZwQWVhaUcya1ZL?=
 =?utf-8?B?QkhQNEdEa3lOZlp0aGY5c1o4WWFiZ1NzeWQ5N0lNNE9qYU82eUs3QTE2ZDRB?=
 =?utf-8?B?MWZtTVY0Z0hCY2g1bkFmeDlzM1RxQjJZaUtIMDBkMGYvUzA3cmxHUThiSlYw?=
 =?utf-8?B?OWRhcm91UFZ2QkdXWjhYeS9GbjJiRFJEVUJNbU5pMEs3YTlzay9RQlZCb2hN?=
 =?utf-8?B?Q1RBUEVQdUhYdWZMcHBBb3IxS2FxVW9JU0dzSzJjMlY3dzRoVWw1WVB6T3FV?=
 =?utf-8?B?OWpTTllTNnV0ekluS0UwT1cwY3V1aG16aDdsS2hmdy9XS1J5cS9UeHhDa09i?=
 =?utf-8?B?em9CRDk5dTQwZXVCWUJxQW1GN3RqOUNTbm5hcjlZNUJWeVpyOWY1YmFiTFl6?=
 =?utf-8?B?bFEvcktzQytzYmZ2bkdoZHdQbzFXaTNwN0gyK2tRVkl3VUlZUmNrUWZjcG5y?=
 =?utf-8?B?QXIxU2pJTklkQUhpdEdoMGVQRXdGUFU2M0tGMkRzNlZETHhyODlTdGM4Zmw2?=
 =?utf-8?B?Q2pWdG1rdTlNOVhNTkU3TVZ2eGg1VXVKb09SR2tsMmg4UzVsaWFndmtYYUFx?=
 =?utf-8?B?YzNIUVU0VFNBK3NMbGVIQ0pRdzZDUnV6RDZZZVpHNDdjem0yc2JVZzJkUmNv?=
 =?utf-8?B?TlcyUFl4UzUxcHk1ejBiZlpod1NlSWliUWhWcWEzQUQzTkU5aFUvUkVEdEFD?=
 =?utf-8?B?cEQxM1ltZkNOdlExNzFta2g4cklidkQ1OEROZElOcHRqWEdORnhZOVB1NjUy?=
 =?utf-8?B?U25xOXZPc0s2TUZwRHlGOUpKSXh5aGxIbnI3RFQwbGhkTDBsWHFZKzhvbytv?=
 =?utf-8?B?ZXVFNXdqbGZsV0MrQkpGd1NLNFY2Kysrc1pPdlV3UXh4aUZ0d1lBQ1B5NVFa?=
 =?utf-8?B?RW54Y0FWU3YxdW1VTzUyUDYvZDZUZGpLcmwxTm9rckwyb1NLRXNsMklneGNV?=
 =?utf-8?B?YUthMk95V3ZqclU3THBjZUJLUVZmc3htQjM1MURaYWNaeC9GdlI3ckw1ZDJp?=
 =?utf-8?B?WjBiYUlSVFQzUTY5OHIxSHI0WW0vL29zZlUxMEtua1c2MmZvN016bnczQXdN?=
 =?utf-8?B?NzRoVXVqbFg4aUFXaVlkVHRnSU5qeUI4TGg5NHlpd0MxRktYTGVVS1poSWRL?=
 =?utf-8?B?WlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 31ac9a7f-ca83-421b-ed0c-08dae2bc42d3
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4852.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Dec 2022 18:59:03.0822 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uxOSbb2Q4x1pnp3R4aDUr1hJbucGdQ9dliY1SUHHl2NvRmKavMjskOdSBXtWcp5IBFgNLleKc7nulNDlEcJfqq4Gk6K7MVGYw4I34jtGaQM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5927
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671562747; x=1703098747;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HYU9GY8I/intMpVSGJVIunGN5RJMlvQS01Fod42vvt8=;
 b=EbWaRD+0+H+zrnxpJJJs83um2z1t0O+aC7jO8QT8etv3mPRCHSqrFvV6
 z6vpf4OtvQHfVfu2H48LCaheBHmRmwP37TIBPsSZsHB+TlOAMW3/gTDJl
 NgE5JUsnH5jTTFGAe1GVeT75X167qVuuvAavn1WV2bVj26UQLjs0z0lEl
 C+dDgCTVeay0OPm6vIq1xCscin2QlluNGM9Pi26Df773Qhb6cieAwmBmo
 xLNa01YAVo3KKcKPh8fIwSmYqeymsI2nGnDeuZrj6uwg7qfm7DXMW73e5
 Zr/2Vp7CoJqXnS0D/1o/tdRsNZtNMxTwb414+9z7YjC4mkp07C5kjkGO0
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EbWaRD+0
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] ice: Reset stats on queue
 change
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 12/20/2022 9:08 AM, Alexander Lobakin wrote:
> From: Benjamin Mikailenko <benjamin.mikailenko@intel.com>
> Date: Tue, 20 Dec 2022 11:05:06 -0500
> 
>> Commit 288ecf491b16 ("ice: Accumulate ring statistics over reset")
>> implemented functionality for interface statistics to persist over reset.
>> This avoided the case where a reset happens in the background, statistics
>> set to zero, and the user checks ring statistics expecting them to be
>> populated.
>>
>> In the case of changing the number of queues, statistics should reset.
>> This is because old data should clear after parameter reconfiguration.
> 
> "Should clear" -- because? Who said that? Stats are usually a
> netdev-lifetime entity (or even pcidev-lifetime).
> 
>>
>> Fix this by resetting statistics when the number of queues changes.
>>
>> Fixes: 288ecf491b16 ("ice: Accumulate ring statistics over reset")
> 
> It's not even clear why resets are needed, not speaking of if it
> actually fixes anything. I think this wouldn't hit the net-fixes
> tree with no real scenario where the mentioned commit provides a
> serious regression.
> 

Hello Olek, thanks for the review! I updated the commit message in v2
explaining better why resets occur without user interaction, how the
issue was reproducible using ethtool, and added some better wording.

>> Signed-off-by: Benjamin Mikailenko <benjamin.mikailenko@intel.com>
>> ---
>>  drivers/net/ethernet/intel/ice/ice_lib.c | 65 ++++++++++++++++++++++++
>>  1 file changed, 65 insertions(+)
> 
> [...]
> 
>> -- 
>> 2.34.3
> 
> Thanks,
> Olek

Thank you,
Ben
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
