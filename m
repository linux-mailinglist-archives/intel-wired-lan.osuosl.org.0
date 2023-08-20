Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 36589781F71
	for <lists+intel-wired-lan@lfdr.de>; Sun, 20 Aug 2023 21:20:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E5B9160741;
	Sun, 20 Aug 2023 19:20:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E5B9160741
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692559256;
	bh=FyYMCuVdCNrDKPkonRZgjnvL7G7jPF+GtG83NpVmfg0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=R2Tf4HeIml4FTZzpgDSE/zIN/PpdcfF8Ax/+eAJsYb44DU97uxXF5SBLAJNLFeeWy
	 nEETps6ZR02FbqZUHeBogQhxJ+M7lgwppnDEgoT7SeL/A0ZTnQYz2ZLMJ4vZ5FZrly
	 czM14vmBglFJTzYDEEoriIYIq3H7o5aHxLZcMO0HJ4at83xYGCv3Xz98GdLX/5MJUd
	 KmZA4Q3xyH/a6IhFEh40vX/cv/9hstDjHds21EB/FqdaE9zu9AWE4Xl2kiXlfDw5SM
	 GxVKZ+h+lsPbKlxgJ9LviGkvaJPQPgRAOPEz2Vnq21spjk+RoB2ZTrn1qdjrNxJfO8
	 IXvJn1DQgM0gA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IUELULjcgJN3; Sun, 20 Aug 2023 19:20:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BCC7F6073F;
	Sun, 20 Aug 2023 19:20:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BCC7F6073F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2E3091BF403
 for <intel-wired-lan@lists.osuosl.org>; Sun, 20 Aug 2023 19:20:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 02EC541606
 for <intel-wired-lan@lists.osuosl.org>; Sun, 20 Aug 2023 19:20:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 02EC541606
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aB8Lgol_Irud for <intel-wired-lan@lists.osuosl.org>;
 Sun, 20 Aug 2023 19:20:49 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 99A4841601
 for <intel-wired-lan@lists.osuosl.org>; Sun, 20 Aug 2023 19:20:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 99A4841601
X-IronPort-AV: E=McAfee;i="6600,9927,10808"; a="363597141"
X-IronPort-AV: E=Sophos;i="6.01,188,1684825200"; d="scan'208";a="363597141"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2023 12:20:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10808"; a="770708228"
X-IronPort-AV: E=Sophos;i="6.01,188,1684825200"; d="scan'208";a="770708228"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga001.jf.intel.com with ESMTP; 20 Aug 2023 12:20:48 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Sun, 20 Aug 2023 12:20:48 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Sun, 20 Aug 2023 12:20:48 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Sun, 20 Aug 2023 12:20:48 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Sun, 20 Aug 2023 12:20:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OhQ6Ntt1wOKd8A8dDKV37u5+W6U38XpdLkfklOMuRlLAPbYqzwQG9FAimhNC/AUQWPdMsR6n3lgNVxqTZ8flOcNkWrgHDvV1M9iLzfUyVdJqDh9Yq1iwN0/ukUQ/MfigEJLETd1k9e2M01yOeXCrB6LJHXV6eDvm/1ZEf2H2YeeiIosLvWoaOswsCZ0ZhD8HTAiWVSo1xZuSmR3Ws6GGVNLBvCVNYD1KAQ+azCgPc45xILh//NkXOKCqENXmFghg/1hjMEDl9uSsYaBxtGqu+b3dr+QwHsDfvZ8MfP7tsrlj0o+psN6+p3atlld47thlcymlgxj3N3IbNwKX/i8Zpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pZqqAih9NAVxxclMVWwiOlZ8JJXpMhTzyt1z1j0cU/4=;
 b=VYzY3zkawpeFqrfXx41PsIxQfme0mzfq+tz68OSaW/8DC/bbIRO4rkJX5E0ls+3lNEdTmtWSquhWgzOMpyLp7DwZHP2mtlhVlBjB3NPDBO1vZmCHstu3bh9xnuYSCw9Dfyn5uiL3ckCeLrt4GFa56uY0ZVU2Py1+FHzOq7abD8FNtG/8fezES7VUOolcevH3sgbw0M/oLG41rVYN1DEiC0mtLO6AJ105rfgNjGvEdqfBCeRjm22DJ0LNGIYo5uJViYhPOEwVtIp/8hXgqeR4jUnnz/LB1thgD6Gc3o7rcDsNXewh3r09sytoVUFmJaaJDBQWQwthNNbd3lsLcybbCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5140.namprd11.prod.outlook.com (2603:10b6:303:9e::21)
 by PH7PR11MB7450.namprd11.prod.outlook.com (2603:10b6:510:27e::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.20; Sun, 20 Aug
 2023 19:20:46 +0000
Received: from CO1PR11MB5140.namprd11.prod.outlook.com
 ([fe80::7349:947:dc4c:fc8d]) by CO1PR11MB5140.namprd11.prod.outlook.com
 ([fe80::7349:947:dc4c:fc8d%4]) with mapi id 15.20.6699.020; Sun, 20 Aug 2023
 19:20:46 +0000
Message-ID: <e676df0e-b736-069c-77c4-ae58ad1e24f8@intel.com>
Date: Sun, 20 Aug 2023 12:20:43 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Andrew Lunn <andrew@lunn.ch>
References: <20230819093941.15163-1-paul.greenwalt@intel.com>
 <e6e508a7-3cbc-4568-a1f5-c13b5377f77e@lunn.ch>
From: "Greenwalt, Paul" <paul.greenwalt@intel.com>
In-Reply-To: <e6e508a7-3cbc-4568-a1f5-c13b5377f77e@lunn.ch>
X-ClientProxiedBy: MW2PR16CA0024.namprd16.prod.outlook.com (2603:10b6:907::37)
 To CO1PR11MB5140.namprd11.prod.outlook.com
 (2603:10b6:303:9e::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5140:EE_|PH7PR11MB7450:EE_
X-MS-Office365-Filtering-Correlation-Id: 0c7e961e-7a56-44e1-16de-08dba1b28de3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: EoqpWob4uFlNdIQ+xO+YlbTFN0q6sPWEJtgaY0cOem36i/qDtjoaexFgjun9Dc1SAjHAjfeB8c4GL5cpwthtpLJf0zVXz3S58GgKs4rSSUQkbtiVN8jh70AgNDMrq6tUWic9L+HN51Ztf5OG7JSxMCrn9NLyiJMs+g/dF1iap+1B5a6Be4OA5TYq2mshqltmxdnSkfJW7sxgiZLNwJa3KxxPLXozZuNFIvrz/wVkqFEyW6Zp8LOTgxFCoZlx5a41muRHQOMpqTe5Yiwits2GcLvs6z3/Ih+DNNkXk8eRpUdy4Mp9/vKgrsOods7TReBU4Iyr85POqIoUc7e90k/51bhXaLlIObHIukGnKGC7Sf7f6Hfkrygz1hDgsbzv8sYOVADDUlkm7GhuEYl0QJSay6SD6/caMs/Og3heTu58wl49/VgdruxqzxW0zytZIQ+m378hcqmjl9TRTh0FDB9QjjeTrqPNz9KSGdLMIVcL/LJnWKAgnCNwPR+1w5OOd/kFm+YKnTcBPiwNM11MI3SjxhDJMlv8FixRw3ZfUx5fQmAeD4704pnZjWLRbh9NqmH51wkTtQQxkNkFo3pLaUjH1zuUbu4Dzs0koVIZWwgIhTs/3/zNsNYzwXRyXZQHFmML
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5140.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(136003)(376002)(346002)(366004)(39860400002)(186009)(1800799009)(451199024)(66476007)(6916009)(66556008)(66946007)(316002)(6512007)(82960400001)(8676002)(8936002)(2616005)(4326008)(41300700001)(36756003)(478600001)(966005)(6666004)(38100700002)(53546011)(6506007)(6486002)(2906002)(83380400001)(86362001)(31696002)(31686004)(5660300002)(26005)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VDVDekF5QUFVWTZadzR6SlJpQ2luaHhNdTg0c01LSUlxRnFaVXZLL3pyOXV5?=
 =?utf-8?B?b041YWZJdzBYdjF2WUFhcmlVZjM3OVNlZEt5cnJzcG1GMU02UkRvZThXNVBO?=
 =?utf-8?B?Z0piV1R5THJHTG1COFNsU3o1M1UwNzRiLzhhNUxGMHJ6dnNKd3Q2S1dEaDYv?=
 =?utf-8?B?VnhGbmVydE5FeWI0RXQvZFhmUXJZcXR4ZHdiT2ZpTDZRWnU1YndWczRzOWVT?=
 =?utf-8?B?WDUyNlRMNmhvejVVYkpLVzAwMnlOOGFsQ0RTS0ZWK2U1ejA1elFoM0VhMUxx?=
 =?utf-8?B?NW9UV0lTakpXTldaRVppMkFqSVpQYjhjR2N3ZkI2U2thMERZNDgvUHNpcHAz?=
 =?utf-8?B?SHM5c095SStwdUh4TjdsOTdjcGNlSFFOYk1rbk11Q1NGT0lCekZpa1JxWi9j?=
 =?utf-8?B?US9yck1lVUEzcE85VjhYZVhlTHdIa1k5b3hiYUdSdWZaZjVVOUhVSUIvVElP?=
 =?utf-8?B?UE9veDUxMlZlTmQ5R3ZpZWhsOGJvUC9qd1Y1Z3lvTkNXRlJjQlJ1VEJMRXlm?=
 =?utf-8?B?eHZ2ZzlOQytQeUc0SlJQUkg5M0RNZVRmc0I3ZzdZcmdQTUl3b2FNd09PWVV1?=
 =?utf-8?B?cXBQYXNyS29pWnFjbXh1Q1NxK2pkdEVaRFlsT1crbFBMVGF4b2FFVllyaHVK?=
 =?utf-8?B?bmRwSTNldTZ0WHN2bE9Kclo5aFU4clFsR3orMHZJWXlQQ25qVEJOY29Gamt3?=
 =?utf-8?B?NXlUKzNMVkVQY1BsVE5oNWVKdVR4Vm1XVHJWUVVkR0VxQnI0VytkRG02WEZv?=
 =?utf-8?B?dVZlUEJQbzdmTW9tVTFXTzVXcDBwWVZXTDJlZWQwYndId0xaQlY5cWkwa1Yr?=
 =?utf-8?B?eHNCVWxuWVRpTUdtTEhwZmhhUGZsRktKR3NqSjYrTVFhWmxQNzZDVm96YkFZ?=
 =?utf-8?B?TG9sajdTMFZUK25UcXNMcjVrWHlWemNuV2dYbW51bkNVSGt2WnIyUWNmMmVo?=
 =?utf-8?B?eVcxWllsMFNvaFFJVW5acjVNSzBBVUJEcnNQRnlOWlNGNU1jenRBdXNUUnRT?=
 =?utf-8?B?NVNhUnUvVVhzVlFDZ3l1ZUZsNC9IcXBBczBMeWtIQmFtMjVsZEcyWGhXMi9W?=
 =?utf-8?B?d1dPSG9oMWFzRlpPa20vbVpnZUdsYzRpOStTdGZiN2dPTVptNW10VjIyUW4y?=
 =?utf-8?B?SkNwZGcrbEtBQWJtcnhsekdvUXpOa24vL1lRbCtYSE12MU54TWN6VmhkdkQx?=
 =?utf-8?B?eFRndEF2THFrYUhadFpaVGJwZGhLYm00TVB4UCtmZXFJQUlPQXpCT0JaUzFU?=
 =?utf-8?B?bnZ4UEZHdlFkeHQ3VGV5cDR2djZHT2w2Yzk1L0xuUGc3RDJ2MmpqT2VORWRq?=
 =?utf-8?B?OFlBOEZyK2xSQitCZ1hqVElHTUpjYTVkZGs5b2F3anIrclZqTGhYc0dtek9C?=
 =?utf-8?B?bDlVUmVYKytYZ0hBeHNLZnBWYVcwOWpnWWN0M3graVA0ZUpJY1FqVmlmbEdS?=
 =?utf-8?B?ejllUVlreW4xNXFRUnNzOFFidS9TQXZOVzJDZnQ3VEh5UWtaU0Zjd2tuQml1?=
 =?utf-8?B?ejFHQnh6UnQvdHRtT1VqdjhndHVVelUzRitPcTVLKzF3K1JOYmVjb2h0dk0w?=
 =?utf-8?B?U296TVNobWVzZndFMithNThNdmF4VkNaemJrNDYzb3NuUG5mYTdpNnU3THk3?=
 =?utf-8?B?ZXZjQWpWRC9CUm1qUUpnenhTakhHODlydHB2bVplSGEzYlFtVXp2OFQ0MWM2?=
 =?utf-8?B?K0VZTDE4MDUweUgwWkFRUnc2cmNyeGxDV3FyT0ludEQxQ0YrUlRpS1gvRU44?=
 =?utf-8?B?UE5wdXVsMWliWXpqR1gzOEY5d00zY3BOV0JkMGdkZ1FNci92U0NkQXhWSjBG?=
 =?utf-8?B?RHQzT1crdDQwdjE4RFAwczN4THovZlRWZGZMK0ZQd2dwNDA0eDJtSTRLVkl5?=
 =?utf-8?B?MFZNelA4Z3R5YmpNSHlCanl2S3B2M2RjUENobkhJeFdoOG1jcWtzTDlJQ0Za?=
 =?utf-8?B?YmFJRGlmcW9BVHRnRG9MdHg3Y1J3L1BmQUNOcWJGSkExMkV3cVZjSHBISTNo?=
 =?utf-8?B?VFlhY3RpSUdGaVlDbHRhN091WDJ2T3VPVlF4eXkybHdWZFo1SkZIUVRVUzhi?=
 =?utf-8?B?NFFMTjYrU1NHTWxIR0dqU29OTzQ3MWZhbm1IOE42V2F4cVhIVXpqWGVDK1I0?=
 =?utf-8?B?VmhWNDU0R0ZWeDRjaEttMEZrVXVxSHpTZTdsb21VdkNTdnZlNklDcjk3SnEw?=
 =?utf-8?B?V2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c7e961e-7a56-44e1-16de-08dba1b28de3
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5140.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Aug 2023 19:20:46.1009 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PhL94NZGhsmNW5uqw5bMdcH/9af6c7a4uInAczcMAkYaUEjyUPg9esFtpVamNPxiIIsmjLNLRQP3n2hqKQjFvmF4mgm7wbt0dClM7PNoEJ8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7450
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692559249; x=1724095249;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=E7mzpXTuBnIHqH+blK414ivMFD02cNGZdXmi9v73lM0=;
 b=FOUBHykuGstUjgw4lwFhTduZQalOnXlGKR0G+s9bET7wI4GGeNm+k8kw
 N3IeJT0opguSBgIXXHLjFVz1IF+wwxZ6ES77WvMbERLi3KdDXk5hru8Zj
 eJ2Geb3Y8CUx4xdHfm3rN1VSiktVxsAYn8DErXxagmDn7e5BUf9OMg9wp
 LA6rq25yD++/RRqJxGSsePeDz1cOkkRKaoT7CjdMbzki9BTsu1JXSRMms
 fxUa4alOj1VM/lYHiAeFMxJUQJwLAtKK632nXBMAt/kOJE9QiTuhKCoCO
 sAP0oT2K1HKD3g9gDIyL9EBsg1vFUwGWD61wruiHYDOhTxHmMuXnDmHYv
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FOUBHyku
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 2/9] ethtool: Add forced
 speed to supported link modes maps
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 aelior@marvell.com, manishc@marvell.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 8/20/2023 11:54 AM, Andrew Lunn wrote:
> On Sat, Aug 19, 2023 at 02:39:41AM -0700, Paul Greenwalt wrote:
>> The need to map Ethtool forced speeds to  Ethtool supported link modes is
>> common among drivers. To support this move the supported link modes maps
>> implementation from the qede driver. This is an efficient solution
>> introduced in commit 1d4e4ecccb11 ("qede: populate supported link modes
>> maps on module init") for qede driver.
>>
>> ethtool_forced_speed_maps_init() should be called during driver init
>> with an array of struct ethtool_forced_speed_map to populate the
>> mapping. The macro ETHTOOL_FORCED_SPEED_MAP is a helper to initialized
>> the struct ethtool_forced_speed_map.
> 
> Is there any way to reuse this table:
> 
> https://elixir.bootlin.com/linux/latest/source/drivers/net/phy/phy-core.c#L161
> 
> Seems silly to have multiple tables if this one can be made to work.
> It is also used a lot more than anything you will add, which has just
> two users so far, so problems with it a likely to be noticed faster.
> 
> 	Andrew

Yes, we'll can look into that.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
