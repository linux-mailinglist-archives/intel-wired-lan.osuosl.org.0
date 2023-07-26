Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FE8576348F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Jul 2023 13:11:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 98CB1405CD;
	Wed, 26 Jul 2023 11:11:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 98CB1405CD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690369865;
	bh=0KVQKC9FhD/tisXqUZkn1CaF52DC/5lEmWxO4/Ne97c=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=uWd7SUM8+tGBBleAggBUne9kswHuNMbj9kbE3529+u6Hn1ed2vOmMBX5u1OLqsDWx
	 WoGlXyCLK2CwtyO4K9MYTbpXCac0NAcH8L3plUzfgXZNMTacfv8LALgLp5ktZ+rTx1
	 TgBFHv8Fd7BoGQ+8G76ra9sT1ZbdsRyinWIzkLrUdxHQPs3902O5t+6CvSLMnRx+Jp
	 tVOxrBJoDl15oCTx07t7Ad++ZNx2cDv0cFP9YZbkUOs+6PEyPZDSxeOHpaQtLwpWRQ
	 Rc704PVKjTKOTktuBAW2VXgQC9HvQxlm4wWLGCGxvMR/dbu6NGc39SnoAbkp5b55kx
	 u3spk/90QFqnA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2iq0OWxwC_uP; Wed, 26 Jul 2023 11:11:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 14F9D405AC;
	Wed, 26 Jul 2023 11:11:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 14F9D405AC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0F2291BF57F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jul 2023 11:10:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D8F84405C5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jul 2023 11:10:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D8F84405C5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QNhsH-vLhbqi for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Jul 2023 11:10:57 +0000 (UTC)
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7F09D40332
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jul 2023 11:10:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7F09D40332
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="365439232"
X-IronPort-AV: E=Sophos;i="6.01,231,1684825200"; d="scan'208";a="365439232"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2023 04:10:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="726499354"
X-IronPort-AV: E=Sophos;i="6.01,231,1684825200"; d="scan'208";a="726499354"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga002.jf.intel.com with ESMTP; 26 Jul 2023 04:10:55 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 26 Jul 2023 04:10:55 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 26 Jul 2023 04:10:55 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 26 Jul 2023 04:10:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=i7IK+LBdtQBOU07G0r5XD4zchmQ9BxTB8BHXiseFfR5Q0yw4YYvososEsTdjU7KpPXQFJpHUg7wWHFOL1aVZSfJ/AZJJZF78fTUP8mrEM+wbklHSRW/Rpn12EUMuluW9Sk3eJK8Vab83+vwaIDN94gPiGGrAE4PiqvW0M9asQW/4LJcYbgIninp6GUvgJcIfcB822BtsYuJ0XXkZnQGCh1CSLDOkAlLH/oHiD8zSLI0B9DaglYnsY1Im0y5dWUpYZ07AubpdTXnzb8s7aQJuECykmIdy9KtU1nQgKU1pWmRfz3yhZfZo+IlzcFxYpTwl4/V+8PZXixgXiRt7q4p6Ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DXwcmgpOPIyoGt+zjkoeATE/BHJe6ExLPUrMaOzQb7k=;
 b=aWHvtX3I4+xK4+jXWWLAA7FSxd3qdglPqLkbHDfC91oiRFUrsekwzlGU33RPpGddus+GYZfYvTOEg0LmjOH+JSjxSXVf9QZvNZzCWGBlbfkkPGTrHrZAfh0O2KCPEn76LXdfmkZn6lZDRTZETECY74+CNRKy2ufnxwIIFNQxwSSodNLd4uw0eBQE+UjxpT5yGJ6UA6PYfK7kF2zRlGKSnK1cpz3rSVOZ9UyCcKuMCYqcl7Hbs0X6D960sp+eR/J322jHupaoad1MXcpFADX928gIK/QJtgTb2Zh6+4KeWwDOuF2BagmYX6R6sSh2GHpiU5jz6z4W9VMq/w2x2HWpkg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by IA1PR11MB6098.namprd11.prod.outlook.com (2603:10b6:208:3d6::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6609.33; Wed, 26 Jul
 2023 11:10:47 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::44ff:6a5:9aa4:124a]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::44ff:6a5:9aa4:124a%7]) with mapi id 15.20.6631.026; Wed, 26 Jul 2023
 11:10:47 +0000
Message-ID: <5775952b-943a-f8ad-55a1-c4d0fd08475f@intel.com>
Date: Wed, 26 Jul 2023 13:09:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Content-Language: en-US
To: Andy Shevchenko <andy@kernel.org>, Yury Norov <yury.norov@gmail.com>,
 Marcin Szycik <marcin.szycik@linux.intel.com>
References: <20230721071532.613888-1-marcin.szycik@linux.intel.com>
 <20230721071532.613888-3-marcin.szycik@linux.intel.com>
 <ZLqZRFa1VOHHWCqX@smile.fi.intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <ZLqZRFa1VOHHWCqX@smile.fi.intel.com>
X-ClientProxiedBy: BE1P281CA0472.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:7f::25) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|IA1PR11MB6098:EE_
X-MS-Office365-Filtering-Correlation-Id: ddcfe142-1961-472d-e68d-08db8dc8f5d4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1UGqhhKFoHUWi7J3f3R8+nMA6bgh6izhQCCSFFXVT5FvRFyabkxcVDVl/IXpIoIE5VRTLj8qWQR7ZYpve7lQnwfzXcg2vyONHwcc13X/wz4ux8EzY43vc8Bf/cVl682PWWbCMNu1ujE+Qr52eo+rX7U7Ak55mmsXLpN1pqJP7jza4T7GlLEzJoQVc7gOvJy+4a7s4ZaRveurcVhbtmQhzPEgzXMyVSJB9Z5z5i68srtVwXu2hR3/cpQMxgt0JMR95gMUVQrqvsZt5N4UKry3dpqZZutwkyK5P48InnfuaSzmmVApgM1BB2qQM5J9yZ3ys5sU5w8YWVZ6g7QtmRDqSpd371Jj6oRU1Q8XikeClrKfb4KbW/3v2gqwwBwm5z9dr88P4oDrbimoCGC7j3Mp6wls3p8+VHNg+C2JYmwqW66G59/9lbelqzMEQrKReZSPcX6FH1RxXOobT+sXQmc7npeucv3qaYHwxrOaUhH56Yh93wkLz3ZGFbouIGBNIYkWn81584J5gQPvVHXxYAFjlWMsL3CqQ+hfloe76N98ecHspnbczAsY4kJQO5AfFIB2rHAe7vEuRCToTqoH78umIM5arNkZr7gs1cz73o5WWGnWPWBb3dsWShMzzZnjHeO39Z/tjEuV5YUmCXzEBs0t4Q==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(136003)(396003)(366004)(346002)(39860400002)(451199021)(86362001)(36756003)(31696002)(31686004)(2906002)(110136005)(478600001)(82960400001)(38100700002)(83380400001)(26005)(186003)(6506007)(2616005)(5660300002)(41300700001)(6666004)(6512007)(6486002)(7416002)(66556008)(66946007)(4326008)(8676002)(316002)(8936002)(66476007)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MUY2RXRLNEpxQVE4QTkyMUsxWXNkRHhOMmNiaVZ4NWU0bUt0M0VJYjZhbEdN?=
 =?utf-8?B?bTY1QTNPcUhaajJSdVpPTVZxS0RhUU92VHphbWZub3VrUDZiQTg1QmkzMXNs?=
 =?utf-8?B?Zm1sYzdMTTJmMFVrUGM2QXh0S1FHYzB3dWcyWitMT2x6d3p2QU9jaWllNkpv?=
 =?utf-8?B?dTV3ODhLL1dvVVRHNjc1M2I2ZnliNmdCYllvNVFrUUNxcCtiVkpRNFdJSFBw?=
 =?utf-8?B?LzVSOHdJU0Z6eldhbTE1SXd2clhrRW9BWFpDSVh3Vk5EdTQycHkvOU83QTZE?=
 =?utf-8?B?VTRad2RFYk1HSDRsSUVRb2ZFSnZIQU01VHFEWU91SzJmMk1xaTV1bXEyZTk0?=
 =?utf-8?B?Rnl5ZUVhbXorMkhIT2tiWGpxQUQ5U3NiWm9Wa3lGcjduTW40WVgrMFpQaWYy?=
 =?utf-8?B?VlBkeEYzeStWRFlNTTNSK2grcG5JQTBWajgwamRpcnN3WG5Ld0hma0wzNnFV?=
 =?utf-8?B?ai9MdkN3amM1ZmY3UlhSYmZNQWpXRlUvRjExNjhFZFNGN1JYazFOaFlYMDFP?=
 =?utf-8?B?cjcvZlk3dURwaFJrSXdkVE5mRWhuUFJhTGJINkdWZXhXZEhOWXQ3OXBjd3Zq?=
 =?utf-8?B?Z2Joa1FLbFZKQVQ5bHRXVVRMRlpKZk9nWnRQVFVGRzlVTUtXY2JxeHV1T0Rx?=
 =?utf-8?B?R3F6ZnJPZTI0eVp5MWxZaHFoL3ZWOHZmbTU4M3ZLT2lmaWhCbk5QdHFvOGRH?=
 =?utf-8?B?NWNuSHBsZmkxV1lyeStIRlgwVHd3MFlJVTVRV0o4blN2TlBSZk9FRy9NcTNG?=
 =?utf-8?B?R3N5OFdKcVFEbEt1UHZHaEtsUTFyRmk1ajlubnM4UkxZWkkxWGVZdE9mb3Q2?=
 =?utf-8?B?L3grM1BIa083eFVnbVN5dEgxQWFKdUp4ZmluenFpQVQwV0JXMWhmQTVpN05E?=
 =?utf-8?B?UEhqSlpFTi95Y3U1S3VzVHB0ZFU4d0pUUzBmRzVlS01ZMVlEMzJwTnJLaE5T?=
 =?utf-8?B?LzI3MDBzT0VDb2NqTVB6dWhacUpCenpYU2dqREtmODE1NGRSQUJJZXpyYTBn?=
 =?utf-8?B?ZlU1dGl1eWQzcXFLNmJqQWYyTmlJZmQvUmZPMzBaWFpYZ2p0cFpJVXVnM0dm?=
 =?utf-8?B?bE04MUY2NnFkSFVRaU9HOUV1RGtrZDJ3VjBsUkdMd2tNd0Qva0I2ZFJkRVQy?=
 =?utf-8?B?OTQzZjA3RngrZE1KVkNDV3BCOXpkMGVxUWFxUlIxUEtyNDFqcVNJK253MDhB?=
 =?utf-8?B?empxaTJlQ2gvRnNQZ3EvQWgvaEMzR1YxYTlEZFNnTWlkTExNZWtwSm5xQnpw?=
 =?utf-8?B?L096d29PemIvVys0ZWJRK05pN2hkL0pndEREZFFtRUdVdm5OQ2NWRUhBZ1Aw?=
 =?utf-8?B?OStJdjVqOVBsSlF5MXlTMTNqY3cxcmNVL0xvblZCMllrTGlsbEpJeUtTQ28r?=
 =?utf-8?B?Rk1jRWREZ3gvaVVrTC90N1F5bEhtNnFsMW9mdHlPbDZyTG5NS0hlMGoyb05x?=
 =?utf-8?B?S0lSdG5rVlFWR0NRc1FMaEY5NG52b2ZPNHRjMi9nVWdrelNoNkFnaE9mRUdZ?=
 =?utf-8?B?ME1ENERPYXBYNmlwTFdzS3NnMjl3b0ZOcG1hSDdtWDJQWVRBVXZ3aDFjdVdy?=
 =?utf-8?B?elFuY3J3Y3kvaWhCTzB4clQrK2RtRDJVaU5oMXlESnR1a1pSblZtN2RFTitL?=
 =?utf-8?B?cHZnZWk0OEdVamNFU0QxdC85M0s1d2pjWUNHODRiY1JPK1N3RHhBNUpuOENJ?=
 =?utf-8?B?Yk9ONzd1TGh2dWlIem1XSXFjZXZMcEhBRERNRTR1M3hKMGlLeXNVSUNmVHF4?=
 =?utf-8?B?L2E3anNVQmkwVWNNcWtZRVlrdkFhTnZ6eFlyQkZVYUVEbkFCZW91WTh4T1hV?=
 =?utf-8?B?MUZ6TnkxTDcxK1FtNFdmNWMySVM1QU9EMHNXVEV1QmZHNS8weFNpVjRzYkVa?=
 =?utf-8?B?NVVPUDU2NFlUWUxEWHl5Zk45UHRuTDk2RXJ4cThpQ3NuYitNajRqdldOQkw4?=
 =?utf-8?B?ZWRLek9ZbTRlWE1jbzZlY2ZVeDlYT2pKUlZGRlZkOVh0a1RSNklhS2RiaEpV?=
 =?utf-8?B?ekdESm9Yb1RNc2FIQ1V2U0g2a0hURkF3Q1htMUgxajhGdEJWTVhSelhjRXdP?=
 =?utf-8?B?ZHZRTGVrQ1hXa1ZUQWNEM3BxamQ3MElhYVhUSFBrM1hFQXhHdzNQTlNkRTlW?=
 =?utf-8?B?RXFTaStjZEh6YWF3S2NIeXp5bVRRTjUvU2hQRTNCd3NBc2t0YzIxcjdINnBw?=
 =?utf-8?B?MUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ddcfe142-1961-472d-e68d-08db8dc8f5d4
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jul 2023 11:10:46.3436 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UWvV+ISGeh13MFZ4Fx4ra0Ecp7KZMKy7oICL9/15F1BwC3STpvKsvjnLzVVfcD1BrO289WdHUvrTtd/vFY4m0KPt65Q9aFZToeno4/9/yfs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6098
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690369857; x=1721905857;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=e4v7LoMD/ZbdaEupWGHUY9/QT3844giKgwBDwCyPC/s=;
 b=ZLzDEqYbfx36rT9v2MFFo37Wh8O9wlBMyR3gysFizbxkRoCdlKQOiDfT
 a43ZVFggeBno/55sRIPUiZdWQ/DnEGy+KTq4toxDVmyrn1JYWMfxyIR/6
 spOrU8Fv/Gebl+s6Vv1elhXSyp+KwIpnNmeV71hMsfOd87yKyUQ0LEmhP
 eXswm8tyia24+lE3/zQGzqpZSz0PTyKQBDaMgcv2DQVzt7fjc6yphSJtX
 cdq/LHLlJWP8KYRPpR/tSDnWGLs4Y+zDmz85q5kKq6R9jlyR7xqQE2XP4
 oPvobba3ZfV80RNiHUFPTBjf6xrC97tizC+/dDKjM0urxSpTvyEb1UpTG
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZLzDEqYb
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 2/6] ip_tunnel: convert
 __be16 tunnel flags to bitmaps
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
Cc: jiri@resnulli.us, netdev@vger.kernel.org, idosch@nvidia.com,
 jesse.brandeburg@intel.com, intel-wired-lan@lists.osuosl.org,
 simon.horman@corigine.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Andy Shevchenko <andy@kernel.org>, Yury Norov <yury.norov@gmail.com>
Date: Fri, 21 Jul 2023 17:42:12 +0300

> +Cc: Yury on bitmap assignments.

I told Marcin to add you to Cc when sending, but forgot Yury, my
apologies =\

> 
> (Yury, JFYI,
>  if you need the whole series, take message ID as $MSG_ID of this email
>  and execute
> 
>    `b4 mbox $MSG_ID`
> 
>  to retrieve it)
> 
> On Fri, Jul 21, 2023 at 09:15:28AM +0200, Marcin Szycik wrote:
>> From: Alexander Lobakin <aleksander.lobakin@intel.com>
>>
>> Historically, tunnel flags like TUNNEL_CSUM or TUNNEL_ERSPAN_OPT
>> have been defined as __be16. Now all of those 16 bits are occupied
>> and there's no more free space for new flags.
>> It can't be simply switched to a bigger container with no
>> adjustments to the values, since it's an explicit Endian storage,
>> and on LE systems (__be16)0x0001 equals to
>> (__be64)0x0001000000000000.
>> We could probably define new 64-bit flags depending on the
>> Endianness, i.e. (__be64)0x0001 on BE and (__be64)0x00010000... on
>> LE, but that would introduce an Endianness dependency and spawn a
>> ton of Sparse warnings. To mitigate them, all of those places which
>> were adjusted with this change would be touched anyway, so why not
>> define stuff properly if there's no choice.
>>
>> Define IP_TUNNEL_*_BIT counterparts as a bit number instead of the
>> value already coded and a fistful of <16 <-> bitmap> converters and
>> helpers. The two flags which have a different bit position are
>> SIT_ISATAP_64 and VTI_ISVTI_64, as they were defined not as
>> __cpu_to_be16(), but as (__force __be16), i.e. had different
>> positions on LE and BE. Now they have a strongly defined place.
>> Change all __be16 fields which were used to store those flags, to
>> IP_TUNNEL_DECLARE_FLAGS() -> DECLARE_BITMAP(__IP_TUNNEL_FLAG_NUM) ->
>> unsigned long[1] for now, and replace all TUNNEL_* occurencies to
>> their 64-bit bitmap counterparts. Use the converters in the places
>> which talk to the userspace, hardware (NFP) or other hosts (GRE
>> header). The rest must explicitly use the new flags only. This must
>> be done at once, otherwise there will be too much conversions
>> throughout the code in the intermediate commits.
>> Finally, disable the old __be16 flags for use in the kernel code
>> (except for the two 'irregular' flags mentioned above), to prevent
>> any accidental (mis)use of them. For the userspace, nothing is
>> changed, only additions were made.
> 
> Any bloat-o-meter statistics, just in case?

Sure, will add. IIRC that was something like +150-200 bytes to vmlinux.

> 
> ...
> 
>> +static inline void ip_tunnel_flags_from_be16(unsigned long *dst, __be16 flags)
>> +{
>> +	bitmap_zero(dst, __IP_TUNNEL_FLAG_NUM);
> 
>> +	*dst = be16_to_cpu(flags);
> 
> Oh, This is not good. What you need is something like bitmap_set_value16() in
> analogue with bitmap_set_value8().

But I don't need `start`, those flag will always be in the first word
and I don't need to replace only some range, but to clear everything and
then set only the flags which are set in that __be16.
Why shouldn't this work?

> 
>> +	if (flags & VTI_ISVTI)
>> +		__set_bit(IP_TUNNEL_VTI_BIT, dst);
>> +}
>> +
>> +static inline __be16 ip_tunnel_flags_to_be16(const unsigned long *flags)
>> +{
>> +	__be16 ret;
> 
>> +	ret = cpu_to_be16(*flags & U16_MAX);
> 
> Same as above.
> 
> ' & U16_MAX' is redundant.

Ah, right ._.

> 
>> +	if (test_bit(IP_TUNNEL_VTI_BIT, flags))
>> +		ret |= VTI_ISVTI;
>> +
>> +	return ret;
>> +}
> 
> Side note: Make sure you know the difference between
> bitmap_zero(bitmap, nbits) and bitmap_clear(bitmap, 0, nbits).
> Similar for fill and set.

zero() and fill() rewrite the whole longs, I know :D I use them
deliberately here.

> 
> ...
> 
>> +	__set_bit(IP_TUNNEL_KEY_BIT, info->key.tun_flags);
>> +	__set_bit(IP_TUNNEL_CSUM_BIT, info->key.tun_flags);
>> +	__set_bit(IP_TUNNEL_NOCACHE_BIT, info->key.tun_flags);
>>  	if (flags & BPF_F_DONT_FRAGMENT)
>> -		info->key.tun_flags |= TUNNEL_DONT_FRAGMENT;
>> +		__set_bit(IP_TUNNEL_DONT_FRAGMENT_BIT, info->key.tun_flags);
>>  	if (flags & BPF_F_ZERO_CSUM_TX)
>> -		info->key.tun_flags &= ~TUNNEL_CSUM;
>> +		__clear_bit(IP_TUNNEL_CSUM_BIT, info->key.tun_flags);
> 
> Instead of set/clear, use assign, i.e. __asign_bit().

Just to make it clear, you mean

	__assign_bit(IP_TUNNEL_CSUM_BIT, info->key.tun_flags,
		     flags & BPF_F_ZERO_CSUM_TX);

right?

> 
>>  	if (flags & BPF_F_SEQ_NUMBER)
>> -		info->key.tun_flags |= TUNNEL_SEQ;
>> +		__set_bit(IP_TUNNEL_SEQ_BIT, info->key.tun_flags);
>>  	if (flags & BPF_F_NO_TUNNEL_KEY)
>> -		info->key.tun_flags &= ~TUNNEL_KEY;
>> +		__clear_bit(IP_TUNNEL_KEY_BIT, info->key.tun_flags);
> 
> Ditto.
> 
> Check the rest of your code for the similar.

+

> 
> ...
> 
>> +	if (test_bit(IP_TUNNEL_KEY_BIT, p->i_flags)) {
>> +		if (test_bit(IP_TUNNEL_KEY_BIT, flags))
>>  			return key == p->i_key;
> 
>>  		else
> 
> Redundant.
> 
>>  			/* key expected, none present */
>>  			return false;
> 
>> +	} else {
> 
> Ditto.

Seems like it was here before me, but I'm fine to fix it while at it,
why not.

> 
>> +		return !test_bit(IP_TUNNEL_KEY_BIT, flags);
>> +	}
> 

Thanks!
Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
