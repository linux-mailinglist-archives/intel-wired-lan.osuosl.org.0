Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 846677D17E6
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Oct 2023 23:17:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 20FE884D45;
	Fri, 20 Oct 2023 21:17:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 20FE884D45
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697836621;
	bh=ErdzFoX7KUacAt594S7aq7VZMDOeV3Ur8nXRyXNCQrY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qRVCA2JLdPvsp1Ktw5ocN9znFX4AiFD5RVAE6tLebbODYPjKu4yS37j66cCjSbRjg
	 j8ydoFqo6q0KNECHIkFOCcN+orFtGAaSo/ygAX9Hp0QgIFJSlbYdQwI2JMwZNr9dsc
	 Bd8ypTMRu8LI8dXHGpeteNZojqYv19VSYzIEhWCOgIH/3eTvJEwegteEKJtkg74Poo
	 wgSdf+vcFpv8GLqATNbIxbpT9j4vHNybyiDEBx2haFsBLuTagXGrWyOydG6q3q1az+
	 y7r13Gz9HQMSbnkv4qjOKsoAEpfoER7AqJOcFPDRt1dLmWRyBSC6zFWeSsOlbdGYMl
	 ML+XV25z2aj3Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PsLrQ3YgYs38; Fri, 20 Oct 2023 21:17:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E3C5E84D43;
	Fri, 20 Oct 2023 21:16:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E3C5E84D43
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 405051BF393
 for <intel-wired-lan@osuosl.org>; Fri, 20 Oct 2023 21:16:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1741D84D43
 for <intel-wired-lan@osuosl.org>; Fri, 20 Oct 2023 21:16:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1741D84D43
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jAzfuuluFWjQ for <intel-wired-lan@osuosl.org>;
 Fri, 20 Oct 2023 21:16:54 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4966C84D42
 for <intel-wired-lan@osuosl.org>; Fri, 20 Oct 2023 21:16:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4966C84D42
X-IronPort-AV: E=McAfee;i="6600,9927,10869"; a="5190081"
X-IronPort-AV: E=Sophos;i="6.03,239,1694761200"; 
   d="scan'208";a="5190081"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2023 14:16:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10869"; a="761176466"
X-IronPort-AV: E=Sophos;i="6.03,239,1694761200"; d="scan'208";a="761176466"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Oct 2023 14:16:52 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 20 Oct 2023 14:16:52 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 20 Oct 2023 14:16:51 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 20 Oct 2023 14:16:51 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Fri, 20 Oct 2023 14:16:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=luZQ2N2rqeTAI9+Yl5HCbtTN7Dq9cp1wd0W8wtsWsYW8LVbgaQ+b5yBgz7Jn4ZIVFkLTkNeYnke8ngMXuR4zZRVGaBD/72PNoQvDxfZUC2EWVwv1f/JUtTZt3W3a9tcLfrTVdBnxiy+fCMGqOCHVYBu+593UVLReeUHbpxVmSIW+3+nJaiHcK0lfmfat9P/IAl4cZ/aHuAzfL+2gA6jKWQtA/2pijiPFbkOmX8mA/BZTTwEOu5CbJ6CNYCruVWIgQzZLp2PJpbY9tUy1cEEeD0ycxZuh8IdEw4oaWlApdWmRrkcBM+uWRohxWEOI0PAu7b8Ny3vDTNg0cVhujXWVwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1x12ib3p/epnZYT3XYsJJ/iCAVOsqb+BcstSeyQlSh4=;
 b=ZpdkzICH2PLeIH/t7nBOW58j7110gngmI2Z1GOuPxlYn3Sp+LS2pR6X12gfWiCFiXjGP4+wvgaTQzrOu7m9GVN0GzKBqJ/WRVFoKZu3eZND0+bljk/GxkwqQnqjxtfewb4ysAwmLbzk7E8jtIUcQ+A6O2sDcX6ijGYNsUKqB1SiRlzibsR5gM44RxmjapExX/PLJ9pHvuJcevl5DJP15JukopL9N1a9wSs4FxSyegzVZB8rGfdGVi86IAmt6DxDmxUZE+/0jSIvgw+PptNQlDiHSxMPGT8YJ02dbILr7EAQkPfbVhaLMjBfl3kAux7kY4beW/fKhcSwBPtX9JPjHUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SJ0PR11MB5598.namprd11.prod.outlook.com (2603:10b6:a03:304::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.26; Fri, 20 Oct
 2023 21:16:48 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::34a7:52c3:3b8b:75f4]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::34a7:52c3:3b8b:75f4%4]) with mapi id 15.20.6907.025; Fri, 20 Oct 2023
 21:16:48 +0000
Message-ID: <a502b0b9-3d24-4790-9f2d-3e3ee1199bfa@intel.com>
Date: Fri, 20 Oct 2023 14:16:46 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: <intel-wired-lan@osuosl.org>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
References: <20231018211522.29017-1-jsbronder@cold-front.org>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20231018211522.29017-1-jsbronder@cold-front.org>
X-ClientProxiedBy: MW4P223CA0016.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:303:80::21) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SJ0PR11MB5598:EE_
X-MS-Office365-Filtering-Correlation-Id: 8b676f49-88d1-4a23-9e67-08dbd1b1df2e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GUOXGR0uQbX/n9tdWlZO8rdgFaWp9w9oJS4eaMZ5Z86Ur3wqwbrQ4YrPnBJ5zUj2+h5u8Lz98HY7TbOmGGgNGT7R80hpFhI0GcOof0zhjms4IdAeQLU5CuOvjjooHqn+xhCLk8eLHXdBwEI1IS+nkz5wzEVRQlTodCExyhjA7mlBSi15Pln/qYpDPU5mdPHDpDnf7T+UpYULG53K8hl7Pd0qSMijNGNUSQxD/D4NLSRTLWjGuCXWuLzTwuwNlwHlfEs4xG6sY1tBFcCBBaN6QLVP6GD42sFzlVUcSJUH1Ti/VI/D7IpewEOVXrUZuoKlJQou1bjIgZFdfy6QrmLgL8d1APPcxaWn8OKOfjYpY75RE7KEIPb9HJWKZNq63Y1JMx0rYPzvQZ+7C6cZQZsolqI2BQLtpTi5SHQzr8zwt9jyyj7+EeRm9HlxYL7tX7LZuTwp+bJdKtB84kJFq/12x7qTm3XyNlOWknCkhM2GKGgsxyjUfPW6N+HRNT0iu0GU8qZ+TcGwGlhIbyGHkDBMuhrOuV+9C6QbsUY38Towb/9oMxSxTuLyWTFIzEHoH2nUTuqMYZSw86OhwRbS5gMf141Z80FNlZqUkqIDnc4YgjC8+qd8E2RuUTSgJBlEHeqY9osiGPYzpClqanYghaWqpQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(136003)(376002)(396003)(39860400002)(366004)(230922051799003)(451199024)(64100799003)(186009)(1800799009)(2906002)(6486002)(478600001)(5660300002)(6862004)(41300700001)(8676002)(8936002)(316002)(6636002)(66476007)(66556008)(37006003)(66946007)(83380400001)(31686004)(36756003)(38100700002)(86362001)(31696002)(82960400001)(53546011)(26005)(2616005)(6506007)(6512007)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RVBHQlJTcFhUYVZXV2xteFk1bU0xbTJXemtWc0lpVEdQNWswTmV5UDh2RTdT?=
 =?utf-8?B?c0tHYll5VmI0dVNiTkU2UytYdk0yTDkrVE9HOGhVdWNWM1c5VUFTZTl3bnFn?=
 =?utf-8?B?Sy9ROFE3WEk2QnVSWEdKcXhHSDVrdUVTcEl6YTBnb2xtN2dPYStwKzIvWE9K?=
 =?utf-8?B?VmRYMmIxZU5JQU1YbGJSQUdaMXhlMXVkc3hlSHNvTnNqM2dxWXNMWlRCVDl0?=
 =?utf-8?B?eUd2aUFrNXlSdnVGWnVrUnM3Zm90R1lRcDdXYk4wbEJUV0ErVGFCT1V1bGFa?=
 =?utf-8?B?c0oyTUcyYllnc0dRanMwbEwrOUZ1Y1NweURzRGg3ckxFd0tTYnhBdVNtbXZV?=
 =?utf-8?B?NlU4dHdQYXE0bUpvY2RpSGlzYXE4ZUtMWXlGeUNQSE1tbTBxTC8vZ1ZMMDRm?=
 =?utf-8?B?UVFtUnVRbFZqTlFnUnJYSzNITWE2SFhsMzFBMDhPNWYwOWVpOFMrckxBVUZ2?=
 =?utf-8?B?THd3M3pKa2RmMWxTRDFqSkxvYzVLazFUS013RkZHS1pNYy9GN3VKTXNiNjNk?=
 =?utf-8?B?a0JxQmJDYjgvVXg1aXpmcnRFRXFNcDhkY2JGRVFXdHNEczd3RFpTaDUxNXcr?=
 =?utf-8?B?eG4yc3RwOVR3ZmtEcWRzK2svVDdBN0Q5RXV0QW1GS0g5NFM3amEwNFRRTkMw?=
 =?utf-8?B?d21MdWRyU0czQ08vQVhNeUoydGVTSDNrM3JJWVdiekVUWUxTZHNlM2tQWWpV?=
 =?utf-8?B?MksrOS9PYllGWjlFaktiNStjYzBLYXZES05rdmp0RVFpRmNYL2VkWS9OSUl5?=
 =?utf-8?B?amd4TGtCWktscWlwSUZsaWhjTUkvZDQ2VlhSYjBKRWZiNWN4Nlo0aHRGN0xU?=
 =?utf-8?B?cFhjR1JLOWtCTFZ0aG1nSkIzUkJVNWhBZU9ra2dqMHc4c1RJekI4VUljWkt6?=
 =?utf-8?B?SGpoWFh5b3RvMUtjbGh6Q0hCV3BGZCt5M0xQaC8zRTI2ajVqSzk1dTJ1T3FR?=
 =?utf-8?B?VWxEQ1k2U2ZzTHB6aGxvSWRJYzhxQjN6bTB3Q2dhVnpVSzc2bDFSaU1KTHRI?=
 =?utf-8?B?ZlZGY2p6VXJkQ0NDZ3FJUU82Z1llaWVvT2hoSFpqNXNDOTlNR1JteVRVcDA5?=
 =?utf-8?B?ZEttc3JraGJzV1FTYVdteE5FODgvTnBPS1BielIrZTR1U0NRTjUwdlZvZURE?=
 =?utf-8?B?VWdNR05nZ3haVGRjVUlOQ2FHSmpacW84Q1k3QXErdEpabjVOZ201T1kyWUNK?=
 =?utf-8?B?Q2FoRzFUZkRNc3B2VUdWeG9OenFEclZmTC8wMTM1YW1mWVgrVHlXbS9JWldO?=
 =?utf-8?B?Qy84azgwYmc0dUUrcitLMlhYdHYvdFFXR21DSmtFS2JCbDZ1Z29WR2ZFZHpu?=
 =?utf-8?B?N085Q0tIZzlEM3Vkb2RWcFNEVWM2ZENMU3hUcHNUN2hBZUJGQlFxMjZtSXFw?=
 =?utf-8?B?Q25pTDBUdXV4QzFHejNqNGtyaklQSjBFb3YzVHJZM0ZiWFI0MHI3NmhFaENu?=
 =?utf-8?B?TUNWZytGazErNWltckhyUUxwTTN2TFVyNVE0KzhZK21Pcjl2SmwxKzJyaVl5?=
 =?utf-8?B?VTk4UzgzTzM1SnhWUkdKNzRISG1qVkkwM21mTHhxcVVBL0xiMUNEc29nSFRw?=
 =?utf-8?B?NWlOSDNtcVZ1dFVFaEhpL3VtRHU4M0tQSGtKcmNxcTF2KzkwL3pFVkpnY0dJ?=
 =?utf-8?B?WGZXOENYNUNmVW1ndkd4RllwQUwwb2dLeTkrYjZEMDhLLzhsbDV3TzVSTE9w?=
 =?utf-8?B?M0hRdzNGdDgwaEdpVERaQWpEL284bkFqZFY3M216b21UN001UXBvdDY1c3RE?=
 =?utf-8?B?UDZwWCtBV1dQNEpvU1FORWxnL1JWc3BKMm1jMitBa24vbldJT3U2aFZQMVds?=
 =?utf-8?B?MFlWK1p3cWtSeDBJTUw2OTVZb1EyWW5pME41L2xabHhQWTR6UVBadjBUSkZ6?=
 =?utf-8?B?dkpiQk14UkFQSWoxaWRjNHNBa1BxYTBqMmV2Z0xlbHBoaG9YU0FjRVEraEpk?=
 =?utf-8?B?VFlQK1M0bmJ3d1pla2JPeVVyUjFzQ0RBMklEMGRPQUhvOFIwTyt3TDc3RVpa?=
 =?utf-8?B?SU94WFRzSU1aWHlvYXY4dUoybkVUSVQ1ekJXYUZ1R2dOaExxaUt6OEM5cnpP?=
 =?utf-8?B?NnBDZ0ZUamdsd25XUkk5V2FNUTJxYzdvRDhpTW9WNCtiSGRmN3FaMnhkNnBC?=
 =?utf-8?B?cm1hWVFIaThxNTQ5Y1ZweUsyYmhZb2FVOWFsZGkwV1ByTjR1a1NycWhJdFkw?=
 =?utf-8?B?eEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b676f49-88d1-4a23-9e67-08dbd1b1df2e
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Oct 2023 21:16:48.8080 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LvlG8gzfe72FerARhqeQ0eqaUWNM3xBNKDgE0DEtjaRTcbvgFagDJ44o7k40Fg1INgCC7kT3S4mdy72KhHLQ+MpZibjpnOEaWA+B8Ughpx8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5598
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697836615; x=1729372615;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=qYAuZ0XyBcGJ8b2M5jSIKaxpgSs6hoFTBjRWbNEdIfE=;
 b=fI5DjlklVLKHg3w2L/qBb3tIKeVclRURFP40QOnidGSKKtQHRhHF9hdF
 YsrglD6+EapVpFfVW9/s2O7p8mjaN1azePJAqp5jy1udtTg19PbbNpeyV
 xPv7O+ajCHG0jRXuh7BynBop6OMZwVYCJpXJiO5/SVewX6f5EhCvQo9ZX
 rlvjvh0J5X1fuLJZikbH/I6ZcGvYIS6uD4oTaODyObR5V9RE50ycEQtTG
 7JXsvapmyJXho+4Lz7VKIVevddrzdKfY/PZVF0+08miMRYUYuf3dt256X
 Z6LXvZISjc6mwqugohBUfSNqgxeMyTR7E83lJ676WfM5tH81C4XW1m4Dg
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fI5Djlkl
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] i40e: increase max
 descriptors for XL710
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



On 10/18/2023 2:15 PM, Justin Bronder wrote:
> In Tables 8-12 and 8-22 in the X710/XXV710/XL710 datasheet, the QLEN
> description states that the maximum size of the descriptor queue is 8k
> minus 32, or 8160.
> 
> Signed-off-by: Justin Bronder <jsbronder@cold-front.org>

Seems reasonable to me, this matches the limit for E800 series as well.

Curious if anyone remembers any particular reason this wasn't
implemented before?

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>

Thanks,
Jake

> ---
>  drivers/net/ethernet/intel/i40e/i40e.h        |  1 +
>  .../net/ethernet/intel/i40e/i40e_ethtool.c    | 23 +++++++++++++++----
>  2 files changed, 19 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
> index 6e310a539467..ad261fa00d4c 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e.h
> @@ -50,6 +50,7 @@
>  #define I40E_MAX_VEB			16
>  
>  #define I40E_MAX_NUM_DESCRIPTORS	4096
> +#define I40E_MAX_NUM_DESCRIPTORS_XL710	8160
>  #define I40E_MAX_CSR_SPACE		(4 * 1024 * 1024 - 64 * 1024)
>  #define I40E_DEFAULT_NUM_DESCRIPTORS	512
>  #define I40E_REQ_DESCRIPTOR_MULTIPLE	32
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> index afc4fa8c66af..338c8f1acc1a 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> @@ -2013,6 +2013,18 @@ static void i40e_get_drvinfo(struct net_device *netdev,
>  		drvinfo->n_priv_flags += I40E_GL_PRIV_FLAGS_STR_LEN;
>  }
>  
> +static u32 i40e_get_max_num_descriptors(struct i40e_pf *pf)
> +{
> +	struct i40e_hw *hw = &pf->hw;
> +
> +	switch (hw->mac.type) {
> +	case I40E_MAC_XL710:
> +		return I40E_MAX_NUM_DESCRIPTORS_XL710;
> +	default:
> +		return I40E_MAX_NUM_DESCRIPTORS;
> +	}
> +}
> +
>  static void i40e_get_ringparam(struct net_device *netdev,
>  			       struct ethtool_ringparam *ring,
>  			       struct kernel_ethtool_ringparam *kernel_ring,
> @@ -2022,8 +2034,8 @@ static void i40e_get_ringparam(struct net_device *netdev,
>  	struct i40e_pf *pf = np->vsi->back;
>  	struct i40e_vsi *vsi = pf->vsi[pf->lan_vsi];
>  
> -	ring->rx_max_pending = I40E_MAX_NUM_DESCRIPTORS;
> -	ring->tx_max_pending = I40E_MAX_NUM_DESCRIPTORS;
> +	ring->rx_max_pending = i40e_get_max_num_descriptors(pf);
> +	ring->tx_max_pending = i40e_get_max_num_descriptors(pf);
>  	ring->rx_mini_max_pending = 0;
>  	ring->rx_jumbo_max_pending = 0;
>  	ring->rx_pending = vsi->rx_rings[0]->count;
> @@ -2057,18 +2069,19 @@ static int i40e_set_ringparam(struct net_device *netdev,
>  	u16 tx_alloc_queue_pairs;
>  	int timeout = 50;
>  	int i, err = 0;
> +	u32 max_num_descriptors = i40e_get_max_num_descriptors(pf);
>  
>  	if ((ring->rx_mini_pending) || (ring->rx_jumbo_pending))
>  		return -EINVAL;
>  
> -	if (ring->tx_pending > I40E_MAX_NUM_DESCRIPTORS ||
> +	if (ring->tx_pending > max_num_descriptors ||
>  	    ring->tx_pending < I40E_MIN_NUM_DESCRIPTORS ||
> -	    ring->rx_pending > I40E_MAX_NUM_DESCRIPTORS ||
> +	    ring->rx_pending > max_num_descriptors ||
>  	    ring->rx_pending < I40E_MIN_NUM_DESCRIPTORS) {
>  		netdev_info(netdev,
>  			    "Descriptors requested (Tx: %d / Rx: %d) out of range [%d-%d]\n",
>  			    ring->tx_pending, ring->rx_pending,
> -			    I40E_MIN_NUM_DESCRIPTORS, I40E_MAX_NUM_DESCRIPTORS);
> +			    I40E_MIN_NUM_DESCRIPTORS, max_num_descriptors);
>  		return -EINVAL;
>  	}
>  
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
