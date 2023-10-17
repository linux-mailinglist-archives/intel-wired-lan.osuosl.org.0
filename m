Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 34DFA7CCA1C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Oct 2023 19:46:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A0BFE821F5;
	Tue, 17 Oct 2023 17:46:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A0BFE821F5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697564813;
	bh=PJMFdLuoZnQTc56mf8wfj31fAUT/43hO65CScbPrWyg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=61Hf0cxfz9CR9caWZJz2NAKsmfJTHTdzbWkUY+GwJ6pNdeOBjWeNewLbtlvknYKv+
	 3eIIjw9UO04/Y6DWcXtazZKzEpevcGdlXw9JftLyVgApW+eV/Q9RTNZKvNYvhn46lJ
	 rxDeAFsTUC7CaUkvl9j3b1rfkjhg1z07Fe58ZH2CvrHB1EVvAkpyWpcmr6s9jjkyX0
	 8QxmqDoXnfTq2qNRS6LJeM1I/lNfiy0kiKUEGHehyLnutQkECWcd2xMl9qq7wSRWVl
	 n6L2O5sSRFLbyZVv6M4yPIIcz4G1tJyZswWN6W2ijeLUoGfdpuQC89/ydlyjipJAQI
	 i8jMFjqUW/9Mg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fX8eCtNi2OCf; Tue, 17 Oct 2023 17:46:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5C9BA821ED;
	Tue, 17 Oct 2023 17:46:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5C9BA821ED
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5A9551BF32B
 for <intel-wired-lan@osuosl.org>; Tue, 17 Oct 2023 17:46:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2DEA941D93
 for <intel-wired-lan@osuosl.org>; Tue, 17 Oct 2023 17:46:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2DEA941D93
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m27vfky2UiOM for <intel-wired-lan@osuosl.org>;
 Tue, 17 Oct 2023 17:46:46 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 516A041944
 for <intel-wired-lan@osuosl.org>; Tue, 17 Oct 2023 17:46:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 516A041944
X-IronPort-AV: E=McAfee;i="6600,9927,10866"; a="376217004"
X-IronPort-AV: E=Sophos;i="6.03,232,1694761200"; d="scan'208";a="376217004"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2023 10:46:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10866"; a="1087593918"
X-IronPort-AV: E=Sophos;i="6.03,232,1694761200"; d="scan'208";a="1087593918"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Oct 2023 10:46:45 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 17 Oct 2023 10:46:44 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 17 Oct 2023 10:46:44 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 17 Oct 2023 10:46:44 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 17 Oct 2023 10:46:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VKogf9IeePJbfoEDqBefOTGc/ZPZ5Rcfv5QoPX2WFEdffUVQWJ2imE54DIBm6vsPP+9NMQh+ffQFlOWhvvX3lYNa6h6FL5Gw52eo2Ey0gjjMqWN4vVyzp0DK6aFu8Nn7jQusX7uYiPHuqZ6QP1qiuETgPNr8ae4yfIz53Diej+RDVLDxz9q2/MaavRjD+LcjMTbhoC1qKEJmn49BtwJrn4BHpT4LLUvga+ljvvzvk1f4pQa1hKHA3tB6CQuKc/0+GF2Kg6ZCxaMY5moQRyXApjwVz37ok7G2Ki7RGiYjqKfaY7VAi/CYZ6WqoJoMcC2Lv4pUIeEffkbfHV55ySvfQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TUDI7XVJiItIhRDMjesKfJmU5YuSJPZlO6a9dHaoj+k=;
 b=InaOj9Liz5kOOKFPixEbJ34nEcsShiZloF0flSxnMQIaUHTgzYzA4NZw31+QXDGJtGZEvlZ0UyoV46+4+Lt/KIpy221IABBjqQXOkQ01rP9RDLiY787wtGkXdbMtVaxMx5avkOlM4NXhpJJ4Pd8CTMby3OyXgDZrV5to9zF1GjYs8hWPgIgCdpW0N3MMfqXksPYVIU1avFAW29ppVzm7JgtCFmLTtOLqv4rDz9rNN/7ZPTQXjeVKod76S8XZ3iVksA6+qwfArr7Fms8keoaiFMh5u3DXwzkLhSgXjGGhVelWhmnuMupy0ntZFzOEXCJS8As5rTK54IvWhrg/gGyWsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DS0PR11MB7530.namprd11.prod.outlook.com (2603:10b6:8:146::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6886.36; Tue, 17 Oct
 2023 17:46:42 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::34a7:52c3:3b8b:75f4]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::34a7:52c3:3b8b:75f4%4]) with mapi id 15.20.6907.021; Tue, 17 Oct 2023
 17:46:42 +0000
Message-ID: <709736fb-a2a5-4d8b-a1a4-52418a172fb8@intel.com>
Date: Tue, 17 Oct 2023 10:46:40 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: <intel-wired-lan@osuosl.org>
References: <20231016164849.45691-1-mschmidt@redhat.com>
 <20231016164849.45691-5-mschmidt@redhat.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20231016164849.45691-5-mschmidt@redhat.com>
X-ClientProxiedBy: MW2PR16CA0046.namprd16.prod.outlook.com
 (2603:10b6:907:1::23) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|DS0PR11MB7530:EE_
X-MS-Office365-Filtering-Correlation-Id: 9111d22c-329c-455f-3fa5-08dbcf3905b0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gRJphuoUomjpcpe1wO2FL6hzdu68RvL3f3K4CQKucnYZROX8TGlWH40ovORqeg7LhczoUpZLDIkKQuYhke+WDjUgYEevFyg6FFabg3DEZpC5dsxuLIjg+WupxGn8cIufKXDfe41lQ3Vdo0v+4QDx09QvbHENH2v8AVz1j2DUgqbk1W3VCYtsNlbSkDHauNPpnLFT1dXBUDR7NedOo2bsWuC/kgvja5Rh6L12hyyUTh6OUJdc0PFRjpiKPJDpCs/4mGZ2bdbD9CTyXx9/S3oISX6mL4EJzUQEYA6zA5B4Ykx7ke1HZmQ04Go0P1L1s3Wr+qBmy0HRdq1hyAy8XCmBz7/bZQLAQLM+riZY9SZsxtA91xnUNB19kEyvPx2nx4vMOMGYT4KnzoO1vjz6MXVCjqjoe3VYnWN4AWYe7kt4sJQR4VvjpZ9G/z554iMR/ckGJaP+h+Js1UZNKLlJWvUZY6i/EWeIUnQUXawYXcLEjzqTlcpkhV23FLF42z68oUZg2wz4f4FxJFI/qEP7nflghllpSZQSjTQknI4CGNAo+V0FrlovMjiYlO7Uk1h3Mje+zzbT2V2gOjbYQ4b3R4rw3cFG6E0PDObgVAjzK+MPUQUhvmlFXovsB5GENrB18jiL0MUgEU0Q7mCJmbeExT7Djw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(366004)(376002)(136003)(396003)(39860400002)(230922051799003)(451199024)(64100799003)(186009)(1800799009)(26005)(2616005)(6506007)(8936002)(53546011)(83380400001)(41300700001)(5660300002)(2906002)(4744005)(6486002)(8676002)(478600001)(316002)(66476007)(66556008)(6916009)(66946007)(82960400001)(31696002)(38100700002)(86362001)(36756003)(31686004)(6512007)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bWNqdVRGU0NNczhqRXdBbC93K3locFZoREFrSnlxNEZVZWFLbVBqKzJlZUIx?=
 =?utf-8?B?N0ZKRlB5REpCWldGTnMwQzArV3daczNuNzM4RTVEa1JTQjNoSDQxNEY5TlJT?=
 =?utf-8?B?bnhCZEF4dW5lUklnVjh4V2dtb3hnSzZ1TFZNd3FTY2ZXQXNLZzZSdDBvS1NK?=
 =?utf-8?B?SDhzb1VicHYzNDFjVm9XU3JOcjFQVlNpNzNoU1Zma0FtMi9ZWHN0ZGplNnlP?=
 =?utf-8?B?bGlTSjJsSk15Z3Q1c1JmWXVSangreDM2QzFxVFdKRVJHb2ZjdVJTaW0yQ0RX?=
 =?utf-8?B?R0ZiZ2ZiRlZUb1hiZVZ2Y25KaEIyU2ZLTXJJZWxWakU5RnZ6YTJEUWVMTkkx?=
 =?utf-8?B?a2pIbEFlSzFONmtkcVJ1RHFTUTdnZE1lSmcrenBLUE0zSlFKalRTdE9zLzJ6?=
 =?utf-8?B?bWczVDI3VHFCYWxwU1lBVXlsYmpHclZJdXlSZkh2czdsSTZVWDMzVXV5ajhp?=
 =?utf-8?B?S1l6NEVCMEEvR09RbXlJS3BRNDRUL3F5Y2Q1OTczS1pxNjliM1FmRnlSZFZO?=
 =?utf-8?B?TkdaLzBzMEl2NXk0M3Jya01TbHpFQ09IT2RaS094QXhORUFidGhVZmtlVVhH?=
 =?utf-8?B?NkVDM3BBRWhMUmZqaGFNK0NvamxaSGNTd1EwMFRKUDRNVE12SVZ0dnozQWZa?=
 =?utf-8?B?M0hXUHB2TmxPVTBvcFMrYXljRHNDMjY2OEFoSGRPWGFQTzIzN0lIUDRJYVE4?=
 =?utf-8?B?ak1FbnNXTTZHM094SDEyQWUwWFFRMmdtV1dqeDhmVGRBSlF3eEFEWkpveFBQ?=
 =?utf-8?B?UE5ZVHEyZDJ1SXJFbWtheFJ6Wnpibm05VEEwblR3QTRabFZXNVUvQWJRbVRP?=
 =?utf-8?B?T1NkZSthdDR6OC9Mc04vWTd1ZEo0M2xBRUMvcFRUN284NDJweDBiT0thVUlW?=
 =?utf-8?B?dTFrQ2lrdzJITkZYVVVjQVJIdDVoS08waExmd1NyM2w5SDdybjRzS0RlL3JL?=
 =?utf-8?B?QzUybVdhTFIvVW54aU90cmwwbHBZeWQvSXc4bVhwZkFSN2JSWWRwRkI2N0lk?=
 =?utf-8?B?UXdEa3ExSE03cGhjc043OUJRR2M5aVZDNk41TEp5QkFyM1dNWllralc2c2Zv?=
 =?utf-8?B?NUZnRXFJNDVzR2RiQkdibWZKL0d3a3IvUlNhQXV3N01KQXlsRWQ3TlVkMnk5?=
 =?utf-8?B?VXo4RkkzTGhzMUlZYmI4aHIraytUSS9RaDBXeHIyb09KM1hMWWsvSW9RQUZD?=
 =?utf-8?B?eW4zaVBoM0czRWl3dEhXNTQ4Uy9wM1IwN29OUFg2Yk12SUhVV2prcnhUYVpj?=
 =?utf-8?B?SndSTkVNbGNKc3dIc3poOWtldU1aZzU0RVdtQ1V5L2Q0VHk3UkRlWGxNMU41?=
 =?utf-8?B?dWdxZndudS93Tzg3eDZCemdSQXBXWm9yazA1VlZmbVcrUTcvUWF0MytSTG44?=
 =?utf-8?B?NHl3cloxd3ZSdVY0cUJIa0dGakNUeU5ITzNKdjU2S0VYRnkwMm5pRHJEenNI?=
 =?utf-8?B?ZGxuYVk5bnh3VU13T1orMmpuVlVsNTAvZjAyeVhmdmR2UGhpbDVweWU3R1FZ?=
 =?utf-8?B?ZE9ucUwvODJwOVdCRmJXd05zbEhTcHY2N2xSWHRrY3N5MkVYeWkxeTJ4NHBY?=
 =?utf-8?B?alV3b2NuNFBneHFwU0NXNnlIOWtFR1M0cWk1cTMvQ0pYQmdTalVldU43K0tS?=
 =?utf-8?B?UHFFNncwOWQrU0luVEVXTDBGSUl6UEx0R3dDbjR3bEtnNjBPMWRPVVlJdWpC?=
 =?utf-8?B?alh0N0ZZSU9WY3FtT3ZvOHV0ZEFZUmQ4YTZCRlZSMW9SZTB0cnVjWVdRWXNZ?=
 =?utf-8?B?aGJ5d1Ewb3BFb0FicU5IeUN6VUw4VkdsN0lDS1FFcThRenJtM3dtMlFsd0sr?=
 =?utf-8?B?dmRPa3dHOE9ITjdacjNGYmU1eWZtTWVVblNDSkFTc1dZZlJPWU0rUnlaNjU4?=
 =?utf-8?B?ZE5UeVltTXJlaGZuZ3ZVZHpzcFBhNG1jNVZodXlvM0hQT09PelgyYkFadUIz?=
 =?utf-8?B?NE5qNHFtRXZUTkwxNGRnWjRLTmpVVDBrbVhMd0pOakJrdkdyVmVmZTFBSVJJ?=
 =?utf-8?B?akh5VVVXV3lrZVdZNlM5U29iSFhSMGJBMXBrQ21Za2ovOWFqNmFqL0ZhQ1Jy?=
 =?utf-8?B?SkUyRjlRZyszQUZORGZ1eUMwY0VaTWdWOTBLRHFhOVdBOVhqNC96MlpCdnFG?=
 =?utf-8?B?ejd3VDNCdkRybjRQelNGZnhvblhFZ2RERk9KK3JGSkRFYnhiMnpiK0w2UTMy?=
 =?utf-8?B?UlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9111d22c-329c-455f-3fa5-08dbcf3905b0
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Oct 2023 17:46:41.9402 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IPy12cwVHZMEnVaE/QOFiNlVb5v/j2nMF4yGfcwoZjgIzH1YTVUEZu6gzQrdbPuf2L2u5OjcuJouUkFgZGGv3Qamai/mtcYyUSLaH3OlVuI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7530
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697564806; x=1729100806;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=nxAdwAFmiWUSQhexTL/1oWh5QKrGhBpu/G8aXa66NE0=;
 b=ZUrFpoZyArVW76MrQofwsmlffYyppF7RDcWLRmp3YnwZS1i6o11LwK1K
 b22lxuoMg9PBNP0zsMt5VFe8zMxQsweRkE/eqP3SVOFn6bUg4BIt5kbbb
 CifVHV+8oKgnhhj/OhCZ0H0bS32xI4Tc3LuLyxdBCpqoqdPvpH5QHuyQR
 EJg/w6NNAjTFuYU3FvLRGM0Nf6kwZy6iBDDnU5af83zrvJ/xvxo3IETfu
 FXDz5Yn84CMMhf15nsPaG9zsZPAC7ahyDZiC6bWmmQYmoobF1sW/K6l2H
 Yb8QPwdJxBtDAA0sIC7gisr1e1+cUw+ETtzf75y/TRPZ8gdoX4Pav59vs
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZUrFpoZy
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 4/4] iavf: delete the iavf
 client interface
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



On 10/16/2023 9:48 AM, Michal Schmidt wrote:
> The iavf client interface was added in 2017 by commit ed0e894de7c1
> ("i40evf: add client interface"), but there have never been any in-tree
> callers.
> 
> It's not useful for future development either. The Intel out-of-tree
> iavf and irdma drivers instead use an auxiliary bus, which is a better
> solution.
> 
> Remove the iavf client interface code. Also gone are the client_task
> work and the client_lock mutex.
> 
> Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
> ---

Yea this interface is not supported by any current out-of-tree driver I
could find either. From what I can tell the last version of out-of-tree
iAVF which shipped this interface was 2021, iavf 4.2.1, which appears to
have released in 2021.

I was unable to determine when the last time any software which used
this interface was supported... It appears to have never been used
in-tree at all.

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
