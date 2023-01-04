Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2520565CC9F
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Jan 2023 06:35:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BB1FD40A93;
	Wed,  4 Jan 2023 05:35:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BB1FD40A93
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1672810533;
	bh=3dUAQspsHIll6Nd7VS0C/1o9sjGB6FmLUYF8+tD+HHM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MOFkfDD5msW+uHEHaPILwwIPJDULYnfoOoLAWOh+BlzmnrGHbz63Ls8i0aSAtjMnS
	 34P93HYeG7NewxFWoh+zDaOdFtk84XGcgyLR7cWviFMFG95ym5XyRAba05TDG4tV5J
	 bhjAsOLw2jNfdENoq8VT7Gog/VmiVsjZmkSfoS8hDnJBwY4SJaGkZisPgM6Ox7gx5J
	 6G88FXNqyfl4okUcQhxd3HzYG5XZvfCaej7GvCOGsYi5empiqerg79lXVPFauOr9EM
	 p5xuh02z3FeiNGk9DxWx+MwPNFhfttlEL0w1yqRm1JfPzgRQoTXyZr0GGosp00ABsB
	 Auv0+bdfsJRhQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OOSORVcejo6E; Wed,  4 Jan 2023 05:35:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A648A4031F;
	Wed,  4 Jan 2023 05:35:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A648A4031F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B1AEA1BF831
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Jan 2023 05:35:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 95BA041794
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Jan 2023 05:35:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 95BA041794
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Yf_UykMC9IGa for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Jan 2023 05:35:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3E4AF4177A
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3E4AF4177A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Jan 2023 05:35:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="309605825"
X-IronPort-AV: E=Sophos;i="5.96,297,1665471600"; d="scan'208";a="309605825"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2023 21:35:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="762551758"
X-IronPort-AV: E=Sophos;i="5.96,297,1665471600"; d="scan'208";a="762551758"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga002.fm.intel.com with ESMTP; 03 Jan 2023 21:35:24 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 3 Jan 2023 21:35:23 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 3 Jan 2023 21:35:22 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 3 Jan 2023 21:35:22 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.171)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 3 Jan 2023 21:35:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U1VPaMm38vGtqrQJ9Ey1qdoAPXSD2/TBSj/rZJ/52rUvTbABgkDsv4wYQScxOjTErlgTjwamqZb8Z1y3K3Jny/f7zIDyBC0J8iGCQAixFAkx62bb9tGbtDa5Qty/G8pRWN1RiWgFEzqwxYQUN4y/jk0knaKgutuyBuIaYEFVIqLM4sWA1gxHSHpjBXVIeeEC+QDUVHGxgfdGHZfXqqjYCr5BHxQwTQ9x88JSaMUJHhljA0QvTr4m56DxaJiMbef7WRSZ9FQuYK7dh4dQ8bWDbHoL6vSnHoBOphpz9PEp9UyzuGlrsvs+yjO9vyoUGkJTQiXyAxwdGolbcV2pscufnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GP+dcu8T3nc6Pyd8HpfjETcaXPXhPb7T4K51wgqkgR8=;
 b=mRwql3wJlUWR678gzIN/FXlfS0Nk66eDwaHw9BWoUWXjFFragHTZ8VhehgyXgOHT4J6BtL6LdX1Lz7dyMkwaMGFIl/5xfefKNWrQN3zLDFvkA3k+nyIo0KezllfG9Pff6npkHLw58anwfhNHwfa0UNqiBLMZQhIY/Q81/U5z42XKIygow2FPgrMETMnyog46eCXlCMUTteUxiztjDuZMqzXu8KH/Fk3EzsfcDx1ZyiOfuCyiIHJ6kuhZogqJegzp0cgcBXnlkvmGwMtKNNRqQsOjXSgxe5yeFFKXH3Nc6i5BInftwDAthcyCK3TXLH6DROXBb9Yv6leE0xyWHfDjiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB6738.namprd11.prod.outlook.com (2603:10b6:303:20c::13)
 by DS7PR11MB6222.namprd11.prod.outlook.com (2603:10b6:8:99::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Wed, 4 Jan
 2023 05:35:20 +0000
Received: from MW4PR11MB6738.namprd11.prod.outlook.com
 ([fe80::7c7c:f50a:e5bc:2bfb]) by MW4PR11MB6738.namprd11.prod.outlook.com
 ([fe80::7c7c:f50a:e5bc:2bfb%5]) with mapi id 15.20.5944.019; Wed, 4 Jan 2023
 05:35:20 +0000
Message-ID: <7fc50ee3-41e8-5ae2-4c47-b01b9b9a2498@intel.com>
Date: Wed, 4 Jan 2023 07:35:09 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.6.1
Content-Language: en-US
To: Bjorn Helgaas <helgaas@kernel.org>, Leon Romanovsky <leon@kernel.org>,
 "Ruinskiy, Dima" <dima.ruinskiy@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Lifshits, Vitaly" <vitaly.lifshits@intel.com>, 
 naamax.meir <naamax.meir@linux.intel.com>, "Mushayev, Nikolay"
 <nikolay.mushayev@intel.com>, "Edri, Michael" <michael.edri@intel.com>,
 "Neftin, Sasha" <sasha.neftin@intel.com>
References: <20230103142104.GA996978@bhelgaas>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
In-Reply-To: <20230103142104.GA996978@bhelgaas>
X-ClientProxiedBy: ZR0P278CA0125.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:20::22) To MW4PR11MB6738.namprd11.prod.outlook.com
 (2603:10b6:303:20c::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6738:EE_|DS7PR11MB6222:EE_
X-MS-Office365-Filtering-Correlation-Id: 6c3379f5-5e14-42c6-2808-08daee1577ca
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: cfS//0ItkSvWFooOK4T+DDDNWA8Nx6c/SvtY14PS9GGBv2aSkuUR9229fOyEtBeNCwgpeZZCBqCw1FDUrLLU/wPnm7uY1VVd92U7vkwevSLPDVcQgFIW5m991NFT/IlFpWHSB7uQHQGzEzQWewPSNcNZiYRfDF2xQcIQkFrQ5Zx8SpE0HQErlfXq+ZU1YpopeK53OUDT9XeHs5vpJ9zQ8d8hknqyTjjM3siYIvTU8CKl2IB6QSNXCwbeEQF749FNbVddLlFSt2aPt6HKmGHoz/actNDrmkLfg3SKTf0w6mLh9irMvIwALYKycstvj5bTWIf7nbPkVTV5Ti9lXGP6Kuq1a15J6cvQENqRwd+DIKWqVXsJSWiEMjvOYYmB9P9N/2ALyAoq3BAPCv4W0Vdrq9rYJC+HwgpX0SmANyZgtwxD1WYt2xWh4rzrOJw+SEIeUJ0PKLoeZMhYAuw1pOzSqnWbrx62s5Vt68wJsjhSlzq2wAh7QkwJgw5456JVlIHiT8FtFlyr/B+7DHjAUCJaWmyVe9hnkArOThFmlX1dIUwJoFlca6n6cR/ROArBsXygjKFL9I/aj8tQ/hHHHRNogn+2olo7cwoFrOUA3Uxl0Jypde4A3ZvDUecH+GRSooWcbn2h+MK9MQjqeWVOcsDnVrmWzZrzFM5YTvPhTCgGEFm+roM+T8jucr7Pd0xHXi/Vv5o+tIthJrIWpL9H2mxr0lbH57vkpR3NyCGkbUUrQP9KShV47UyELpoGkiIAoKYE8sIpdeuv6ktqZer5DReKC4HlmqcYEq0cTf2M9pB7FEA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6738.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(396003)(39860400002)(346002)(376002)(366004)(451199015)(6512007)(26005)(6666004)(6506007)(31696002)(86362001)(36756003)(82960400001)(53546011)(921005)(2616005)(38100700002)(186003)(4326008)(478600001)(41300700001)(8676002)(2906002)(7416002)(5660300002)(8936002)(966005)(66556008)(31686004)(6486002)(66946007)(66476007)(316002)(54906003)(110136005)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dWw1NXEwcUZGblc4SUxBbkVvcTN5OVloTUNsb1hNTDdaY3cyZXFNRHRFbVBa?=
 =?utf-8?B?NC9IaU9VUmtCZHB5dzAxdzJINkNUcTV1WFJtSmNZV0hZQStvOVllbkVvcHUz?=
 =?utf-8?B?MEhoYmtWdFdTclhObCtYZUpzSUtZWXptN3d1aWMvWkZ4bW9CTVBPbTRpMWps?=
 =?utf-8?B?ZU8wSzZXcWxpMTBRZkE4NlRQbUpESktoMlBTVGh4eDh5TXVGZlYxdHJQWkpl?=
 =?utf-8?B?QU1iS2JTdVN1MC80YXFtWmdjMjcydFlXRG13QXRLTHp0US8yTkNsbnMzRGZl?=
 =?utf-8?B?ZnE1TFpiTUh0WDYwT1BNWE8rdXFwM3BjZ2R6WjFONzAyTGUrRDhqdkFIeENy?=
 =?utf-8?B?bjcwclRLMUh1YWRTaUZjTWJzSXg5Q3JUYkd4eVFVTnpobzhNZGRWNU1iMlM5?=
 =?utf-8?B?VG1ZR3dPYTJ5a2dyaHRVK0hiL2RXa3Q3UlB6ZDlYeUhpTG1CRlcrOXlmNzNN?=
 =?utf-8?B?aE9pQTNrZnlPT0MrZ2Z2UG44dWlQL3hJSkREOGx6c0QyWjJxTFFubXhGUmVz?=
 =?utf-8?B?SUZVK2RsYXhHQ2M0VGpzRjFsN2UyK0cxbmNQbzZtYUlhWjNNUmE1VHhTczdT?=
 =?utf-8?B?MFFaOC84TG5kanU3S0N0c2hZSmJpYU5uL1FQdWZEUlNJb2l2NW9KWThYTUhP?=
 =?utf-8?B?VU5nWVk5dEprSFBiektmZ0wva1ErV2w3OHNmUnl4eFg2aXNjTTg2YWdPb0dw?=
 =?utf-8?B?cDI0dDcyNlNKRVFxVllBZmJJa1ZzTldmVjk2MHFhdzdBa1lUdy8yWS9ldlUy?=
 =?utf-8?B?ODJwVmtGQ0poaGpJamJsQm1TbDc3Ykk5ZXdvV0hHNVZoT0JKZW5CS1hzbDl5?=
 =?utf-8?B?WU5ud1pjUjhodml0VndaL2wya2Y3eXVGVGp1bjRvRE5oSURQM0YveGdxOFo1?=
 =?utf-8?B?ZjB4K1RmWVM3Nm1KbTZ2eE1rWFlwK3NnVC80Rkp3N1RKNU5zSnNLdmFHdHp2?=
 =?utf-8?B?aXg2RzVsVnZ4b09Fc0RtTXdiR1c5UzJhSjNUNllCRG9VQlllSi9xY2F6VG5u?=
 =?utf-8?B?ak15QVVzOTRRaUVFTFhRMkJFREN3V1JPV0pGMHR1ek9tUFRZTHlPdVI3OFlI?=
 =?utf-8?B?OE5mbDlOOE96UGJibmR3V0pqcmIvMlBiaytWeG11NzRNOS9vQlhaNTVoalk0?=
 =?utf-8?B?RUNFM2lybmZJeXVjajgzaTkxNGFKUmhyZzdCL29oR0VzbEI1ZFhuN1N1T280?=
 =?utf-8?B?T0VyMjJFRDRmTStFenZmbjlQVE1ZOEZoSUVNbVRNdDNYMWtQcU9xSGdHRy9l?=
 =?utf-8?B?RU9QSGpmWUx3QXRmQVZEMTErTEdUcHVIZnM3RUZpYldVRFBBdXh1SjdBRUs5?=
 =?utf-8?B?SENXTm1CSmM3MEpVdHUwdnV5S0V0Y0xOT1FObTFlNzVzbU5SNlhHdzFJYzJ1?=
 =?utf-8?B?aTdORmFvUEVRcVFYQWp0Y3pSK0J0LzNtTXBlQVU4MTVJMDc1a240b3V6bFY3?=
 =?utf-8?B?UUljMnhrVldRam5mcUZqVkx4Yjk0T1VVNTRXQUJyOUczc2d2NkpERFJTRlRw?=
 =?utf-8?B?R2Rvci94UGc3WnJxQUNTQm02VmNKRTlRSGc3alBVa2duS1ZaNzBKQmtjQ1lr?=
 =?utf-8?B?Qk15UHpnRHBMd2pxUWNjWldIVythQ3RvSjdjbmlWSEVaU2FvdlVlWVpuOWRi?=
 =?utf-8?B?cno0NDVyYktGQkxqbzR3NHdaVjVHNDZqTm91d2xPVk50cktoMVRUMWM5RlI2?=
 =?utf-8?B?MzNZbzlvaG5Sd2pnMzI0N0N3MFB0YVRjUm4xd1FSNHF6ZStrRVE1Ylk4ZTZ4?=
 =?utf-8?B?UWNQTTNJZlVoUHJhK0phRG52QXYxSUtLL0JPOFl1T09qQTBLaFBMeEhjaFEz?=
 =?utf-8?B?STQ0UzNxY0U5aFRpYjh4U1hCZkhsZlh6SXJQQ3FBUUJhd2xrYkFqT2J3L2lp?=
 =?utf-8?B?NytEeUtPTFJEc1NnNlMxMElENFRsSk1FNzMrMm1NbEdXczFOeGVXQ2huU3hx?=
 =?utf-8?B?bUNYWGpGdXZpdEEvcFkrL1AyYVpHeHlBUGhrSGZIUElaMy8xQjRJMTRQVjl0?=
 =?utf-8?B?bklIREQ1VHJGaWl0WE9rTkc4TmsxWEpIaXdpZHRRclNQU2tGaTg5LzNMUlk3?=
 =?utf-8?B?aGx5aml3eitxNUdIcHo4cUVNVDlnNEwrSG9kRDNZeFJ2Zklxa2p0bnRKL0hN?=
 =?utf-8?B?RUpyYVVRdkVIcnNZZ3hsL1pZWEpIelBJMDhUT1lvZmFGc2tUMmhOcHRpYjln?=
 =?utf-8?B?OGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c3379f5-5e14-42c6-2808-08daee1577ca
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6738.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jan 2023 05:35:20.0775 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: R0eoIpZdMMvwXdzjOunqpcbpmar2uzYYf8gcTWdQYwcZuDuHztvcJ+ywm2RfD4SEPgzrHTKSvylHzEou335Gog==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6222
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672810526; x=1704346526;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5rWzGxjeQRxa9e+eoqIkb7a90DdRlNK4Fg6SuWgR31E=;
 b=T8xV3GcpOU+GTcyDMfV1YPc2a+rFgT53fovNMgbVTvzLdx9uKNH1k1nD
 bJyfHD/dZkZFRTAuh/7Jg9wnSWY4GJOBgEIfnfHanDG1TsVrC2MDzACcC
 gSVPLI3PCDNjDl2ZlPArfaduWzGTy7By+8rBdVadf7iPbN7pIZqQxDa58
 ucEHbsgFXyv9IVEb8iV0ds8eeKbwA8OrWWatRJgfBN6rSPT/Ug0zMesRf
 820YYvfcNHD9cQagpd5qii/S1XJ7bvS0GS95SpjHEyWwcHx0k+Wz6z5xg
 zx1vwc0kORoj5NgA37q+RjR986djCVrPDPqF9BHlDBoAMM3WJLFT2Dbps
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=T8xV3Gcp
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] igc: Mask replay rollover/timeout
 errors in I225_LMVP
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>,
 Rajat Khandelwal <rajat.khandelwal@linux.intel.com>, pabeni@redhat.com,
 netdev@vger.kernel.org, rajat.khandelwal@intel.com, jesse.brandeburg@intel.com,
 linux-kernel@vger.kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 linux-pci@vger.kernel.org, Bjorn Helgaas <bhelgaas@google.com>,
 kuba@kernel.org, intel-wired-lan@lists.osuosl.org, davem@davemloft.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 1/3/2023 16:21, Bjorn Helgaas wrote:
> On Tue, Jan 03, 2023 at 02:00:04PM +0200, Leon Romanovsky wrote:
>> On Tue, Jan 03, 2023 at 05:54:02AM -0600, Bjorn Helgaas wrote:
>>> On Tue, Jan 03, 2023 at 11:54:24AM +0200, Leon Romanovsky wrote:
>>>> On Sun, Jan 01, 2023 at 11:34:21AM +0100, Paul Menzel wrote:
>>>>> Am 01.01.23 um 09:32 schrieb Leon Romanovsky:
>>>>>> On Thu, Dec 29, 2022 at 05:56:40PM +0530, Rajat Khandelwal wrote:
>>>>>>> The CPU logs get flooded with replay rollover/timeout AER errors in
>>>>>>> the system with i225_lmvp connected, usually inside thunderbolt devices.
>>>>>>>
>>>>>>> One of the prominent TBT4 docks we use is HP G4 Hook2, which incorporates
>>>>>>> an Intel Foxville chipset, which uses the igc driver.
>>>>>>> On connecting ethernet, CPU logs get inundated with these errors. The point
>>>>>>> is we shouldn't be spamming the logs with such correctible errors as it
>>>>>>> confuses other kernel developers less familiar with PCI errors, support
>>>>>>> staff, and users who happen to look at the logs.
>>>
>>>>>>> --- a/drivers/net/ethernet/intel/igc/igc_main.c
>>>>>>> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
>>>
>>>>>>> +static void igc_mask_aer_replay_correctible(struct igc_adapter *adapter)
>>>
>>>>>> Shouldn't this igc_mask_aer_replay_correctible function be implemented
>>>>>> in drivers/pci/quirks.c and not in igc_probe()?
>>>>>
>>>>> Probably. Though I think, the PCI quirk file, is getting too big.
>>>>
>>>> As long as that file is right location, we should use it.
>>>> One can refactor quirk file later.
>>>
>>> If a quirk like this is only needed when the driver is loaded,
>>
>> This is always the case with PCI devices managed through kernel, isn't it?
>> Users don't care/aware about "broken" devices unless they start to use them.
> 
> Indeed, that's usually the case.  There's a lot of stuff in quirks.c
> that could probably be in drivers instead.
> 
> Bjorn
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
Tony,Please, drop/recall this patch. Intel's team will investigate this 
problem. Sasha
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
