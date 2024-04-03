Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC7D0897BFF
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Apr 2024 01:24:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5C2E941912;
	Wed,  3 Apr 2024 23:24:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id e0wCdN2mnFjf; Wed,  3 Apr 2024 23:24:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A613341908
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712186692;
	bh=X+e07gmk0NLKLEO80GRFaXn84MPHsPTtrB1EtL/AJB8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=dseuc+yrN68cOwpLlnN86vyTg+ni8F2NCKea2TKYEhpO7822zAS1NDzhH2L6pvRWC
	 ICgEuHS7uBgDOhxAA9wlRuuwqeiAlKpp32f71OX1IwwQ8aPnKpY5ppQSR3eLSged1i
	 IMhFYQuKHBh6t0O0OVdjaebTyDAuwlYocaTavnvjNLzIO5PpF81Jhj60TIZ/39QXZF
	 mUvdqARk71AODcdJPDiDXbs2N3lWHMnjqq2j9RkZXQQMbAZVRJLUfe/sKoZ7DvHnh3
	 wtWKFxCc3kf7Aq5G4eXd3jyVQuBYYEil5epIsZHMig2oYf11bubI2GDyfKONocqdoh
	 Y6F9xO4O6MaJg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A613341908;
	Wed,  3 Apr 2024 23:24:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DC26A1BF35D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 23:24:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C75166068B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 23:24:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rPzHUPT7ukbb for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Apr 2024 23:24:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6C67060681
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6C67060681
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6C67060681
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 23:24:46 +0000 (UTC)
X-CSE-ConnectionGUID: tkFJbIibQH+yIBh5FXYNZw==
X-CSE-MsgGUID: aj9ALLIjR/yvKoFNmL+n9A==
X-IronPort-AV: E=McAfee;i="6600,9927,11033"; a="10417277"
X-IronPort-AV: E=Sophos;i="6.07,178,1708416000"; d="scan'208";a="10417277"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 16:24:46 -0700
X-CSE-ConnectionGUID: FKPMjS6YQkWXgZY3g1mSvA==
X-CSE-MsgGUID: oqBkRFd7SeyDtiWus1hnog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,178,1708416000"; d="scan'208";a="19030760"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Apr 2024 16:24:46 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 3 Apr 2024 16:24:45 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 3 Apr 2024 16:24:45 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 3 Apr 2024 16:24:45 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 3 Apr 2024 16:24:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FB07TxiSWTTn953LEGPIBOgrB2zAMGMC4nArHZrWBpdObUHlgtkLy6Fjkp66Q41Z4UkISLb4V+9EK+bEizL8/HJJna9YEXWxV77igjbRyWPYmufmYqBCQyJZg/rknN6EhPMDbZkcuCMRvU/Wz6/7Y78t9snsTf8YpKtSj0BPiI9YJ0d7n8nFglxus+qyLD4GzvX62MkEqai+LrjDr5/ZWAAHmfP8IDEn6C0OUSBJh7Uq8C6UKTICAq6nkQwhpqQYo1wmWuE/zCEEiLpgVgQAHi832Xb73iFWagDLrBwnTCoikUGYlobkeyZQoWgSEo+TCaLnYoeveskpcPX7POoYbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=X+e07gmk0NLKLEO80GRFaXn84MPHsPTtrB1EtL/AJB8=;
 b=UBFBz4OK5L89Vm+ozudVXeSgf8R2xsm12FRk7M7A9SsERLlcJsCk0MI7UOGOWahRcrjUwf1OHU4HwnVSAFLuGXCTo+qLvVVg247jL4eu7hoxDuRe4wGvZzkrMiE+Q1lLr0QaooWl+Af1Z1+aiFrEvgdEVMCdHgZ0A5GB9wORR+CkYqYM8aj5jQfv0uDSR2kipepCAOnB/D1Lx8ElX8gbwJ6uxSMsvJdU1m96808Lo4Sn4xUyEt39J/W36n9Z88WdH2sAiGkwdqerSzdUcS9gbm2YOgs2KwdLMVH7ihBUjXF2+XowAoIEKXJtTPKbqqjGwjSmf3g5p8rytqSb6tU/fQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by IA1PR11MB7272.namprd11.prod.outlook.com (2603:10b6:208:428::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.22; Wed, 3 Apr
 2024 23:24:43 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::9c80:a200:48a2:b308]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::9c80:a200:48a2:b308%4]) with mapi id 15.20.7452.019; Wed, 3 Apr 2024
 23:24:43 +0000
Message-ID: <9b20b303-d50c-1470-932a-08875f65052c@intel.com>
Date: Wed, 3 Apr 2024 16:24:40 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: "Kolacinski, Karol" <karol.kolacinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
References: <20240329161730.47777-14-karol.kolacinski@intel.com>
 <ec2aa7da-a3dc-36f2-39bc-052e9ba97de0@intel.com>
 <MW4PR11MB580062A340F9A03B3780EF64863E2@MW4PR11MB5800.namprd11.prod.outlook.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <MW4PR11MB580062A340F9A03B3780EF64863E2@MW4PR11MB5800.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0332.namprd03.prod.outlook.com
 (2603:10b6:303:dc::7) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|IA1PR11MB7272:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3mRXiR3ZiqB/G97UXfaoxp146v4tz90O+CotEFGo1/YtGNMIJvuYfAaRfVwaZqexTMKVIHN49hcPwfmQfTETilpElCjXpCCVAnj3SnwdsrAgz7JBLi4GqHdc2XRU9Zia0H8vA2vMsuKPdkc7d/hNWIVtfxb+iZ4Vjuff8ld+PQLYbPzzrMhyCaf96gA7xql3z0vqtzK3CKHBo+ibIdcVqi+sg353SOHUgVqGEK5DPDy+sHYI5xr+k6EpFnmGOi8nlnAnxkRHODhNMMiiqF81K1N4AU/uiXMNL2btFpWgTbcKnEEtkj9Mg/OPF0fmOcM7Do1fLqmBNMspCY6nEHfroHb7E9k7q+uSrO/q1pv64nUvIahHB9mao6Y3e6kg/4rU1CfOaGyGcxS9uupD1bfxMcOtt38H5g1f3iY0ChJyF4pF1m8CQZ7rU8iC/K3ez9BAqWyWBq7yrHVly2j8hd5xTFxGkCmyM7mXO7ftKIQsj4twrl8GO0mmjf0E8VI0Ut+HHNtgxS5AagHGavxjVSwSW7E99EXF1/wGqHyVsIU+TnNfgb75Z1aH79GI2k1C8s9BTDhsPNlhgnONW8MaxZ8iks3yqVe893SF7Ghxq89tNpfrUJCQKA27Nvc4ghhcSZTnXDbhHUPcezu6LlRYen6QwHeJmQ3mpClyfO+hmHVB2iE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MWY2Y0lOVXNtUkxzK1FoN1ZTMCtXcDYrM0pyaE5RUEdicXRhYU8vMTBnVDJM?=
 =?utf-8?B?QkhiNmplRVpKQUtHTzRJYzJQUmxrYjhxOWg4OFEwaVNMdWg0dzdrdFREa3Ro?=
 =?utf-8?B?eERSZ3ZaWXhKUTk2bDFPRkdmUlgvSDRUa1hsZ1VTeHp1VTZaS1JrczJUSnhx?=
 =?utf-8?B?cDVtVEdQaFFuRWxRWGJLV0ZtS0syaHVYVmJOYW9wM0c5WkVnYXFCRGxlMXYx?=
 =?utf-8?B?MHB0bWl4NnhYd0NsWWo4aGE4M3FzZkdRVWNZTndTNmI1RzBISHRZUFg0ZERp?=
 =?utf-8?B?Vk8ybTcxclExbCtFNjJwNEVQcWJ5SW9IemNoUUhhQlV0YjhRSGc3Z0ZDTTl1?=
 =?utf-8?B?NDgyYm00eHFHQVh4U2haWkZNNUFLWFdXaGpxUmRBOGlTVFRvUzBOSktDZldi?=
 =?utf-8?B?KzlRNlVUOFM0RkxDdVlGWTBOcTlEblJQb1pYNHh6aEgwaXY3bUo2NGc4aDg5?=
 =?utf-8?B?ZDF2MTlUcG5GOVVFN0ZrUWNJZ1lkNFlSODZYNFF0VlZkRks4bGJEeDRmanZC?=
 =?utf-8?B?UkdBZWQ0dkhFNi80VTRhanJkYVgwS2FvT3p0eGdNYks5NkkwSjJSbGhkWEJU?=
 =?utf-8?B?WGl6UWgyM2VMNnpaeE12QUZWaWJMUDV0a2pxcElnTVdsY0dwaVprYy93TjM2?=
 =?utf-8?B?ZlVKenhmMjk2NjFHbnhDSzN5ZWUzNWM3ZGJXeXVxOCtOeEFoaGhRZWpFVWp1?=
 =?utf-8?B?UmRtdTBnQU93MlZVdXhIMTk0VXAxeFhWZkY4Uk9GSWlsbDU4TlJCZ3FFREZp?=
 =?utf-8?B?cUJxWnlwVEJyRDFoMGU1UkIySitHNll0LzNvVnUzZ0tnRW51Vm1FYW5RcXAr?=
 =?utf-8?B?QUc4KzhYeTcwejRhV2RqcTNsMm5lL2R0a0w1dWJJVzl2eU5aaFkxS3hzb3l3?=
 =?utf-8?B?ck15UkVqWVVmYTNkN2VWZzhFMVZpdDFvRDk2cWt0WUNvWEhocnNwQ0JBTUVk?=
 =?utf-8?B?bitPaGhBQnJZV1hVUmNZMjJGQ01FZThXaWl1RStSODR3aGZUbTZKRlhCMXJL?=
 =?utf-8?B?VUxZWWFkcXRHcW1wWDV2RHZBeGI4Wmd5L3R5dnIwRFdKODVFNU8zQTFiWUl2?=
 =?utf-8?B?M0doYlI2SUpyUFd5clNEa2NEQXdzb0VOQ3B3MFpScnJCUGh6QXlpVTRzWjIy?=
 =?utf-8?B?WVhlMG51RUNiSWU2dlhRQzZwcGRQdXllK21jU2hUcUNEMnh6ZFpoT0pOMm1j?=
 =?utf-8?B?RHZZUTBueTcwZnRhNHBGelZMdCt1Nys4enYwNVBBM09JSFgyblljU3NZM3R6?=
 =?utf-8?B?VDBGai9hVWJJSUdzdG01MU5WVWxXVnhSYlBsUnQ3THNUNk1tWitUZUUvSXpa?=
 =?utf-8?B?OENzeE1aajFGSmNEUlVuK1lmWWFoQitmR0xtcTZLalFLYlAwdmpkYVRUbEM5?=
 =?utf-8?B?UVpkWmc0S2h2R3NDVitNUlBHUHh1T2RPVmR1UEF1MGpyRHppMFZZanJMOUZ4?=
 =?utf-8?B?UU5hU29La2V2K25IclJ0Zkh6Z05Gd1RpaEcvbGJObUVrcEVwTjJOU2dNZ2tO?=
 =?utf-8?B?TnhjWGtlM3BybkVMdW0xYlcxbXJKS21COXNhSEJOdjlGekJoeFNQTmExVVhh?=
 =?utf-8?B?Q25JQW1aRTZheGpnN3RoM1VXVm5YdXd3eDVyZXAwTlZ2WCtEejQwbExuOWRa?=
 =?utf-8?B?Q1E0YmlUMURiR1o3T1dwN3doWWdBamZyZVIzemR0UGRqZVZoTUdndmFKSFEv?=
 =?utf-8?B?em9kQWZVT1hZQ3Q3WWUwKzJjTmtweFIzTVYzeGVZM25GZkUwa0hsK2VGeXBt?=
 =?utf-8?B?VlBrc1FnVlY3RFRXZGxhV2o0OHRYdFpBK3VzTzFOa21ad0hsTUxKanpzMDB4?=
 =?utf-8?B?Z3FEQTk1cmkyYkJBVUNkdXA4MnFBcWNIeXQ4RTZzS01BS0dNSk5PZExESlc5?=
 =?utf-8?B?OXdZaytiN0h3ZnVNMFVQYkE5VVFhWGQ0LzhRd0QwbDZtSDFpdXZhWXlyM0Jo?=
 =?utf-8?B?Ti9idTJjTkZqb3RhdFFZa0ZWN0VHVG5HN2hpQXBjR0pWYUFKb3pUcVZET1E4?=
 =?utf-8?B?dCtEeUZjUFYrd3lHd3VadlhwaWdwRE0rRTY5c1dEMmlDYjFZMWE2bkJrZ0Uy?=
 =?utf-8?B?c2t0a042eTFGMHp4SHgxOXEvclBPYjhYKzVZVlFFMlZmZVIvL24rVExncUxz?=
 =?utf-8?B?eXJtRk1kSytJa0toOUlMQkpxcjZuT0kzR3FPWnVlenExbVJmb1ZRNXFEdHJO?=
 =?utf-8?B?Smc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c1165276-6963-4346-108e-08dc54353e02
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Apr 2024 23:24:43.2323 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1vu43nkLrJkNEes+G3lniI4dIINJbnoELUNS9liqYhln/UnkTQi+MDQ+/inVPx7KJ+25opB7cOyzXad6jDRuXEOnGIz2Hh2QeBzGuS7aEOc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7272
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712186688; x=1743722688;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=OeWEy0qh9U6JkkLYqg5591kvJuD1G9b8oSRTlvtXw+g=;
 b=hucwIEm3qeKKGeZtBgsCD+HvXwpq0sX+zEYU2Q3ywUoz99UNTajXoRih
 AiR9aPkpesO2+c52mWt0ZFIF8CBhQQT1vtyR30qOK+Zqv5s14sm/zSOqJ
 ik1firaM9cXttPMoRgF+KnZvFvicjDDJUBk7qgg8L0QqNm+piAkPIWWV+
 SpzPyE6XaDpkz29mcPnLdfLKgdHtPge/HB3J8Z3K///JbSgCPNPqtLW4H
 MKihzRCa+zqAUFtjRg/b91diXk1zvY1lANc52pZTuAovETUvLMOKow0Uj
 3RHk+rOCovO1onsuxLBwH7zTD7IdmScxjYyQ5JySOtgKCFw1u9QB/BKFJ
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=hucwIEm3
Subject: Re: [Intel-wired-lan] [PATCH v4 iwl-next 00/12] Introduce ETH56G
 PHY model for E825C products
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 4/2/2024 5:31 AM, Kolacinski, Karol wrote:
> 
> The only thing that changed between V1 and V4 was patch 07/12, which had
> only minor changes and it has the changelog.
> Should I also include which patches were changed in the cover letter?

Yes, please. It's nice to be able to see what changed without having to 
look for a changelog in each patch.

Thanks,
Tony

> Thanks,
> Karol
