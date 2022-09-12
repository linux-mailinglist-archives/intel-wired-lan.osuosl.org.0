Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 61D755B63B4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Sep 2022 00:31:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 222E36066D;
	Mon, 12 Sep 2022 22:31:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 222E36066D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663021881;
	bh=wt1zFkjtAtHJqagHSrgdLM38rmrvRCg9NhBNDV01Ygo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0XXnrW39V9PCRbPt8j7b6HE83Y6sgsTVuUh5FicysAQ6/9zfn9Bz9Wi8mk9Lk22MG
	 jLsX5gVVOFlVZ8xzlu2gzEHgtQtcRgNu9mAs0bZQ1okD/n0q0bsynMiwwjASMPg17W
	 /CeSlA7qB+4oyrwJAzAPzVDeT2fjDiAoRQ6m/hVqj4XSkk2+O8OzHffdKiImaqDgP4
	 EBfDucwuO6u3V8jrQnBwdcvGQ1jkiZQDl5kbB0ddysXkh+Kyh3HZUzDE5qZru12jA5
	 ON/ArNA7TfPfijd0vYSZg0oJwQ6NL0xkRfC1estNTrM1h4M5YIHzaHMjU5OUMvFPtT
	 CBfbtKTzuC49A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tpQ7tCAjd-YT; Mon, 12 Sep 2022 22:31:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A34BA60AE6;
	Mon, 12 Sep 2022 22:31:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A34BA60AE6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 84BC21BF3B5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Sep 2022 22:31:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5E671410DF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Sep 2022 22:31:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5E671410DF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aInYf5eysbm8 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Sep 2022 22:31:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4C4E9410D5
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4C4E9410D5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Sep 2022 22:31:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10468"; a="297987644"
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="297987644"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 15:31:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="593686487"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga006.jf.intel.com with ESMTP; 12 Sep 2022 15:31:08 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 12 Sep 2022 15:31:08 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 12 Sep 2022 15:31:08 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 12 Sep 2022 15:31:08 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.43) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 12 Sep 2022 15:31:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jZ1bEg3j7VWaGnQlOMvSoPRMK5ItgENWu5g3CjMn95AtqvRxodTzQwAs092/apsVvExyujNGHedyqAYayJq7guhBpl1YkLqtTHFvFZmGuKlMv8dfDsA61hVD+5ySJTBDrEZjVEmBo0NJZ702eQMfYCCHsVIXG6V9C1hGuxenLBz/W6MG7TL0Xu8bxjp00qF2tALasi6rKDBwrIjVNdOfq0NQBtKCDl458sbVhBYQwJheieiJkr5D6X5SHSd+OZZ/GQWUoqW+Vp6XiHIiglUYS855vrTGQtHhMsmhCMu0jiH66OdgLUQcRLro4prvca7Mr2EqFjEEEBzRtQe++6+aEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oqOaMGhklshs1BqqSxvf5+2o3iuaJKW74/sJ00tVj6w=;
 b=bKxWz2mYOyKvGgWo7kU8D32xeakd0BE2OPtHlUaSECoZOR1x3t92/tj+XUQUMP5BazrpagvY+H5vv/h++vZVT5OdHZwkPLMj7iXM+XuThnyPtApDwTo67GBwTQZ2+7P5JZNpufk6gQ0p5ahs/rn/F6jXD+C4Lz519orw+titZeBVUTMTR8f6m7Xt+NKIteAjmMMeWs79S1z8u0lKfBPKBw+Nh5kYKEDmmPbnx2Zu42r/JsxHwXl40uuYWwfVPJRg2Sj5SM9GwOYgAUtyqxOBMFoQD/6mPJcZzP4cgvAUjTJSd4KaHNiR5yH3N7k6570/PcVpg7RsHknRtvWQOb+cYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by CO6PR11MB5587.namprd11.prod.outlook.com (2603:10b6:303:139::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.12; Mon, 12 Sep
 2022 22:31:04 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::a422:5962:2b89:d7f5]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::a422:5962:2b89:d7f5%7]) with mapi id 15.20.5612.022; Mon, 12 Sep 2022
 22:31:04 +0000
Message-ID: <277b91cf-ccb1-9945-c5b8-ec3b4e689e7f@intel.com>
Date: Mon, 12 Sep 2022 15:31:02 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Content-Language: en-US
To: Kamil Maziarz <kamil.maziarz@intel.com>, <intel-wired-lan@lists.osuosl.org>
References: <20220909093653.915968-1-kamil.maziarz@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220909093653.915968-1-kamil.maziarz@intel.com>
X-ClientProxiedBy: SJ0PR05CA0047.namprd05.prod.outlook.com
 (2603:10b6:a03:33f::22) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|CO6PR11MB5587:EE_
X-MS-Office365-Filtering-Correlation-Id: 65324f12-3d6c-4627-26ab-08da950e7aa0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: o+Vtc0MEh9wZxJRQSxdeq56MWKzQLDlUPm8o8ozv7hffLliRBIMLlQ1lrnSz5/mZrHpuN8xf0mzm2U4RbQJBEmhQlN8NIYEZB63wUmrfrFLOAteXqonb1YKwO4Fdjl64eFD94oW/5Mg2lTtbVAxUZbsDnRvQ6If3kpSBgGN/MON8Up8lyDTTEqvx7DL+gFAjafhdirLvVyAnVtzCwsOjxe/hAmAW6zAKUK6T966L0nZ11W6ClOYNh5P9qLfTz7k+QWzJXFkhf8zUGGUdFReDj0gCyysiIdgnZiWA4qdyFESMrhqWH38ewKFjLCgaFv2IJPqzs30AHl/d0BQtR/rlVhy2Chi3iUSGkgUQw1OxQbG0hJ96x+ybCMU3somGaNmRALdc6uFo2DLvGMUgUZ27CO7mQ8XF+EBMRHoM6YeBCBpRop5ZMiUJmtpPoJgD1Z+hxB0pVbYLpBpt6WspQwKd6onuvB3F3zyN9KBWH3Sl3E4ptrGJS0vlN86Wa1zzNwy4xRCgW1Q4hL54/uF/xf59xf+j07ZQ7QtbJRdPrcseiqk4CG55REr3qwlSMcCEDdFPt2YOAXXz3jvi2r+TQKv3OhIx3dLlk3XLZu86O0YEHlFcZyHeSlPUjePhO8aUnVMQdjT3J7RQjSlcFov7ks3kXX6NpGge/u5w2Yj9uTFpMjiGDRJXzP8Ei14W7yuenTlwyo0UEKeZ9U0UgD5lTh1KMfyfg5bhtK4Ntb/QE2gGyq53V51OlfVlLSNjc+bn4YV8nahHaZ5+E6LXv+YUrE3dmTHQuhhTNXmRh+M2TFCQxRU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(136003)(39860400002)(376002)(396003)(366004)(451199015)(5660300002)(2906002)(2616005)(53546011)(83380400001)(38100700002)(8676002)(66556008)(66946007)(6486002)(6506007)(82960400001)(86362001)(31686004)(31696002)(36756003)(316002)(4326008)(66476007)(41300700001)(186003)(478600001)(6512007)(8936002)(26005)(107886003)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MW9LZjJGbk5rK3p1YTloMkhwTEpLWDd5ZjhQeFNYclJTdjFHc05kRitWWW5U?=
 =?utf-8?B?RUNPV2tVaVBEajlsdnc5MW4ybWNYT3BBUEwyMjBKM3U1cXlrcm8wSmYxeE45?=
 =?utf-8?B?TGg5YjNtN2tJY2N6L3RJc1MxRHNVS1FxbG9FVy9zZCtLNlhEZ1ZqMTJFYUJi?=
 =?utf-8?B?YWEvRUVWVzUyRWNPVnplemFtcWpXRGJNYTVMSHYwRzdqSTJYYXJTSGFvWWx2?=
 =?utf-8?B?NjEwUW9qTmxaWTE1bTQ3VWZnelYrWm5jNTFRY005K2ZJWmR6OHVRRFJHSlVm?=
 =?utf-8?B?NnFuYjhURFlaVFhJR2grNGdBV0YyYmxTOURTb1VsRVRIOFBRbWRVRGZ4Nzcz?=
 =?utf-8?B?ZEtnNEFzOTlKTmNYQ0h1SGlxOGxWbm13Y2dMdCt1dkVTbHdDakcrUWxJc0xI?=
 =?utf-8?B?bm1xSGxESWlSVURWdytxMXVGdDd5UDBEYUtIdjJVclYwVllFNGkrTUdZQmUy?=
 =?utf-8?B?WjdUQ0x1Q1dwNmtrMG4waWNTNjNVemh0bFVxNzdBTEZaaSsxbXFyRFV2T1d1?=
 =?utf-8?B?bkJrU1dVUnNwN08vRzhCdUlPUmV6VEtYYlFqWFZuSVFzUC9ra0xVQzFkNGNw?=
 =?utf-8?B?bHVlemFlY0o3Mjk1UnFnTHJUTFVVRUxiNlF0VWYyaXNzVlRkaElmem9ndll2?=
 =?utf-8?B?dHhmTFhTVzd0ZW1Xbm1hL0tHRWxHbDNVNDh1U0pjRTR2SzIrM01UNElmK0Mv?=
 =?utf-8?B?Y3BHditIK0NnUzdnVzlvT21McVhFRElIeWRjUFJ5SHhkMTE5WUlIM2dlVGh3?=
 =?utf-8?B?bDQ3dGpQWHprbkZrc1hodjZvYjU0ZG5lN2xoMUxJM2JPTGdDdUJxWThxdkps?=
 =?utf-8?B?RjFjQVdQNkcvdEo3djlJN0E0Z2pha3hSSXNaMWlaVlNIWlI2WFd0VjE5L25l?=
 =?utf-8?B?ejBmL2JUbGtCVFIwcm84dTd0K2lqVXc1TlppL3FqZ2VuQmx0OEJwbEFxeEZi?=
 =?utf-8?B?S2RxaEpRa0wzNlZKekloa204TGNMbWVlNzFYUlFvQ2lwWElRMFYvK2toOHo2?=
 =?utf-8?B?WmFuWE5WNTNRN0IyaFowcHRBQVFldFVCeC9OTXlsWGNuNEdYbkdMN2ZXVk9v?=
 =?utf-8?B?dGVLZzZoN3hleXFzZ0E4VCtiRE9vS2FhdThvc1JCMTVoMDlRMzRZQXZnZUJN?=
 =?utf-8?B?SGJDOStGRW9xTThKU29MRHdpNDJMSzRTSTd2N3pqaVZVendUYUtPOGRCSzI1?=
 =?utf-8?B?OEhPRTlxRTdOdGsyVmhKWDV1ODlrUzk3STNJKzVyZVF4K1EyMHpURGsvSlVJ?=
 =?utf-8?B?TENzdzAzWEJPTXZLcDAxUnJJU3JZam5JRkdrUnBzcldFR3BUTGpKbXFyeXFG?=
 =?utf-8?B?aG03OWhZRzh5UXNMckw1WndMV0JmWVBFcFFNU0M4MDZBNC96dGN2aFNZdGFP?=
 =?utf-8?B?dlJUTUlOM1RQNE5QT21QL1lYMVpmY0N2WWpWTmZmZytuR1FWbHNDUzROcDc4?=
 =?utf-8?B?MW1DVlhDYzRld0xjUUgvRzhTTy83ckk2eXFsY1FVSUhMeURuaGR4Y2tsa3R6?=
 =?utf-8?B?cUtRVmcrc0MzOHY5bXpGY0lwb003SzlyMjZlOUxCOUFHV2JabVY5TmpMQ3ZR?=
 =?utf-8?B?ODB5Zzkwb2NReWZaVW1YSkQ3OGphZnUxTkdwMWp6WHE1ZG96Umw3VVBiOXVw?=
 =?utf-8?B?VVg2T2FWT0tZamdPQzFmUmRqU0VINGZ4MFM4TzhlQTdvMzZKbTJNckZwNEsw?=
 =?utf-8?B?T2JjZjFnMXNIZ1puTWlNdFlJNFIxQVZwdmZkRmhpbFhVdmlmcVF5RFdZMkNp?=
 =?utf-8?B?czBxR2hZbzQvUDdFSzdwbEQvQTdRYjFYbmRjc0hGQmhVTWt3ZlZ6eW42Vk1S?=
 =?utf-8?B?QnpkMkpoZXBDbmpWWmI4M2FQMzV6Y3ZxT2N6UlVWY1U0dDJrWVl4bzR5NmI3?=
 =?utf-8?B?V0x4bjUvdVBSMHpVNXF3cG5ZZWJ1RDZPU3RBUWN6NFNsZ1hyRWVBWUtKU3hX?=
 =?utf-8?B?WTVrR2lzeUl2QUIvZ3ZSRmp2UFVBUVFrN3hQMDFuMUdsR3lncXhUZmREd2xC?=
 =?utf-8?B?RmxnK1U5a1FqLzZadEo2SThScjNtVmhpMkpUbEZOcHFrc3JlR3JuN1ZHQ3NX?=
 =?utf-8?B?U2ZZaG5xU1huWmloQTNWMEh0cEhES3VyaVEvVjhnYkZzK0J1NU53cFFjWHJp?=
 =?utf-8?B?MWk4Y042UHVHZ1V0VDJOSWlVZmtGdHh6RURsZWZQYXhNeUhjZjRQWTY5eDhu?=
 =?utf-8?B?c3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 65324f12-3d6c-4627-26ab-08da950e7aa0
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Sep 2022 22:31:04.7149 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vrZCONHO4lMpms3xv6BKAHeIOGwbHyauRFhwPkfMpIJWUoikR0viRKmUQGCR+ytsABFm4nBwa7xcBsqaL/NBW7mDylqPkEZ+U7sT4UY6iLU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5587
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663021870; x=1694557870;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZRBoQe+H58JuC/09HCtVD9I2zFPdoJQ4SFL8WUn3/uw=;
 b=A2FyvV4JxlUnMdm4yx9G972op4Bpopnbm/2D8A74eSi4N5QNZgnEo58O
 e+e1aOijVPctd86Ni/FviR3opY2WVmbSwCMwUsl5vEEKqc6ENZ2jnn2Af
 7aK4ST4sksDur9WgAGlq1nGnvRThD7qrrFZwrd7u/ZGoSEK8Lz94+rwnZ
 SgYtgur6betq+wnyvasDuY3/hoP+atHNHqE/NHwt3F7DNoOsVCCzSxLPP
 06/vwywZy+NxgJmNwLtBoRn07ZfcxhnMFD7HpXu9lXppzrMPxUMdyWOsa
 rdrSViRTY+Z2JKe2PgSzZfq7jVXbz9aoXq8sRqvudi+YTqBn1zlv4BesE
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=A2FyvV4J
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: Fix not setting xps_cpus
 after reset
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
Cc: Michal Jaron <michalx.jaron@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 9/9/2022 2:36 AM, Kamil Maziarz wrote:
> From: Michal Jaron <michalx.jaron@intel.com>
> 
> During tx rings configuration default xps queue config is set and
> __I40E_TX_XPS_INIT_DONE is locked. Xps cpus maps are cleared in

nit: XPS and CPU are acronyms so their use should be capitalized in the 
commit and comments.

> every reset by netdev_set_num_tc() call regardless it was set by
> user or driver. If reset with reinit occurs __I40E_TX_XPS_INIT_DONE
> flag is removed and xps mapping is set to default again but after
> reset without reinit this flag is still set and xps cpus to queues
> mapping stays cleared.
> 
> Add code to preserve xps_cpus mapping as cpumask for every queue
> and restore those mapping at the end of reset.
> 
> Fixes: 6f853d4f8e93 ("i40e: allow XPS with QoS enabled")
> Signed-off-by: Michal Jaron <michalx.jaron@intel.com>
> Signed-off-by: Kamil Maziarz <kamil.maziarz@intel.com>
> ---
>   drivers/net/ethernet/intel/i40e/i40e.h      |   6 +
>   drivers/net/ethernet/intel/i40e/i40e_main.c | 117 ++++++++++++++++++++
>   2 files changed, 123 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
> index d86b6d349ea9..e01af5943bfe 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e.h
> @@ -1306,4 +1306,10 @@ static inline u32 i40e_is_tc_mqprio_enabled(struct i40e_pf *pf)
>   	return pf->flags & I40E_FLAG_TC_MQPRIO;
>   }
>   
> +/* reverse xps cpus to tx queues map */
> +struct i40e_qmap_rev {
> +	struct cpumask cpus;
> +	int vsi_id;
> +};
> +
>   #endif /* _I40E_H_ */
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index 9f1d5de7bf16..19a1cd0aa4f0 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -10770,6 +10770,89 @@ static int i40e_reset(struct i40e_pf *pf)
>   	return ret;
>   }
>   
> +#ifdef CONFIG_XPS
> +/**
> + * i40e_preserve_xps_settings - preserve xps maps before reset
> + * @vsi: pointer to the targeted VSI
> + * @qr: pointer to the structure with xps mapping
> + *
> + * Read queues mapping from every cpu and save it as a cpu mask for every
> + * queue.
> + **/
> +static void
> +i40e_preserve_xps_settings(struct i40e_vsi *vsi, struct i40e_qmap_rev *qr)
> +{
> +	int cpu, q_idx, cpu_idx, cpus = num_online_cpus();
> +	struct net_device *netdev = vsi->netdev;
> +	struct xps_dev_maps *dev_maps;
> +	struct xps_map *map;
> +	u64 bitmap_arr;
> +
> +	if (!IS_ENABLED(CONFIG_XPS))
> +		return;

This seems unnecessary as the while function is wrapped in ifdef CONFIG_XPS

> +
> +	if (!netdev || vsi->type != I40E_VSI_MAIN)
> +		return;
> +
> +	if (cpus < vsi->num_queue_pairs) {
> +		dev_warn(&vsi->back->pdev->dev,
> +			 "There are more queues than cpus. To set xps maps properly reinitialize queues.\n");
> +		return;
> +	}
> +
> +	rcu_read_lock();
> +
> +	if (!netdev->xps_maps[XPS_CPUS])
> +		goto out;
> +
> +	dev_maps = rcu_dereference(netdev->xps_maps[XPS_CPUS]);
> +
> +	for (cpu = 0; cpu < cpus; cpu++) {
> +		cpu_idx = cpumask_local_spread(cpu, -1);
> +		if (!dev_maps->attr_map[cpu_idx])
> +			continue;
> +
> +		map = rcu_dereference(dev_maps->attr_map[cpu_idx]);
> +		bitmap_arr = cpu_idx;
> +		do_div(bitmap_arr, BITS_PER_LONG);
> +		for (q_idx = 0; q_idx < map->len; q_idx++) {
> +			qr[map->queues[q_idx]].vsi_id = vsi->id;
> +			qr[map->queues[q_idx]].cpus.bits[bitmap_arr] |=
> +				BIT(cpu_idx);
> +		}
> +	}
> +
> +out:
> +	rcu_read_unlock();
> +}
> +
> +/**
> + * i40e_restore_xps_settings - restore xps maps after reset
> + * @vsi: pointer to the targeted VSI
> + * @qr: pointer to the structure with xps mapping
> + *
> + * Set previously preserved xps cpus to queues mapping.
> + **/
> +static void
> +i40e_restore_xps_settings(struct i40e_vsi *vsi, struct i40e_qmap_rev *qr)
> +{
> +	struct net_device *netdev = vsi->netdev;
> +	int q_count, q;
> +
> +	if (!IS_ENABLED(CONFIG_XPS))
> +		return;

This check as well.

> +
> +	q_count = min_t(unsigned int, num_online_cpus(), vsi->num_queue_pairs);
> +
> +	if (!qr || vsi->type != I40E_VSI_MAIN)

qr is already being checked in the caller so no need to check it again here.

> +		return;
> +
> +	for (q = 0; q < q_count; q++)
> +		if (qr[q].vsi_id == vsi->id)
> +			netif_set_xps_queue(netdev, &qr[q].cpus, q);
> +}
> +
> +#endif /* CONFIG_XPS */
>   /**
>    * i40e_rebuild - rebuild using a saved config
>    * @pf: board private structure
> @@ -10781,6 +10864,9 @@ static void i40e_rebuild(struct i40e_pf *pf, bool reinit, bool lock_acquired)
>   {
>   	const bool is_recovery_mode_reported = i40e_check_recovery_mode(pf);
>   	struct i40e_vsi *vsi = pf->vsi[pf->lan_vsi];
> +#ifdef CONFIG_XPS
> +	struct i40e_qmap_rev *qr = NULL;
> +#endif /* CONFIG_XPS */
>   	struct i40e_hw *hw = &pf->hw;
>   	i40e_status ret;
>   	u32 val;
> @@ -10896,6 +10982,23 @@ static void i40e_rebuild(struct i40e_pf *pf, bool reinit, bool lock_acquired)
>   	}
>   
>   #endif /* CONFIG_I40E_DCB */
> +#ifdef CONFIG_XPS
> +	if (!reinit) {
> +		int cpus = num_possible_cpus();
> +
> +		qr = kcalloc(cpus, sizeof(struct i40e_qmap_rev), GFP_KERNEL);
> +
> +		if (!qr) {

No newline between the call and the error check.

> +			ret = -ENOMEM;
> +			goto end_unlock;
> +		}
> +
> +		for (v = 0; v < pf->num_alloc_vsi; v++)
> +			if (pf->vsi[v])
> +				i40e_preserve_xps_settings(pf->vsi[v], qr);
> +	}
> +
> +#endif /* CONFIG_XPS */
>   	if (!lock_acquired)
>   		rtnl_lock();
>   	ret = i40e_setup_pf_switch(pf, reinit, true);
> @@ -11050,6 +11153,16 @@ static void i40e_rebuild(struct i40e_pf *pf, bool reinit, bool lock_acquired)
>   
>   	i40e_reset_all_vfs(pf, true);
>   
> +#ifdef CONFIG_XPS
> +	if (!reinit) {
> +		for (v = 0; v < pf->num_alloc_vsi; v++)
> +			if (pf->vsi[v])
> +				i40e_restore_xps_settings(pf->vsi[v], qr);
> +	} else {
> +		dev_info(&pf->pdev->dev, "XPS maps were reset to default after queue re-initialization");
> +	}
> +
> +#endif /* CONFIG_XPS */
>   	/* tell the firmware that we're starting */
>   	i40e_send_version(pf);
>   
> @@ -11059,6 +11172,10 @@ static void i40e_rebuild(struct i40e_pf *pf, bool reinit, bool lock_acquired)
>   end_unlock:
>   	if (!lock_acquired)
>   		rtnl_unlock();
> +#ifdef CONFIG_XPS
> +	if (!reinit)
> +		kfree(qr)

kfree is null safe so no need for the check.

> +#endif /* CONFIG_XPS */
>   end_core_reset:
>   	clear_bit(__I40E_RESET_FAILED, pf->state);
>   clear_recovery:
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
