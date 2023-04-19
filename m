Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B69836E8160
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Apr 2023 20:43:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5550C6FE91;
	Wed, 19 Apr 2023 18:43:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5550C6FE91
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681929830;
	bh=NLD1TRy4QXWIC9nRrT6BNeoao2iEjkJbH/XCHfDk1nA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=jLWkSz/oYyMVziUmnua1jNTqyu+euBVvOFk0/blX7ggfGmcI+hKY7nJ9JE9p5uxEm
	 NvFE2Chxy8FxnLVk2x5ir1Whj1sgmAI/g0fHu/ejjIY6eKOnSr/Q8DO9p1xA7Jfm8A
	 jBp3hnYNH1KioncFIvL1ddMLBVL+AvrU10p/giNel6r9MVpcq/s47dDho4uzjRR90T
	 bxUaIKoijHdHJtfAvr8hNV3TI8faNRcsO6DexneEgnQeqj9Zujr4ld6QxjeMhQN/9G
	 weAXRWIJCk7tBSOOmdjexwSrAfSYGcLOV66viPicZPQjlKTemkaC52TFpl7tXNpCwL
	 QbM3YJEJyLWrQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bICd6oAzdG2e; Wed, 19 Apr 2023 18:43:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 303AF607D0;
	Wed, 19 Apr 2023 18:43:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 303AF607D0
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 216D31BF47A
 for <intel-wired-lan@osuosl.org>; Wed, 19 Apr 2023 18:43:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 04E4C40995
 for <intel-wired-lan@osuosl.org>; Wed, 19 Apr 2023 18:43:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 04E4C40995
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ye384VT4gRHY for <intel-wired-lan@osuosl.org>;
 Wed, 19 Apr 2023 18:43:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0B25B4177C
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0B25B4177C
 for <intel-wired-lan@osuosl.org>; Wed, 19 Apr 2023 18:43:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="373417088"
X-IronPort-AV: E=Sophos;i="5.99,210,1677571200"; d="scan'208";a="373417088"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2023 11:35:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="835414817"
X-IronPort-AV: E=Sophos;i="5.99,210,1677571200"; d="scan'208";a="835414817"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga001.fm.intel.com with ESMTP; 19 Apr 2023 11:35:42 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 19 Apr 2023 11:35:42 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 19 Apr 2023 11:35:42 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.103)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 19 Apr 2023 11:35:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HdNo9pP3zimRuCZLMavuGFvquOziQCN/bR4QdATNyJQy8HgaaMev9OGQkqCjwEj5P/Cj435NVwXZNHlctkD7PS9wAhwiX00kOmaLlqmQKab9NtCEb8dCdadjPpeIMRINZUEHGCv5ijFeutNtfkRxRgTEvpO3iVoOlWVFXXlfLKCkATSD0hiAEzxdPYpGZYFuSQHG3GCrDl0GKBiUxlyBPWix77gIQ73Xypwz7+t53AAiSet2k07Icxiu8rIWsKfFK3u3s3blzwaZgwWt9ChKlCrk6Hf3aHVzMyAI9bBxJBGPMSVDCzNONBGx2koHALJG7aazWyxBZ6uD9RmXchiigQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sDn376vx+bxfXGX1+TRIscNkAQReYvw1KMXU1+6mIaE=;
 b=cXeGehXHGUNN5ohpSrT6bKKRD0CXm6r0SDdA/eFu9NjDvnNqgmHUXRUH2Yxx8uV1vQT2MHSUImfAeO4sSq/wm74waTrdztlodFTek+xlpSYoO+LeLmU1yplu8vZ3x6arjiVbd3//k7tM4UQpSfqolF5f+ci+jGqr3WoCr+aVne7kZFA0y6JseuU+fjqT1IjVe0HHklAslZNSU8qznBkNtBz/kedoAzs/Rlh1L5GA0ntTVQKrVXajrSohmst4iiuYQP/qYG0+fxuHtsrC1Q9v5B0Z72GJ3+5i2vN8hcHuu3e9FxSYhjjrWWYegr1cenC6B3YXKjU367ck8Q6n397R1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DM4PR11MB7325.namprd11.prod.outlook.com (2603:10b6:8:107::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.21; Wed, 19 Apr
 2023 18:35:40 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::6222:859a:41a7:e55b]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::6222:859a:41a7:e55b%2]) with mapi id 15.20.6298.045; Wed, 19 Apr 2023
 18:35:39 +0000
Message-ID: <e2a87397-c78f-3a28-15b0-9a0c9841676e@intel.com>
Date: Wed, 19 Apr 2023 11:35:38 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
To: <intel-wired-lan@osuosl.org>
References: <20230419115006.200409-1-kamil.maziarz@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20230419115006.200409-1-kamil.maziarz@intel.com>
X-ClientProxiedBy: BYAPR11CA0084.namprd11.prod.outlook.com
 (2603:10b6:a03:f4::25) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|DM4PR11MB7325:EE_
X-MS-Office365-Filtering-Correlation-Id: a7ec89b8-0a49-40b2-7395-08db4104dff3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: JFMVHiz3MDn365tzdLbT4uzFaC0sPHEutm32L+03yBug2tEvTMDouBG4lrfHXOXoKf6MsztJOmD/h10cxWqGib8ztVwCO029kuftgZA7pJ7z+E0jGxUHjxvC+ZEqHAjd4GPPoaOX2YftSvQLTc2sVsW8XGFOVSYLS9FfhzOoMbC66qVPnA9yq8UpA0eZ6csEWYLzHxuOOq4dm0Eqia/RP0x2ZWC32gugCJ+kDf4JeNji3XJ6BTfM1/n7nQLxpy+RbXNMd+DBEbJRpEcviTFrCuEEWV6dQW4SglATEzsk7xdQ+3ijzR2UV50Z1C+snLvAbHp8pXgQsDBYjt4Ie2Q+vAwcTydMPF/szHN8U0YjROfOkvtToOsx5hn9jAxqT1r5SNUhnMQN+LfWK4gWTEOtdUt3DtckShMAiYzVecmylCWDV8tH5KlMAjq9vsSU7x3zO7aeAkJlqAE5XQDAMcSEHuPWlS0y/ooI3U1RoEG7aBNrQWL4Qy/GYHdzUlEYKoN8T5cV2ljJAuGqX7Dy7Pev8xMsZGwWudiZ/O7FH+BFIIvNlKE1oyp75fm8kh2UpsYePoAGKSUM/tSwWJ1vrjIwlYbF/Mq0zo0sducCYCHy1hfz0SSFv6lwGnfjcat9LE+S+HiLe7ElAFOtSwLlEXdkJw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(136003)(366004)(376002)(346002)(39860400002)(451199021)(36756003)(31686004)(82960400001)(38100700002)(4744005)(2906002)(83380400001)(5660300002)(2616005)(86362001)(8676002)(8936002)(41300700001)(31696002)(186003)(26005)(6506007)(53546011)(6512007)(316002)(6916009)(6486002)(66946007)(66556008)(66476007)(478600001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aFBDM1o5dHVrU3JPWjZvTDN4SmkzVTh0eSs1OWd1eGswV1ZuME81Q1luOVJi?=
 =?utf-8?B?Wm16aW9VSFpvRGp6NW9zZW1nUmJ2MXBtNVcvcVlISFJqTmd0Y2xTNWNZZDhK?=
 =?utf-8?B?NC9xeTZiRS9IMk4vSm5zeEkxVnU0bTVHbGlmYTNtNndzWDhzV2REVkp6eEFQ?=
 =?utf-8?B?TE9xQVZHYzdISlNUbi96UitkQk1sTW43NUtFOTJnVDNaWlFDZHk3N2J0SE9r?=
 =?utf-8?B?YVUrYkhRTlhZSHBUcENadytQTE9GdU5hcGZ2ZjNnUndUdHVuRkJ3RkxkYjAz?=
 =?utf-8?B?ZktZT3hmUEEwd1RhOURiOHp6cjlsMEhtVHNWWE5Tdm1YT1RTclp3NzVFaFVK?=
 =?utf-8?B?bDlLcXNTejNQMlZSdGxCYWIwNXlBZ2w4OGRFcHZrWDFkVlZEMXZ3eEtFcVhF?=
 =?utf-8?B?SWdtb3QvTEs0WVpsU1RXZlZIUHNPWjZCWnpReDh3NDN4TUlWVW1nVU5KR3dr?=
 =?utf-8?B?S1g2Z0dhREViZzRPNGw1QUozaXp0dWFuUXFnNFZuK2w5cnFNbjYxQUQ3S0dt?=
 =?utf-8?B?SVVVbWV3M2RCWTVKWFRnY1NteWo4WnIwU1BZYTBERFFSeWlQWnZIK0NMUEpw?=
 =?utf-8?B?TEZwK0JyTFRzRWsySEpPK3FBNFFrVGtaUk1sNTFZb0oybGdXaUF1T1ZvR0JW?=
 =?utf-8?B?SXRQU1pmdjNqcjBVaVRIdzlvaTFzNVR4YTg1MzAzN0huakhFb0pkV0lRSmZ3?=
 =?utf-8?B?UEZWaHoxNSs1SFgyTmhCMkJrdUhPeXlCeDNrYmgyV1hERDQ3WGlycXQzaFZt?=
 =?utf-8?B?OHg3TysxaG9yU2dqUGJ3RWtsZ2Y3WEtzQldpUlR1VXN5NkJ1UU85U3dwcnVl?=
 =?utf-8?B?bDZYZFhhOXQ3dlRxYXFnWE5EbHV3RjVYc0p6SzBmQ1dEcGUxb09USHYzU3Zo?=
 =?utf-8?B?VTdOT3BCWWpCbjhvQnF4cXFNbnNuQmVhNVl0ZDZEYXp6MTVPRXU2ak9KampJ?=
 =?utf-8?B?RENPVFk0VXZkT29mY3RYVkE5YmtjVGx1eDA1QjVUZEloY21INU92VnFWNkpX?=
 =?utf-8?B?SitxNS8rYlAwNDRFUVpWazE3WjdPV0JRNWxYQWtsaGhaY1hGWlVPdHQrTUZl?=
 =?utf-8?B?Z1dkaE4rek1tV25XaVhLeFkrNldpbmo4VGxxdmxUYVFIQXJpVTFYakJ5UzUz?=
 =?utf-8?B?N3NPK3ZLRVgxS2tBU0VGanBZTzhXNnV1T3N6aG1paDk2UlFYYjZ4dVAwT2Yz?=
 =?utf-8?B?Y3U5ZGV3SG16WTRmQ3lVWEZ5YUJWR3U2N0dnSFNCN0oyQkJTNnQvV2JadEJ2?=
 =?utf-8?B?L1gwM1kvb0FTVEthdEQxaVRXYTFvcnl1UEZDVUpUUnptTWpiUVYxNkRGWHl1?=
 =?utf-8?B?UGZGK3dyL3FiQTF1RHFTV0pFSmNaUFJFUXRJcUhHKzV6RzdoTHRjWk1qMVBO?=
 =?utf-8?B?YnZLM2M3cWV3M0RFSEZ5Z3pWRytiR1JEWGRJUmM3SkxDa3VubXFIQkRJZEU0?=
 =?utf-8?B?UHVrNjltUkMxNDdBeTJnOW4vcWtQZVE3UzZpZFdqN1k3MG9KeUNjWUkxNERO?=
 =?utf-8?B?VmtzaEk2UmRENmNvaDhFYU92Vi9TSGpQdmplL2JvM1BYWHJnZXQ3Y0oxbWhh?=
 =?utf-8?B?dlJ6b1U2WFZYMWc4ZHJkU013Y3J5Z1NiQVFNaHljVkdnblNubzZDVlV3bzJF?=
 =?utf-8?B?RXZMM0psRTYrWWFoRTVUYjRYbzJFMFI1aitmZDFHNHlJcTlMUnIzc0ZSUk82?=
 =?utf-8?B?ZTdCNjBGV3VPbE92MUZ6aHBuYytjMjA5QnYvUldvMTF5WlNLRlBja2ZkU1Uz?=
 =?utf-8?B?N0N0Y2s2MUYrY0ttTlI0cUdjTDlLQytrRlFMNDlrbCt0QVZRalpPSVkzNFZl?=
 =?utf-8?B?K2VFdXZzVjdLNzdCenBQNWtlOERZOXRiamxsTDg2OTlHcFovV3I2QlRRNVl2?=
 =?utf-8?B?WVhramhWUXUxUUVNUlVzV3dYYXhnRGc1S25DYUVEM1RQcGh2aEp1WGtIUXVT?=
 =?utf-8?B?dDhGbXl1a2thUlBUbnlQclFPVk9kVUhYc25GMFJJVXczSHF4R0ZwaGcwV1Z1?=
 =?utf-8?B?aEd5bEFYTU1yY0JWMEQvbzd3NWo2L0JaNy9CVjl0MW5Cb2dhS2NBN09Ud1lS?=
 =?utf-8?B?OGhhZFdFNXdsaEJLZ3hZR3dTeGdpRFp5RDdBZ1hUM3o3Z3hiUmZPWWlYT3FX?=
 =?utf-8?B?YzRac1Z2ZURUM1NoU09xcUhxSFZJNDJySFp3SjNDbEw4TFdabHIxcDByNEhr?=
 =?utf-8?B?cUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a7ec89b8-0a49-40b2-7395-08db4104dff3
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Apr 2023 18:35:39.8332 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ttl/SStvcWp2nahiVzNoAbh0JzA/ge9ndPO488V1n9EeQxClXw+pcx5IjpdWmiH4nCDvuQsTN98tobsfxFLovWDA8lVQtPT+PbD0GqglDHQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7325
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681929822; x=1713465822;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=vVF1vsn0TCbIA2/IFSd3Acj0I2ct6es8n1PCWS4YOOI=;
 b=GdxD1gZNhDrjP9ED7r1ICpyKdr6dlz2CZmTwoztq0y7USgawSjf37skA
 QDKVIcAGdarW1y2AP+smuBuO3rSbYtH9AKXxv+kkWlqSdpKekK1QO3A3/
 smBzhNb+0PTVYRUJPVye7DyaIgpDCiwvPw3aMyU+jEW3Lr12tw5HLmzO0
 srI/8eZFRj+8hPkuAcu4Qnipt69j4cqz3ZzNHbdaTHbI2YZQTzcdtMHWg
 tom9oqNtgKJJquUEzQwMdJFEFLIrbTAvQ9Jd+rz3Pk87XxDVpzRiKvshu
 ZTXkaiq5/Rvc/qOv88DXNlwPhzYwqF1a2B6fFBzCrV1k7vU4nwm0DEq6P
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GdxD1gZN
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v3 0/4] iavf: fix reset task
 deadlock
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 4/19/2023 4:50 AM, Kamil Maziarz wrote:
> Changing the way we handle resets so that callbacks operating under the RTNL lock will wait for the lock to be released.
> This will eliminate circular dependency with the critical lock.
> 
> Marcin Szycik (4):
>   iavf: Wait for reset in callbacks which trigger it
>   iavf: Don't lock rtnl_lock twice in reset
>   Revert "iavf: Detach device during reset task"
>   Revert "iavf: Do not restart Tx queues after reset task failure"
> ---

Thanks, this is the better direction I think. I have one request but
otherwise this looks good.

> v2: squashed "iavf: Add waiting for reset to finish in iavf_change_mtu" commit
> ---
> v3: changes described under each commit separately
> ---
>  drivers/net/ethernet/intel/iavf/iavf.h        |   3 +
>  .../net/ethernet/intel/iavf/iavf_ethtool.c    |  31 +++--
>  drivers/net/ethernet/intel/iavf/iavf_main.c   | 115 +++++++++++++-----
>  .../net/ethernet/intel/iavf/iavf_virtchnl.c   |   1 +
>  4 files changed, 102 insertions(+), 48 deletions(-)
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
