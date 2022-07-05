Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C6A8F566FDF
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Jul 2022 15:51:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 78E6C41716;
	Tue,  5 Jul 2022 13:51:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 78E6C41716
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657029083;
	bh=1gykt8nRm0RdaUub0nicqba0kXoHFgaED3UQp/uu7F8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qIq6euBrnUrCGR8u00aIbyPTbAd4OgeZRpsDYnN9AmgNwSqB3lYU6i0IdErG1BG6j
	 m/kM7stYsSGfL6lcgipfTsjAxoQSu6SjA6qFjmasvDgZZ02DDf8lC7r0LT7Y+0jfrm
	 P0/MU0ymH1fhXqUFpuWN9ndJcABLCRFTaG0Y10b+z5gROgsk9/litDOCISPdJtNiGB
	 TU5pbNm3+VQVU9RsqtSPlsKuG3tpvfffcQYa1hB8GuXMz84CS6Z+ns1/UnhjSf0wCK
	 fdHknc69WWjylhzPIPg/oMrGG9gQK3YIw+QZkGzKo/J57jhTnnmBtc839eAapQRarW
	 6IVMA3ClXVVAw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FM25FEuEs1cC; Tue,  5 Jul 2022 13:51:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E9220408E4;
	Tue,  5 Jul 2022 13:51:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E9220408E4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 126B01BF330
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jul 2022 13:51:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DEB47409F9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jul 2022 13:51:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DEB47409F9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8wSQgQWNCYVM for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Jul 2022 13:51:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A33F340A67
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A33F340A67
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jul 2022 13:51:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10398"; a="263147282"
X-IronPort-AV: E=Sophos;i="5.92,247,1650956400"; d="scan'208";a="263147282"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2022 06:51:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,247,1650956400"; d="scan'208";a="625459427"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga001.jf.intel.com with ESMTP; 05 Jul 2022 06:51:13 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 5 Jul 2022 06:51:13 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 5 Jul 2022 06:51:13 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 5 Jul 2022 06:51:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WRWqnK747tuWFOC6HawEcFw2IZeNG1NYFIU7LQbXyAn7roIlBELsp8pds339uxPUZ75a6/oaO8us8h2LM/3dvW0RXyTgxmGCe3jKy87VvHjX59g7D+sbr5eMK1YEf+Hp0MsN8UpJVqBhOa8VaMojxmhUZ9IeTmGyiI9V3WzLvwEOjtug1HwBYHJkViOw9dKqQG9VZ3+aTErc9a/9SF8kFbL0/Z20ZyFPTQ8EQGPBZetRWun2urHaq51NEuztmZ+2EezmGZ54b64QQBrn0MSHa9EhyvZFjyfblojwWIiuvPkVyknAtD8wHSfYWkErRJ+Patnzx3SRtMPsBkzS+NvXqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zrXXsZg4HkMPn7IhtRkZUbE+vunwycLaTbRvh3sAFzw=;
 b=aeXNLHE+oEIDXlKQ2rPC5j7MrEZchCxERXDmd9QJxSAKe14wAs4KJhHfNIgYr/g7FTdJHljV78dU5YlJqZyiU3brXkFrc4wbO+2cJXNTcrlTtS2NIMbtQ5vKiLAK2gb/l1TuEfQc1fW+GgNNPg4R/xlXOJjB6jQ2rzCGK1hfIQvK9SVcfZfaEEabHEsJtEU5wo0G/1tbjRutn6E5Zgrf5W9djc0N3cWCEu4w42uFVJEbA3tg/ME4WksF2iwMt9AkZjZpfZDBGbfXjAtKehEsgnDrKgv/FCJpPSBFKg9/EKESvB3N0A26kUzYKFX7HJjEK/KfSVs33y7/FWraIojIfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO6PR11MB5603.namprd11.prod.outlook.com (2603:10b6:5:35c::12)
 by SJ0PR11MB5135.namprd11.prod.outlook.com (2603:10b6:a03:2db::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5395.14; Tue, 5 Jul
 2022 13:51:11 +0000
Received: from CO6PR11MB5603.namprd11.prod.outlook.com
 ([fe80::5008:4f0:1078:7ba3]) by CO6PR11MB5603.namprd11.prod.outlook.com
 ([fe80::5008:4f0:1078:7ba3%7]) with mapi id 15.20.5395.022; Tue, 5 Jul 2022
 13:51:11 +0000
Message-ID: <c89c993e-7a7a-15df-85ef-8d9b7be16b71@intel.com>
Date: Tue, 5 Jul 2022 15:51:04 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: Thorsten Leemhuis <regressions@leemhuis.info>, Jaroslav Pulchart
 <jaroslav.pulchart@gooddata.com>, "Siwik, Grzegorz"
 <grzegorz.siwik@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
References: <CAK8fFZ7m-KR57M_rYX6xZN39K89O=LGooYkKsu6HKt0Bs+x6xQ@mail.gmail.com>
 <2596b2c6-71e4-543f-799f-b4b174c21f31@leemhuis.info>
 <CAK8fFZ6hS69JMtnvFnLVt9aiWEivZ9-izNgMHtB+KeAWAfaXaQ@mail.gmail.com>
 <6f52ccd2-8411-0c53-2deb-885bb1234ce5@leemhuis.info>
From: "Wilczynski, Michal" <michal.wilczynski@intel.com>
In-Reply-To: <6f52ccd2-8411-0c53-2deb-885bb1234ce5@leemhuis.info>
X-ClientProxiedBy: FR3P281CA0004.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:1d::23) To CO6PR11MB5603.namprd11.prod.outlook.com
 (2603:10b6:5:35c::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8da4a85c-2f15-49ae-cdc4-08da5e8d6b25
X-MS-TrafficTypeDiagnostic: SJ0PR11MB5135:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xFqdStfy+yFiwxuOOvBVzJSrBtZVvjO6aMo8gBuPQ+L7I8BKMZNjqAWGWzNR+q1VlKVMaVVRgXuzjePaVoWUCVoLemHgCN3CRc9id9ATy7nqgZ5UG6eUj57+YAczrgy4jpIpyfnDl3gR8z4COKqcMZMcHpi6/w/BB3fKQwi3FW8K5R4YlIxUWmIYs4RODA6JHaAAiLZyIPWLJ2pyxsxtu6BAruhaVT0JFIRJZUMQVy6hhea5K90pGONvEa9XbAtrg2W/4ViK+v6JgzBnQfhRPd88sgt0FNMb9NbozRXE0be0PZ55V72ADeUnx3K6uZowQjMNo2CNCvUcN5jT7GPhbscIKFZId8951F2LtIqKWtQ3GtkY0JXNwlXOBBkuoTcZQ0skde0YAL+mrXrVm1Bxg0HviwNE03Is3YpXDntEzmkRdpKU9oPUAHVfcmU02LEAHaLdptUr+haEMqiVzUKCfcHJOlFzlk16WnqHaU1g1yaTnvnChDL1V/1t2Pl61BuqGRo/i05FE+/NSQX/hf59D8DKU6/pAzMn1qiV2RZPFq2WiRGSf18oBIASsAcS0V59Z6poJs9b4ntV9yvqFNFOLlcYTBv/O0XCSizgs5+XfTivN5BCawueHIJ/E+xnrPHm0a9mR0K45IDws9XCYZKM8VqYO7ZK7nRXObm/hMUW1HuehWAaW3LPBY1nDEnm7kKm5KrtgYuS5EWKTn+f0TmNa+qqBpswog77qE0iQjBsRYpRzKZ49RGDLGcssPWKDhrHhcXqLikwZTUuzi5rTFmdzh/NqFhUwP9YQYcDnImEl8oDXvfMQjndAIlQaT7F487wiivfs0H7tl8GwkzOddWJLzfrRZB9HlzcjIOgtvdbDnSpBrbW64Xof0HLh8/6QYQjcDB2aU1IzkHmtSvitVXxjdGCaFqebTnsIHW5SOMdawY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO6PR11MB5603.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(366004)(39860400002)(396003)(136003)(346002)(5660300002)(8936002)(66556008)(6486002)(966005)(83380400001)(186003)(82960400001)(478600001)(66574015)(41300700001)(2616005)(54906003)(2906002)(8676002)(86362001)(6512007)(26005)(53546011)(31696002)(316002)(110136005)(36756003)(6636002)(4326008)(31686004)(6666004)(38100700002)(6506007)(66476007)(66946007)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZnBCNkc4OHJJTDAvNCswYjZoVlJaTzA1KzUydFZGeXR1VzBOdEI2OUphbjU3?=
 =?utf-8?B?bEJiNUorQWs5bW04c3VnNXJrcVpoNDVMaUFLSmp1WHV4NkFVS2IrVWpmeC9k?=
 =?utf-8?B?MzAxSzlKMERzYmFoZFpaOUdLb1BrbE8vbi9mWCthRTdTTVRLMGI4dFB2c2pr?=
 =?utf-8?B?OUpmWnJRVUlaSGg5WU16cFcyL3BKR1hIcnhyZytUUzRWQ2Z1WlFaNlR6LzRG?=
 =?utf-8?B?SWp1SDFkVUtidVNUZS9zMXpOYnZBY3pCdTc1R21wV1ZOTFhBMlJpVURqcFhX?=
 =?utf-8?B?RmF3VzY0Z3hSN2NFcFBUL0RTZEZWbG02bFYva2xzU05IZGVRbjNpYzlSR3hM?=
 =?utf-8?B?OTVBaXF0RFAzQjZ2L2RpWXF3bG1aNjJrblY0S0ROcWpvSk16MFNjTSthNkg5?=
 =?utf-8?B?c2RoRnl6RFBIS0hESWFZN25ZR0ozN1JQS1phcThPWXREVkI2WDUzS1ZidThz?=
 =?utf-8?B?ZkROQnphQ0F0SkIwNi9sTG9pbi9QVExjZGZ5b1FJZXBycnlXNUtBMTFSbTIv?=
 =?utf-8?B?VUdnRGJ0Nm9NTXNyRFNoK0VmSDk0MGVPNXU3QTN2cFl0N2VEeEZVQkx0RzFt?=
 =?utf-8?B?STRqUVZZZGFrL0RlRmsxVmVsM25XdVRjeGtjM3F0d3pBL0VVdjFIUWZ5Q3ky?=
 =?utf-8?B?UDA2Z2duL295bGhONUdQWHhVMFg5Tkw4d1NuVFg2a0hMbXdFbVRIa2h6bkJG?=
 =?utf-8?B?dWR6MEdiVjlDN3gzY2tCN1NuNEloTHlMeEE1U2NnaE5icjJuSDlubGdnRUFs?=
 =?utf-8?B?UTRHQXMyNDV5TVpZdDFQaFdiN2FoM0ZGWGQ5UUJlMkxNR0ZQd3g4THZ0Q0Vx?=
 =?utf-8?B?U0ZLeXZ2MHV2UnUzQWdQVURWYVhlRGl4RFprd0VlQUVwR0w4VzdNa21DcUZ2?=
 =?utf-8?B?MWEvS3RKRkViWmJuUS9nRGFyR25PMzRiK2ZsVnpqbFZQbXV1VW80S1Z1TWZn?=
 =?utf-8?B?eDJKMWxNOUlsSjNxTHhBclk2dVp3YTJMM0VseWwvbnlkUzdadEh1MGlCZWFC?=
 =?utf-8?B?N0txR3ZTNEFmdDZCc3AzcFp4SXhnZUVqV3o5cFlvVXNzY0IrRWh6YXR3Y2FW?=
 =?utf-8?B?UnprZHcxMGpJOXFnaVErS0Z3Mm1yd0ZEYnNRenU1WFFPV1BjeldHSVFHakRm?=
 =?utf-8?B?aExvWVpzSHBZNkF2b0tpQWdwaFpJOUhLYnczY3ZwZDFNRXQ0NWhPbXpuVmRm?=
 =?utf-8?B?VWpZL0dUa05LdEJrTHFJcEZZeG1DaTNVZk8yVUFvWmpzODBpMnFLWjdPajRH?=
 =?utf-8?B?cVJ1cXVYUWNMd0lieUNPUGFqUDBSYlR4VkxZcmEwbWxQdUE1WjZSa2VhM1Yv?=
 =?utf-8?B?R0d5dUdEQURNMkxKa3I4ZFVYcDFVQk9WWVFZZGhrV2dFTE9aRGF6cHdYVHNO?=
 =?utf-8?B?OUhrLzFobkZsUmVjWWhZUTB1dnJISGhBbFkvVjFyWUhQNEpkbGJySjBPUXBC?=
 =?utf-8?B?Qk41b1FJL25aZ1VkUjRzZjd3Rk9wNVM4cWR6SUFQekovQnZqQ3kvb29oNnFT?=
 =?utf-8?B?QnVMbUI2YWVGRkhXcklSOFI2dUg5RzAvSW8zTEpLRFR3VUVQR2pOeDF4QTh5?=
 =?utf-8?B?UXUwRjJwbllMbFBHQjJocStmN2JyVU1qQTFYYVpDSzVScXVwekswdGV3cXBv?=
 =?utf-8?B?ZDFaUmhLdzVncW5lK3QyajlsSzJKaGFVbytwd0hLWDJ2Mld0TThYRGthLzg3?=
 =?utf-8?B?NTRmS29YYyt2eXpSQ3IwODJjK2lGVXZLa2tSOWhuUWRFNkJYN3ppSy9IT3Fo?=
 =?utf-8?B?VmV5MWNsSjNjQ0o3cmpyUmwzZCszNEFPRDdQRnBibnBIVmRHME5XUzdwMW9J?=
 =?utf-8?B?TzNnNjJlYTBKUDNTK3E3U1A4eDd1V3FKcjJzdDhIY3hkN0w1bWp6SUg1R05j?=
 =?utf-8?B?QWpHWXpYTm16SkRSeE5QWlBmdHh6WUJqa2dHT0xyYTdEQkg4SzZlcXM2M1J5?=
 =?utf-8?B?VU1TRksrWFQ3b0NmdmRYc2p5c0lnK0E3cTRqNVFBanV4eUxUdkFqN1RBb1pS?=
 =?utf-8?B?UVVDN1c0d2FXOTN4R0YzYWkzb0tsTmZxZ0xvSmRvOVozelpXK0VVOFA1MmJz?=
 =?utf-8?B?OS91U093MnIrMzUvam1pTHljMXNQRjlIQUtkUUpYeFpvdzM0S3EwVjFwaGNH?=
 =?utf-8?B?UEpsUkxQSUlpY0hySGRuMjlUZXBMT3NnTmJYVU8xUTNpSnVzd0Y5QjIzanh3?=
 =?utf-8?B?b3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8da4a85c-2f15-49ae-cdc4-08da5e8d6b25
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5603.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jul 2022 13:51:11.0042 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /KDtk2ycZW2SLKKJ+Sk/R+4uOPOF6NztGgedePA9Pe/Y3gP3td2sgKovbnkka87Zon+TTVgS87duMOPu2VI7eCp/DKWdty4ct4Y7fCJnVSY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5135
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657029074; x=1688565074;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=GZT7VSGI0ApXibcGwCpKc7f4P6jLaEHJ4OmDvMtBvVI=;
 b=HPFNt5I+yzcV7HGmn2c4LjT6uV76YUo55Yg0ELWhj1MYeEDi8yCyoGty
 SaRqa9Zzc732CxCe0Rcl2INangUpkABHLIUZyU8YFkonUYgbNDgKvHHL3
 7NcltrIs+ZtRJvQRXwhQAjQRyalO9v9v1ENPxiB4pMeUjvjYCcCdFYyo6
 DYQj6oHTuKcdYAF2+tnvrC9ma9vZOQbDhw6XFLqf2II3S8Y0ZAvTYI6uV
 prDXzYwV0lzl/tMb5Qh+IWFGHnNSaD4wa4k0dKLjdKr7GvcSNlybQy3o+
 8tlspCPIeD3MHZU/E6wBUJuSeDWG0Quj2kRi/O7XyoOSO/9VsM+2RNlb8
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HPFNt5I+
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] ice: Error setting promisc mode on VSI 6
 (rc=-17) @ 5.18.x
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
Cc: "regressions@lists.linux.dev" <regressions@lists.linux.dev>,
 intel-wired-lan@lists.osuosl.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 LKML <linux-kernel@vger.kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGksCgpUaGFua3MgZm9yIHlvdXIgZS1tYWlsLCB1bmZvcnR1bmF0ZWx5IG15IHBhdGNoIGlzIG5v
dCBmaXhpbmcgdGhpcyBpc3N1ZS4KCkFkZGluZyBHcnplZ29yeiBTaXdpayzCoCBzaW5jZSBoZSBp
cyB3b3JraW5nIG9uIHNpbWlsYXIgaXNzdWUgYW5kIGFscmVhZHkgCmhhcyBhIHBhdGNoIHRoYXQg
aXMgYmVpbmcgdGVzdGVkL3Jldmlld2VkIGludGVybmFsbHkgYXQgdGhlIG1vbWVudC4KCkhlIGNh
biB5b3UgYSBzZW5kIHBhdGNoIHRvbW9ycm93IHNvIHlvdSBjYW4gdGVzdCBpZiBpdCBhbHNvIGZp
eGVzIHlvdXIgCnByb2JsZW0uCgoKQlIsCgpNaWNoYcWCCgoKT24gNy81LzIwMjIgMTE6NDMgQU0s
IFRob3JzdGVuIExlZW1odWlzIHdyb3RlOgo+IFthZGRpbmcgTWljaGFsIHRvIHRoZSByZWNpcGll
bnRzXQo+Cj4gSGksIHRoaXMgaXMgeW91ciBMaW51eCBrZXJuZWwgcmVncmVzc2lvbiB0cmFja2Vy
LiBUb3AtcG9zdGluZyBmb3Igb25jZSwKPiB0byBtYWtlIHRoaXMgZWFzaWx5IGFjY2Vzc2libGUg
dG8gZXZlcnlvbmUuCj4KPiBJbnRlbCBuZXR3b3JrIG1haW50YWluZXJzLCBoZWxwIG1lIG91dCBo
ZXJlIHBsZWFzZS4gSGFzIGFueXRoaW5nIGJlZW4KPiBkb25lIHRvIGFkZHJlc3MgdGhpcyByZWdy
ZXNzaW9uPyBJdCBsb29rcyBsaWtlIEphcm9zbGF2IGRpZG4ndCBldmVuIGdldAo+IGEgc2luZ2xl
IHJlcGx5LiBXaGF0J3MgdXAgdGhlcmU/Cj4KPiBCVFcsIHRvb2sgYSBxdWljayBsb29rIGludG8g
dGhlIGlzc3VlIGFuZCBub3RpY2VkIGEgdGhlIHBhdGNoICJpY2U6IEZpeAo+IHByb21pc2N1b3Vz
IG1vZGUgbm90IHR1cm5pbmcgb2ZmIiBmcm9tIE1pY2hhbDoKPiBodHRwczovL2xvcmUua2VybmVs
Lm9yZy9hbGwvMjAyMjA3MDQxMzEyMjcuMjk2NjE2MC0zLW1pY2hhbC53aWxjenluc2tpQGludGVs
LmNvbS8KPgo+IElzIHRoaXMgbWF5YmUgZml4aW5nIHRoaXM/IFRoZW4gaXQgd291bGQgYmUgZ29v
ZCB0byBhZGQgTGluayBhbmQKPiBSZXBvcnRlZC1ieSB0YWdzIHRvIHRoYXQgcGF0Y2guCj4KPiBP
ciBpcyB0aGlzIHNvbWV0aGluZyBlbHNlIGFuZCBKYXJvc2xhdiBuZWVkcyB0byBiaXNlY3Q/Cj4K
PiBDaWFvLCBUaG9yc3RlbiAod2VhcmluZyBoaXMgJ3RoZSBMaW51eCBrZXJuZWwncyByZWdyZXNz
aW9uIHRyYWNrZXInIGhhdCkKPgo+IFAuUy46IEFzIHRoZSBMaW51eCBrZXJuZWwncyByZWdyZXNz
aW9uIHRyYWNrZXIgSSBkZWFsIHdpdGggYSBsb3Qgb2YKPiByZXBvcnRzIGFuZCBzb21ldGltZXMg
bWlzcyBzb21ldGhpbmcgaW1wb3J0YW50IHdoZW4gd3JpdGluZyBtYWlscyBsaWtlCj4gdGhpcy4g
SWYgdGhhdCdzIHRoZSBjYXNlIGhlcmUsIGRvbid0IGhlc2l0YXRlIHRvIHRlbGwgbWUgaW4gYSBw
dWJsaWMKPiByZXBseSwgaXQncyBpbiBldmVyeW9uZSdzIGludGVyZXN0IHRvIHNldCB0aGUgcHVi
bGljIHJlY29yZCBzdHJhaWdodC4KPgo+ICNyZWd6Ym90IHBva2UKPgo+IE9uIDE5LjA2LjIyIDE5
OjAwLCBKYXJvc2xhdiBQdWxjaGFydCB3cm90ZToKPj4gSGVsbG8sCj4+Cj4+IHllcywgSSByZXZl
cnQgdGhhdCBjb21taXQuIFN0aWxsIHRoZSBwcm9taXNjcyBjYW5ub3QgYmUgc2V0IGFuZCB0aGUg
ZG1lc2cKPj4gZXJyb3IgbWVzc2FnZSBjaGFuZ2VkIHRvOgo+PiAtLS0tLS0tLS0tLS0tLS0KPj4g
JCBpcCBsaW5rIHNldCBlbTEgcHJvbWlzYyBvbgo+PiAkIGRtZXNnCj4+IC4uLgo+PiBpY2UgMDAw
MDo2MzowMC4wIGVtMTogRXJyb3Igc2V0dGluZyBNdWx0aWNhc3QgcHJvbWlzY3VvdXMgbW9kZSBv
biBWU0kgNgo+PiAuLi4KPj4gLS0tLS0tLS0tLS0tLS0tCj4+Cj4+IEphcm9zbGF2IFAuCj4+Cj4+
IG5lIDE5LiA2LiAyMDIyIHYgMTM6NTEgb2Rlc8OtbGF0ZWwgVGhvcnN0ZW4gTGVlbWh1aXMKPj4g
PHJlZ3Jlc3Npb25zQGxlZW1odWlzLmluZm8+IG5hcHNhbDoKPj4KPj4+IFtUTERSOiBJJ20gYWRk
aW5nIHRoaXMgcmVncmVzc2lvbiByZXBvcnQgdG8gdGhlIGxpc3Qgb2YgdHJhY2tlZAo+Pj4gcmVn
cmVzc2lvbnM7IGFsbCB0ZXh0IGZyb20gbWUgeW91IGZpbmQgYmVsb3cgaXMgYmFzZWQgb24gYSBm
ZXcgdGVtcGxhdGVzCj4+PiBwYXJhZ3JhcGhzIHlvdSBtaWdodCBoYXZlIGVuY291bnRlcmVkIGFs
cmVhZHkgYWxyZWFkeSBpbiBzaW1pbGFyIGZvcm0uXQo+Pj4KPj4+IEhpLCB0aGlzIGlzIHlvdXIg
TGludXgga2VybmVsIHJlZ3Jlc3Npb24gdHJhY2tlci4KPj4+Cj4+PiBPbiAwOS4wNi4yMiAwODo1
OCwgSmFyb3NsYXYgUHVsY2hhcnQgd3JvdGU6Cj4+Pj4gSSdtIHN0cnVnZ2xpbmcgd2l0aCBicm9r
ZW4gbmV0d29yayBjb25uZWN0aXZpdHkgYXQgVk1zIHVzaW5nIGxpbnV4Cj4+Pj4gYnJpZGdlIGF0
IGhvc3QgYWZ0ZXIgdXBkYXRlIG9mIGtlcm5lbCBmcm9tIDUuMTcueCB0byA1LjE4LnggQCBEZWxs
Cj4+Pj4gUjc1MCBzZXJ2ZXIgd2l0aCBFODEwLVhYViBOSUNzLgo+Pj4+Cj4+Pj4gSSBub3RpY2Vk
IHRoZSBrZXJuZWwgcmVwb3J0cyAiRXJyb3Igc2V0dGluZyBwcm9taXNjIG1vZGUiIGluIGRtZXNn
Lgo+Pj4+Cj4+Pj4gIyBkbWVzZyAgfCBncmVwICdFcnJvciBzZXR0aW5nIHByb21pc2MnCj4+Pj4g
WyAgIDI0Ljg2MzU1N10gaWNlIDAwMDA6MzE6MDAuMDogRXJyb3Igc2V0dGluZyBwcm9taXNjIG1v
ZGUgb24gVlNJIDYgKHJjPS0xNykKPj4+PiBbICAgMjQuODc4MzY5XSBpY2UgMDAwMDozMTowMC4w
OiBFcnJvciBzZXR0aW5nIHByb21pc2MgbW9kZSBvbiBWU0kgNiAocmM9LTE3KQo+Pj4+IFsgICAy
NS4wNDU4MzRdIGljZSAwMDAwOjMxOjAwLjA6IEVycm9yIHNldHRpbmcgcHJvbWlzYyBtb2RlIG9u
IFZTSSA2IChyYz0tMTcpCj4+Pj4gWyAgIDI1LjEyOTg0MF0gaWNlIDAwMDA6YjE6MDAuMDogRXJy
b3Igc2V0dGluZyBwcm9taXNjIG1vZGUgb24gVlNJIDYgKHJjPS0xNykKPj4+PiBbICAgMjUuMTQ0
NDQwXSBpY2UgMDAwMDpiMTowMC4wOiBFcnJvciBzZXR0aW5nIHByb21pc2MgbW9kZSBvbiBWU0kg
NiAocmM9LTE3KQo+Pj4+Cj4+Pj4gIyBsc3BjaSAtcyAwMDAwOjMxOjAwLjAKPj4+PiAzMTowMC4w
IEV0aGVybmV0IGNvbnRyb2xsZXI6IEludGVsIENvcnBvcmF0aW9uIEV0aGVybmV0IENvbnRyb2xs
ZXIKPj4+PiBFODEwLVhYViBmb3IgU0ZQIChyZXYgMDIpCj4+Pj4gIyBsc3BjaSAtcyAwMDAwOmIx
OjAwLjAKPj4+PiBiMTowMC4wIEV0aGVybmV0IGNvbnRyb2xsZXI6IEludGVsIENvcnBvcmF0aW9u
IEV0aGVybmV0IENvbnRyb2xsZXIKPj4+PiBFODEwLVhYViBmb3IgU0ZQIChyZXYgMDIpCj4+Pj4K
Pj4+PiBJdCBpcyBlYXN5IHRvIHJlcHJvZHVjZSBieToKPj4+PiAgICAjIGlwIGxpbmsgc2V0IGVt
MSBwcm9taXNjIG9uCj4+Pj4gICAgIyBkbWVzZyAtVCB8IHRhaWwgLW4gMQo+Pj4+ICAgIFtUaHUg
SnVuICA5IDA4OjQ4OjE5IDIwMjJdIGljZSAwMDAwOjMxOjAwLjA6IEVycm9yIHNldHRpbmcgcHJv
bWlzYwo+Pj4+IG1vZGUgb24gVlNJIDYgKHJjPS0xNykKPj4+Pgo+Pj4+IENvdWxkIGl0IGJlIGFu
ICdpY2UnIGRyaXZlciBidWcgaW50cm9kdWNlZCBpbiB0aGUgNS4xOCBrZXJuZWw/Cj4+PiBDQ2lu
ZyB0aGUgcmVncmVzc2lvbiBtYWlsaW5nIGxpc3QsIGFzIGl0IHNob3VsZCBiZSBpbiB0aGUgbG9v
cCBmb3IgYWxsCj4+PiByZWdyZXNzaW9ucywgYXMgZXhwbGFpbmVkIGhlcmU6Cj4+PiBodHRwczov
L3d3dy5rZXJuZWwub3JnL2RvYy9odG1sL2xhdGVzdC9hZG1pbi1ndWlkZS9yZXBvcnRpbmctaXNz
dWVzLmh0bWwKPj4+Cj4+PiBKYXJvc2xhdiwgZGlkIHlvdSB0cnkgdG8gcmV2ZXJ0IHRoZSBjaGFu
Z2UgdGhhdCB3YXMgc3VnZ2VzdGVkIHRvIHlvdSBpbgo+Pj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5v
cmcvYWxsL2Q5OTNiYmI2LWU1ODMtNWQ5MS03NmMwLTg0MWNjNWRhODZhZkByb2Vjay11cy5uZXQv
Cj4+PiBEaWQgaXQgaGVscD8KPj4+Cj4+PiBBbnl3YXk6IFRvIGJlIHN1cmUgYmVsb3cgaXNzdWUg
ZG9lc24ndCBmYWxsIHRocm91Z2ggdGhlIGNyYWNrcwo+Pj4gdW5ub3RpY2VkLCBJJ20gYWRkaW5n
IGl0IHRvIHJlZ3pib3QsIG15IExpbnV4IGtlcm5lbCByZWdyZXNzaW9uIHRyYWNraW5nCj4+PiBi
b3Q6Cj4+Pgo+Pj4gI3JlZ3pib3QgXmludHJvZHVjZWQgdjUuMTcgdG8gdjUuMTgKPj4+ICNyZWd6
Ym90IHRpdGxlIG5ldDogaWNlOiBFcnJvciBzZXR0aW5nIHByb21pc2MgbW9kZSBvbiBWU0kgNiAo
cmM9LTE3KSBACj4+PiA1LjE4LngKPj4+ICNyZWd6Ym90IG1vbml0b3IKPj4+IGh0dHBzOi8vbG9y
ZS5rZXJuZWwub3JnL2FsbC9DQUs4ZkZaNjgreFoyWjB2RFduaWhGOFBlSktFbUV3Q3l5Ri04VzlQ
Q1pKVGQ4emZwLUFAbWFpbC5nbWFpbC5jb20vCj4+PiAjcmVnemJvdCBtb25pdG9yCj4+PiBodHRw
czovL2xvcmUua2VybmVsLm9yZy9hbGwvQ0FLOGZGWjYxbVEzQVlwZFdqV3R5VVh6cnMtUlZNVzYx
bUJMcmpSRFhCeEItRjlHemJBQG1haWwuZ21haWwuY29tLwo+Pj4gI3JlZ3pib3QgaWdub3JlLWFj
dGl2aXR5Cj4+Pgo+Pj4gVGhpcyBpc24ndCBhIHJlZ3Jlc3Npb24/IFRoaXMgaXNzdWUgb3IgYSBm
aXggZm9yIGl0IGFyZSBhbHJlYWR5Cj4+PiBkaXNjdXNzZWQgc29tZXdoZXJlIGVsc2U/IEl0IHdh
cyBmaXhlZCBhbHJlYWR5PyBZb3Ugd2FudCB0byBjbGFyaWZ5IHdoZW4KPj4+IHRoZSByZWdyZXNz
aW9uIHN0YXJ0ZWQgdG8gaGFwcGVuPyBPciBwb2ludCBvdXQgSSBnb3QgdGhlIHRpdGxlIG9yCj4+
PiBzb21ldGhpbmcgZWxzZSB0b3RhbGx5IHdyb25nPyBUaGVuIGp1c3QgcmVwbHkgLS0gaWRlYWxs
eSB3aXRoIGFsc28KPj4+IHRlbGxpbmcgcmVnemJvdCBhYm91dCBpdCwgYXMgZXhwbGFpbmVkIGhl
cmU6Cj4+PiBodHRwczovL2xpbnV4LXJlZ3RyYWNraW5nLmxlZW1odWlzLmluZm8vdHJhY2tlZC1y
ZWdyZXNzaW9uLwo+Pj4KPj4+IFJlbWluZGVyIGZvciBkZXZlbG9wZXJzOiBXaGVuIGZpeGluZyB0
aGUgaXNzdWUsIGFkZCAnTGluazonIHRhZ3MKPj4+IHBvaW50aW5nIHRvIHRoZSByZXBvcnQgKHRo
ZSBtYWlsIHRoaXMgb25lIHJlcGxpZWQgdG8pLCBhcyB0aGUga2VybmVsJ3MKPj4+IGRvY3VtZW50
YXRpb24gY2FsbCBmb3I7IGFib3ZlIHBhZ2UgZXhwbGFpbnMgd2h5IHRoaXMgaXMgaW1wb3J0YW50
IGZvcgo+Pj4gdHJhY2tlZCByZWdyZXNzaW9ucy4KPj4+Cj4+PiBDaWFvLCBUaG9yc3RlbiAod2Vh
cmluZyBoaXMgJ3RoZSBMaW51eCBrZXJuZWwncyByZWdyZXNzaW9uIHRyYWNrZXInIGhhdCkKPj4+
Cj4+PiBQLlMuOiBBcyB0aGUgTGludXgga2VybmVsJ3MgcmVncmVzc2lvbiB0cmFja2VyIEkgZGVh
bCB3aXRoIGEgbG90IG9mCj4+PiByZXBvcnRzIGFuZCBzb21ldGltZXMgbWlzcyBzb21ldGhpbmcg
aW1wb3J0YW50IHdoZW4gd3JpdGluZyBtYWlscyBsaWtlCj4+PiB0aGlzLiBJZiB0aGF0J3MgdGhl
IGNhc2UgaGVyZSwgZG9uJ3QgaGVzaXRhdGUgdG8gdGVsbCBtZSBpbiBhIHB1YmxpYwo+Pj4gcmVw
bHksIGl0J3MgaW4gZXZlcnlvbmUncyBpbnRlcmVzdCB0byBzZXQgdGhlIHB1YmxpYyByZWNvcmQg
c3RyYWlnaHQuCj4+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5v
cmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQt
bGFuCg==
