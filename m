Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D3C36E852E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Apr 2023 00:47:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A21A060FC2;
	Wed, 19 Apr 2023 22:47:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A21A060FC2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681944451;
	bh=h082t6FOIhwXRIqKKqgi7wsSYr9QIFdWvnEeDomGeKc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=cxDV+61MDpwX+bdzMYddCye8EBDId1LIzyFWhddu2yK0+ZvEuaK0Z5bgWh9qPgSkP
	 VD5wGpt8wZxBywdSJE7Ct0VL75i03bz+ebUHmz0XTDwcYuKW+iwuaKvO4YppgM9npy
	 bMyGXxbYC6ea7u3OFSe7GeoHzask15UrMN81qHHFfS6tiCz/i5BqNC9X3LPDJcXbzB
	 M4XVVOIM1UI+euKjtOTIMMg15BQXGWPpPsSXyzRc7ImElKzK/MhYkiOoocluH94Wa/
	 BOpI1CWdeSLsX4iICK7mB4Hh2ldyiWYpVCztc9K1JsTMOdJYhzkaGTTzlIZZ18uDK+
	 VpkqbDH3Y4mOA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k58bo-tj14S6; Wed, 19 Apr 2023 22:47:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5B72160FB1;
	Wed, 19 Apr 2023 22:47:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5B72160FB1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 895911C43A0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Apr 2023 22:47:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 566C384028
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Apr 2023 22:47:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 566C384028
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P8cHTC_rvSyU for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Apr 2023 22:47:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F081884027
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F081884027
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Apr 2023 22:47:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="348333587"
X-IronPort-AV: E=Sophos;i="5.99,210,1677571200"; d="scan'208";a="348333587"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2023 15:47:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="724201170"
X-IronPort-AV: E=Sophos;i="5.99,210,1677571200"; d="scan'208";a="724201170"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga001.jf.intel.com with ESMTP; 19 Apr 2023 15:47:22 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 19 Apr 2023 15:47:22 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 19 Apr 2023 15:47:22 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 19 Apr 2023 15:47:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WEmvqJiEdCjRSvYcqlIvF/MGqwvcB9/fQNcgugnlZXMpgpipjvbCw3vejYHEpT3oh02Kl8bLDb9ouJW9YF1V8bD6gYzQnIlAiroebQB0pw/7rz2wLGeRjejC5teqMs5MUCQgDvMX/cuBEW2LCfucmFCaEXXmYAFkemlXVc3mNJSgS+nf4M7KYZ9jraWWKOZWK7g7qZxXaLVE34r0Rpm0cHLbPRVt2bf2g2Hs0teNlq3snCLBGy6nOm3nXRJd+SYFl8t7zEISZf+5FFBWNDU8uNKQATmxjh8PcArcyzRnRj5LnYl4S3P0Puya6BNd8S/4zhE6k0mNl0FYmBX/h5/KkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Vwb/vOat6ul46/8c5NBo53bEIBiE8wEgFejpGiyuO0I=;
 b=gus9V2m47jciFbrTwxXkN43R45BpOL9cmU4EFrL8Utvflw2F2HBsxwiGNyoy/8rADQU/Tk8fiwtXU8013LmrBZ1U69NDQSaDRMA4tVPcbBgwfyOejqwO1JXwSFrRH0tvaVSEM+FwAymC/U/EfkoKSjCCRFEmZI4h7GFukMsppuxHu/M5zz1sfsmqyPGaDV8tkdmCCZg5bloEjnrv49WEk19Mzi6hY+DZHloFAr0gPfCNzU/25DVB7qMmnCRIHWeV5Wq1pVxajt62Tb4MO9IS6v7OWIwCTz7EYLtEgpE93AAsglC5UcRpxe6zrA386F/YULjsg8cYCPn6A7Gej//BxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by PH7PR11MB7605.namprd11.prod.outlook.com (2603:10b6:510:277::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.45; Wed, 19 Apr
 2023 22:47:20 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::4b81:e2b0:d5fa:ad47]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::4b81:e2b0:d5fa:ad47%3]) with mapi id 15.20.6298.045; Wed, 19 Apr 2023
 22:47:20 +0000
Message-ID: <e0bb847d-e773-dd08-8edd-6d323d1a4c8a@intel.com>
Date: Wed, 19 Apr 2023 15:47:17 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Kamil Maziarz <kamil.maziarz@intel.com>, <intel-wired-lan@lists.osuosl.org>
References: <20230419115006.200409-1-kamil.maziarz@intel.com>
 <20230419115006.200409-2-kamil.maziarz@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230419115006.200409-2-kamil.maziarz@intel.com>
X-ClientProxiedBy: BYAPR06CA0033.namprd06.prod.outlook.com
 (2603:10b6:a03:d4::46) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|PH7PR11MB7605:EE_
X-MS-Office365-Filtering-Correlation-Id: 24330087-e9fc-4858-3f21-08db41280879
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: VaBJpTBDLzGloF6+nWHI7DLg8iCnur12OG82lZcKC9aHOjoWqhInJEs/2dM28UgPqtH/H+xrexhxzsNDONNCSDSnk3qDIMawUM6E7xwz/Z7scZIjjcnkuV/nzg3Q64TQc/VLGhUkoLK3VwqxfO/YXd8pbXNZQfeAkMGteyt2o418FfNjXxHtqmbtU1eFD1y41qsOLv+sR4Zl98Dda5cOtbZygwR/EQKErWwvXtm8Ssv7cER8V1nsyLkPcNb7lRVa4PZnrIl80V6F0bAxq/q5rmri9V0B5f0SXD4OXiT7IgosBlsfPNuiYHDx1UCya9BsvxrqpsM4mTA4MA2bGjw0FPYjeyOobTOY9JjwbbLkW8MQ9gqC/sP5U4YAGWTWHHm+M2K0vMPzFkLWPkz4vR9ARYW9TyRX4LIHlFMbtRm/KLiAWAuMpZ9rl78MbcDY+2WaeTuy4PREZEqY5VcSHiVefOC96XTwHfXBeBtQU0Ln5q6xACsag9LH1MAdLvzLU+KYEWld/VSd9qP+spDlfoVs6XFQQGL0zb0udTScuW+oWQb1uRwTVzkS2JmLLsCPMZGU34Rgll62UeXr7+hP00qeXk8OrCUs+nfYUqpHOrGRg8yRiInKwZPxBuXNlYir+xWfunlX80YN9wUaiNvrnDZQnw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(39860400002)(366004)(136003)(376002)(346002)(451199021)(26005)(186003)(53546011)(107886003)(41300700001)(6506007)(6512007)(54906003)(86362001)(2616005)(316002)(4326008)(83380400001)(31696002)(66946007)(66476007)(8676002)(2906002)(8936002)(6666004)(6486002)(66556008)(82960400001)(31686004)(36756003)(38100700002)(5660300002)(478600001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?STl3T3pCOVI3UUdsRWxoaE9pNmpmamY4NTFtRnhlQnU3ZXlhLzB4WkszbXVw?=
 =?utf-8?B?OGRmVlhJSnpoem5FVElFL1duQVIxUjBVSEwvSnk5RVRpTWpnaURadjRKZXZR?=
 =?utf-8?B?QnppVll6eDVSY1VQdXZCdSt3UTNCRG1LbTBraEhNYlVDUUluVlA3T0k3b2oy?=
 =?utf-8?B?ZEdYTm9naUVwTVhqV1BaUnA3RldvaGE4WkdMWXhHVXhYRi9KU2MwVXFMZ0FD?=
 =?utf-8?B?SzBKT3RNUVJUNzhxY29BWEJRbHd6R3J2Ly81NjVuaHc0aXVXamVzNFZ5dFQv?=
 =?utf-8?B?Skt0WXhMYnM3RXFLQjZrNkNiYmFmYnJsOEZtMnN3V0pMZkM0bWpTV2krSnpC?=
 =?utf-8?B?cTI2V2tGUjdhaFZVVlBnbVZ1cUx2aHhxZXFJMks5d0JlSm9nSjdsM2hUejRZ?=
 =?utf-8?B?WlgwTEIvMEJHbmtiOUhuUVA4SGd6QkExcDZjbERGSmx1dVlEYzU2Z3drZUhS?=
 =?utf-8?B?bC9zL3hZblVKTVBWSVM3S2U1SnQ0c2FRaXRkeS9VNzRiYllDQXJ4b1pFckZB?=
 =?utf-8?B?WUI4N0c3WUMvc1JFNURHVmthUmNxQWVjTHNUMmR4Rmhxa1p2SUttSHZ3bGc0?=
 =?utf-8?B?bjdSZE5FamM1eWlsZG1xZGdGL3Q2d2dGbGZETFFaMUFla0lsRngzdzNDSWtv?=
 =?utf-8?B?aU10QVlzUmd1Ty9HV3NIS0RYMS96UysyUFMvUnlXaFgxV1IrY2E4WGtGcFUz?=
 =?utf-8?B?VjVpU3ljWlIxZlNoVDd1Q3pRVkFKYmgvOVR6NHpHNXpCOG5aUHNkc0hXcEdX?=
 =?utf-8?B?dDFnSlBPeC83QzVZT25jaThzTFJoZUVJRWFqekd6bWFvYXVpSXdubEwvRWZX?=
 =?utf-8?B?ZlV4U0p2aXZwb2RseVY1SXVSaDVUWVhBM0grczdqZEhOSkRqSVBNdjJvOUhY?=
 =?utf-8?B?WjZjam9LNjN1UTlSYnFVQytDelRPczNyNHRrYzAzbkROS0w4aFZmSjlrUllx?=
 =?utf-8?B?Y0ZHSDk5MEZXMzQ4S1U4anZPQndSQnphOCtkVTVOUkxtVXNEbUpySktsQm85?=
 =?utf-8?B?TDBTOEFYMmtCSllTSVBNcHIxM1FFbi9UZ2Jva2ptUERxSkdWQ3Q0VVBLZTkx?=
 =?utf-8?B?SDRBU1FZY2ozdGhRazVIMGVMODRMdHB2dXRDaW5SUVlvS2pZY1ozeWFjdG82?=
 =?utf-8?B?Y29SR0NsN2FQTGcvTnVJWWc3ZFgrdUlzNlRtNHBqNVMwMWhlbkxzMDNTQlF0?=
 =?utf-8?B?U2NLek53WjZVNU1Ba3M3d0NUN1VoRldKR09YcGt4dGVBTU9RbCtyc2t1Und0?=
 =?utf-8?B?eUVVbzhaUUFOZk05NWFKaUsvbDE2b3JySUxOUnFseVFySmFtdGhwcGRqd01M?=
 =?utf-8?B?OGxwZTJxSmM2aFJpdDhRVy9iTlJETkE5enNGODkvc2ZDUEdXN1ZkMnVMbGkv?=
 =?utf-8?B?UW9IR2hjVHNuZzVacVZwK0g2ajA1cVloK3VaK0w3TmJ5MTdaRXZKZ3JlNFFG?=
 =?utf-8?B?TDFmNnN2YitHUStPUzkreHJyakNnZGxEeUd3Q3h3SHRGc1JMU1VMY0tkeHgz?=
 =?utf-8?B?dExtdlhmcEszY3hzYkR5c3FzVlFxR05WR0k4cXNXQVhiMk5LWEliSE8xZyti?=
 =?utf-8?B?R3FpSXNqQ0p0ZzhjTE5PODV0enhoTTNkYVdmcjdrSXhZSmFyMVd0Nnhaa0Rn?=
 =?utf-8?B?V0VhS3BqNnBTMEtHVnJ2YU94cXIwOW9YUy9MYjdZVC9MRWRtSTBSYWtuZTVv?=
 =?utf-8?B?UmJEOCtrYUQvaTZlay90cjF6QWt0Y211SlJLRXp1aGFnVEJ2dmM0Y1NIMVJs?=
 =?utf-8?B?SUNZdzR3MWVRUFpWeGs1eGY3dHloTFR1WlZxK0tZWmJmbXZUTVIyVjJqWEx4?=
 =?utf-8?B?YVpqVUlPSlRiUVNkSlYrSDRpbDgxUytuU2ZTTitocUI0WjhsK1NzRmczcjZZ?=
 =?utf-8?B?enVadjk5bEFsUSs2M0tiZENlbCs3ODFDN2J4bTYrK1lLUGx1c211NUN5Y0ll?=
 =?utf-8?B?eVBXSTNLWVl1MjNReTRLbnBISW9iTXphOUdGSzZ1WDhQTXRQS3Vud3VObDNV?=
 =?utf-8?B?aU42WkNyV00reXkxSVhaNkhtZ0xxdDRja25TOWlMWEp6L1V6djV4R1Q0NENW?=
 =?utf-8?B?ZnhUbDh2RUV5MG8yNGhyY1I5NHUxY0gyWFRDd0NEQTkyejhxV2FFc1RFWjVF?=
 =?utf-8?B?Y2VCNlVuVWN2WjE2Mndlanp1Z0RjWC92Wk9maTlUS2NTcFIyWFJQS0pNbFQv?=
 =?utf-8?B?WWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 24330087-e9fc-4858-3f21-08db41280879
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Apr 2023 22:47:20.1921 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6r9OTsbtwh/EiVuB/kp6VAp7cZDkx6T8kSPSwE5wBRurueTvkG0l8EEEwwgtUwsTYN61zlOqeKFTRglUz2rIwQAl1xMUXs8s9fI5Tyfvo5Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7605
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681944443; x=1713480443;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dlkPklUElpSQvnJw9nH60tyqxLhJCXFDBAli46XsKPY=;
 b=L12sRy2q/WfEIvXgiFuZTUFRFKI+dXIqYOcTD9KmXH6hcPlj4xyzDqmY
 ZYEswO2BjHF4YN+LlWcSO342b5odKCQ7IzM4/B5njQ57iJaXicD8Je3bA
 JjQ5Po/SU7XSO1NQwu5kleFnXcKflhgKDArlAzhH7FrFiuynCLmwkEklL
 m8gNUkEe71gw24JAGstrKudSSR3slg7h4LoNLQAXihjmX8/RPd9HOouEE
 Hcd6CrthKc/oqZP/BwuagXUK1Dh0BRd/Kj+ismAjV42T7i34N5KpkRZag
 9ZqclbIoGbJa1mWM4PYeesIVNtbMQ4wio7HDD+0cCdNDWdIf0PP3sfOkE
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=L12sRy2q
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v3 1/4] iavf: Wait for reset in
 callbacks which trigger it
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
Cc: Dawid Wesierski <dawidx.wesierski@intel.com>,
 Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 4/19/2023 4:50 AM, Kamil Maziarz wrote:
> From: Marcin Szycik <marcin.szycik@linux.intel.com>
> 
> There was a fail when trying to add the interface to bonding
> right after changing the MTU on the interface. It was caused
> by bonding interface unable to open the interface due to
> interface being in __RESETTING state because of MTU change.
> 
> Add new reset_waitqueue to indicate that reset has finished.
> Add waiting for reset to finish in .
> 
> Add waiting for reset to finish in callbacks which trigger hw reset:
> iavf_set_priv_flags(), iavf_change_mtu() and iavf_set_ringparam().
> We choose 5 sec for the timeout waiting time because the same interval
> is used in oot where waiting
> 
> Add a function iavf_wait_for_reset() to reuse waiting for reset code and
> use it also in iavf_set_channels(), which already waits for reset.
> We don't use error handling in iavf_set_channels() as this could
> cause the device to be in incorrect state if the reset was scheduled
> but hit timeout or the waitng function was interrupted by a signal.
> 
> We use a 5000ms timeout period because on Hyper-V based systems,
> this operation takes around 3000-4000ms. In normal circumstances,
> it doesn't take more than 500ms to complete.
> 
> Fixes: aa626da947e9 ("iavf: Detach device during reset task")
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Co-developed-by: Dawid Wesierski <dawidx.wesierski@intel.com>

The sign-off directly following co-developed needs to be the same.

WARNING: Co-developed-by and Signed-off-by: name/email do not match

> Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> Signed-off-by: Dawid Wesierski <dawidx.wesierski@intel.com>
> Signed-off-by: Kamil Maziarz <kamil.maziarz@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
