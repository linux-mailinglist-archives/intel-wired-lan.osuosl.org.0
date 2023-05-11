Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C7C2B6FF6AD
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 May 2023 18:01:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 27B6442AB8;
	Thu, 11 May 2023 16:01:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 27B6442AB8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683820901;
	bh=/47X8s9SeMisLjMyRSSZCrHXR0A7F8AKoOpJh57Ce1k=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=A1XWmKQbewvMde/aFbYx884DTYzgJ3NdVAXUklSOzYDCBPlwjLc4G/jCdSrNALsNK
	 TE3GJWxku1UbLaV2GN0p84auc5gV9PSQZlppsIjCu/1YNab7cnw33O4GUiANxskp9z
	 gGALnJiq7BHXrhO4UI4zzv6wiMLGO/EO4kQrM85iqyMkjz77zm5A2wPT4W17o79K0T
	 7qe7DwFT9kpWYno6SYqikI6QctfNZpxvWxu3X4ESeRhqUiDqHweBXxTLeb5IGFchtF
	 su7VMF3C/xxHQVrdh14Cb5k5gLMLoRv7teylIir21y/SffV3vkt5ULrYhTUHhoE53i
	 P1bMJEMqOlI+w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EBZy0gC5zdN8; Thu, 11 May 2023 16:01:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6B26642AB4;
	Thu, 11 May 2023 16:01:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6B26642AB4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2378E1BF290
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 May 2023 16:01:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EDE8960F54
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 May 2023 16:01:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EDE8960F54
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RLjYXpmUNEfl for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 May 2023 16:01:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E001760B50
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E001760B50
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 May 2023 16:01:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="330165910"
X-IronPort-AV: E=Sophos;i="5.99,266,1677571200"; d="scan'208";a="330165910"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2023 09:01:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="824014340"
X-IronPort-AV: E=Sophos;i="5.99,266,1677571200"; d="scan'208";a="824014340"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga004.jf.intel.com with ESMTP; 11 May 2023 09:01:24 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 11 May 2023 09:01:24 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 11 May 2023 09:01:24 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 11 May 2023 09:01:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=deIUrFVn7b/RtNyw3JUBX39PIej4aXDKkhnlS2tGFToiGGUbV5/c1PCRdD+sInyqpYnJcoRLCybHumU3o1GJOiF4rIBgubovBPTpI+i1EBhLOB+LHUYjRKfT7WEoKhB9cnAWFEqVmgoPxE7v7JDBABKEQWDznvkcYaPF+y4pJ6SCAxpiPzVd9/EiQunyGyx+8nT5kRp+oK+MTeEvzqkAg9vd4y544ivAB8H1BSc+HAesjhq1GOOUc1LnW1i82NVX9WDpFnsIAo1DAQUhHPDNSWhrQNuTXNV1V1bQDKFTxAXJAJE5iG87EWHZWwqCdYl9gI/aJOpY85XIlHmQKpRCLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xCcw/T+8/uMqQqufCrjzc6NGojzVNBZCpVkrZ/rz/vo=;
 b=kLNWnMI7wZU0PSuSyfwxI4wC5ZZ5PH3h6wWgZKEIwaJi3bxmfm6EJc2uE70M9vsyBD7EMwl1GvayjXzoTRaLP5xEWHaXjfBqWcvI9X6HOVCXeWyXNDyWNr09+cq8sVxDKpp1J6LMgwXbO0jvxzx4ydieDthQ7j93IrJXfArZ6Uoc8sgNxUTiJv0Ldh2YyhB2eNnLRe4APLU6JXe26w5VW5/P6l5Cpgzbyy95hrWfg+nwIOZpN78v5lIwl3Q+Vr/mr9gPPUNtPn9AVuh78tuMjsWP3FW+CBf5BbbORIbHjK+AyIIhxa6jnAvxmGWP8CFOEEzLLcF3eq6i3P7FRTvMMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by PH7PR11MB7098.namprd11.prod.outlook.com (2603:10b6:510:20d::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.20; Thu, 11 May
 2023 16:01:20 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::cb9c:7293:63e7:17d9]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::cb9c:7293:63e7:17d9%6]) with mapi id 15.20.6363.032; Thu, 11 May 2023
 16:01:20 +0000
Message-ID: <ec1534ac-e270-849e-cb17-dd0a2607be69@intel.com>
Date: Thu, 11 May 2023 09:01:17 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Jan Sokolowski <jan.sokolowski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230510120157.1142961-1-jan.sokolowski@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230510120157.1142961-1-jan.sokolowski@intel.com>
X-ClientProxiedBy: BYAPR05CA0035.namprd05.prod.outlook.com
 (2603:10b6:a03:c0::48) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|PH7PR11MB7098:EE_
X-MS-Office365-Filtering-Correlation-Id: df131c4b-38a4-493d-c8b2-08db5238f5f4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4Bf6PdOxlg2a3raUJH+e+PK+9t1O70818FWVcSGo+yjxVRSxOGPqiV106VxECrNLqmYHAdzyhRFl0fy7QKxxrBic2TgEkODABRAxSx+zaH92bmSzI76aalcIS/kAgRRfNLUtCbSAGac304UA7CTBd655mMSblAdET+Ud7vfSN1dW8WLkAxH3m270m39rutJJwXnrsJX2p5pL+bQRAuQ79YbHMA461PYyjWBBAG5a8+wEHlcGWVvm22jiQirpz0db6/y7krYEzK8VvnUCcY3OIFsilhkJNPUIlEuM45Sw8x0g1MtRFuR9xFCS4TRrWON4UGZsnYSqk2XSjphvXUS4KCT90CncB5zU9c3pQeHVIa1L9DM6/SmN8HU34R15MmNT+OztbqTlsafqUGF9E3OoTwwx5oJYuh3Zl03Srn1xO7YskrdLV9KxstFxD8rV7HFCUv9qV//p9VSExawCnR2w3tBnpWWeh88cyJDejyW1oVhMrjMpcK28zC4eFAcVifxbdrMlnCesqU5uO78xsmfnd3wmKTyhMV1s/eQBR9gX1QXy2jHOarUjeZIs6fgAA5izfah2eqilIXlruxb4XDlHozpIw66qKXhmHNMrrgoMH0stMdyKNmWRXNiLav/Lf8luA3zxXYzJsoC251agda3WIw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(376002)(396003)(39860400002)(366004)(346002)(451199021)(186003)(2616005)(82960400001)(2906002)(83380400001)(38100700002)(36756003)(86362001)(31696002)(6486002)(966005)(8676002)(8936002)(316002)(6666004)(41300700001)(31686004)(5660300002)(478600001)(54906003)(4326008)(66476007)(66946007)(66556008)(107886003)(26005)(53546011)(6512007)(6506007)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TlBZeEtVYVkzMzRWaE9RZFlGMCtvNHVnOUxkYUM2RkVHU3p0VFY4NWZCYzFD?=
 =?utf-8?B?MDllcEExdFZFZ1V1L2hWbzF3dWczVXQydDlTMERvKzI2WjhMd0Q3K200WEpE?=
 =?utf-8?B?QWZRaW1Kc3U0Z096eXJNVWtwK0lwR3pUT3BjZFNpck5SdlEvYzlYMWpsV2Ey?=
 =?utf-8?B?VEdMSDRoeGZyUHBFK3dPemM0OXd3UVhKWEVwKzRZSFU1RERkODMzYVdCR0ht?=
 =?utf-8?B?MGduLzB4REk0Si9tdExLRzBpYzBRRWExZVZvcW1UeWdsQW1NUEIxTkZaVnFH?=
 =?utf-8?B?Mm40VTBITmVQK0pobjhlV3VZQkgzQW1BWFpjSjF3a0FJSGdyQi9uc3FyOWFC?=
 =?utf-8?B?WlplZGREYmt2bjFiZkpJOVBMUDdEam8yNEpNNmNSbTZyOEM0RU01N1N5U3JM?=
 =?utf-8?B?SlhuM1kvVXJqNUcvRXNCcGowUUlTa3dOYUpNbzNXQmt1SVp1dmJGSllsNVBE?=
 =?utf-8?B?emZsRVcwbThMaHZzekJNenNSZVR5MTJ1TVZqN0VNUERuYklsNTlpOEdiUTAv?=
 =?utf-8?B?VWpwQ0lXUUxZYlB3RHVrMFVybkUwYUMvYXNGd1ZXeGRla2U1UnArVVB1L1VH?=
 =?utf-8?B?c3YwMGtWdFY4TTlHVUhoTVFJMjdMTktocGpaK3JjZWQ1a0J6WFJNT0ZxMFl4?=
 =?utf-8?B?ZmJkM29tVk1Obi90Tk1NZ2hYM0V4bFAxNWRmMzF5SlVIOFduSlJuSTVjZ2o5?=
 =?utf-8?B?dFRnWDh6Wk9oQi9PUU9xbUNIN1hJZlhieklaTUZGemhvWkozdUdFYzdyUDRX?=
 =?utf-8?B?blg2MUhUYU9taVJaSXBnbDhJVzduYTBCM0o3cG9UeTJkblQ5Sy9qODNQa2Ra?=
 =?utf-8?B?dzRHZ01XQzZWOTZuNnExaVk1QW55SVZQTFlEMVhuTmRLVVlFZWROaDlhOXc3?=
 =?utf-8?B?S0V2WkkvVzl2bUE2N3RPME1selhRRFBHSGVWdjd1Wm1kSVlnbnNReFo3SUVv?=
 =?utf-8?B?MDZ3ajRaZG8zcXY3UDRIQUF6RUloZi9xMktXNEF5TlJHb2RLTzB6N1dhOGor?=
 =?utf-8?B?c3FpT3NRTFc5dmdqYU5KbGxyT2J1K3hVMmNLYXRUeHpzVFF6YzJqZkl6eEhu?=
 =?utf-8?B?QmNGZDYwbGZOOTlWaEhHS2F3OWZWKzh5dTBMSkhITXFndUtlTC82bTZGYTZj?=
 =?utf-8?B?Zy9uSmtEK3l0QktUVjE2MmRwNit6SWxuRHdoSy9Kc1gyQU5oZkliU0NjZzRo?=
 =?utf-8?B?RVhEcWJMSE1uRmIwY1R4VjMreFYzK3kvQ0dRT252d2RLckFpQ0ZtSWxxYVZl?=
 =?utf-8?B?SEoxbGtOYUx2cXd5TDMrZDBQQk1mYkZLeXRFZ29vUHdIaElIWm5xcGVJQW9v?=
 =?utf-8?B?Vi9UaWNDSGNFTUFudThpeTkxV1ArOXZuTlhvTVp2M3pkNGRtdHZyUk5kRlhW?=
 =?utf-8?B?S3lkcmVqNFZYUXRUYmNEd1dTQ3E2WVhBaGZGeG5qNFFsOHd0MWNhSUlxck5L?=
 =?utf-8?B?YkQ5djR1UmZVNjRVbWhhOU5LUEJyMVdYSTNGdFRpb0FmZXRlU3BONFBlQWdQ?=
 =?utf-8?B?ZHphYkpYTXd4L1RzekFNWkUvUVJQTzRXWFpoUFNzMlgySXJFUkdjQURZR0VN?=
 =?utf-8?B?enpaeVNid1BKQjc0eWdjYU80THN5RWZpY214UmxnbVNnL3JZS2tVcHRQMTdT?=
 =?utf-8?B?UDY4WDcyZnIrUlJrdkVYNXZJZVF1SWdpQ0hqOG9yVlJFc3dJVFdXWjh3bUR3?=
 =?utf-8?B?WW55aStvMCtCNW1YOXJrRVZBd2xlcEVXbDBDWUdMeXl0YlhaTWwycW5zTGll?=
 =?utf-8?B?dmxnZngvNzZXMy9sNmp6OFM5RVdzY2gxOHZhYVlEbEJiTWRqcExXcENOZVor?=
 =?utf-8?B?VGQvT05uYVMzMWRZS2hvZW5KU2FpZHdCM0k5NE1VeWVZdnJCYkErdFlPWHM1?=
 =?utf-8?B?UEk0Y3NHcWVCbXJSMHN3Z29KU2VrWWVmNmc1VFkzVkdkWkltVUVKcFdteUpL?=
 =?utf-8?B?Nkt6RXcvUFkyWjZTMlBpMDYvRDhvYkxCSW82Y0F3bmhBTVY4NGVwWlB4TnF6?=
 =?utf-8?B?M3UyaU0wM29nT2pnV1FudVV2Z2p4STduYkFZZm9zWTJYdVB0dUMyOFJhUWJK?=
 =?utf-8?B?eSs5NkE0a3VPc3RCOFNrQ05uRjJLR3BvcWt2M3RHWExJc29vOGxoNDAzU0N0?=
 =?utf-8?B?dm12eHNCUTRYcjZMMmNTR0hJQWFodmhKcGVhdVRPMXdRTUMxTmcrcXJaVU5p?=
 =?utf-8?B?WVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: df131c4b-38a4-493d-c8b2-08db5238f5f4
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2023 16:01:20.3923 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +JyCnVXLSxglXLe2WvYHJj/Bq5YLb94vj1IyaoVHl7dsBmmUqwn8T3/KaFwDoF5hu16EqVYajnTwHAOFVTOMUG5CF+Y98inilmPkkMtZW5k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7098
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683820892; x=1715356892;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZLghqzEr35gDgVGd0v0YjMmcvziWycSEotoWBV3aNq0=;
 b=VF7najSKXi9ViJfWEc/DyD2gygYlJyxplgXl2Uig7kJaGsEJObjQJfss
 0gF3/7dWEQbkNg6NdE2AjbzXGS6OENNc4lWB4Wdc/bluWt0AuD94a81qb
 iCgoQQKlu9v7S2GKc1lPA3iw/sQ+5A3xuJ+jc7wniVK+WKznu0pYDLEeM
 LzrdlyQEWYuqPAtnxAm4oD8MxXYgz2FjjNOP26zLXpRBCHh14LCmPvRW9
 3rHmv+fSEUg4tiqXFz5ZEq7Bm8giLRbZtTXR3MKim2wsZmElW4lR8O5IT
 W+ph57QP31T4NIR9VmYh75I4QaaCDmKUVi4k9q7JTcQibxwkdBwvzvqFT
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VF7najSK
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v7] i40e: Add ability to
 change VFs default MAC address
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
Cc: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>,
 Kamil Maziarz <kamil.maziarz@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This functionality was already accepted [1]

On 5/10/2023 5:01 AM, Jan Sokolowski wrote:
> From: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> 
> Currently there is no way for a VF driver to specify if it wants to
> change it's hardware address. Although new bits were added to virtchnl.h
> in struct virtchnl_ether_addr to allow the VF to correctly
> communicate this information, legacy VF drivers that don't
> support the new virtchnl.h bits still need to be supported.
> This patch makes a best effort attempt at saving the VF's
> primary/device address in the legacy case and depends on the
> VIRTCHNL_ETHER_ADDR_PRIMARY type for the new case.
> 
> Legacy case - If a unicast MAC is being added and the
> default_lan_addr.addr is empty, then populate it, otherwise save and
> timestamp itin case it is followed by a delete request.
> This assumes that the address is the VF's hardware address.
> If unicast MAC is being deleted, then mark the time it happened,
> if the legacy umac was not expired, and copy as last MAC addr
> on the filter list, and if it matches default_lan_addr.addr,
> mark that as deleted unimac addr.
> 
> This is done because we cannot guarantee the order of
> VIRTCHNL_OP_ADD_ETH_ADDR and VIRTCHNL_OP_DEL_ETH_ADDR.
> 
> New case - If a unicast MAC is being added and it's specified as
> VIRTCHNL_ETHER_ADDR_PRIMARY, then replace the current
> default_lan_addr.addr. If a unicast MAC is being deleted and it's type
> is specified as VIRTCHNL_ETHER_ADDR_PRIMARY, then zero the
> hw_lan_addr.addr.
> 
> Untrusted VFs - Only allow above legacy/new changes to their
> hardware address if the PF has not set it administratively via
> iproute2.
> 
> Trusted VFs - Always allow above legacy/new changes to their
> hardware address even if the PF has administratively set it via
> iproute2.
> 
> In case of VF reset/reload, only MACs assigned from host
> must be preserved.
> 
> Add a vm MAC list to filter MAC addresses to be restored after reset.
> 
> Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> Co-developed-by: Kamil Maziarz <kamil.maziarz@intel.com>
> Signed-off-by: Kamil Maziarz <kamil.maziarz@intel.com>
> Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>

[1] 
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=ceb29474bbbc377e11be3a70589a0005305e4fc3
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
