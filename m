Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DC7EB4D1F52
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Mar 2022 18:43:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6948B415ED;
	Tue,  8 Mar 2022 17:43:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xe-BxnRInBsx; Tue,  8 Mar 2022 17:43:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5410D415E2;
	Tue,  8 Mar 2022 17:43:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EC5461BF86D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Mar 2022 17:43:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D8BE460E06
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Mar 2022 17:43:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NFVo2P9RlkE2 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Mar 2022 17:43:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8010960B36
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Mar 2022 17:43:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646761428; x=1678297428;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=RJ6GaCqF2Smk7FT4XD5sghkHolAsBfngB+Ssk4GukzI=;
 b=kizRXYy9kQOJAmLfpslnZT7sRatUTR9Va1QOZIbS4JTjOzbdp+IbQOdv
 YrXQk5zEoZM4z4WRXG9CHDSzCU5nJP8WiJD8KM7BMkwxg/qhl2/LwP7wD
 39skzcwGvxECnWxza4fvOcsfa/7uHjWi1I/wzX4CQAKfh3qy722qFgija
 lU1BgENuCkuFUcZLUXeeoiILZP+gAdIzzGDwvoZEf1wOOWRTjze1RYko9
 e7+ol6cl2SgI46dZSzrS9h4N+EYOHmJtq/dDAleouSo0zy3SZ+zwXPxk3
 RdUfgGIutZWNDqXkMbVgDTVyB4WyxUTEooY6R34OW/RSLWqWCntmbN0So g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10280"; a="279479643"
X-IronPort-AV: E=Sophos;i="5.90,165,1643702400"; d="scan'208";a="279479643"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2022 09:34:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,165,1643702400"; d="scan'208";a="553717184"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga008.jf.intel.com with ESMTP; 08 Mar 2022 09:34:58 -0800
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Tue, 8 Mar 2022 09:34:58 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Tue, 8 Mar 2022 09:34:57 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Tue, 8 Mar 2022 09:34:57 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.174)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Tue, 8 Mar 2022 09:34:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Xid6WXD5I3iT6gYxWYblX0UsyQk5c5ZweQdSWsqyTlZ7ah5Lb6M23SToCKZWj4B7oxIzQgIkfD2XPMHLIfEbMR6u08PvDQmfgjHqISOLp+3Y6pxDgr9T2LeHBhAqf/iPl+HRgAvECYK3ohr0MADKe8lQ9IkT1D46IzmBFxWKGlKwjniCxjVoBYD+IMPop/S0ogvxbPYN98tHT4ImgKzX9tOv9NE5M4JBQpdpq5mnmkiPiq06TBmOUK57rqRM7PxZx3iRRSDugZyTetHbQ6kiEj4n8PYf19GY1bNBpdmlk+a80T8ZLAgj/ILzM3JCWfI8sA+HSf4NIKke9fptTKhQJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LpH/9Cox/c8LQyduR1ohMpBqrUuEVnfk8K53gueQ8aE=;
 b=HyYc48lHbNpBSV4lXrN54DdlLjLaQTFXU5VBld8IBLF0rCVdFg3jhWMhEZYgoUJQ3F2cpAb+BA+FcDto9ys6zwMEiMJG2zzx/BnG7V52XEiSbMdmsnhFNcn0Ue6ieM9pp7bMumd63c3ppsQsVGl4HtoeoD7SlsO33Vb/7DV3djR2nz2VGI/sZJj4O8ddUB1BTG8HRJSDj8H76roJS7JmVhU6sa/duww6I3pvXKQlByzyad0ABwPm6haTfh7NtQHr7axscoSQPzmGNi0d1FwT6wiOB9M0ouC69ol6jRBZfiOGWWUJY3iqHJ/BB1Afidw+PLGDys4z2TvzxSzbp7YmsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB4787.namprd11.prod.outlook.com (2603:10b6:303:6e::10)
 by BN6PR11MB1956.namprd11.prod.outlook.com (2603:10b6:404:104::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5038.25; Tue, 8 Mar
 2022 17:34:54 +0000
Received: from CO1PR11MB4787.namprd11.prod.outlook.com
 ([fe80::5833:873f:6beb:d2e8]) by CO1PR11MB4787.namprd11.prod.outlook.com
 ([fe80::5833:873f:6beb:d2e8%5]) with mapi id 15.20.5038.027; Tue, 8 Mar 2022
 17:34:54 +0000
Message-ID: <4485d49c-7051-97d2-d5a7-0729e68ce7a7@intel.com>
Date: Tue, 8 Mar 2022 19:34:48 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.6.1
Content-Language: en-US
To: <intel-wired-lan@lists.osuosl.org>, Dima Ruinskiy <dima.ruinskiy@intel.com>
References: <20220308092422.2971655-1-sasha.neftin@intel.com>
 <Yid7HCwekP1IsMN3@calimero.vinschen.de>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
In-Reply-To: <Yid7HCwekP1IsMN3@calimero.vinschen.de>
X-ClientProxiedBy: AS8PR04CA0129.eurprd04.prod.outlook.com
 (2603:10a6:20b:127::14) To CO1PR11MB4787.namprd11.prod.outlook.com
 (2603:10b6:303:6e::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 89c5097c-e203-4837-5ace-08da0129f530
X-MS-TrafficTypeDiagnostic: BN6PR11MB1956:EE_
X-Microsoft-Antispam-PRVS: <BN6PR11MB19569CF1AC346BF45BBDD27C97099@BN6PR11MB1956.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: LrA/GsBt0bKpDl7it3Xr7aPS17D4FoPjaGZ8HvkeszSag6R0lra1bdifjGLhHZMn6NzHOixBADCm4EU3Dk2F9DeCzU8Re/nCRlxnpCfsIMZEBMjTt9046SWfBdrPxsgrBkrKDnRJHPWMPjVtv7xvbK+zqPt28ep0mBKbHJL9MKj3CxZP5Wpjd+p9znKKZDn1SdLSmpNRXs+ezlKft4cmrxk9ie6/hmQPyNfRQL7l7bxcWPd9vst1ftOU+0kyGTvO5Kb+D28ddt6+3l6HQ/Vh3WeyOT1Qfc+xmO0y6HLSGy4yc1YBf2fehquN1FzejV/voasfgMNdVRxjJBg7sWsN+Zia6+6rgJYR2swhm9qst+iCJVORFV19aYT930F7WauS4Ih9JCaRkik9eVKj2MNN+soDqu80HPpHGhYLN7hMCXvtvv7jZoDcUfQKbzI+ksLNyyFQYsLeXBhFPLMG28kj9qSa2GEGNtrkukDYY/hpFDfDzMJlQw1laROgVl0nuJeM4n4GB9mi0bdHJ4SDLjB56iueFJ6bUZLdfzS/C6h/fWJhojxphLJhGrGmhIb5YaZ46HUgQ4JtqgbNb7XYLFeZ/2w+4rfzTeIleGoWH4+cGfAfcmmMQnx/pJlz77YelKBlQ+EtVp1L77quL637pxl/xXT1aW0TgqjI3LhD4LKCATsB2egSV1GUxQxqubJGMXJpPKDg4XNTbU2N5ojUX8ZA0I26SzkKIvnPHI1nTBMfA5SZFZTNkoIUg84aLGYUh4vu
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4787.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(83380400001)(82960400001)(37006003)(31696002)(316002)(6636002)(86362001)(66946007)(66556008)(66476007)(8676002)(6862004)(5660300002)(38100700002)(36756003)(31686004)(2906002)(8936002)(6506007)(53546011)(6666004)(6512007)(26005)(186003)(508600001)(2616005)(6486002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NWNtcmlWcWxKUWFpVlpzYXRKMWVOSlc0VDFNRjQwSVdma1dlVldBT3FIVmRH?=
 =?utf-8?B?c080ZlVsV3JkaTV3ZklsdnZhdjZJbGNuUXJkKzh6WXRYL0x1eVBFTTJUYjYy?=
 =?utf-8?B?SkNmVDNkaXJGR1BVdE9tZjVwdmtjelZoN3Rvb1RqWndsK1E4WThRajRvWnBN?=
 =?utf-8?B?SG1ZbFJNVUVSanArRUoxcnIwUWUwREpxOWY3VzFNQm50bmphdVhxLzdITWtu?=
 =?utf-8?B?MXMxSkhjcmtEd21VMkIwQlIvUHJqTFVKV1QyNURRbUdlL29tbjErOTBCc3RO?=
 =?utf-8?B?YUZuSVNSUzlwdWEzNW1WYUJWUDNrdTlkVERRbHY5UUpwVEN1emhBWU8vK1c2?=
 =?utf-8?B?aWhod29oNkk2dzFjMlRjU200L2c4SVhrTlo1TW4yVnh3VXk5OU5sdVJBVUd2?=
 =?utf-8?B?bzhqdTFydjMydFRVeThSU2l5a0RPQnhDcFB6enF3eGpKVUI3TFRtQnc2eVdy?=
 =?utf-8?B?TXlOeWNWQkp4Q3RGWWtRVjJwSkY2US9EODdNbkhKTmxMRG1SeEFJdWNyWmcx?=
 =?utf-8?B?eGZlNm5vS1VtOHJVQ0k1N2hCbndDUU9tQVQwNS91RjFMYmZpZ1NicUJBaklq?=
 =?utf-8?B?SHBPM2pZZkxDODBKZURRYnJuSkhIY1ZIVUx6Y0J5dllkQS9RcDhSMTZRREVX?=
 =?utf-8?B?ZHBCUk0wakRVWFI2dXFBZ3BYNFVVSDJpRXNDSW1yYWgyZkN6TWVYV2J1bHVv?=
 =?utf-8?B?QkVVbkEvRUhIVmxhUUUrRWdJSFE4RkR1ckZVWEZvSjdwQ0d2aXFIZWVPaXRp?=
 =?utf-8?B?dlVBY0VsZzVCWnExb2hneDRLd3o3WlRDV0txWFpGZWQ5NFh2ZkxDU3p3S0ky?=
 =?utf-8?B?SjlSY3NaeFNLUVpuQndFN2s2aVlISVByRTh2QzBiSHJpdmI0VisvN3dOZFpt?=
 =?utf-8?B?YmdaUk9UTzJ6eElwZDgxYjl3NzEySmhseVY2djNybFQwaWFHQ2NOVDROZ3Vj?=
 =?utf-8?B?M3pleHlTRUgvUnAzMHJsQ0FqS0g3cUt0SzN3SzB5RXZTUlZRaURBZnRzazND?=
 =?utf-8?B?eDNocTgzdWt0cHp2QkhzZkkrTkFvYmdZRHpXcjJXUkg0QmxDc21YbWl2SEV2?=
 =?utf-8?B?Zm1ZMUEyY1V5azREK0tFZ3F6RTFwUlhtUStFUFE4RTNvUytiUGNMd2ZjTGdU?=
 =?utf-8?B?MHV3cmhPbzFhOTJaSUY1dkZTV1dEQVlqZC9xckF4OTFwS0tuOENlcFR0OG9J?=
 =?utf-8?B?V1JXNnlMUEkxTzRnS2NnR3o0cUpDNEdBcjZlMmxTRnlCVGxJdlJYS1pOTnZW?=
 =?utf-8?B?eEFaOGtkaTIxU0VBYkR0eXBKdmRCSnZ2STY0cU9BREFMeVBZYy83MXQ5NmZn?=
 =?utf-8?B?Uy9CRmNqVnlFMkpxeGRBWGdQNEdEN2RZVG5PeDdhOXNRWkRDRE5HOHU4M0Zn?=
 =?utf-8?B?cHRlc3lwTE9rcnA0bTFYcWhXdWQvMFZHWFk2Sk9qNGQ5b2hydkZMaEFjeU52?=
 =?utf-8?B?cjROOVVteEQ0SEEvNEFHVEFNU2ROR0lDZVp1UDZzVXZpeE1RZEZDUFBnWmk5?=
 =?utf-8?B?eWRvcWFZRFNPRkFkWGlHcXVXSUJyRWpHd0ZjK08yczd4amovQXcrYURlRHJN?=
 =?utf-8?B?UzVjdVFmUldXUkN0MUhhWHNpRkg4QTVxQlUxK3NKWDN0b3lEcWVjY2hSQnhi?=
 =?utf-8?B?eDhEcDJSWVl5aTRxQ2ovaTNpbXBMVExEWkZiUkxDVS9FNlVVUEVaUmJreFhk?=
 =?utf-8?B?cU9yOGloMnlBUWZrM21kdmVWV3lpdWRxTkxsV2lLOTZjSmtCT1kxMGkvbU1V?=
 =?utf-8?B?M1ZwaVVpVDIvejJtY2J4UEtiUVMvSDdhemowLzZEbDRWNzRhSHdKYnlBNDJN?=
 =?utf-8?B?UlNUL2RmMGtHeGh5TVVocllXNDduYUtTcWFIQW9WWktvWGpiRG1mYWtKZUt0?=
 =?utf-8?B?SCtBWXQrQ2xkSGJtVnRidlJxaDdhc2RWbWozbklhRzEwcjNrK3Z5WmU2YkxY?=
 =?utf-8?B?NWNmVjZUQndoaXdWVnY5TDd3dG13aWhHY2Z3RzJ4RFRtTUdQM2V2aHV2M0da?=
 =?utf-8?B?bDVTa24xKzRKVG1laUpvQmdqOTlmWUltZEJhODg0dTh5RGROZllYcXcxZUkv?=
 =?utf-8?B?eUFjdW9MRE5ma2tuZmtpK1RabFU0YWVyVXJYd2dLbm94a09qcjBFMnArdVZD?=
 =?utf-8?B?TGJpaGptYjFKNS9zTGcyaHhmSDhRS1hzS29MZFU4bHdMbE1JbzJQbVlvK2oy?=
 =?utf-8?Q?29rBEiKYDnOMpo0sZLn6JIY=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 89c5097c-e203-4837-5ace-08da0129f530
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4787.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Mar 2022 17:34:54.8500 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1Jw2/Tk8hP6606Od+sAPPZcx3FVbEpP6mRtrS9lrpw8j4AenaWoLuNlirXS2DYUhZ65tYydW8QyxEzOvFanHUQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1956
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] igc: Fix BUG: scheduling while
 atomic: kworker/u64:0/9/0x00000002
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 3/8/2022 17:49, Corinna Vinschen wrote:
> Hi Sasha,
> 
> On Mar  8 11:24, Sasha Neftin wrote:
>> Replace usleep_range() method with udelay() method to allow atomic contects
>> in low-level MDIO access functions.
> 
> The commit message is a bit on the short end.  It should probably quote
> the reproducer from the below Bugzilla, rather than just pointing to the
> Bugzilla, i.e.,
Thanks Corinna and Maciej - I will resend v2.
> 
> $ modprobe -r bonding
> $ modprobe -v bonding max_bonds=1 mode=1 miimon=100 use_carrier=0
> $ ip link set bond0 up
> $ ifenslave bond0 eth0 eth1
> 
> leads to the following [shortened] kernel log:
> 
> [  120.198086] Voluntary context switch within RCU read-side critical section!
> [  120.198093] WARNING: CPU: 3 PID: 10 at kernel/rcu/tree_plugin.h:318 rcu_note_context_switch+0x4ea/0x580
> [  120.207310] bond0: (slave ens5f0): Enslaving as a backup interface with a down link
> [  120.229488] [...]
> [  120.754723] Workqueue: bond0 bond_mii_monitor [bonding]
> [  120.779106] RIP: 0010:rcu_note_context_switch+0x4ea/0x580
> [  120.803880] Code: 08 49 89 8e 40 08 00 00 4d 89 be 48 08 00 00 4d 89 07 e9 98 fe ff ff 48 c7 c7 48 83 94 b6 c6 05 74 3b e1 01 01 e8 35 fd 8a 00 <0f> 0b e9 67 fb ff ff 45 85 f6 0f 84 9e fe ff ff 4c 89 85 a8 00 00
> [  120.890778] RSP: 0018:ffffa2f5c01bbbc8 EFLAGS: 00010082
> [  120.915218] RAX: 0000000000000000 RBX: ffff938d6f8f1740 RCX: 0000000000000027
> [  120.948713] RDX: 0000000000000027 RSI: ffff938d6f8dfcc0 RDI: ffff938d6f8dfcc8
> [  120.982368] RBP: ffffa2f5c01bbc50 R08: 0000000000000000 R09: c0000000ffff7fff
> [  121.016065] R10: 0000000000000001 R11: ffffa2f5c01bb9e0 R12: ffff938a022a9980
> [  121.049504] R13: 0000000000000000 R14: 0000000000000000 R15: 0000000000000001
> [  121.082870] FS:  0000000000000000(0000) GS:ffff938d6f8c0000(0000) knlGS:0000000000000000
> [  121.121993] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [  121.151532] CR2: 0000556901ea4f28 CR3: 0000000482810001 CR4: 00000000001706e0
> [  121.186337] Call Trace:
> [  121.197543]  <TASK>
> [  121.207444]  __schedule+0x9a/0x7b0
> [  121.223316]  ? hrtimer_start_range_ns+0x11d/0x300
> [  121.245293]  schedule+0x41/0xc0
> [  121.259860]  schedule_hrtimeout_range_clock+0x83/0x100
> [  121.283548]  ? hrtimer_init_sleeper+0x80/0x80
> [  121.303830]  usleep_range_state+0x5b/0x80
> [  121.322747]  igc_read_phy_reg_gpy+0x90/0x180 [igc]
> [  121.345249]  igc_phy_has_link+0x7d/0x170 [igc]
> [  121.365980]  igc_check_for_copper_link+0x60/0xd0 [igc]
> [  121.390260]  igc_has_link+0x2a/0x80 [igc]
> [  121.409093]  igc_ethtool_get_link+0x24/0x30 [igc]
> [  121.431248]  bond_check_dev_link.isra.49+0x5a/0x120 [bonding]
> [  121.458271]  ? pick_next_task_fair+0x3e/0x3b0
> [  121.478749]  ? put_prev_entity+0x22/0xe0
> [  121.497154]  ? put_prev_task_fair+0x1b/0x30
> [  121.516903]  bond_mii_monitor+0x107/0x540 [bonding]
> [...]
> 
>> Fixes: 5586838fe9ce ("igc: Add code for PHY support")
>> Reported-by: Corinna Vinschen <vinschen@redhat.com>
>> Suggested-by: Dima Ruinskiy <dima.ruinskiy@intel.com>
>> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
>> ---
>>   drivers/net/ethernet/intel/igc/igc_phy.c | 4 ++--
>>   1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/igc/igc_phy.c b/drivers/net/ethernet/intel/igc/igc_phy.c
>> index 40dbf4b43234..6961f65d36b9 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_phy.c
>> +++ b/drivers/net/ethernet/intel/igc/igc_phy.c
>> @@ -581,7 +581,7 @@ static s32 igc_read_phy_reg_mdic(struct igc_hw *hw, u32 offset, u16 *data)
>>   	 * the lower time out
>>   	 */
>>   	for (i = 0; i < IGC_GEN_POLL_TIMEOUT; i++) {
>> -		usleep_range(500, 1000);
>> +		udelay(50);
>>   		mdic = rd32(IGC_MDIC);
>>   		if (mdic & IGC_MDIC_READY)
>>   			break;
>> @@ -638,7 +638,7 @@ static s32 igc_write_phy_reg_mdic(struct igc_hw *hw, u32 offset, u16 data)
>>   	 * the lower time out
>>   	 */
>>   	for (i = 0; i < IGC_GEN_POLL_TIMEOUT; i++) {
>> -		usleep_range(500, 1000);
>> +		udelay(50);
>>   		mdic = rd32(IGC_MDIC);
>>   		if (mdic & IGC_MDIC_READY)
>>   			break;
>> -- 
>> 2.30.2
> 
> Tested-by: Corinna Vinschen <vinschen@redhat.com>
> 
> 
> Thanks,
> Corinna
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
