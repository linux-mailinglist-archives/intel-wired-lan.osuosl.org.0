Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D84163B436
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Nov 2022 22:29:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C045760B14;
	Mon, 28 Nov 2022 21:29:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C045760B14
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669670943;
	bh=rIW1IYhj+VoRG4piwPMVbZAS0Nyeogp6gAf1pzc3oIE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=AVixxo6jB6VaQlnmqV0Mn2NqwbADlDDFaySP5i7ZHIYzC6zAti7yiUoQZHO+x0IBc
	 Rp+YdN6a30MmRl/XvnoM93g5T+Gi5elU0b3j4neWyf6FlGXyqTsArkZg/5HFW7DAz5
	 9lVHz2L0Es4DwICj7OV55WJK5Hcdl7r9ikzXPP0qOF4kXyY0GelUI2FaWzFJYVqeFw
	 MrQ7z9i/iR88o/TS3e6UMPBLOsTVPFUyeggbUdG7UjhYaQAHMyuL/NEBgZEoA/0G0v
	 fihjRE43qjnNd9KKLpO8BMhSa0GaRhCIcs06EAA8vkRTrjjMKrL0VthOTwQU5DENCD
	 TuhdM+0WNkbyA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J92ac_4UcgZG; Mon, 28 Nov 2022 21:29:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C8B2760B10;
	Mon, 28 Nov 2022 21:29:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C8B2760B10
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 570F11BF2A7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Nov 2022 21:28:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3D9AD40A01
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Nov 2022 21:28:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3D9AD40A01
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Fw5Vx-IvIvRV for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Nov 2022 21:28:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 77CEE4011B
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 77CEE4011B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Nov 2022 21:28:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="312578551"
X-IronPort-AV: E=Sophos;i="5.96,201,1665471600"; d="scan'208";a="312578551"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2022 13:28:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="785791391"
X-IronPort-AV: E=Sophos;i="5.96,201,1665471600"; d="scan'208";a="785791391"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga001.fm.intel.com with ESMTP; 28 Nov 2022 13:28:34 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 28 Nov 2022 13:28:34 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 28 Nov 2022 13:28:33 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 28 Nov 2022 13:28:33 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.49) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 28 Nov 2022 13:28:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CiNm5My6v1IxwYpX0UuwofDAqMLOMFZgi3M8ijH3SE9gdfiuYPu8Kg22MQZTJJGv7ocEzTshLnuv3hxpX3hYkOxKK/0j7QSmkkAIR3L/slsJqjI1ZHj0Q9BZ7uPvFTHAiHggq4MaVMqSsWbd0pNzpSf8ICDatod8KI/knAOHe4WengHf5oDNSPbfn+ItmnQ7mmNwYBIbOGCD3CBbGklDfq4G5CYeKEqG04qhZqA0cBpuN6G4UqQ/KpLua4Ju+iZr9RvqeCexDUU3XGT0sLVJEYbgkLDCcjioM32/9ojsO97A9ql8S8TPZKt5QUb+Y7eBGWCTkbfkbOIxReu4FtYtbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dQA9txgzay3ST3jnt3V+dasrTtgctU+xwYoctINZmPs=;
 b=Ar3OoRPNNrrABc1YEMCXfqIXClm2vBCHbcCEe5M2BQRUm0IvH+8L+EZsM6HweJYLBupcrEQXiMEI5bEt9YcEVGLgpSwsGUCYSBogsQfA/YbdOQ+uVGTHzCF76WiRB5+VyWpVIW/LGh/2XY8DSf9vu4FtviOOpG7T9Le/D1Ql0VaIHKfbr4D9SpsW4kVB36DkAgO1yim43upH8ikAfFeTBMA1e9m1NNPt27eWQY62hJpm8HrpR6gIXGC20OFmxKpblle8gY7OYLq/sTVJD9ude4XBXk+ESGn7I3BAi2SgyubICxR0DrUIjviEwKgS5v9LkTZ82PZaNVSw6QHiYDtwNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by IA1PR11MB7248.namprd11.prod.outlook.com (2603:10b6:208:42c::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.23; Mon, 28 Nov
 2022 21:28:28 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::933:90f8:7128:f1c5]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::933:90f8:7128:f1c5%5]) with mapi id 15.20.5857.023; Mon, 28 Nov 2022
 21:28:28 +0000
Message-ID: <db083841-d71d-4d17-f870-e773c361fee6@intel.com>
Date: Mon, 28 Nov 2022 13:28:25 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
To: Yang Yingliang <yangyingliang@huawei.com>, <netdev@vger.kernel.org>,
 <intel-wired-lan@lists.osuosl.org>
References: <20221122060816.1187260-1-yangyingliang@huawei.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20221122060816.1187260-1-yangyingliang@huawei.com>
X-ClientProxiedBy: BY5PR20CA0032.namprd20.prod.outlook.com
 (2603:10b6:a03:1f4::45) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|IA1PR11MB7248:EE_
X-MS-Office365-Filtering-Correlation-Id: d5774737-33c0-44b8-6632-08dad1877d70
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 6fYKMCqtfPZUVwHq+CoYbj/MxQof8/uGaJIejG8wkr6wILO/uTO0qXnMZiwpRlHhgQT35YHKOu2SMLHDNotonBMnRvnG9H/oBi726xgZ31OhTWixtdvbPnBXGX3ntchT0hiEmfeWVOq8569W+RJXNCwUG7osqyGxr/3ctE6apJftB/AGTrCDleS1rqdVPY+XxsIYZO3YMw0wzm04/KTvsMsktMlvmotnm3e5eprdNTHPyukcJa+hf3tpk7+j7Jd+VsTzmKFR52qv8XUVDhjRnsrTuoDwdCS27miUkQjH6n+nw577y6Z0zyIHvMG0C+WqLNLux/GuH9yXvkij/OXs4TmRWW3YxJAgz1oQUO0029lWlgfLAyChDeKIVR5H/HAc992SM6edfcqL2ZqfyfyLO6piW3EuyuaP5kJFHIgEASbwDqehrLrv692iEpJhZRQMhV94KzU8fuu1laIp9JKaAinXvpTJLguwf0TZxe+UPzO6Tq1PZzaNk7GRk6kAsBhE/hjwHAvnmNAzmPo3a+W/vI21H91nJ43i+vjpCst6zPRJ3nTfzi6KBMimI726IWOuD7KAgW7JRfWqHjCYYb7q6Qm2O/LmfncN3CuZy7sf4QuMjVq7RR2Z4I0yUg+F0cQLKEPdoVOwUkcnuuQWdpjLC8Ufgx1VpmiLAp7/9Tqllm8kuiuB0tEhkAfmiMjvgY72v3WqWvjE+PSIQb+nGk/6BGkLvj6mzbnXrrrMIwC11Ak=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(346002)(366004)(39860400002)(396003)(376002)(451199015)(2906002)(31686004)(4326008)(41300700001)(66476007)(36756003)(66556008)(186003)(66946007)(8676002)(316002)(8936002)(5660300002)(26005)(2616005)(6512007)(86362001)(6486002)(6666004)(7416002)(478600001)(6506007)(53546011)(31696002)(38100700002)(82960400001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SC8xSUZqbDFFcTVUb2ErTUM5Zlc0eTRlVG14RDFTZk1DSWdtYmZ2VmY1N1M4?=
 =?utf-8?B?bnlUcVliYjlteXhvTkIyMXpaOU1lbnFFT21xK0ozQ1ZRejRXelFoYm1Xdm83?=
 =?utf-8?B?anEyN0d5M0tSRWV2dnpCd1hMZC9JdEJ5RFNoT1poUEdvVTJZbWM3MWxhbTJH?=
 =?utf-8?B?N25sTkZGamRyZVc5MHVsT1BNdHJ1aGpLaHlyQm9qYTl6Vk5mZzRZL3VPdXZR?=
 =?utf-8?B?bUdqTnpFQXNSTHVma2xtQnBjOXBMK0dYOU9jY3BvL1hkU2FrRzh4MG4rdzg1?=
 =?utf-8?B?YjR2ak5yNVIweXQxMU1hTU5BZmVML0tUT05QOXdrWExReGRkR2MzZTNJUjlw?=
 =?utf-8?B?R3U4dFZYNnE2SGM4Q3lmV1FodVlPNCtqZXErYzFrREJMWjE0S2xXcHFlMmlD?=
 =?utf-8?B?U0IwUzBoNkdOQklmOVFlYWdnMCtoZHU5WTljOUE3elE5cXZoRmVvY2VuU01T?=
 =?utf-8?B?aUF1K3Z4QzFKaU1ldnozd1RSRHRWTVE4amFnK1JRckI4YzloSWg5dWJaeEI5?=
 =?utf-8?B?ejFMUllXZGZ3Y1ZiSHpPVmZIZDR0NEZTcFRWVzMzdGZodWtYZ01yeE40VUhP?=
 =?utf-8?B?d0dBY0lqLzk3U3MvU3VsY01nVWF5ZG0vdHA2cUpIeGlKdDNDendyYVZGYTdZ?=
 =?utf-8?B?c25tZXdodi8yWmVWTVZtZDYvd0pmU3dCSHl6T2pwUXZEVUNPbUJ3ZGZhbjc5?=
 =?utf-8?B?SUg4T0o2bTdQNmpOWWlXMEExc0pmd2R5cU80VnBoRU5sSlZEQVhaS2k1TTZt?=
 =?utf-8?B?WVVjeXoxYnJUQWRsTEIzdm1uRGptZVprVi9zNE5sU2xwYlk4R25qVXhWd3lz?=
 =?utf-8?B?RWpEclJ3eSs4anY3MDFVYWk1dXBhN3N4bVNrZmlZWFJXekZDa0NhdXNZRHRw?=
 =?utf-8?B?TDNMclFqNTQ4OGdOeUJrSXluMktrWktSNG01TDJCY3hxOHBkSHNkL3luL2F3?=
 =?utf-8?B?NkUrTjJaM3JBaGRKc1dVSHZjZ0JGMmk1WlBWaEYzQWVtY0JuSmVvZ2o0ZklW?=
 =?utf-8?B?b0RoUGMwb3ZBYTNiNVZ2VUxpaFNRclBUSGhzNTQ1cEhPTmFnaXM3Ym03M2Zz?=
 =?utf-8?B?TEM4cElqbElXZWZDYkZvUXFKdmNjOS84ZXFHUkpReGVDY3lEbmNmdFZrcEZr?=
 =?utf-8?B?MlIyMTIyNmg1cGM5b3A2bmpEQ3NadmlCd0gwakRqN2h5eVp0ODFFTVpFVVRs?=
 =?utf-8?B?azlXM0c4cTZDSGlMSWl1bU1DZm1EOHpQVk11K0F6MFhIV1ZaeVk4L1l5eGg1?=
 =?utf-8?B?THVablJSQmxNb3NtQUxYZ2pzOWRHUGRkclRnSmQ2QTlPU1NWdlBNVGViVVBI?=
 =?utf-8?B?T2owZEtRbmpVUUFmcGJINDVtalVHN3V6eVZwRUdqM3JHdDRLaEJOSThFQmRC?=
 =?utf-8?B?TTFYUk9uWHlKN0NSMnR6OE9iUGs1bTJ1cVpucUo1K1JyZTRFZlJFbkpROXhV?=
 =?utf-8?B?aGRsbktuM3dNa1YzNUo4cFcxeEFBU0dPSFdDL3g1SS84Z0xFaSs0U0RESS9X?=
 =?utf-8?B?NHlpakdjUzI0VXdxb2djUHVOdnRkRHArVmtTL0RFT3BXTzNUbnVMMllHU3p2?=
 =?utf-8?B?TkhEWnRuNTJMS25sdWQ1UWdnWkVleHArNmlRUGloZFF1NHlMUkl0VGxNOGJx?=
 =?utf-8?B?WXA0QlFmSGZwM1pVcG51Tk9iL1c2MHVnTzlmWmJPMFV5dFBTQThEWWtIS0sr?=
 =?utf-8?B?WmlaOHVteml0aStlS2tjMks0YTVubEVHSGEzeW1UaXFyWlVXUFpJWEQyTDBQ?=
 =?utf-8?B?NWx4OUwwRXVmZExYdm1kUW1FMmVRcXgybkJaRXFUWEtTSVU3bFc1REZabHh0?=
 =?utf-8?B?OVhrN0ZNRDFGd3N1clh6OCthUWF1azlIOXZONVd6aWVQWXJ3d25rTldJNkFU?=
 =?utf-8?B?MkpkNElJejNxNGF6ZWMyb1RkYTFoUjUyaXo5OTFXMGYyWW9uT2RkUlNCalJU?=
 =?utf-8?B?Smc2aHB3SnV1aEE2K1JvbEVMYjlLV3Zjb2FsL2I1SUhFVnVXVDhzbDVjTVBs?=
 =?utf-8?B?VnNYVHUreEVndDhib1pFQmUxRm9pMDFXaSt4b3JteU5vc0plUk9pSlJpM0hk?=
 =?utf-8?B?ZVhlM3hjQWpIRUZodWtkcVBSTjVCWnI5bXFhR1M1cm1yNGJ1cXNTRVNqci9H?=
 =?utf-8?B?WFJTTU9JSTRHbEtBVklvNVdYNDBzOEFWcWZpbnBXZUtON1F5c3N2MUp3WG1V?=
 =?utf-8?B?OUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d5774737-33c0-44b8-6632-08dad1877d70
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Nov 2022 21:28:28.3529 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: waun3Hi1zKAUvDC11+S6e5IoZezT4eYnV+nk2KLtIybeWh9JiBdfHYUVE+5VIqB2kQAFEMSJbYLGoTZV/N+74WAVyEPi+sJDsb56waVfb+g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7248
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669670936; x=1701206936;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NyxQUbcKv4L8qqG81p1I5ZHPaOaLvsrkkUyGoaobWr0=;
 b=dkDn9s0eULq11/O0ad6HjLFdbPifC//5xiATKXchwkQZKWLT6keOi+On
 mQq0km40LjO9e8WmUZnrHim2bQUifG0fRdQpsMnGfdpwUpu6Eyceioau6
 6rQ05YIgiycgFHI2dQ2+L2VlDqy00YWWfoR6fCAcGvRQRkNfirqvK2MR6
 MJ72bmioWLQPpC1cTIywND5Gpy16ZornLcIAZbm9Tm8X0NKkNSDDc7Esm
 lyuF09YHoozjqPSkTCErfNtJDbHM0mKsHcucfb7tfsvjp1BJUhGVZMRQg
 wLogOZeL7szEl44+0hPCmetI22cLQ+VgDNz0Dtx5ei57wWiRDfMTA+MKr
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dkDn9s0e
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net resend] ixgbe: fix pci device
 refcount leak
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
Cc: andrew@lunn.ch, f.fainelli@gmail.com, stephend@silicom-usa.com,
 edumazet@google.com, jeffrey.t.kirsher@intel.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 11/21/2022 10:08 PM, Yang Yingliang wrote:
> As comment of pci_get_domain_bus_and_slot() says, it returns
> a pci device with refcount increment, when finish using it,
> the caller must decrement the reference count by calling
> pci_dev_put().
> 
> In ixgbe_get_first_secondary_devfn() and ixgbe_x550em_a_has_mii(),
> pci_dev_put() is called to avoid leak.
> 
> Fixes: 8fa10ef01260 ("ixgbe: register a mdiobus")
> Signed-off-by: Yang Yingliang <yangyingliang@huawei.com>
> ---

<snip>

> @@ -882,6 +884,7 @@ static bool ixgbe_x550em_a_has_mii(struct ixgbe_hw *hw)
>   	 * of those two root ports
>   	 */
>   	func0_pdev = ixgbe_get_first_secondary_devfn(PCI_DEVFN(0x16, 0));
> +	pci_dev_put(func0_pdev);
>   	if (func0_pdev) {
>   		if (func0_pdev == pdev)
>   			return true;
> @@ -889,6 +892,7 @@ static bool ixgbe_x550em_a_has_mii(struct ixgbe_hw *hw)
>   			return false;
>   	}
>   	func0_pdev = ixgbe_get_first_secondary_devfn(PCI_DEVFN(0x17, 0));
> +	pci_dev_put(func0_pdev);
>   	if (func0_pdev == pdev)
>   		return true;

It would probably be better to defer these puts until after the checks 
and values are set. I'd think some local vars and gotos may be cleaner 
than placing puts before all the returns.

Thanks,
Tony
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
