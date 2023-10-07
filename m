Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 70F757BC5FB
	for <lists+intel-wired-lan@lfdr.de>; Sat,  7 Oct 2023 10:13:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 086F983C41;
	Sat,  7 Oct 2023 08:13:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 086F983C41
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696666388;
	bh=y2enIT3mZOVy+0c10HfgrTV6wwbkCJ8WSR+894+/6A4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=46xAOE0/IXIRt+xVtyUteah2foDrOh0UYY6lt011g27zoNL7fzeBQFjUGIJVFqAFC
	 9sQsKUunfleU9f9H+eqK+R3wnxjGb6nYC6lLOQcM+GSVlPYjURDBJjna5eqnk1Ru6a
	 o7GHmVP3v2TUx02KBbB6fIfCb8Wd4HMr2VLFj49oICpyPhPlHiTCGwjMilxT+ybwwS
	 txONWtHvUBoFG7JG/C5Z5BDlUik0M45ar02Nnzr6dqeO95oHxZ4o2+Kk2UlmzJ/C/s
	 LGqYYjXYgGVP16opVoZVhH3745fXOKvTVRNJNLV57gqLi49IA+39/VW0xBPnr1gwA3
	 D6UukShXHhxfQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mCZcVN88Vjx1; Sat,  7 Oct 2023 08:13:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CEC0183BB0;
	Sat,  7 Oct 2023 08:13:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CEC0183BB0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 965671BF3F7
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Oct 2023 08:13:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 64BEA41EB7
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Oct 2023 08:13:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 64BEA41EB7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DuujpiQm1iYs for <intel-wired-lan@lists.osuosl.org>;
 Sat,  7 Oct 2023 08:13:00 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C064441EB4
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Oct 2023 08:12:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C064441EB4
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="450402203"
X-IronPort-AV: E=Sophos;i="6.03,205,1694761200"; d="scan'208";a="450402203"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2023 01:12:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="876245875"
X-IronPort-AV: E=Sophos;i="6.03,205,1694761200"; d="scan'208";a="876245875"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Oct 2023 01:12:57 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Sat, 7 Oct 2023 01:12:57 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Sat, 7 Oct 2023 01:12:56 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Sat, 7 Oct 2023 01:12:56 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Sat, 7 Oct 2023 01:12:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VU08KndooQ0ckFaAzRG20IyoToyiEDpCkivENqHzCKj7dilUCz8+UpFGywnfCCyH+4d09I6Ao3LxdNnV+XOX4f5r/vGfDrYlmDuqd+Hw1J+VYG+ClYuScxlRtkVX0eZa1s65TrIXOMsXaISrL3dcfNr7dMxsaMdg0YiZM0dNvXWr60/m9cbrqnQ65Km2QOiwFLOcApArgQVqHkr2/nWl7Pjxy2Yk8bTdTULbUs/bVyYc7W+fmV3wUwRSZQi9ZI5iRLw0zlyw/6Ngg36LcDSq0/K17E/4xTR/ydIkWzG/TpS36rGbjV3EWXVsA7IIDE+yO2BM91wYUY80RMJck6uJaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FSQU55l+a+YR/atoPnrNOGYwdwohcaUSK/1q9+Ska4s=;
 b=F+otzD6qao4qRyYeUAOuqZ6DCCLgMI7DEvt3fKlmSc5Lj00Ehyz+4+jT61ykKNw//04iviPM31vTIkXM0vZ5R3zY1jaG8jn53H6Eg4WuCVZEZoFyFFrAzIWigWxpIvovTXM3nCRumQuFetvtJCA9kuD7lc0d34xh9hrnhd8UEfpXy98+XzH19wVypkxmJsKIxRBLNjOOTnI5HSw5LrKaXA2+aNs3kWizKif5NAsPiMWC2hpto/9zwVG/vNW5GozkJkU9prL9tRu4NzQYTlAQws+qEyC+PFEnEKhcUpsEIRrMdyuIpcBm7JmGQg4gefViPgzEkhbg0OOljB313lZpaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7838.namprd11.prod.outlook.com (2603:10b6:208:402::12)
 by SJ2PR11MB7671.namprd11.prod.outlook.com (2603:10b6:a03:4c3::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.33; Sat, 7 Oct
 2023 08:12:53 +0000
Received: from IA0PR11MB7838.namprd11.prod.outlook.com
 ([fe80::a35e:550e:d46c:c777]) by IA0PR11MB7838.namprd11.prod.outlook.com
 ([fe80::a35e:550e:d46c:c777%7]) with mapi id 15.20.6838.039; Sat, 7 Oct 2023
 08:12:53 +0000
Message-ID: <01745bd7-e711-bb22-403b-b85ab1f538c5@intel.com>
Date: Sat, 7 Oct 2023 16:12:39 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.15.1
Content-Language: en-US
To: Jason Gunthorpe <jgg@nvidia.com>, Alex Williamson
 <alex.williamson@redhat.com>
References: <20230918062546.40419-1-yahui.cao@intel.com>
 <20230918062546.40419-14-yahui.cao@intel.com>
 <20231003160421.54c57ceb.alex.williamson@redhat.com>
 <20231004122523.GG682044@nvidia.com>
From: "Cao, Yahui" <yahui.cao@intel.com>
In-Reply-To: <20231004122523.GG682044@nvidia.com>
X-ClientProxiedBy: SI1PR02CA0013.apcprd02.prod.outlook.com
 (2603:1096:4:1f7::7) To IA0PR11MB7838.namprd11.prod.outlook.com
 (2603:10b6:208:402::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR11MB7838:EE_|SJ2PR11MB7671:EE_
X-MS-Office365-Filtering-Correlation-Id: 4690919b-7560-47c4-9321-08dbc70d3405
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gTW9FK4b0c3f7b4rKWsAWgafY9/wusWILrX3sYV17YO6fbv5cQ+oyJqmq0JU6qQng6n3lp/3LbXIRTxOcToWhxc4jk+ZM/XabEOaDGmnQI/CChSWsmafjFBSnW+q/aAqGflzT4AHQ7WG4lwjgc2PuuLOOEyInBzlmuhcDAY5JBYZkFQ2L+v9om8LeGwj/yciVaTbrlSkKCrn85guqaZw0rIACbr5fqHbTm4W8FCwzCHLSosL0xIAN+PLkZeT+33iCK/flCSzYehjOsWtpQsEHvgqK5iuEuAqXtcf6CL6twd/yofP2lQUJtaydgv9nLmha6pRmlYRUJC7Mk9P3cnfVTVRPcUPSM2IH9NQ3Zni2x+kQuPZVh6H0DM+tS3Lc2Hcb8n2hi3PQd7rwHBFlGbwFzet0uWqEXQxaWNc4pz0Gbv/Z95FcIH9kE320fgC1n3iubjRMDULLCsDMhozio5DrHC2lwUb2wd0TNWmB7fAoYMdW7f5N2vBv/jNrlMCLzG7xA1OihqLUeYqA9SrQRndmKi5bvOxufSi2MT6T6/yKoo6+76ag+KaDiYSC2rWGBQJPiZPuZ/tG1ipn7YOq3pr6V+oqsSoGLdps4m7u3a/pWCCkxrI1EylQooU6PapHhjL4DW4DKbKvplHtOOoFv2ALA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7838.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(346002)(396003)(366004)(376002)(39860400002)(230922051799003)(186009)(1800799009)(451199024)(64100799003)(316002)(31696002)(2906002)(66946007)(66556008)(66476007)(36756003)(86362001)(6666004)(5660300002)(8936002)(41300700001)(4326008)(8676002)(83380400001)(110136005)(31686004)(7416002)(107886003)(6486002)(478600001)(26005)(2616005)(6506007)(6512007)(38100700002)(82960400001)(53546011)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dmhyZWY0Y3NaQTQyMDRrMW1LM2pYNmVrQ1BidVpnMDNqT3NxZjNGN0N5YllG?=
 =?utf-8?B?YnkwYU5LOU1NNFV0Y0hCaVhlM0M3elRoRjRSMGNjeEZDNitHOFZFV1BqbUE4?=
 =?utf-8?B?ejZtZHRuZ29jUHdOTHAzWTJrWDJ1UkFEL3RhcC9DUEVMWWlSM25FeWZYRW1T?=
 =?utf-8?B?TThPRUJZMXZIR1A0RUY3ck9WemxCRWhNb21vUFIrMCtWTmU1YUVtaERhMjQx?=
 =?utf-8?B?SmlLMUpTa09neWRTZWNoYWV5S1RUUjAzdDU2NEhCcGF5TUdJY2wySWl5RDN6?=
 =?utf-8?B?SHdiREYrVEQrNzBMd1d0RzM0Q3hYQXozUW5PRHZqZW1sR21CbVIrS2JtZkxB?=
 =?utf-8?B?RFQ1dzVqVGl4d3JqeUc5eHVtM3pDRUFtZmtlbUN1V0YvaGxjWnVCb2pIZFg4?=
 =?utf-8?B?ZU9LZzlOSVJHdkZjd0RnUHd5Qm5IUU5QOE9FMEJMUkRyY2E3RkFyRnVwRWRn?=
 =?utf-8?B?ejk1azhmU2VJclRQZzhyNUlEYnYzOEwwdFFWWlJBTGNtVllkU0RFazB5ak5O?=
 =?utf-8?B?K244dWswMUJGcXcySzFrcVhsSVpSSVN5UFBZT1QvK0NUSC9uSnZ6T3ZRbktq?=
 =?utf-8?B?VUZIMmV4SjIySFNyNzhwNzU4RFNaNHhaOUNaS0g0TEYyZGQzQ0J6bnliYVU0?=
 =?utf-8?B?clpXMDBFb1NjaG55VzdQYmpYR2JrM0xGS0d0c0J5SS96dmVGdVE0MVE3KzRM?=
 =?utf-8?B?Tkxva0pmV1pEYXZYSjZ5bG5YNzJROFNwYjJndjBkZkZkMlZsbjlsVEMvV3VL?=
 =?utf-8?B?NXQzcjJQOStNaXNhcWxucmxHREJndWRCbkhJVWMwMlBSUnU0d0M3Rkh2NExH?=
 =?utf-8?B?eWxUVGJkN2JrbHNMTEtoOXplU1pEekhMN3FkSE1qN2FwUjVkTzlhaS81R3lT?=
 =?utf-8?B?a0NUU00rOWdIVXFhZVZ2anAxeDNlYnRJZzRPUVdiZ1VCOGpCc3IrQnpOMWZw?=
 =?utf-8?B?RmwzT2haOVYwRHpHUFczVXhyeUtxU3NKRFYzWnUvNUlZYWxsWTkzVUdmN3Va?=
 =?utf-8?B?aURKK2Y5MFVSUFdPSGVBbG5wTzNHTEFPYzdPb0Z5M2lLR3BqVzBRK2t6TkhP?=
 =?utf-8?B?VVBvbThzVlFRQU9vTU1yWkFUZklHSHdKYWpiWXdDaWsxSmJFS2xIRTJQVDJO?=
 =?utf-8?B?YWI1ZlN6ZTZ2ZnRPSklESURJbEtSNDM3MS9SUFFBeVNJaGhBS0xjNlk5c0VH?=
 =?utf-8?B?NEJZY1RDbmJWaTVhVndBeWNCaEo1c3FuQ3gwNW8vUk9TdElVVlJrMC9INnBq?=
 =?utf-8?B?OGtKWGJMYnFCaEpjaURMck40SHB1dUJ0dW1SV1R5SUxNN0JQemUzRVFuVTM3?=
 =?utf-8?B?Wmpoemo0dTM1aXB4T0FnQTdpdHgxT2pGSUZIZ1FWMkExS2p4dG16SldvL0s2?=
 =?utf-8?B?eHpEWkE4NHJhbHF6d3RLVzJ2Zm1DK2loTTE0dnBVcXhmUFJpaTYxei95cCtC?=
 =?utf-8?B?dDMrY29kVkgxRWYxNHRzRStNeWtTeFc0S1U3TFNnbnovcVZvcHdkK2g0Q0Jt?=
 =?utf-8?B?MVZjQkFLaHpucXZTUHpDdnRMZkRUSDczc0ViZ3dkWldRV2ZYY0tOdDh3MUVk?=
 =?utf-8?B?aWxGMVZlVWFZQWJvVnVYMlRKTDhTcnFISDdaV2xxUk96MFV5UzJydjdFb1A2?=
 =?utf-8?B?cTg4VktGdG5vc3pJc2lUL3FsSU44bjVXS1VOQ2JtQ0tsWlFqWDYwR2l1bERD?=
 =?utf-8?B?dmdCaytuMDlsVDlYZDF0bVJjWEowOE9tY1VUVFI3bm04bThYSzJ3cEE1QllP?=
 =?utf-8?B?SlBXa0VwcHhjZU9aZEpJTVpxVDRUTmprSy9LT2QwUkZIbDY0VmpKdHBZM2FH?=
 =?utf-8?B?djc3NExCTWVkZmhINXZ6VkhZQ2JjTEk0cXRTYm9ScnV5c2k4bERwa202aUpF?=
 =?utf-8?B?eFo2NlJCRWtpbGNaUkhNVkswTm91bXV2bm50Sk1YblM1eHdjTjVzZ1orYTJy?=
 =?utf-8?B?MHZyQWJsN0J3ZDByTG9yY1VOTUk4Yjc4QVBZQzA5YnZnV1lRZlZqYXNTT0wv?=
 =?utf-8?B?V0xZSVF4djBqUTAyZGdzcnF2dUEzUkhTVUtvQWY2R0FwYTdwZ0NNYmljK29N?=
 =?utf-8?B?b3k1YjlWN3BGNjdNMzg4ZkxLSlRUZjRwM0lBVWdJcS9tbGVaeW5yUElRT2Nn?=
 =?utf-8?Q?E98yyHHJ1uv1n89blpRlcpcuq?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4690919b-7560-47c4-9321-08dbc70d3405
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7838.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Oct 2023 08:12:52.7810 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8ae+9PXFnLjOmjpzBlfCtuvRkVzgifd4vmpXieVjWj1x3WscHEzZFbr0gBnDqt+RCPZ1u7GWSbTdgDTqbYr+nA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7671
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696666379; x=1728202379;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tDgMZEwVcVBtnbNxqZKtqN3GMBIIQeVbjCbstVHIjSQ=;
 b=EpGzAKy1r3AMtWE0pjoNX4LgvMHNhNwUDUQDlIVysW3vG55lwVBnwCH9
 2MwBCzYRQRJGsuAFOduMvSCNReeb9PByviyswoCiUlP1QNSKVzNXtIToJ
 ZIFF7EKS6ZFOmOR55Ry0OUAJTS8zizg/Rk0J3/LSlcPEZdqd2WyfozaMK
 amEC7OvSKnYfyIABj7IJR8Hdi4MB21ZDHkQjku1HjdTNtQi+3sVzMFdsO
 AFKcvQ0MZ/VBOmDYbr188s8L0iJj3MFeDnUB7DmO4910BDgtyRjcz1Hu1
 GpuOxi/LVEGcgW0JKab/6+HC/bgbGfoo8hUxbnWcaJ8ieLgUW+Sls88od
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EpGzAKy1
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 13/13] vfio/ice: Implement
 vfio_pci driver for E800 devices
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
Cc: kevin.tian@intel.com, yishaih@nvidia.com, brett.creeley@amd.com,
 kvm@vger.kernel.org, anthony.l.nguyen@intel.com, netdev@vger.kernel.org,
 jesse.brandeburg@intel.com, shameerali.kolothum.thodi@huawei.com,
 edumazet@google.com, madhu.chittim@intel.com, intel-wired-lan@lists.osuosl.org,
 sridhar.samudrala@intel.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


On 10/4/2023 8:25 PM, Jason Gunthorpe wrote:
> On Tue, Oct 03, 2023 at 04:04:21PM -0600, Alex Williamson wrote:
>
>>> +/**
>>> + * ice_vfio_pci_load_state - VFIO device state reloading
>>> + * @ice_vdev: pointer to ice vfio pci core device structure
>>> + *
>>> + * Load device state and restore it. This function is called when the VFIO uAPI
>>> + * consumer wants to load the device state info from VFIO migration region and
>>> + * restore them into the device. This function should make sure all the device
>>> + * state info is loaded and restored successfully. As a result, return value is
>>> + * mandatory to be checked.
>>> + *
>>> + * Return 0 for success, negative value for failure.
>>> + */
>> Kudos on the kernel-doc comments throughout, nice!
>>
>> This appears to be a substantial improvement from the comments I see
>> on v2, I'm curious where Kevin and Jason stand on this now.  Thanks,
> It is on my todo list, but I haven't been able to look
>
> Did the fundamental issue with operating the VF from the VFIO driver
> get fully fixed?
>
> Jason


Yes, I think so. In this version, with Kevin's guidance and help, there 
is not DMA read/write guest memory any more. VFIO driver will not 
operate VF and guest memory.

You can refer to Patch10 for more details.

Thanks.
Yahui.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
