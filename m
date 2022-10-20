Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B80F6606AB4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Oct 2022 00:00:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DE1E08433B;
	Thu, 20 Oct 2022 22:00:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DE1E08433B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1666303200;
	bh=Gemx0eMbekxu4WZwZbsbblJAyy+0pUn8f1Dr6RBSmhU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=3pExHtj4PUlOVo9Im4ykY4U9wzmGgkbjo5CMNhLg0mGo4XlJepkFzVUuej4Yd5seY
	 fBl6HeA02OB6+yPj9kc70PqrPuPVpIFGx+oRz4hXYORINcJAWv1CITdHH3MU7czv2+
	 5QrVNVAUkdSmNzzO4RgXI0uCD7v9GgS70z35WbwBCJ+KNTvGqLZqrOClVH4FcVs4k8
	 8DGJNXFLEs4kocE4WkoMY8gI8UhYwS6LjHqMMps+8u3ph4C9aBV7/nT+wEo9quIRWO
	 8kZkdag9Z5YG1TYh0naGhMLoStSrcKccZlIkIljPI2unsqXdZDaan4arrihQVWGIi1
	 afDW1jpuEoetA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ocDaVb5Ni5oB; Thu, 20 Oct 2022 22:00:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BA18E8431C;
	Thu, 20 Oct 2022 21:59:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BA18E8431C
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 57D9A1BF25F
 for <intel-wired-lan@osuosl.org>; Thu, 20 Oct 2022 21:59:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3CABF404D1
 for <intel-wired-lan@osuosl.org>; Thu, 20 Oct 2022 21:59:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3CABF404D1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M02THBZl-NaY for <intel-wired-lan@osuosl.org>;
 Thu, 20 Oct 2022 21:59:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 17CE8400A6
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 17CE8400A6
 for <intel-wired-lan@osuosl.org>; Thu, 20 Oct 2022 21:59:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="368893358"
X-IronPort-AV: E=Sophos;i="5.95,199,1661842800"; d="scan'208";a="368893358"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2022 14:59:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="630092304"
X-IronPort-AV: E=Sophos;i="5.95,199,1661842800"; d="scan'208";a="630092304"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga002.jf.intel.com with ESMTP; 20 Oct 2022 14:59:51 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 20 Oct 2022 14:59:51 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 20 Oct 2022 14:59:51 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 20 Oct 2022 14:59:51 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 20 Oct 2022 14:59:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f0FM/GsdtjfsZzf6GKou0G6z4QajKgpD3c6phaSvI6etigOoj+/mWxqwoN2r9EsbXTMPWmsm/tLUM7qjSyTEvTqzBDKmCQgxOsVQEgoljv671AKRvcYdS80txUzzIaC0s9C4C+m4frbEPbcYQNJYqNnxm0gsOifAvasiDpg46KMmvpu7VuOlOtgqRIQOh2UvbJv8slxUNpPPAPSPLM0OhTjjjvhqPSF7VhZueVgADAmll2At8Xd/AZbdnRpk4pTX9TWrT080Ac2gJiR9cAu69xlk4umCISN2uf2L82nIXBaydNHk/dHoOHSqZYXerjrAL5NPwyuYXvdBQaYVEQ1pVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wVMOWCxZBTjUVfjGMGvkLeNdBYWIcS3y3djhUpkRjyU=;
 b=JPHpf0pHh0hvoVi/AQarsOYN/OMQAssJR+Jl0dhA3yeg6sjAAyYrHjTKMVBEwEoqqEr8p99IrgwrUmrJGYbMETODKfgZlRz5IJg6zk58BjfKb66rJwS/S9koKcTzt7XUJ2dk2yXvGYLugouoCEHITLe5aLQHpMNhVvrOzUBGNGCaRaZq/JVL1xo8IbCgvl3eygN/j0vhEjeikpY0r/RgjbFJacZFS/i+I5xsJI6l92wPPIDupu0KQ0fS+RFVJ+d0aZmSHZPwtGJ7UnD046IQmmM25JZgZoBAJrVGqpITodODsGLpk909nbv0IA/XzenMeF12QkrCzdT6cMA6gKpNUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DS0PR11MB6374.namprd11.prod.outlook.com (2603:10b6:8:ca::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5723.26; Thu, 20 Oct 2022 21:59:47 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::e314:2938:1e97:8cbf]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::e314:2938:1e97:8cbf%7]) with mapi id 15.20.5723.033; Thu, 20 Oct 2022
 21:59:47 +0000
Message-ID: <09f20e4f-4970-f419-72a2-0cef7ca0ee17@intel.com>
Date: Thu, 20 Oct 2022 14:59:45 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.13.1
Content-Language: en-US
To: <intel-wired-lan@osuosl.org>
References: <20221018092340.never.556-kees@kernel.org>
 <20221018092526.4035344-1-keescook@chromium.org>
 <DM5PR11MB13247434B4473C63898A35A7C1289@DM5PR11MB1324.namprd11.prod.outlook.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <DM5PR11MB13247434B4473C63898A35A7C1289@DM5PR11MB1324.namprd11.prod.outlook.com>
X-ClientProxiedBy: BYAPR21CA0024.namprd21.prod.outlook.com
 (2603:10b6:a03:114::34) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|DS0PR11MB6374:EE_
X-MS-Office365-Filtering-Correlation-Id: 5148c88a-a3a5-4b07-3b2a-08dab2e6679b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GTavcLixfKv9AtO4CHYKY/lkU/bRpBb/CLA46h2nXMb72iaWQ6Km0JWrxcR1kTTp5s24tSaiGXAwtj7m2tdXE+DdFmucC73S4rGrKPmx40mDH3JEOb5cQzsDz6xQSw+KdxGVE06qFT2hxwqoaenIbtIU8eVFrTDe2m3jo7h9HIF4GgPCmCxttSNZ+VfbVYA91SZ/QPysef+E2jjgBD1V6dhN9mLOM1Gpg/JsyDLjhfGsuRA4V2ZDWnMUUDQVm5JSBr7bge1rXRIiEgyIBZi4BZKYHD4y1N62z1wcABwXrkL8tX78C47dXZvG9ZclIpEQXYQXP5uywHLKIENIeVTddqJmmZCbeR7oTNViNZtH8CeCCpUlxmBwnTj/gBxL72yfo2FcCmz2+EgF5c1hToVitOLUkHJIvxaviXKxFlKJuBHmLsRdyuWbJjVb0iODbmq0s3dJSQ6BcjhC+nzZFvEVRKE3jIhirc3zZF+Cm9EmXc6KECpsL//00BJmHkYXMm2t8XG58L7VKOmUvK2/L6UlkwBtmgWLfxKyFpB9VhZ8f8LLvxCMpOxH+9ygrHr+1f4YwJ0pw4PP9zJkVYv5wEuH0ORLGWbNvDBQ6e61qPSj1D4tZ7ync8bzCut/O/cDX9d+00hr1onGZ6cuXt6Xo5TkTS1h2P/oJiagiRXSoM1YUTCCyX9+xkv5ZHb/Jh6HOaxobvV/QxDujzET54e/OUfY2971AcG/QkyXP27qKQqVPHRzQeIccMc8SQMCM+pvq23IzOskiJfeqAYZaRJ72/AdgA7fcT5kg536hK3+YZ1gPrwhPBBwKgBTZT+M/KktMKcVeb8Fd9gmjMAdD/YttCSX3A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(396003)(346002)(39860400002)(376002)(136003)(451199015)(82960400001)(83380400001)(36756003)(86362001)(31696002)(38100700002)(66556008)(66946007)(6916009)(316002)(5660300002)(31686004)(66476007)(53546011)(2616005)(186003)(2906002)(6506007)(6486002)(8936002)(6512007)(41300700001)(478600001)(26005)(8676002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TzZWU3U2cmp4MjFCUXYxakw5WHNKS3l1TnN2NWVvbTVyOGprYUFSeld5UjYz?=
 =?utf-8?B?ZXVDdHJiNGFOY2dXN0c5M093QWtNOXBBekFKYnRqcDRXMW1udDhRVTZrNVhQ?=
 =?utf-8?B?V1JvRUxrUUpjSDJ6RlV1MDJHTUxWZ0d5eXdZRHFDSlFMTTQrWnZSelRTYlYx?=
 =?utf-8?B?ZkRtTVRmQlRUVG5ZVkdIdTdudjMrMDU2eFpWSEVIUC9ZdWJjVzRtMmZyOWUv?=
 =?utf-8?B?M1dnK1VOTFFyakFTaVdUbGpFaTBFSDRaYzQ1ZDFoK29ncnVYemR6RUR2V1JL?=
 =?utf-8?B?MlRydXN1UnNkOUFsQnovTVE0NkQ3WDlNYmxmSzY3VnRoL2tYcnNmOGFsU05p?=
 =?utf-8?B?U0RSVFFLZU91TzZlendRQURkZVhwRldJYkwzdXQ4UmgrSEovb0VHMllhUVBL?=
 =?utf-8?B?QzJ5ZExYWi9MRXdmSlc2TzBIY3FSM2xwZ3ROa0FWQnR1QVFKajZxaDA1b3Bu?=
 =?utf-8?B?bnUyMWFEZEJBWkFpdmUzd0xiZXYwbGM1N1NPSG9saitkeEl1UEFZV012Tldh?=
 =?utf-8?B?Y2pHZmg1dnkxRXBhRUhuZDNwSkdHTmV0c3k1MjdVV3dOUEQxa29XT0ZWTnlm?=
 =?utf-8?B?b0ZjRjA5bkp4TEk5V0N0WkdHLzZwOGtTcWRuemIyMnVOV2hjbzd1cUR2NE9V?=
 =?utf-8?B?UUl3QlBSMU9rcWZkK3NvcXNPcFNiaDRqV3o4bm5RYi9lODhOdUNTQ0NuT0xK?=
 =?utf-8?B?WXorWmVNYmc2MVZOOWpEMTlvcjVqUGNrdktRMVMwTllKbzZYZXhEbFJrM2R5?=
 =?utf-8?B?VFFPZHZ3ZXMxNlhlN0x0WHFjMXpheUJSc2hOcTJ1T3ZuY0pZTkNIZk44NFYy?=
 =?utf-8?B?clpJYVdydWt2SWtRREdjWkJOUmxFN2lhTUVMZmVpNXA1RlRoZlVmdTJuZUN6?=
 =?utf-8?B?QksvZjY4Zm50NTRWMWppZUlPNnlJMDh2NWpXV2RuUGlSeElocEtkM1Qxd2ND?=
 =?utf-8?B?TUZyNzh5N3lPZ2xzRElkQlNFVGZMWXp2NVNmTlJ1RkZpT0VKUXgxVEJ6UnIr?=
 =?utf-8?B?VXl6VmVLNkpneHAyTFI2UG9CUHpyU1c1c0tJM2poNm9ZK1QvQ2JmTCt0QjRS?=
 =?utf-8?B?QU9rV3lhOFBPNFFjdFFMaUtpQ3BwZUJUUWpnUCtjVlhmUTZ5L2JnZDhwbGI3?=
 =?utf-8?B?alVaemNkUDVPeW5HUDFXODNuVTg3WEhWN1NxRWlaczFaR3QyeUZsNFBuT1Ar?=
 =?utf-8?B?QUE5Tncvamg2MkhwTHB6RjJXZjdVZ2lJWjcyOTlRQjBrT1JBdnlKY0FYeWRX?=
 =?utf-8?B?bTBYMzR4QnBCVHZFaFUzdlFPU0JWVHRoajZmNW1FTUUxNXJuUVRieHN2VG5B?=
 =?utf-8?B?a3M3ZVRYWWF3bUxnOVpMMS9wRStGbWpZMlppaWIxb1JFNVFWL0o2cWlISlRl?=
 =?utf-8?B?b2QzdE9RQ3FkejB6UGhoVEtLLzhhRHp2NW1ZV2IxWTdUVFhHdVAxSmpjVlln?=
 =?utf-8?B?WUM1cGdaRStOQnl1M3c3eGxWWGRQTW9xQlpRVlBoZjB3L1AwOW44eTZKRDZa?=
 =?utf-8?B?QkdQbTVacWZ0bHEyT1ozK2lWVG5MaVBZYkVScGh2SjdyM3JlUzZsamI1OFZn?=
 =?utf-8?B?UWltdTMrSDBvNU5SeVRUb3owa2VrTkh1M2c5eERRZ1h1SXpDNGJTcHlJYlAw?=
 =?utf-8?B?a0FWTldvTWZUN1o5NTRod2UzSC90eTZaMUR4Q1lFSTZMS2p5a1JpTE5yN0N0?=
 =?utf-8?B?VFdwV0oreHc4c3RtTkhjczlGbTRXRWkxUnFQZFdvQytJV2hHUG5wV21veDFm?=
 =?utf-8?B?V09QSlNaUEdoM2libzR0NDAzb0lqVTJGdmYzeSt6MEhsZkJZME9KcVVCOGk4?=
 =?utf-8?B?MzJpNVZSU1ZuSGJSMW80amh0V21LQjQ3MndKVEVsbDlGRWp3b2YycWRHTTVu?=
 =?utf-8?B?bTRvNEczVlIwd1M5QTRMc055MkxqdU5oZXIvV3J6TjcrWXNXek5sT2tNUnlJ?=
 =?utf-8?B?V0w5RDFBNkFVeTNRM0tLYkNSTkNNMVVBcC80TFRhd3VsT0RFUlBWam1ld093?=
 =?utf-8?B?QTByMVV4MmI4M2ZlYVZ0WDlmc1doMkxaTHBKMGVLUVpoK0orbk9Fck8vWXh2?=
 =?utf-8?B?WmJKbDhYQmhKTDRjZ01tK3VxZzZSWTJvT3ZJMjBRYjBxUlFObmYyYkN3Nm5I?=
 =?utf-8?B?a0ZtUzU4TytFTHc3di83c08yZlJ1R3p3bDVYWVBRbkZXMFA4QkluYW52WGRX?=
 =?utf-8?B?b1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5148c88a-a3a5-4b07-3b2a-08dab2e6679b
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Oct 2022 21:59:47.8357 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MuDpVsJX0QfV1VM5YnuUnZF9tOBOSmTGU0y++EWvaA4cFgwcJJrmbnsr+OSYOoouIkdZ9vIhVj0Bxb72n7HeLFJHYoTD7uYuPM3WzP1zYlI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6374
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666303193; x=1697839193;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=7EHMLaDDK3pD3EmpnsxKIC0wSfreuycxRZGKQGrHZtM=;
 b=i7r22M6iXQ5juztjgCUoaITSzGfbndx0hUQv1HubjYftPGteixIqk7i1
 zdGAfGgv44wbIzmZnd+wjiqSo2d6s2u9itnF2DJKeAqUNfAiOQKugLxhE
 utRiB5JPKeCr4IBNz5e80tV/qz6fhKoGsaDUdkVOaUN6ppPAYTrdMTvSc
 wbk4mIfErucBO1SP9VI9W0N5A4VCCup9/UxIzziFczMvL7eMJft1dIp0i
 17ckC+7ibJjPbk7YLLXzh0varheVMTQQdtDnch1gZBeRjhw7BzO0q/KR+
 JabrdqxhPKCJ6SkBPbvNWjDHmZ4/vPdvtBjLuY4gp3qtCARYsALvnjIxN
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=i7r22M6i
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v3 1/2] igb: Do not free q_vector
 unless new one was allocated
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 10/18/2022 5:20 AM, Ruhl, Michael J wrote:
>> -----Original Message-----
>> From: Kees Cook <keescook@chromium.org>
>> Sent: Tuesday, October 18, 2022 5:25 AM
>> To: Ruhl@www.outflux.net; Ruhl, Michael J <michael.j.ruhl@intel.com>
>> Cc: Kees Cook <keescook@chromium.org>; Brandeburg, Jesse
>> <jesse.brandeburg@intel.com>; Nguyen, Anthony L
>> <anthony.l.nguyen@intel.com>; David S. Miller <davem@davemloft.net>;
>> Eric Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>;
>> Paolo Abeni <pabeni@redhat.com>; intel-wired-lan@lists.osuosl.org;
>> netdev@vger.kernel.org; linux-kernel@vger.kernel.org; linux-
>> hardening@vger.kernel.org
>> Subject: [PATCH v3 1/2] igb: Do not free q_vector unless new one was
>> allocated
>>
>> Avoid potential use-after-free condition under memory pressure. If the
>> kzalloc() fails, q_vector will be freed but left in the original
>> adapter->q_vector[v_idx] array position.
>>
>> Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
>> Cc: Tony Nguyen <anthony.l.nguyen@intel.com>
>> Cc: "David S. Miller" <davem@davemloft.net>
>> Cc: Eric Dumazet <edumazet@google.com>
>> Cc: Jakub Kicinski <kuba@kernel.org>
>> Cc: Paolo Abeni <pabeni@redhat.com>
>> Cc: intel-wired-lan@lists.osuosl.org
>> Cc: netdev@vger.kernel.org
>> Signed-off-by: Kees Cook <keescook@chromium.org>
>> ---
>> drivers/net/ethernet/intel/igb/igb_main.c | 8 ++++++--
>> 1 file changed, 6 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c
>> b/drivers/net/ethernet/intel/igb/igb_main.c
>> index f8e32833226c..6256855d0f62 100644
>> --- a/drivers/net/ethernet/intel/igb/igb_main.c
>> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
>> @@ -1202,8 +1202,12 @@ static int igb_alloc_q_vector(struct igb_adapter
>> *adapter,
>> 	if (!q_vector) {
>> 		q_vector = kzalloc(size, GFP_KERNEL);
>> 	} else if (size > ksize(q_vector)) {
>> -		kfree_rcu(q_vector, rcu);
>> -		q_vector = kzalloc(size, GFP_KERNEL);
>> +		struct igb_q_vector *new_q_vector;
>> +
>> +		new_q_vector = kzalloc(size, GFP_KERNEL);
>> +		if (new_q_vector)
>> +			kfree_rcu(q_vector, rcu);
>> +		q_vector = new_q_vector;
> 

Fix seems straight forward.

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>

This feels like something we could tag with a Fixes and send through net?

Thanks,
Jake
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
