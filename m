Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CD7A5B59FBC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Sep 2025 19:51:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 86C404041F;
	Tue, 16 Sep 2025 17:51:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pnJRQm3UbbEt; Tue, 16 Sep 2025 17:51:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C9BF14040C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758045073;
	bh=ALZU/KDkwqho/TBcZxKHV3uhTfpTKWEs3BnUfxDtLns=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8Vd9hMqZjKnVt2GY71Aac4lDyw1NDfuxMkWB/cTpBEfb4dW1ZJ/IfxUGAwmljARHr
	 peo0NLndZnkbnk/8ilEi7Apd8I71dTgoIAmZ6Lg0U07YjMAtfy+UPJwpe0M9MZ5FtY
	 ariJZL/2RcCaoLEzN6T9jSYujwpILeNCd66ReNo4W99KM6/jhx9sVnjBLH1QjU5zbz
	 DpkcuYnjdPeep9abPD2UR+UHfo/61kYNldmacqk5iEijct/5caohShAovm9p+GaRGn
	 HuzHIZ3DPg3bUMbazEukFrsVBpVy+FylmFjVlZ4L+J8InmNio8P4Lndafqde3ZFf0f
	 /NgmLf9x+L7wg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C9BF14040C;
	Tue, 16 Sep 2025 17:51:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 9BA26199
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Sep 2025 17:51:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7A2574129E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Sep 2025 17:51:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vsWKnoxFNTg5 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Sep 2025 17:51:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 509A54081F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 509A54081F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 509A54081F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Sep 2025 17:51:10 +0000 (UTC)
X-CSE-ConnectionGUID: Mh9El8VYSjijUL9T6rYhfw==
X-CSE-MsgGUID: VawarIsoQ4uJbmvsQvSRzg==
X-IronPort-AV: E=McAfee;i="6800,10657,11555"; a="71703482"
X-IronPort-AV: E=Sophos;i="6.18,269,1751266800"; d="scan'208";a="71703482"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2025 10:51:10 -0700
X-CSE-ConnectionGUID: dT5unZXASOyTWfAQ2w742g==
X-CSE-MsgGUID: IEEqGf5GTCSuNWunSw/rnw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,269,1751266800"; d="scan'208";a="198706122"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2025 10:51:10 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 16 Sep 2025 10:51:09 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 16 Sep 2025 10:51:09 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.3) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 16 Sep 2025 10:51:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GJGAHLBElyfOaUIYeVowb2rQ714QTMeiucocj6VkQBJ8Fbd3MrHkrsAN7Q4q9x1BfqAGniB22QgZnAjof1uv3Xfj8ax3nlUOgYPyKd0ySFwSYX6ovFqjs6g4QcbQvZ8VIro5A/4fZE0yvuUYEtlOFxgVQAmennptoQWLHEbE4BsQMlr4+VwsrfRrvsqRhMOG7VmQ2pjaEGTkz5XWiStJ1hU4QA2a0zsfYWzUvAzKksnzq88RyeqZg/ZUHWaR9qSr+/jHx+4xkyX5XsEOnAuw4ZkApf4X1PGxJrmZb7J1WMGtmpf8tKIFdQX/5AEgxSJVlxreAy1Rce6SpwQni1fvkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ALZU/KDkwqho/TBcZxKHV3uhTfpTKWEs3BnUfxDtLns=;
 b=M4wwG4v5PXE/gDLPXYP3/Yiag+t5otXHKh9DLP09oDhN1kgkj96p0RNXOQfcyKyvUnJTtr/HKlimemhT9SQO98YJ9Y2/qvkjzW3ihay5HfQB/5/NIVISp1cCmDG/6AsWIkQxpg7ONcWJbRKAAIK3vTG/sqdYFIBOGltqxii5W8uSGH5zePJpkix/5f/JUQ9wTyh28YUuQflGhjainAwFfrZnXMN9KLDryF28XkLQczWECUxjC1imHRtQCfhnlnBlIPa1TDZMKaDmV/sbKSXS2ZTbgn2E/JnHBG3XU00828At5IALFq0F3EhYwWptItse9eI6t1vMvqa2sug0IMS+DQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by CY8PR11MB7242.namprd11.prod.outlook.com (2603:10b6:930:95::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9115.22; Tue, 16 Sep
 2025 17:51:04 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::24ab:bc69:995b:e21]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::24ab:bc69:995b:e21%5]) with mapi id 15.20.9115.020; Tue, 16 Sep 2025
 17:51:04 +0000
Message-ID: <c08ab306-60dd-4ff9-bf15-cb726c9558bc@intel.com>
Date: Tue, 16 Sep 2025 10:50:59 -0700
User-Agent: Mozilla Thunderbird
To: Alexander Lobakin <aleksander.lobakin@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>
References: <20250916160118.2209412-1-aleksander.lobakin@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20250916160118.2209412-1-aleksander.lobakin@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4P221CA0021.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:303:8b::26) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|CY8PR11MB7242:EE_
X-MS-Office365-Filtering-Correlation-Id: 7c58682c-9079-423c-3f42-08ddf5499a9d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|7416014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?amsyS0VjTDYyM1o5bWxBbzh3bjBpN0JxMGZWaEtYV2dENHp4SUZEcGNTRHFx?=
 =?utf-8?B?emNaT1M1U21XVTFFSXJOcEZlNURZODhDVXBjamhVQ0k2UXNmVTFUcnRiSkYw?=
 =?utf-8?B?NzRDNndoQW1zUGRpQmNuczRQYkFueENzTVM4UWQ1Sk9ldzlzUVRVdzdua3l4?=
 =?utf-8?B?UXJvbk1PUEd5Q2NGUE1qdmtxZ244UzYyZThyWEU1bzdVVngrZ3pVNXRoSHl2?=
 =?utf-8?B?SnFCUm9oT2x1TnpSckpFdDJkbHZsQUV4ZzIvOHlua3V1b1Fmd09ON2tPNSth?=
 =?utf-8?B?RUJmQ0tBdzk1M0F4MjJsMjd5YUFPd0hmZURrOXVEOCtSNFJ1RkExWlp4bVBB?=
 =?utf-8?B?eUkydUdUcVN0VElVVEVlazBpblFsWEdwQzErR1l5cmRubFVFOEhPaWZsRWdz?=
 =?utf-8?B?QlkwTHAzNDVVekh0ZURYQldUS2R4bjdHT1J0c1JWOU4xMkZTdk5LcTFaK0Vu?=
 =?utf-8?B?d2NGcnhlUkFQQ25qNjMyK3ZhY0xTUmVFMU8rbHRZOFhJVlFBU0pZVVFWVzl0?=
 =?utf-8?B?a1crRDUxRlp3dkVHNkt3NS9tTll5SVI0ZUlpWk53NTRKVFZYNytrKzA4NFhY?=
 =?utf-8?B?bTRvb1BTalRSU00vbktTd1dyTVQvaTA3ak9JRmwyTm5JQWhSakNLcnpwaE1s?=
 =?utf-8?B?dEpmVnZhNzg4SnpGdG10WCtBaXk0elRWdzlUVmJwcHRPYlhTallBR2NQdVh4?=
 =?utf-8?B?dE9sNHZsbzRIZGR0bWVpeWdIL0p1VElLdHNRR2dzVEw4QW9EMEJGU2dEMi85?=
 =?utf-8?B?RWZHdGpQL0JMRFdraTcrUG05TDgzK0NkQnNEU3BWZXMvU2JMN1J4SFAycGJR?=
 =?utf-8?B?cWllVTFjbWluR3d1M2IyR2xlenNKYnV1Q0h6LzdieUdaaHNqRUpHMnRhNUVJ?=
 =?utf-8?B?RTJmQytmY2FDZWtkY2VGRWt5OHZMNjNwV2tTT2lrcDNGWjdoK2t1Z0grSnhj?=
 =?utf-8?B?Zkl5cE1OZUlLQ0ZpQllveit0UEM2OVpFeTJXanZQcTYxVTNFb3FidkFrSFM1?=
 =?utf-8?B?MUQ3djNFdlBINHpNRUdBMURrRkNoZ3FSMmdLb0VXMDBvcDMzRTl4WEEzK0FV?=
 =?utf-8?B?ZGJjNjM0OW9DSlNSbmFuVWVGZ3VJZXFNU0VQZUsxY2hJR3FLVzJkK1lZR2Jh?=
 =?utf-8?B?WncvSGh4RGNMOThKT1ZPZzRFRWVyQmRvZ0ZEZFRVWkVTdjZhRVZHR0JiQTJD?=
 =?utf-8?B?cmdsTDhGZUc5RkN1bmcwbEZjZSt2SmVkRko2Lzh0Z1VGWERZSHBZMFRiMlZv?=
 =?utf-8?B?VDNONWdlVkhOaWY1Y0R5eThmOG9ySGgrV1ZVcGNOUnhZN1VjSHk1ZGF6a0lM?=
 =?utf-8?B?OXlPOFVRT2MzZCthdkNXMC9UalVVczhBaVF1V3NUSCt2Q2Voa2FaZjdnaGkz?=
 =?utf-8?B?aEs3dUEyZjZYWWxVeFBaeVFNb1FLLyszaDhuYm1idmZkd1gyTFRwOHdqSFh6?=
 =?utf-8?B?b25TREMzdkdWOEVoVm1VL1BxbzFmRWZWU09TOWlZL1ZhYm9ZSS9vTWFyNlRD?=
 =?utf-8?B?STBYTzduOFg2U3dYc2k2YVpLNnZtZFBHNjhldEREQXFLSEdBYVhOc0dvVjFQ?=
 =?utf-8?B?SC9ENE1WMldVM2RDSEVnb3A4VnZJZEZabGdCeXVBMUorWndZVjRPTDVzdXFy?=
 =?utf-8?B?Wk9Sa2VIZzg1amV6NERERFhrQkNMK1lwMnlkTFcxeTJUWDJacmVDbXcwUWhm?=
 =?utf-8?B?Mm91cmF0ZlUyQTNJWkM2VWtBRkpuajRabGZUc0xsdmNCSjBtdXAyZS9JMWF4?=
 =?utf-8?B?ZWwrZ0FnNzhkNCs3U25RVStTZkpyM2JYaW9HdzdmYjF5WUpLcTZlcEMzdjRl?=
 =?utf-8?B?Umt5T1BybVh5Tk1zWkZ5Qm1QbzNscWw2M1NBSVoxUEViNHdRWWMrTEZqNUJa?=
 =?utf-8?Q?6lZmVzgE3bsuE?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7416014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ck9SZEZ0bG4zN0N1a0lFcU9ZTS9aTzRrdlRQRzl4MEJqMjFPMHU5Q1NydmhL?=
 =?utf-8?B?M0FJL1BXZE5Hd3V3SnEvaUh6cGtiNU9ITElpcE1wVHRwY3pDMDJiVXhWYW1j?=
 =?utf-8?B?ZDU1UWpCbmZnZDZVb0tQcWd4Z29MeXdJZjE1dmJwOFo0UW9wTTYwMEV0am9a?=
 =?utf-8?B?WmVQLzAyRTRQTWVCdDBWT2Q5NllDRWpIV0xpb2FKNHNYMnllSDltV0RLSnZK?=
 =?utf-8?B?KzFabENUcUJZQkJaK3B4U1E4SlBKY3FFbktMcHNGdkdrWkt3YVhDb0tGWGY1?=
 =?utf-8?B?QWRQQTlkbWFFQm9MZ2hTaWR4b1dpYW55UGtWU25mc2RXR1hoRkd2WjFlWGRa?=
 =?utf-8?B?WTM5Mm5qTkdpc1NlVVRZNFc4ZjJWaTBoZHZEWWFKZjU5ZGloNG56QVBJMmlV?=
 =?utf-8?B?dHhzQUZrSUFtcFcrVXBJdFduYjRwZHMzVWJ2cXJFU01BQm9xbjlPdkpPRy9h?=
 =?utf-8?B?NUU1RnhaK1BKQkJ1dFl2V0lBeUN6Si9uK0JxV3ZKV2xjcUEzMkdUTkEzZ3VI?=
 =?utf-8?B?TC82THlhMGxZT1BPcWVmOW5uSVlxYnoydk1yczNieWxiNVNSUmsxZmgyTzQx?=
 =?utf-8?B?eGdsMlpxZ1FEUzVkdDkwVlZ0eEwxK2ZzV0RMQWZuQStNR01OcitTcjBldnNJ?=
 =?utf-8?B?QmI1Yy9YS3htc0lNYy8zRDAxV2tNTkwxZTlKWGZoaWc4WC80WjROdS9TdHY3?=
 =?utf-8?B?Unhlb0FkWmd5cTlMV1lPeDZXUWl1YXp0RGxWRzB4RTNCK0Y2UFRRTS8vMFUz?=
 =?utf-8?B?aldmVHFOUmcxbVl3MmRkcGNveDBZOVViS0o1Y1k5d2M3c0JtVVVIQnlRQ1dG?=
 =?utf-8?B?WmlPMDQ4YTA1aVpKbDlYdm91YmpTNWE3bTg4aUtROVVKejlramJhSzVLZGlF?=
 =?utf-8?B?TVBMbnd0QXpIVE5ObDltTWdBakt2YklRNEJSZENVMzNVSUg3U3VVTmV1cW1p?=
 =?utf-8?B?cThmV1Bqc01hdTJxOFFHTUZObEpaVkM5MmtoeldEMEFtT0psUUxyT1RMc2dD?=
 =?utf-8?B?NFpHbEw3WkFBZC9rM2VISHlyS1FwbXNwL0lSNm1pazFhZVNtSFIvSEtCdUtj?=
 =?utf-8?B?OTNQN081ZER0OHNuejg5VytQNGVPQnVwRHo2b3pJeU5idlFobjBNTVg0SVYy?=
 =?utf-8?B?UVJoVTZlclNOanA1ZE1zei9qRGNXeStQRUdPS2VtcVhLOWFHbkxtdE5jcGZi?=
 =?utf-8?B?WHpGcnJVWTVuY2pDYVFENTM3elpLMFF3ZWNvL1ovVjQ4SnNUQk9WUENZS212?=
 =?utf-8?B?S1k0STc3cFQ3MDhOUUlaWUxJdzNOZm1KT1U2VVNDNVVvUm1wYjVVTUE2T2VJ?=
 =?utf-8?B?TGdHZjFVbHIxQVIzbG52YzVmcStGU1pBcHJ6VVZCUFI1NkRkWGF6bXpMMkVD?=
 =?utf-8?B?aGJQcjRRMERQaXVKUzhmT0FIaE9rNEZ6bnEwMkZmZSs2LzhWZzNCbU1NQ29C?=
 =?utf-8?B?aWJzTnEvdnV1SVJLbmJObzltcC8xaE9mNWpxWU1IcGhHeDFSTWdLNmtIc3Yy?=
 =?utf-8?B?elJMWVI5ZEQ4V0xoRkRPVlZudm1ET2V4TnVxb21EeHNibjJQdzZUeUg5YWNY?=
 =?utf-8?B?Wmo5Z0pwK1lHZU0wdGZxZGlHZG5KamJZZHBRN2RxSkthaXhpR0lJczBXWWpt?=
 =?utf-8?B?ZzZ2SzFTcmIzeHZvZk52bnpCR25qT21WSjRKL2sydVF2R29wVkJMb0dCdk5n?=
 =?utf-8?B?SmtqKzVXVVFYQXUzYlY1bDhvdDFUakNQeGhTWjgvUE5kcGRNUGpmS3FTNzNM?=
 =?utf-8?B?bG5ndGtqRjlVK05ia2tDR2RLQnJNbTNXaVhDTC92ZHJxRkN6akZHd2FLWFpn?=
 =?utf-8?B?bE1QN3U5eVY2NzhDNGo0UXUrd0JFS2dEOFF2eDErNXU0d3paQk01YWJQZnQ0?=
 =?utf-8?B?ZHNXQTJDTXlXOW8xaGNSdHJkWnU1QmVraFR2dXVCSVJva3grSlVoQWRXTnJV?=
 =?utf-8?B?UFYvV1d2bzlra040T1dXclEwRDYxeVcwbURoeFpZR3pTMGtoaDZrZi9ZQnYr?=
 =?utf-8?B?a01nY1lERW1UOXBmZEo0bDRORUNQLzFUZWw3cXord2VTUFJ5K09Cdml4Q1hS?=
 =?utf-8?B?K2tCcDZLYStVWnlQODJNVDh3clhJNWt5dEozQzkybWp2SHhjaGVtcHNUc0Y4?=
 =?utf-8?B?OGc5R2NGTEROYzluajVhUXpxOUJPUnB6em9DVVVLeGpXeW16T3p5Q1dLS1Yy?=
 =?utf-8?B?MXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c58682c-9079-423c-3f42-08ddf5499a9d
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Sep 2025 17:51:03.9788 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3WpRSukNouhbLDoc2SKU4ACu8mVSxRaR8ixO4qL528qgGr7TgT3U/3A/j99NwgthV2boZCsXk/dOepJKYs3EBAzURoutd4Msr+HMtIGfzLA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7242
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758045071; x=1789581071;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=sytFC5iUDj2PmO5Lf23p0yO2c0Q5JmtQ3Sn60C1brUI=;
 b=ZADfNlR29QNQ/vfLyuHJI3tOACLZz9ME3NprMYy8eiRloGrqKggVTSAq
 icdQnQY5fp58Fjoo62xvksMtoQyOZBFUwMrbAGuERB+a9V3YY62ekDVbZ
 ATd88BBRGcYIYmBJORfzj0P3uH5QxPcNHaGzUchPEbtcScyk+9rAJK66A
 gdPKJbh6UcXON15dw50moB/SCmR3ZZBpzeXrNpPuzk9fZFQBjFPtG05Q4
 126x8OFnrij2jFnbWJJani6kgLoCtvbkvmAXZ1iDlrmmf0+8E3L3T9O9n
 +bLS0POD/RdmGGTlIEBNU+vxA98v4mBUoTpj20Fdi/5qHG1PM9c/Ou0O/
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ZADfNlR2
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] libie: fix linking with
 libie_{adminq, fwlog} when CONFIG_LIBIE=n
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Naresh Kamboju <naresh.kamboju@linaro.org>, linux-kernel@vger.kernel.org,
 nxne.cnse.osdt.itp.upstreaming@intel.com, intel-wired-lan@lists.osuosl.org,
 Simon Horman <horms@kernel.org>, netdev@vger.kernel.org,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 9/16/2025 9:01 AM, Alexander Lobakin wrote:
> Initially, libie contained only 1 module and I assumed that new modules
> in its folder would depend on it.
> However, Michał did a good job and libie_{adminq,fwlog} are completely
> independent, but libie/ is still traversed by Kbuild only under
> CONFIG_LIBIE != n.
> This results in undefined references with certain kernel configs.
> 
> Tell Kbuild to always descend to libie/ to be able to build each module
> regardless of whether the basic one is enabled.
> If none of CONFIG_LIBIE* is set, Kbuild will just create an empty
> built-in.a there with no side effects.
> 
> Fixes: 641585bc978e ("ixgbe: fwlog support for e610")
> Reported-by: kernel test robot <lkp@intel.com>
> Closes: https://lore.kernel.org/all/202509140606.j8z3rE73-lkp@intel.com
> Reported-by: Naresh Kamboju <naresh.kamboju@linaro.org>
> Closes: https://lore.kernel.org/all/CA+G9fYvH8d6pJRbHpOCMZFjgDCff3zcL_AsXL-nf5eB2smS8SA@mail.gmail.com
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>

Reviewed-by: Tony Nguyen <anthony.l.nguyen@intel.com>

> ---
> Sending directly to net-next to quickly unbreak net-next and
> linux-next builds.
> Also to net-next as the blamed commit landed recently and is
> not present in any other tree.
> ---
>   drivers/net/ethernet/intel/Makefile | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/Makefile b/drivers/net/ethernet/intel/Makefile
> index 04c844ef4964..9a37dc76aef0 100644
> --- a/drivers/net/ethernet/intel/Makefile
> +++ b/drivers/net/ethernet/intel/Makefile
> @@ -4,7 +4,7 @@
>   #
>   
>   obj-$(CONFIG_LIBETH) += libeth/
> -obj-$(CONFIG_LIBIE) += libie/
> +obj-y += libie/
>   
>   obj-$(CONFIG_E100) += e100.o
>   obj-$(CONFIG_E1000) += e1000/

