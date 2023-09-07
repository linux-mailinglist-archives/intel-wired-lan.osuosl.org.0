Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 96581797C8F
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Sep 2023 21:10:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 17F0E41DF9;
	Thu,  7 Sep 2023 19:10:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 17F0E41DF9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694113832;
	bh=Z9ZFSFPhB0BoymY0no2LNBG2j08Zz161kPlvAidgNks=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9x+uBLIPsVbnq/YZA5fzJFBJ9+cA7bqLkVFU2Prw83mrz7fcmHBEZa8RvcxkbCN+8
	 jo2pE5b6eiPiqI/NJlZ7FyyC36+S7BHKey9/XSZyi59btVQ8UorsELQY4qUFfOYQdW
	 QG4pqQGK7XPn/+FSznXHbJYr/37Gz7JE6PKZasBYvAPAze8vYs5qGOhOaSbbjL0pT4
	 QkwQoTPAfgqt5QE+xZCmy6OZtfkwMBymspM19f8bJPXZNB9Ee9PYzSNlDXZpDBe0cl
	 SFYsmVYkiRKocXCXqT1nxmB3JmqdxN2PlQ1s3SWuLJ+uaMMmihg3Ml43e6StzmUdBl
	 fBjXoy+Ve4S0Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nU1wUKZJHzL6; Thu,  7 Sep 2023 19:10:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C3E1641DD2;
	Thu,  7 Sep 2023 19:10:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C3E1641DD2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5C4231BF3C0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Sep 2023 19:10:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3250C41DD2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Sep 2023 19:10:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3250C41DD2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gPCTGCYOO94e for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Sep 2023 19:10:24 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CD44F41DC3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Sep 2023 19:10:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CD44F41DC3
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="441471444"
X-IronPort-AV: E=Sophos;i="6.02,235,1688454000"; d="scan'208";a="441471444"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2023 12:10:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="745270889"
X-IronPort-AV: E=Sophos;i="6.02,235,1688454000"; d="scan'208";a="745270889"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Sep 2023 12:10:22 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 7 Sep 2023 12:10:22 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 7 Sep 2023 12:10:22 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.45) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 7 Sep 2023 12:10:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HFBbGDfkb1YfMzoyF4RtftcwN1vDgPolM6PcV064r465AWTmvHIJaTCj0itN06vwPuIFGxvuvTZQ4q5qYc1voCQaoOEjka5xhdeiRMmxkcfLmMClRIDkpiOWWQ2txwkoSUUc5zEZir2rt1l3KobOXBFPE+J6QMzhD0JZmjNjoz2wKkXqijYfvWgk7WVRS+PpZgvsVMSa8Ng8hl7AROMoUKrx9ZSclgZ8pujRy2cabwON38ZAkH4eSdrjyc3/hcVnclW1qPKQ46n1pw0OIQjMqjYJ7jJAThGCUWMM3NnUNAzlkhWNcyD5ZhxTIaQwCln2v6yrn/A0uLUz8OIhrhFK5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uAAkcxJ3nW++vc46nmXaBBawXKsGIvXKMMtAg4O4bIE=;
 b=X7pPxZuC3AOagyXt0kyiKHtwsGrRnsTUFQ+dGh+S4oloZOkK4qeJ6nVKjvo2B071omNKjUcveSoKJegnwLAs98BospZW0ltmyu6I223xxCtAfaJOqwj3bmRulOkIvrfT4Ck1e2xATQqKeHm0YZZYgKaFm2Y4cGxYfBHhSJSNYQdxmHAQ57g2LX+AhOdjm1CyCYnyWkKd/azMZrBhWJHfh0OYPh5FG5kwzk57REsiZzR7ylNzUmnID6Nr+C5uk/HB60u8o77th0z+XgVDazuhkxbOdy9ncvQUd9+MzsMxCI1qSvBClHTejsrIsFrOr44pXT0HpAuG5gPHP/MeSWCDmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB4886.namprd11.prod.outlook.com (2603:10b6:510:33::22)
 by DS0PR11MB8719.namprd11.prod.outlook.com (2603:10b6:8:1a8::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.34; Thu, 7 Sep
 2023 19:10:20 +0000
Received: from PH0PR11MB4886.namprd11.prod.outlook.com
 ([fe80::6add:b67d:5d6c:6439]) by PH0PR11MB4886.namprd11.prod.outlook.com
 ([fe80::6add:b67d:5d6c:6439%5]) with mapi id 15.20.6745.035; Thu, 7 Sep 2023
 19:10:18 +0000
Message-ID: <8df3c9c6-19ed-acc8-f2ac-1826a81ab53c@intel.com>
Date: Thu, 7 Sep 2023 14:10:14 -0500
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Content-Language: en-US
To: Tom Herbert <tom@herbertland.com>, Jakub Kicinski <kuba@kernel.org>
References: <20230904021455.3944605-1-junfeng.guo@intel.com>
 <20230905153734.18b9bc84@kernel.org>
 <CALx6S34B_BvkNuqALCCT+2V2dL8rwr9n_DnRfevjkW4UwMF=pw@mail.gmail.com>
From: "Samudrala, Sridhar" <sridhar.samudrala@intel.com>
In-Reply-To: <CALx6S34B_BvkNuqALCCT+2V2dL8rwr9n_DnRfevjkW4UwMF=pw@mail.gmail.com>
X-ClientProxiedBy: BY5PR17CA0022.namprd17.prod.outlook.com
 (2603:10b6:a03:1b8::35) To PH0PR11MB4886.namprd11.prod.outlook.com
 (2603:10b6:510:33::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB4886:EE_|DS0PR11MB8719:EE_
X-MS-Office365-Filtering-Correlation-Id: eda833a6-08aa-4ecc-a46f-08dbafd61371
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1WOsskrJBybRCBE5BOFgSCrbB33xvlQ+fUpat6bxhei/ZSjAo6vWxu6w9iQ645YwPAXDWzOryyxx3OEvlzudBsJjaRSLRXOdT6r5VMR+SNu96WY4nfv0oqfmvQWsCJOk3EI8mbFI1Z/WEtAnQrSVzKAtctGB0AGCuIPjt4K4RPMjWfChnJ40/233q5tp2Nb75cIYRAzEtrIKa0sVPSZyjjBToa3Ejm6dC08Cbr2OkyIjy1R8AmVW4gOJQ2ndVuONN5DrvSYrLY2Dil0egxgFiorvu4qZafwhJdJ/kfxXyvBZV0LD1WekRj86BRfynV4yrpRg8k5o6TEk7As7f3C3rBTyW5w4/D9piTR76wRNNaRafMCNJQv7lLqFleQopV/ZbK9CZdzaz1urLieOdcqEhQKKlCOfSJV+jTAIoEZ3MQX8aCNQPdElcNfUNPw1IgUzGhGU3otVURB2MnXNkscbBgCsCZDirnzVQK+odGvNkr64G1mndMbXcrvUjEpS60KNKgw3in98w/2znDlvHxg1X89zaI+b6hk3s/6FV+Qwruo+s5nkcHiciPniM9pCdMSGRJVRGAvvnVLtH5x01dOYOuzxdpDFLCqLH/yLEmoA9FeiQz0y5Do6OkUwR0qfuHeyV4Xl8NBuiv0gAATKVIQuxw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB4886.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(136003)(346002)(366004)(376002)(396003)(186009)(1800799009)(451199024)(38100700002)(478600001)(53546011)(36756003)(83380400001)(82960400001)(6512007)(6486002)(6506007)(26005)(2616005)(6666004)(31686004)(316002)(66476007)(2906002)(8936002)(4326008)(41300700001)(8676002)(5660300002)(86362001)(66556008)(66946007)(31696002)(110136005)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UStiS0FYV1V4YnNzV2c5dlJuMzgxRHZUcWszemMvTFY1M3lXaVRhTlYxdlF0?=
 =?utf-8?B?VVowM3J0d1IwRzJyYVVzSVhiOXlWUVF6RkhNZGZGRWh6UllHVTc5NVVrOGRi?=
 =?utf-8?B?SHdNR3RYcUVhaEtab1d6T0VWZkxIQ3Nqd0hSNVRGYnc4Q0laeWlCVVViaTM2?=
 =?utf-8?B?RFRlMzVyV1EzbHFxdktOMndiN3dQUWZlT2tVVy9zMWJoWTdJczRMVUtFRXNo?=
 =?utf-8?B?V0o0dXpCekh3Z0JHMVlxQmpvK29WVVJHOGpvdGNlRXhYdU5CbjgyWGxTR05Z?=
 =?utf-8?B?Vm5vZDdsZ1JvN0pxbVkxVTZSTkpkbko2WTFXcys5cTlGTzZyTDZDZTU3OFFh?=
 =?utf-8?B?cytyd3hEMm52NzhXWXFWaHJiVmZIV0VRaUNxNWRVanpmNS84Y2NkQ0FKQ0R6?=
 =?utf-8?B?WmZLT2xHZmpSSVQrSFRlaHRCMGkvbUlWaW40dndmN1lJTFBHREltRWNxVGNY?=
 =?utf-8?B?SzhERHlsYk52bXRkMzJCSmpNbWxsemhyalB1S2Q2azZTVUJwdTdsUEdncm9r?=
 =?utf-8?B?cEhabENJQVR2OU1aQ2Eyb0V6UDk1eW81b3NIYnBOaWxjUWhuVEVxUzM2U1Nl?=
 =?utf-8?B?dDI0NmdqVWNHK0ZqQ29TTFFxTTl0cXRNaE5wUEFLUG9ualdSNGlyWjQ4Mm9u?=
 =?utf-8?B?eHVGcE5WQjkzbTRza0pLL1lCY0dZU1hrdjBSczZ6M2tDMVNRQnYzRDMwdTNJ?=
 =?utf-8?B?S0RUM3FXZmhnTnVVNjU4R2hXaktTNnZJV1JHSE9TUXFERjlqSGlDWUhKclVv?=
 =?utf-8?B?SjU2Q0dJMTYrVCtKbDcrejc3U2g2U3RvYUZnL25kUWQ5MnlweWZIbXZrekVM?=
 =?utf-8?B?OHlJOENuZUM3cURuR2RmRmNYTWx1ZTRYM3VaS1p6aUJaMlNROXdmK1V0UE52?=
 =?utf-8?B?Nm1TVklTdG5TWktkblp2NDduQkdPVlRvK3EzOVRrNzZjR1lRQmFtR1JJY0Y0?=
 =?utf-8?B?QTBlWTJRTEVVQWExTUVOUU02QVBmSXRIWHV4NklPYkRxRlJueDhUY1lzdEg2?=
 =?utf-8?B?eUdndytzbDNqMXdRWEVJR2RtZGdQazM3S1JGSG03aHdNdUNqenhyL0owK09I?=
 =?utf-8?B?bGdyQ3l2SlEyQ1VNSjN2MEZIQkw1OFdzYmx3NnFaWnlya0JsOVNraXJYWm95?=
 =?utf-8?B?VDlzQzlyVTdmWFhjU29DeitCVzRLYXlpSk44VURDbzZPZmZLaHNtTmhjU2ZU?=
 =?utf-8?B?MnpZb00vQWJtZG5wczc2aXJxQkpqbXVzQjRRMEhpZGVGU0kvNEU3Z0lhVXJs?=
 =?utf-8?B?Nzhjc0tFc0xGY2FNaXBIbU1nQ1FnT3BKVkFhYW1lb2tsY3lxK3ErcTEva1pV?=
 =?utf-8?B?WVBld0xacWtKMDBtanpUZUFYMExIakJBZFpmdVFxa2U1d01IT2IzUFhJWkJp?=
 =?utf-8?B?R2JFZVgrODA4Sm9jdnpBTGlDSkU3UCt5UjRsZU96UjY0bzNhR3hhT0UvMmF1?=
 =?utf-8?B?WlJ1ZXhzVTdCeDlGTWxiRVprZFNCTE5pV0YzREt3MC8vMVJFWlZ6ZzFlNUlk?=
 =?utf-8?B?d04zb1Y4MmtCbUUxT1owcm1hQ1RPVU8rS3piN3BYV2NFVkZOL0w5blVMSDNQ?=
 =?utf-8?B?a0tsT0RHOUVwYTRlVy9URXl1aysrdDRqMHpuN29ZallhYVE3MHo5T2h4OU81?=
 =?utf-8?B?OXFtYkxBeXRUU0JSdFRENXdNcWUrN29kcExFZnRoN3FoNmlCdDgxYlVTZU9t?=
 =?utf-8?B?VFA5UFlyZ1c1UlJYcUhHOXYyWFdIT3prT1RaQmgvcWdGOUFJTGcwNlI1N2FJ?=
 =?utf-8?B?cEw1V2dOZW9kSjZFa24yWGlYQ2ZRTVVWdlZkQlFCdUFQTFU3TE8za0NucU1Q?=
 =?utf-8?B?a1VQZnVkMFZzcU5RRGlrQjRsUWFWZ2ZhOERlajZPMGdVVGU5S2ZIYkVTY3hm?=
 =?utf-8?B?Sm01NmMvZlkwWGZmVzZOb0dIM2x6RU83RmVZNFJxU1piU2pEYnZSK09PU21h?=
 =?utf-8?B?bmEyNDloMFEzcnY3VjR5RDJEZVBjVVZiRnNOd3R0NXFSLzdZM2psamFpQy96?=
 =?utf-8?B?b3hhZW9VWkU3eUFPWFBzanF3WVFCZ0c1MHFHVEtJa0FkQ0d2QTRwM1ZGTHla?=
 =?utf-8?B?bjVEVzhTa3V5cTkwSkJCVUJsMitGWkJPVlJjTU50dVRwRUlvMzdLTks5ZDAx?=
 =?utf-8?B?V3YxMmVwSFBwYXd0SVh4aU9FUCtqWXpreHlSS3N0ZlN1aHBSbERzNTBDMjR2?=
 =?utf-8?B?dVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: eda833a6-08aa-4ecc-a46f-08dbafd61371
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB4886.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Sep 2023 19:10:18.8305 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BB1XPjIipXkdNXQCrY4cYAZ2TdjULvy6YcUSos28nMYv9us3kF03zi9HHb2XCGSXtIIUQ4H6RpZJq2eTQab1HuWLQCEy+CoMJfpslupUFqs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8719
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694113823; x=1725649823;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=c8s1nV5lsSEZBoDrCM0WglpF/xUe5QZ7Z5X1DubIQZ4=;
 b=ecssCBoLXEz7SCgUE3/GuyfabgSlTNrQI/ybphA1mX/9kuRxlbvRgeaD
 KQ4c5jd1N1n+ripPn8ygEOPtm4siiDerR+1l79K1EuH+46p6FqYWa82Or
 q6IbIIU3Wnh1JiaTmdQ9/0teKM5HUzIHVWt9183WuF77HQRc2R1VVMnTi
 e030PcnZeHI5Tu1mGubhmMVqj+Jl2NmlEDcWwm71JcL7tSamgOkSMymJa
 5sshs4S3fOSTMS9Pns0+B/OYW7z7se2Q+sOmFi3Sm6Z/VDT7dggB+Sgbz
 l9FDeW70UerLRTdrVi7cfBu8BlzwgCfK8PPCt2Z/PF1y5X26eJURmQqrB
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ecssCBoL
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v9 00/15] Introduce the
 Parser Library
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
Cc: ivecera@redhat.com, netdev@vger.kernel.org, jesse.brandeburg@intel.com,
 edumazet@google.com, intel-wired-lan@lists.osuosl.org, horms@kernel.org,
 qi.z.zhang@intel.com, anthony.l.nguyen@intel.com, pabeni@redhat.com,
 davem@davemloft.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 9/5/2023 6:05 PM, Tom Herbert wrote:
<snip>

> Yes, creating an elaborate mechanism that is only usable for one
> vendor, e.g. a feature of DDP, really isn't very helpful. Parsing is a
> very common operation in the networking stack, and if there's
> something with the vanglorious name of "Parser Library" really should
> start off as being a common, foundational, vendor agnostic library to
> solve the larger problem and provide the most utility. The common
> components would define consistent user and kernel interfaces for
> parser offload, interfaces into the NIC drivers would be defined to
> allow different vendors to implement parser offload in their devices.

I think naming this framework as 'parser library' may have caused the 
misunderstanding. Will fix in the next revision. This is not a generic 
network packet parser and not applicable to kernel flow dissector. It is 
specific to ice and enables the driver to learn the hardware parser 
capabilities from the DDP package that is downloaded to hardware. This 
information along with the raw packet/mask is used to figure out all the 
metadata required to add a filter rule.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
