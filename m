Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B03027782B8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Aug 2023 23:32:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 179D740B6D;
	Thu, 10 Aug 2023 21:32:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 179D740B6D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691703130;
	bh=nqMDEe/1kxT6Rqjipuy8bAn3td0zMLyIzfgSkbx7xX4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PQApyemCpyQakR78UWQYbbuKetoyN1MAo2NoVWi5SX+DHNxj7szdaNL6ftDaJ6ubj
	 U4/asf049f3P0VYNvK5JJdtRrqVnEQHmnScpuGqfwtk2bX66Gs0SzRkq0r5refoMzM
	 i8CSvchDJ+NRLgrMLg5T3Sx1Z2Z2tIbkeV9GtN6zYzA4eidBpni4WzFDY75Pumsdeq
	 bQ+UnjBdKqdaWl778QvkIW+w1pGAIED/zqMVxmrU97WKyrD9uXis71P1R7REI8kU0V
	 z0K1D9A8qkHYgjg6o1Ko9uOkdO52FD0gHEJXLWFvpOlxeAcUuVbt+/tNl33DzV2qoO
	 Or/4ZfudHMTgg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f82-pRd3WTvd; Thu, 10 Aug 2023 21:32:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id ADBD94061F;
	Thu, 10 Aug 2023 21:32:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ADBD94061F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A0F4F1BF379
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Aug 2023 21:32:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7811783F0D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Aug 2023 21:32:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7811783F0D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eepJyL83VOaL for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Aug 2023 21:31:59 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B074683F00
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Aug 2023 21:31:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B074683F00
X-IronPort-AV: E=McAfee;i="6600,9927,10798"; a="351132880"
X-IronPort-AV: E=Sophos;i="6.01,163,1684825200"; d="scan'208";a="351132880"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2023 14:31:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10798"; a="682264437"
X-IronPort-AV: E=Sophos;i="6.01,163,1684825200"; d="scan'208";a="682264437"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga003.jf.intel.com with ESMTP; 10 Aug 2023 14:31:35 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 10 Aug 2023 14:31:35 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 10 Aug 2023 14:31:35 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 10 Aug 2023 14:31:35 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 10 Aug 2023 14:31:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mAuMIZQuNHSWHfroQ4f6cFVdi/52U0Js749xnGOGzCh2FkYJW1GDT994KCY9yh9qnW3VH8qGhPN9dSYe3sOI92vz9Yb30PKf034o6ZKdb+KtiQ7td6WV/wzHx5RnqaRusvSlIIEhtin30JO6kq1hHJqThlh8UZ0dcLahFTvTYY2oIlxhFsV1+aI7u1biwruDpn4lllaA+OfiiNrb1mO9sSxDx4AlG1EMu/mjFxO1Dhj+yjcSiSTE4IVWozwFPhmSLD/3zLhm68gUIPQlAcBCukfMz1zqRCAhLFI9y9yz4iPGv5s62/fpITNGuUgGogoWLmwdJ2pBTyRfy+3t0V7MkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=H0Xl2xoq4MMEMzlHoJGfyVQkNeVWYvMLeff8fixZWag=;
 b=Lc+ZAugNtBAa4E/FCzdjY5dt1mljZcP+KMChUlDN+C1/YMI8Fv4ExikXXgK+pRIFxpR4G4thU6vTIw3wvGLtD4s7izo2esAx8ifpwn4+J5n7BC2UXdN98tazeuCW1Te7VmyLSOzwMeujaWK7bYH5V4+OMfGHXZupj7bILsf/5L/NVSGXyUj6wsX2kXBHrucelCF7MKuwzItVFKs5pMoM0cYXd5psPrvs5LqPr7MLqYmKRBHSd29gQF27xhQgcnVH+2N6Bm0OXI8IBeYOTTJIJcHPJZ1L0Z4ufsXZXheOCPxmhBZl61mboEm3Hlhn0TE5IPsBXmHFXn3rc8p1HXBglQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by CY8PR11MB6818.namprd11.prod.outlook.com (2603:10b6:930:62::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6652.30; Thu, 10 Aug
 2023 21:31:33 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::5c09:3f09:aae8:6468]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::5c09:3f09:aae8:6468%6]) with mapi id 15.20.6652.029; Thu, 10 Aug 2023
 21:31:33 +0000
Message-ID: <6bb0b4ff-7ab4-a7bf-6a0d-e17d38d673ca@intel.com>
Date: Thu, 10 Aug 2023 14:31:29 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Andrii Staikov <andrii.staikov@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230809115537.1071857-1-andrii.staikov@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230809115537.1071857-1-andrii.staikov@intel.com>
X-ClientProxiedBy: MW2PR2101CA0020.namprd21.prod.outlook.com
 (2603:10b6:302:1::33) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|CY8PR11MB6818:EE_
X-MS-Office365-Filtering-Correlation-Id: 77cfc48d-62dc-44db-8a8e-08db99e92ad5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: pQ+wbJzfOL5fZ0w9LxFjTFzhzT9+KCGpOFuypBJ84tSmG60uDmIdI4SPFILvfwnSOXFma9rj57S4wdTYuYv44PM3nqckdqTBlXQhEB0UGdb0a6qKvTkQewiujqCIBfhVrAZLovuu6/zqYv9c2dZ87RupOTUfUlZAbx/+FPF5Ve2Y0PV3gAmD9xkm72hWXydVHRBPeTd+cAKeSRGbvwB/I6SSdIgOdpLrYgGhUxeIhIXAd8w11qRGWr0zrtOVzN81HgdSrg4NO7wXW5LhHe4OKM7z0Du5bBFm3tyGcP6fYNvBON2cF9m7gnsvmhaZlGo0VoNEAKRaSkWn1tHJ3dD/GRUv6akH9zdPqfKVoBNkwzZ9AmRLty2o/lPPNvSvpzr7QcDJ+V51hvKBKWWGoXKpnkLHzz6ckbgqCxtonduI+cBOoROPXa7RklBpkm0JrA7WjqSQvtKw6tPZ9qcfcAruFfyenZVF/5br+j1QEYIYv+9RVMj+k7NudCW9qEDJedYpicQa0dWb0dQcwRIkwJXkMezCluOMOdVig8/zmfOXDMqlVEZBAR0VzNDnaAaFoQDAHmbCoUedwIw+rEBmB1qtmKHUXAvvYx3CH6JawB7+P/0lfvCfr0nbYl5pJregQ2tMUcJhLGg+KV8CWp5maOBpyA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(376002)(39860400002)(396003)(366004)(346002)(451199021)(186006)(1800799006)(36756003)(6512007)(6666004)(6486002)(107886003)(82960400001)(26005)(478600001)(4326008)(53546011)(6506007)(66476007)(66946007)(38100700002)(66556008)(83380400001)(31686004)(2906002)(86362001)(31696002)(8936002)(8676002)(2616005)(41300700001)(316002)(5660300002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZGNIc3BkNys2OEs2K1oxclU2LzVPV1JaTnM0bDdDRFkwMlZJNWRUa1FiYVk1?=
 =?utf-8?B?Q01wMjc5dVVvb3NMS1B3TVZZRWxnR0JyTVF2NjR3VnUwSno1LzBDbHdXRXg2?=
 =?utf-8?B?eTBUeUYwTWFDaXljVFBvWGRqbmQxUlE2ZmZYQnZsbFQraFRqUnoyRkZEdWk0?=
 =?utf-8?B?NmF6am9qY1R1QTM2aW1adWozelhORkplSThRdWdMOEFKNHIwY0QyR1ROM3hi?=
 =?utf-8?B?VVZBWVVDakVJZzkxNDFaSmw5ZDRJL3p1amdkVlhVVTJyeFFRcVJoSGJwTW1T?=
 =?utf-8?B?MHJPbDR3TnZ5Y2VGTXVZV2h3UmJ5ekNqRldLM0o4WDc4UmlqSkp3U091VFlC?=
 =?utf-8?B?TnZQcG1JZmVlRU5CMis0bmNWZkEwSFMybUxhYTh1aitsMC9xV0RUZVR3ZHFI?=
 =?utf-8?B?S1NXUkgveHpCV0gyRlVENFJCTlpJc1BHVjJKcDFOMGkra09vN1lVTzNkL09P?=
 =?utf-8?B?OEF1VG5FSGYzZkJDSzdFaVJ1c01oMVRLMGNYbGk4R0dHUjNkS0hPOUtZdWZU?=
 =?utf-8?B?cjZyb0RIVFhSeGhOTWIybzRWYXpBd1lmVmdORXl0V2dwV2hwblZsWG9GZFZE?=
 =?utf-8?B?LzlRV0pIdDgwUWFYOCsvS1A5QXRuaDlNTjdrU3FTQUwyK3VacTU1ckxzb1VR?=
 =?utf-8?B?MklENHR5WnV0c2w1QmJpd0hqSXM1OUp3OU56WGh0TVMyNDhRUThTcnI5SHRz?=
 =?utf-8?B?eFFmMWNKckF3ZnBLS0V1dDJVTzF1cnZsamp4Nmg2eGRxWkNGUC85bVFFbjVq?=
 =?utf-8?B?SStyaHl2SEtYQ3dEOEJ4bHJVNmt2OW5EQy8rUHhFcytSeWFyOTJYVFlJekk3?=
 =?utf-8?B?RlhlYk9FM1p0RTZrYnRKdTZVRURYMkV5dFB6c1lyem1lQ1ZWOHduNEFnS09u?=
 =?utf-8?B?d0dpaUM3aEFKMmNuK1ZIVnlERFVlblUwdTdPWE9kSmNSTUk0UDF2M3RLVGdw?=
 =?utf-8?B?eEx6VnVBL3BWK0dHeDJXL3h3emtJOFo2NzNqRGVIZWg5VVhwMGIvSGJwMGoy?=
 =?utf-8?B?Q0FhdFRCTnIxSWtiLzlRcVh5QkNUcDFPRkRHeE40QkFiSHlNaWxNbjVFVzdH?=
 =?utf-8?B?RTZIQnBWR1FNeVVMNUhxdFFiVjIyTkpOWWNGbHJDbEN2T1MwaGI3SndQeTNX?=
 =?utf-8?B?Znl0WnJKSzU2UGlPVW9CMjQ0UnF3dWlrUXNCOTM0RkZ1OWVoZ1hQTE5ES1g4?=
 =?utf-8?B?aGttLzZVMjlrbHIrZVRLVDlWUXVQZDJQLzRvdWNWQXg1SzllQUliMFV0aTFt?=
 =?utf-8?B?aXdrbVI4Y1pDU3BuNW1NeGFoVng0anM0L3RiZnhXUzMwZ3NRRDJSODQ3S2lW?=
 =?utf-8?B?ckp4QTNjK3dxTzlhY1hrTHpaem1TM1k4ZzhOKy9sUlRkSW9TMEFJL3RtWDFx?=
 =?utf-8?B?Q0VZR05CK01NWDcxYnVucExOWVlHMDZ0V0JFakx5Q1BZU255QUhaTGQwWkZy?=
 =?utf-8?B?ZTBpMEd2aDEwTk01Skx5OURtTXhmeDlpdG5raUJsanAyUC90N1FWK1dmWlZi?=
 =?utf-8?B?M2g5SkI5SjNHdW1YWUV4Tisram9vR2tNOEViYk5wck1UemhhRTFyL1dpengz?=
 =?utf-8?B?cFZlYnFZSHZlcW1XbnJyUDdYd1cva3YrUG1McVZLaU9FT096TWpmcFZ1RlZj?=
 =?utf-8?B?LzVkcnNYd0p5TE9TTDYxOFBCNWlSVzB6a0UzUkF3d0tWcGo0NUNEN3hsNmpS?=
 =?utf-8?B?NWc2VVl2YXRXZGdJVDI1MytJZ0lHUVFYSm9nMmtGc2N5TEFCTVAvTUVsSFQr?=
 =?utf-8?B?WFc4aCt2YzVKamhBR3g2TlAvMjRQYkJlVzZJMDVhb1Nxak5PSVVlOUdQbTRo?=
 =?utf-8?B?bzNiVFFWNmZZQnprQyt3M0VXYlpwZktZa21Wam93RGRiVkc3MnlhVFNicS8w?=
 =?utf-8?B?M28ySFd3Q25CSUZIM011R0hjQytoaERHbDJFTjIwRjJGT0tCTnpOS1NINHpM?=
 =?utf-8?B?a0pydG8vR1JBaG02M3Y4clMyT3VKMTFWeFZLYkRRVm1ZRmlRaEN6SnFXSFNI?=
 =?utf-8?B?eGU2VlJSV1RBTVVPY1A0WDVyakUxdEQvd01EQnE2R3hJdUo1eVBhUWwrZVFX?=
 =?utf-8?B?c2lIWmFSYTJ0a1NPOThrempkSXR5cjYrMUJKVTMvRjVsNWw2SnV6bnZwZ2Rq?=
 =?utf-8?B?WGZncXlLR25vUzBPTFFBVmdnWitUQW9qZ1NFaTNCVElCN0dPRWJwZjhnZzU0?=
 =?utf-8?B?dUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 77cfc48d-62dc-44db-8a8e-08db99e92ad5
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Aug 2023 21:31:33.0035 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: s+6oYV0XzQNbfmBBP7+wGGOUPz2DAgjeUYl/lWItjueLDqAEWfAJ3b6sUFia4ZWp3lKrYbB8Z/TsjYi/XKKtexcUvhL5hcKpiU/S0mV9IZs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6818
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691703119; x=1723239119;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PyygZ0KgxeHsPiAriOfwZ2Rx8u9e3SJH8G6ZBLWzj04=;
 b=IDp6p5BSm1o3nYABk1xQiYKoRJ204nFCgpQ4OSG1HFHzvHHEd+enCqAy
 1InmmB2LqTfoUudahOU5avkFo/TyG8SJJGNHfZQ5IAfg9XrG+Fgj1XH1X
 UJFHO0PKazT4IEgFKaNF3uA1oLgRtPvFA2cE7XBqpNkyjYo9DyMFG64IX
 7gyaiTSO6KhHV9EKzNZrInOWkefIZ1TF1KwN1aLM7NPYydgocurXb3AfQ
 bCFSd5Jcleug9PPUyXaVhol00t1sFxIParbhLbSXRoc19HaYcs6ZXtSnv
 hRU90iIur1MhIe6mL38RD8YLXYZBpb2NWkao06Qz7pImc8ugc+ov9NZt4
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IDp6p5BS
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] i40e: fix potential memory
 leaks in i40e_remove()
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 8/9/2023 4:55 AM, Andrii Staikov wrote:
> Instead of freeing memory of a single VSI, make sure
> the memory for all VSIs is cleared before releasing VSIs.
> Add releasing of their resources in a loop with the iteration
> mumber equal to the number of allocated VSIs.

WARNING: 'mumber' may be misspelled - perhaps 'number'?

> 
> Fixes: 41c445ff0f48 ("i40e: main driver core")
> Signed-off-by: Andrii Staikov <andrii.staikov@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> v1 -> v2: Changed commit message.
> ---
>   drivers/net/ethernet/intel/i40e/i40e_main.c | 10 ++++++++--
>   1 file changed, 8 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index 29ad1797adce..1c892b14a337 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -16326,8 +16326,14 @@ static void i40e_remove(struct pci_dev *pdev)
>   	/* Now we can shutdown the PF's VSI, just before we kill
>   	 * adminq and hmc.
>   	 */
> -	if (pf->vsi[pf->lan_vsi])
> -		i40e_vsi_release(pf->vsi[pf->lan_vsi]);
> +	for (i = pf->num_alloc_vsi; i--;)
> +		if (pf->vsi[i]) {
> +			i40e_vsi_close(pf->vsi[i]);
> +			i40e_vsi_free_q_vectors(pf->vsi[i]);
> +			i40e_vsi_release(pf->vsi[i]);
> +			kfree(pf->vsi[i]);
> +			pf->vsi[i] = NULL;
> +		}
>   
>   	i40e_cloud_filter_exit(pf);
>   
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
