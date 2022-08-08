Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 04AC458CCEF
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Aug 2022 19:45:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7D47B60681;
	Mon,  8 Aug 2022 17:45:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7D47B60681
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659980705;
	bh=mI+BGkc7rUrWWz1syx54NAtzl0clix6zAZ7CrQlbhWM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=5kEVP4578bqXhQ9MrXWCtZdrfn6DQBqfrGXuyhgtXwIZW4ETYcPVTOR0yWTSMKABv
	 RgcjrgpRv06mzFxukJ2/OSt5vNBsO3PUGj0DVGcP3h1eURZ+PL35vEAO2VqOCPuLy1
	 rtZ+KYDBu7UprioTwGerQvCcDvX1VPO/RP03himA+1QLjlXiyhL3tvYfkvIgPXwwJ9
	 IG8NBX4GP4LQWIPRnyplvFizigBY1QaukbS/aIzdFo0vtczmkvxJccVlGvauvNzKEu
	 GrscIlkUJjhkn8ivPF0pkEOBQvQM+tHuk0y7mmlQXHMNtLUp3svaZeK6Sukuaxxp+R
	 Ryv8b5/4EapeQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XKyM2Z5Zpz7p; Mon,  8 Aug 2022 17:45:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 63EB06059F;
	Mon,  8 Aug 2022 17:45:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 63EB06059F
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 758E81BF3E1
 for <intel-wired-lan@osuosl.org>; Mon,  8 Aug 2022 17:44:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4BF2380AB5
 for <intel-wired-lan@osuosl.org>; Mon,  8 Aug 2022 17:44:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4BF2380AB5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Shb5LF83Gw1R for <intel-wired-lan@osuosl.org>;
 Mon,  8 Aug 2022 17:44:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6AD8480AAD
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6AD8480AAD
 for <intel-wired-lan@osuosl.org>; Mon,  8 Aug 2022 17:44:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10433"; a="352382332"
X-IronPort-AV: E=Sophos;i="5.93,222,1654585200"; d="scan'208";a="352382332"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2022 10:44:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,222,1654585200"; d="scan'208";a="632991223"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga008.jf.intel.com with ESMTP; 08 Aug 2022 10:44:57 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Mon, 8 Aug 2022 10:44:57 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Mon, 8 Aug 2022 10:44:56 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Mon, 8 Aug 2022 10:44:56 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.49) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Mon, 8 Aug 2022 10:44:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lKET2U9geZsgQkJ/BSVORL+AJPIJDGlomRTInSAcF/xrhheLF6SCzclw6IrQ6VJkKFb+4JRlZw9q6DKfv+h8IbchBB4FvGylzQcD74LzZ4rzRHAeW76tZmUhUYO2ntqNVSgH90k4OkYf6AdN+OqDTFyWz/GSuabEEUNU3bFZYunIVMdGsYWZToIOza20rbeS4cj5eyJSYIFY1eF83JbnMcsMKUdEFELKgwtmoqE9Byl5LYpza1tIzsCb7eir5rAy2adAnB5ReI93S+Rtl71hROSYmf8ryTUlwxgIUsdvW07I1pLR3D2cYJqAxsggD2vIQ32BSIWEImHnqUTNaZ5Dww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pgYISGZ/a8VmPdWtlaqb9Z4JCvkTWpNZO5sLw0aWUz8=;
 b=k/6EYPEBE8zAdCWQzzRiRfTq56IK7WF1+6JuqliSgLWMYQ8tzfJ1OgsDnqK7D8aPJgahEOoNiUpr+lfiquTo16PMbfBxGtsChrYKT11egRlnmUl4hfmx50p5Qal8rWRkJ8KGvWbUECt8wUIZT8uJS+MZsoNyYPT4gFAsifFUyKFQzX8XhS22rhaWyE7VZMzXKcSCyk+7BNMbDeEQKA7ogMGeyxZEefqSC1sgIO431N8Okm3KFOozomY/I8PfaRYTzA1CFG+rNzRk9i6nyF2pU4FzwQcaGk47QuRhFjj6AZUszgnWlJcYJvC3UQKrHS97TKhjf55D+O+e4u/NDZUH0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW3PR11MB4764.namprd11.prod.outlook.com (2603:10b6:303:5a::16)
 by SN6PR11MB3406.namprd11.prod.outlook.com (2603:10b6:805:bb::33)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.14; Mon, 8 Aug
 2022 17:44:53 +0000
Received: from MW3PR11MB4764.namprd11.prod.outlook.com
 ([fe80::7988:da2c:27bf:2d7e]) by MW3PR11MB4764.namprd11.prod.outlook.com
 ([fe80::7988:da2c:27bf:2d7e%6]) with mapi id 15.20.5504.020; Mon, 8 Aug 2022
 17:44:53 +0000
Message-ID: <b7b6c6b8-58d3-2aed-7124-44ce585ef783@intel.com>
Date: Mon, 8 Aug 2022 10:44:51 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: <intel-wired-lan@osuosl.org>
References: <20220728192332.159990-1-mikael.barsehyan@intel.com>
 <f55dc242-eaa1-fa58-38d7-1b48f3d00394@molgen.mpg.de>
From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
In-Reply-To: <f55dc242-eaa1-fa58-38d7-1b48f3d00394@molgen.mpg.de>
X-ClientProxiedBy: SJ0PR05CA0037.namprd05.prod.outlook.com
 (2603:10b6:a03:33f::12) To MW3PR11MB4764.namprd11.prod.outlook.com
 (2603:10b6:303:5a::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f36ee87c-2cdb-4776-e638-08da7965b359
X-MS-TrafficTypeDiagnostic: SN6PR11MB3406:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Ris22Ois6eZox/xB1OmKvyiTzFyJ6bl4Bmk/wSYQMqGT2Moggp9UpXQt88jyITd/YKgWvxtRPmrzC94SothIwg5VYnmKK70KavxFLIcTxCYczKF159NBTg1o0EYviWhPcnujvi13wGjAh8WHM1pGlKjolVaXu6LkaHuDXxjmgWJSuOv1CqRMiU1mbVFeYAAiZv/JQnomuq6ZSKf9fJ1RMBNVzipr/UEt2qPzIsxz1PULMAlng7OObtUiVkjNIwOneZigjv4esG+85JOQ0UWl6S86iGomPCp+YohM0DF71xYdMi5/6samrGGAUqm0xN0M4Ud2HgFpEDZ5sxk24N2wW8WfmZQggJ1i81bEhxOvIm9UUF3x4ekS7908OA/2uQF1HpPSTB7+ZzZup+HY/yYwxZkUD8Wa1LxIaCWqJ4gmyGU5y1jnGeK5Uk1/+1q86f+y+zh9hcfPQWyN+fUpnIA9Ozayx9QvDNCeL7BfA5FY+w4pgmC7WRWLAVh2yOzmZMGQV8haz1ApNM+aLhtub/uoqNvnsSPhs6DvtXxPH7W+Cv2vsvEnGsOcGoUbJLmXtq0zvOhSJbM3pEf/4dnmWjFQ462KIC6nvJZRrBtdmY0fjT7nkne9ffi/KKRCyZIl7QilWB7m+SuR16pIS9krSQfkgQ3smNkq+xTKvIrwgqXMP8Ss+FqCC87be99WU1l2NoZRzSRJQCmtOFq1u5nkihuWFGPJ0vg/rUlQUWF7zyE42O+j31kYA1qkqFyCig24eFPPBWhSJ60DKXnZdW5Ub3vNwewBCS8Oi+mHLEXyAeQu4+iWZqoM73wUjnZnIRtDaICfeqQLCV5XaCxQG81HyrdWKw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4764.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(396003)(136003)(346002)(366004)(39860400002)(31696002)(86362001)(31686004)(82960400001)(38100700002)(83380400001)(8936002)(26005)(8676002)(36756003)(2616005)(6506007)(6512007)(41300700001)(6486002)(478600001)(316002)(6916009)(186003)(66556008)(66476007)(66946007)(44832011)(2906002)(5660300002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aDJQelBwY3VvdVVMaEtjcTdWTkZVWXo4SFlsT2prdXhtYVR6UXA4Qyt2WWQ4?=
 =?utf-8?B?T0I0M0tiU0NuNVV1bE5pUUJ2U3ExMFQ5bHV5WkVVOHIrNFZERUVTaXdiRG5M?=
 =?utf-8?B?NktUUFB4RnZsOWgvc25kVWFVTkFHYkkzSUdRY1NUNERwaVU1dnM2QzhEcHRS?=
 =?utf-8?B?UTRkT1ZjSjk3NnhWZW56WE5CODdUd2tWdGdtNjBCQ0hTMUhXMURFQVJHa0Iw?=
 =?utf-8?B?VmFwYkRXZW9xY2p0WWRhTEJTQ0JlOFdCbmxJaVp0MXQxaUR0SkxlcGZ1RnFr?=
 =?utf-8?B?VFlEVlhoRnBLcjFibVVFYWVqOTVJN25wbHRTUmxUUzFWZ3RJcS9aakFHc2J1?=
 =?utf-8?B?TGpXaEdpNlJDdUlyYnVScURtRFhtM1gzNnFXM1ljTnMvMDVSYWRoRERGaEtX?=
 =?utf-8?B?NEF4UzB2em1Xb1BhY0xnOGora1c0VDBkV0VrejNtT0xGdndRenV4dHdHVmMz?=
 =?utf-8?B?ZmhTRVZPbFRNRGpoeGlqcmdETkhNNTZlVkVXaVo0QlFsbmMvOUMrZHlnc3cv?=
 =?utf-8?B?SXM3bkQ3V0hqMkh5eUU1a3NhQkIyRXpKMFpLU0lia0JUNHRiOWFzRnpvbXls?=
 =?utf-8?B?MW54bWlEU00zalNWTVQ0cTc0Uzl0S1c5Q2luMWJsODNldG92R29zMHR1UmJZ?=
 =?utf-8?B?MlRGU3U0WUZlZHNZMEpHUnpIWDN1WGlsdE00c0kyeGJKUzNCblRHcXJUU2N0?=
 =?utf-8?B?TEdVNXdiS2QyOElWbi9WRm1rRTBFZVFNRi9PcjlCNHFKSDQ3TTFJUnZBWURv?=
 =?utf-8?B?MDVWN09aOG5MQXBMcm54WkhRTXRaM1ZiZmd6QXF1WjN1UE9xb3UwVnVoOUpQ?=
 =?utf-8?B?R3VkblE2SFkyTkNQdU1RMm01WFRwY3ZFVDRVcDBMajJhcVJteWNKN2VES1hV?=
 =?utf-8?B?V2F3YkhraUd1MVRKRkNaRUkzVW1rL0FwdnI0aGwyelNYQ3NQT0tlMkprUVJQ?=
 =?utf-8?B?WW9zSjhYa2xxaGxSQi92d3p1M2hQaUVmbmNQbXYxb3FScWQ0My9wM3JxV1Jn?=
 =?utf-8?B?b0JXK3U5NGZMMDFobzJCNG9aMndnRkV1RVM5U2U3QWFER2xqLzk2S3dkQWx0?=
 =?utf-8?B?S3lIaCtaRlV4ZFY2T3dCM2RsKzNyTHoyU2VIVkFrSFl4WFRXeWtlTVV5T25L?=
 =?utf-8?B?NllwVzNVTzl0VFV6c1V5U2tMZ0c4N05xb1JGQ3d0MEExdmVRSE1WVzVLMUpp?=
 =?utf-8?B?WWg0ZGhoZVk0RWczWE9LdmUzNVNoQlpTRWVMRTZWQzhiR3NsL082dHhaQzBB?=
 =?utf-8?B?OTRaSGgzanJ1aml4a0EvVGl1YVhCRWU4SlcyaUhDMXhQZ3V0QWZxSm40VmZz?=
 =?utf-8?B?bWZUWXBoRmRkSVRDRmRwN3gxUUpwUzVhbExpdzRiZDJ1Uk9XaXlyQ0hTR045?=
 =?utf-8?B?SmptZC9XY2YxdW9vTXZLZjNNakhHNUw1YXhTeDFmYjMxWFlwWGlIZXhYbHgz?=
 =?utf-8?B?dWtYL3NURElPd0JlZTY1V29CMlgwRUFFeWZGbEtaV3dGbEJuQTJ4TDNEQi84?=
 =?utf-8?B?a2lhdmN0aTR2VWZrZmtXVCtpa1ZXS1RMZHRqbDNrc05RTzVNOEZVbG5HYUFx?=
 =?utf-8?B?am40TWlnak42SGlpUURVTU9nVEZOQ01hcG9KUVFHK0NueERrYTlPS1d2cWJm?=
 =?utf-8?B?eGhRL3VCVjU2VTdUeHY1SUxVb3kvZDZFMWRjTHphQWwzQVBXNStYTUl2SDhh?=
 =?utf-8?B?emI1eTRhWlZ4Z1ptK3NMdXVFbG1pTTZ4M3FVN0RWUHRRcEZYWVVYUFpTQUhJ?=
 =?utf-8?B?Z2UxeFhmREgxNnFoTXhQQVQxcFczZEhaZXRMa21yQWJhQ2VvOFl4ZjNYWWpy?=
 =?utf-8?B?Zm9lLzI3bm5nbnJEcVBLYlR1VDh5ME5RT1o3c3o2Wm8rUFdtK3VVSXk4b2hq?=
 =?utf-8?B?Nk5HTXdrc29IT3hYY1hYZkhiamVDdksyMHRJSTIrYmliNmtaTjg2Y0ZRNjBa?=
 =?utf-8?B?RjVmYjh3M0xRMEVBMFpBZ09kK1YwYXBGM2NzWGsyWnJRYlRuOXg4VjFTRllN?=
 =?utf-8?B?OThITG1BbHEvaUhVeVNEK0VTUmJSVzF1S3JHdDNwTVh0NjVhaHkvSnlBZGE1?=
 =?utf-8?B?emtsT0I2SGdCY2VGOEljNitHS2RWWmN3OFZiY2duQm1CYmordFIvN092ZFFK?=
 =?utf-8?B?b2hTcndENFZlTGRvVkU0MllQc2svaU1ydGpTUGJWYldGNHROWTIwanpjRm1k?=
 =?utf-8?Q?Nz88QWFrsVkG8nOOrvG+5Jg=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f36ee87c-2cdb-4776-e638-08da7965b359
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4764.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Aug 2022 17:44:53.5124 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ODRERuoOhKpnDVtUXG1gF48fANvacBrtgiEi4K7PAb8PHRg01JOOlN2UbnjHK+OCN2GsYDFfL0XU+GthKXTOJuHHxDRjuq0VDrfJCWI9j1rgonCd1FJNFQXsJbaTHj5a
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3406
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659980698; x=1691516698;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=DwT8b1hcuv18nDt1+5Tpu6dt5l4DuQk5vhdTRQQi5mE=;
 b=JDsrNBccaVIrF7roMyBcyeFyacpA18gw1uwN3q+yigbP4Nuee4akGNlw
 qgXlJP5+PNsSGakR1F+N2yektFID2B6dQgPODzi5sLtS3BSUiRDrPf2+c
 EqQCCR5ayM0tzed8qEm/FzMTe3nFtlvizoL/M7UYT4WydsYT6Es2Xuc+N
 EDyJEkPwlOQTTVLCciNt01jKmdnICrhEKg/5RWBuB/u/LMT6KR+ls3URh
 DOYsBQaDuqr/uG1NzdUCBQxHMEJXpVZ5i94bdBDpCI3b4+p0UWJSgrIpK
 8brGL4AjzGIKqYS0d5+p9+S//9NLUC/JycOvmAu3j/5b73ngqg7tbHdPG
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JDsrNBcc
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] ice: Allow 100M speeds
 for some devices
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PiBBbSAyOC4wNy4yMiB1bSAyMToyMyBzY2hyaWViIE1pa2FlbCBCYXJzZWh5YW46Cj4+IEZyb206
IEFuaXJ1ZGggVmVua2F0YXJhbWFuYW4gPGFuaXJ1ZGgudmVua2F0YXJhbWFuYW5AaW50ZWwuY29t
Pgo+Pgo+PiBGb3IgY2VydGFpbiBkZXZpY2VzLCAxMDBNIHNwZWVkcyBhcmUgc3VwcG9ydGVkLiBE
byBub3QgbWFzayBvZmYKPj4gMTAwTSBzcGVlZCBmb3IgdGhlc2UgZGV2aWNlcy4KPiAKPiBQbGVh
c2UgbGlzdCB0aGUgZGV2aWNlcyBpbiB0aGUgY29tbWl0IG1lc3NhZ2UuCgpTbyB5b3UncmUgYXNr
aW5nIHRoYXQgZGV2aWNlIElEcyBiZSBsaXN0ZWQgaW4gdGhlIGNvbW1pdCBtZXNzYWdlPyBTZWVt
cyAKYSBiaXQgcmVkdW5kYW50IHNlZWluZyBhcyB0aGV5IGNhbiBiZSBpbmZlcnJlZCBmcm9tIHRo
ZSBjb2RlIHF1aXRlIAplYXNpbHkuIExldCBtZSBrbm93IGlmIHlvdSBmZWVsIG90aGVyd2lzZS4K
Cj4gCj4gUGxlYXNlIGFsc28gZGVzY3JpYmUgdGhlIGltcGxlbWVudGF0aW9uIGluIHRoZSBjb21t
aXQgbWVzc2FnZS4KCk15IHVuZGVyc3RhbmRpbmcgaXMgdGhhdCBjb21taXQgbWVzc2FnZXMgc2hv
dWxkIGxpc3QgdGhlIHdoYXQgYW5kIHRoZSAKd2h5LCBub3QgdGhlIGhvdy4KCj4gCj4gSG93IGRp
ZCB5b3UgdGVzdCB0aGlzPwoKRm9yIGV0aHRvb2wgPGV0aFg+LCAxMDBNIHdpbGwgbm90IGJlIGxp
c3RlZCBhcyBhIGxpbmsgbW9kZSBmb3IgZGV2aWNlcyAKdGhhdCBkb24ndCBzdXBwb3J0IGl0LgoK
PiAKPj4gU2lnbmVkLW9mZi1ieTogQW5pcnVkaCBWZW5rYXRhcmFtYW5hbiA8YW5pcnVkaC52ZW5r
YXRhcmFtYW5hbkBpbnRlbC5jb20+Cj4+IENvLWRldmVsb3BlZC1ieTogQ2hpbmggVCBDYW8gPGNo
aW5oLnQuY2FvQGludGVsLmNvbT4KPj4gU2lnbmVkLW9mZi1ieTogQ2hpbmggVCBDYW8gPGNoaW5o
LnQuY2FvQGludGVsLmNvbT4KPj4gU2lnbmVkLW9mZi1ieTogTWlrYWVsIEJhcnNlaHlhbiA8bWlr
YWVsLmJhcnNlaHlhbkBpbnRlbC5jb20+Cj4+IC0tLQo+PiDCoCBkcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pY2UvaWNlX2NvbW1vbi5jwqAgfCAyMCArKysrKysrKysrKysrKysrKysrKwo+PiDC
oCBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2NvbW1vbi5owqAgfMKgIDEgKwo+
PiDCoCBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2V0aHRvb2wuYyB8IDExICsr
KysrKystLS0tCj4+IMKgIDMgZmlsZXMgY2hhbmdlZCwgMjggaW5zZXJ0aW9ucygrKSwgNCBkZWxl
dGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lj
ZS9pY2VfY29tbW9uLmMgCj4+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9j
b21tb24uYwo+PiBpbmRleCAwNWE0YWNmYmRkMWQuLjAxMDM4NWU2NzY2NSAxMDA2NDQKPj4gLS0t
IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9jb21tb24uYwo+PiArKysgYi9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2NvbW1vbi5jCj4+IEBAIC0yNzc1LDYg
KzI3NzUsMjYgQEAgaWNlX2FxX3NldF9wb3J0X3BhcmFtcyhzdHJ1Y3QgaWNlX3BvcnRfaW5mbyAK
Pj4gKnBpLCBib29sIGRvdWJsZV92bGFuLAo+PiDCoMKgwqDCoMKgIHJldHVybiBpY2VfYXFfc2Vu
ZF9jbWQoaHcsICZkZXNjLCBOVUxMLCAwLCBjZCk7Cj4+IMKgIH0KPj4gKy8qKgo+PiArICogaWNl
X2lzXzEwMG1fc3BlZWRfc3VwcG9ydGVkCj4+ICsgKiBAaHc6IHBvaW50ZXIgdG8gdGhlIEhXIHN0
cnVjdAo+PiArICoKPj4gKyAqIHJldHVybnMgdHJ1ZSBpZiAxMDBNIHNwZWVkcyBhcmUgc3VwcG9y
dGVkIGJ5IHRoZSBkZXZpY2UsCj4+ICsgKiBmYWxzZSBvdGhlcndpc2UuCj4+ICsgKi8KPj4gK2Jv
b2wgaWNlX2lzXzEwMG1fc3BlZWRfc3VwcG9ydGVkKHN0cnVjdCBpY2VfaHcgKmh3KQo+PiArewo+
PiArwqDCoMKgIHN3aXRjaCAoaHctPmRldmljZV9pZCkgewo+PiArwqDCoMKgIGNhc2UgSUNFX0RF
Vl9JRF9FODIyQ19TR01JSToKPj4gK8KgwqDCoCBjYXNlIElDRV9ERVZfSURfRTgyMkxfU0dNSUk6
Cj4+ICvCoMKgwqAgY2FzZSBJQ0VfREVWX0lEX0U4MjNMXzFHQkU6Cj4+ICvCoMKgwqAgY2FzZSBJ
Q0VfREVWX0lEX0U4MjNDX1NHTUlJOgo+PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJuIHRydWU7Cj4+
ICvCoMKgwqAgZGVmYXVsdDoKPj4gK8KgwqDCoMKgwqDCoMKgIHJldHVybiBmYWxzZTsKPj4gK8Kg
wqDCoCB9Cj4gCj4gSXMgdGhlcmUgbm8gd2F5IHRvIGRldGVybWluZSB0aGlzIGR1cmluZyBydW4t
dGltZSB3aXRob3V0IG1haW50YWluaW5nIGEgCj4gbGlzdD8KCk5vLgoKPiAKPj4gK30KPj4gKwo+
PiDCoCAvKioKPj4gwqDCoCAqIGljZV9nZXRfbGlua19zcGVlZF9iYXNlZF9vbl9waHlfdHlwZSAt
IHJldHVybnMgbGluayBzcGVlZAo+PiDCoMKgICogQHBoeV90eXBlX2xvdzogbG93ZXIgcGFydCBv
ZiBwaHlfdHlwZQo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNl
L2ljZV9jb21tb24uaCAKPj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2Nv
bW1vbi5oCj4+IGluZGV4IGE3NGRmMWQzYTAwMi4uMjczNDI5NmJkZDNiIDEwMDY0NAo+PiAtLS0g
YS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2NvbW1vbi5oCj4+ICsrKyBiL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfY29tbW9uLmgKPj4gQEAgLTIwNSw2ICsy
MDUsNyBAQCBpY2VfYXFfc2V0X2dwaW8oc3RydWN0IGljZV9odyAqaHcsIHUxNiAKPj4gZ3Bpb19j
dHJsX2hhbmRsZSwgdTggcGluX2lkeCwgYm9vbCB2YWx1ZSwKPj4gwqAgaW50Cj4+IMKgIGljZV9h
cV9nZXRfZ3BpbyhzdHJ1Y3QgaWNlX2h3ICpodywgdTE2IGdwaW9fY3RybF9oYW5kbGUsIHU4IHBp
bl9pZHgsCj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBib29sICp2YWx1ZSwgc3RydWN0IGljZV9zcV9j
ZCAqY2QpOwo+PiArYm9vbCBpY2VfaXNfMTAwbV9zcGVlZF9zdXBwb3J0ZWQoc3RydWN0IGljZV9o
dyAqaHcpOwo+IAo+IEnigJlkIG5hbWUgaXQgYGlzXzEwMG1iaXRzX3N1cHBvcnRlZGAuCgpOYW1p
bmcgaXMgYSBiaXQgc3ViamVjdGl2ZSBJIHN1cHBvc2UuIEFzIGxvbmcgYXMgdGhlIGZ1bmN0aW9u
IG5hbWUgaXMgCnNlbnNpYmxlIGFuZCByZWFkYWJsZSwgaXQncyBmaW5lLgoKVG8gZWFjaCB0aGVp
ciBvd24gSSBzdXBwb3NlLiA6LSkKCkFuaQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVk
LWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLXdpcmVkLWxhbgo=
