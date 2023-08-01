Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 986D976B4B8
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Aug 2023 14:27:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 86FB4416BC;
	Tue,  1 Aug 2023 12:27:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 86FB4416BC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690892840;
	bh=RSsJjDy9xebLEDCPh+pcDXbRvUhs1RAzdKfdzKbkYNQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Ne5jeNEpYszixhvZnfsj8v3Qg8KdQ33iAVHQ7fP2lnrMrgsDttp2tedRe8x8kBsS2
	 +NRK+PD8mcuaH1zYg3OlFNrZJxPXVgcNEmNeOxOSpbqLuLXaSB/iEdfN7FcWgGwlt2
	 YFLP9Bh+rtR3II+OLbzleWgQxQUHXpM1uGL7zIy+a+NzrcvrHa88b4rMav+hsIudmD
	 VhhQnrzlvARaLCODlIletsuY9qjmr+ty71Rosr5ibei249KsG/cnmCzUZB55HwCmvq
	 EurZarMLP+ZgKDZ0UicCtJ//78Y4qrdDtn0S6yJPpb1y+Cm0Oxcujd+cIcDzm4LL7O
	 setVYKmgmg6VA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nB0m3wcxHBcy; Tue,  1 Aug 2023 12:27:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E29244156A;
	Tue,  1 Aug 2023 12:27:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E29244156A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 70D7D1BF2AA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 12:27:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6019681585
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 12:27:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6019681585
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ooDo96xTDIXV for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Aug 2023 12:26:58 +0000 (UTC)
Received: from mgamail.intel.com (unknown [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 49A0F81EC5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 12:26:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 49A0F81EC5
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="348874152"
X-IronPort-AV: E=Sophos;i="6.01,247,1684825200"; d="scan'208";a="348874152"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2023 05:26:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="678665903"
X-IronPort-AV: E=Sophos;i="6.01,247,1684825200"; d="scan'208";a="678665903"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga003.jf.intel.com with ESMTP; 01 Aug 2023 05:26:33 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 1 Aug 2023 05:26:33 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 1 Aug 2023 05:26:33 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 1 Aug 2023 05:26:33 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.46) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 1 Aug 2023 05:26:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PNWlir510TUfAhw2x2X8jM/41QsniZ2zepCbhSQgQv6DADpsAvmhQ3aY4IgKdlOWZ4ke52kMtTJ/3vuBIRyot+gUtC/9iI083w6ufFhkakDWZw2RB9LlPoYIkff6gp5SSKVMY48jzzpc0xW7Z+XcjMykQqFn8AAI2vBxQvmNnQPkyPe/asNqcM/xy3cB3gyHBOrzk6zi77cwBRFwQb+cuj/cDP2x3KPcm5XrssdgZpxKpgSaEZqIy75kWiJ/pYLRteJb+G2Q7XZNaStdd0HHn2PaM6ksTRYuvqsN7V6PLeQ9rh3FjqEVzTDEpqsQ6xjIXA2xioBvvBqhunM/CLxOBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PZTaFoTMjkWmPijqJqEmx8QaIOXbLmkkzCTDD/qrYpw=;
 b=JB2M+3AQ3zb4/8EIJZcoA0FbaA1BNkhWfg5FtwdiF6fekp+LFVr50Xb/41nJMHRN1ljplBErbLqsPCXiLATymaJPUhxs+D0KmvSTq1nQggQM8j6uND58gYNOsm4H71+xJOfSV1vWikqi0W9GQ17zsH1W+w6pg9n8vBLT1mZU8c7LpW4cXUwKYdoaGdPo7ZqFoLcmXS+P4BOxybIofakqVko7v86U1+BaNocRNH/sHIjs6y3DYHGKmURAsOUAyVf50BqxH7zcGAGzX0wrf/QI4Xm7aCZgb3ifJlOPO5iLnVxnOYi+cNuwBuuIxLsJw4bp23uHU4wnM19lRJh1JUqtow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3674.namprd11.prod.outlook.com (2603:10b6:5:13d::11)
 by DM4PR11MB7757.namprd11.prod.outlook.com (2603:10b6:8:103::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.44; Tue, 1 Aug
 2023 12:26:31 +0000
Received: from DM6PR11MB3674.namprd11.prod.outlook.com
 ([fe80::7f4:c05b:358b:79c4]) by DM6PR11MB3674.namprd11.prod.outlook.com
 ([fe80::7f4:c05b:358b:79c4%7]) with mapi id 15.20.6631.034; Tue, 1 Aug 2023
 12:26:31 +0000
Message-ID: <3d3a14cd-95d6-b400-fb82-8661862191aa@intel.com>
Date: Tue, 1 Aug 2023 14:26:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
To: Jan Sokolowski <jan.sokolowski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230801115309.697331-1-jan.sokolowski@intel.com>
 <20230801115309.697331-7-jan.sokolowski@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20230801115309.697331-7-jan.sokolowski@intel.com>
X-ClientProxiedBy: FR2P281CA0019.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:14::6) To DM6PR11MB3674.namprd11.prod.outlook.com
 (2603:10b6:5:13d::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3674:EE_|DM4PR11MB7757:EE_
X-MS-Office365-Filtering-Correlation-Id: 9f6585cb-4df2-4661-ec28-08db928a8973
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Dvp7pcY6Hie6KIUkbwmlrO7whBZCHsBV4dwLOfwazYjZIXLu69/nAqQTGa6nhFY3PuTSOR9HUvVKN9VJ68aCGKVacAk8OB6Bu2iSEv2+tEFQ1ibfNaXYIQEooTrqXLGbE3kFiTbOSfKqTmcwzvAwjhCVdH+7H0TsO145GYQ4Sxg+uWzT9+hzPUkarPx1K38Ym0EIBeYIuMUxLBS9SRRRF/KjJmZ93lXjnBBAWz4mJlvKwVH4rveDfzAe6KT4d/KXgv5cVKgHNxHODK5QCxpDSel2IkhCi+M4KaRP4teGWC8xE34rjGyvbIKTjwayq4yoGeRBCPz0eENcpqohZELyhZOom2J6NYTwCpVYyAK8qUXqPRkR+X0QWwbCxXrjEnjTVrfrjqQxYxicUNp4RInwlS7/HLvek7JtkBLgcMGLoqSnuMfsykWV9ERDIcXdOUZbMEsylfjUb5xZz5I7NJDBT20iRSaML57WGEX+n4LPibt9UNAC1Azz2v6qLIfiUQw6ZT94cXZdR8ZKaLgwHuosJ4OhzyHfFOqbCDYhUG3bdpmsAUjUzXcAlg3iY/F56UqalS4VmZwSi6B+oCn9hcn8PtIztGNApdva4DUkcFryPjJT9/WG0wL0bwsMR0+Jt9ZRi4PonDcU7dIoAW6lVC5qxg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3674.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(39860400002)(346002)(366004)(136003)(376002)(451199021)(26005)(478600001)(316002)(186003)(53546011)(6506007)(41300700001)(82960400001)(6666004)(6512007)(6486002)(38100700002)(2906002)(5660300002)(86362001)(83380400001)(31696002)(8676002)(8936002)(31686004)(2616005)(36756003)(66476007)(66946007)(66556008)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cUZLUXh2OUtHSEh3NDVQMktCZFVvTUtUK3Nsa3ZhV2R4OHNPanRjSkdpYnpu?=
 =?utf-8?B?UjdLdE1RVDAyNnhNNFdUYlk1ekNXUWlZTXE2a3NEaVk1UHNxdjZMc0ZzazN0?=
 =?utf-8?B?SnRRLzl0eUM5VkRYNWNrSmRoblM3TU5KUEUvMGNoRG9uaTRPSnRxOVNzQjVR?=
 =?utf-8?B?UHRpdDFFSW16Y3BxNVNMSGFKNE5tZ0NjY1BxaCtCN1JDYU5IcGdqZDFiVm0w?=
 =?utf-8?B?THRuVjZZZGF3aFFZT1NQZkdWV3VnVVFScHhFVU9sT25kNkFxNi9Sd29mQlhR?=
 =?utf-8?B?VUl2NDFEeVZnQUlSZUFjSVNJUFJFYnloaEFXYmQxcjFOWFpXTTMyV2R6UGVa?=
 =?utf-8?B?WDdUSVdLYytXM3RyejFKSFlhSVQwK0EzTTNOU3VkSDB5VEorOTdpemZ1MDlH?=
 =?utf-8?B?TUhqcmYrbzNhVDM2Y0pKdWx3amVkY1RHQkRaUUc2TkJSMmpyYzhjYlZGdll0?=
 =?utf-8?B?RG5FLzh6cmdJL2luc1RJZW8xOHhrK1NnZ3hJRXdrT051MHNYUmp0UUNLQy8x?=
 =?utf-8?B?ejIrZzIxY0hpVnBhYXV2TDIrejJlREpuRTduTDVTRkF5ZGdselZSKzBROWZn?=
 =?utf-8?B?eHYrd2pWMHJqVkI3T2NxbzdNL0c1ZC8ySytmU0FPWVhxTUxrdFdWM0M4di96?=
 =?utf-8?B?MWZsajZxWEpEempucWhGRnlQc0VKbW50aGYzdWRRUWozRGVIQjVzVmQ5QUFk?=
 =?utf-8?B?a3JXTjhDZXp3N1JWVGhrWG84bDBDVHVzL0E4NWZFakdCR3pKQzhlRkF3SURZ?=
 =?utf-8?B?U1poOWFYVXFMcEFvUUU1K3dvd2lZWmg2N2VMM0pRRUE1SW9lZ1J0aEhEenBh?=
 =?utf-8?B?OHAvRUFwdVljN1gxMmIrRTl5RnNXRW45ZUhtcGhCYVVQNDF3QUxVQ0hhOVpm?=
 =?utf-8?B?bVRCYnN4aUF6S1hmUTJmUVpFeFF6VkUyVkozVkxvMEVjamVRdEtkNlROVUN0?=
 =?utf-8?B?cHgrSTFDK0EvNDRoQlZ3UUgwOEJUVUdwRmU0endjQnhJTlRaZnQxTnJNNnpL?=
 =?utf-8?B?RnBaN0w3UUladDRUMWh6NHRvVUFQd0E0R0lPTEF1M2g1UUdmRjZMWE4wYTVu?=
 =?utf-8?B?ZWVmNm1GOU03MUErRmdhakdEVWFXSkZVcmpRcXg0N2VJSEJUUncyNGd2YmJU?=
 =?utf-8?B?aldJNTZKTitUemRQR1MySjZaYU9wb0JJZitBZ1hkL0pLT2JpTGtYOXZMUS9u?=
 =?utf-8?B?VG1kSkZldFpwV3U5bFY3NjFXZElJcTd5TUdCelpvNGF4OU5JTDFrV1ptak1a?=
 =?utf-8?B?QXRnWUREN2FTcU9GMjJvV015TExrWW42c3BLSjRZRyt0S01tb05UY0pldGhS?=
 =?utf-8?B?QWl5Ulp3ei9xc2pQSnE1Z2FqT2dTc2orcHZXdW8zNldhZnRjdkc2cEZXejBY?=
 =?utf-8?B?cEFpS1ZvSFZSckJDdlJtT2VaeHNhd2s1Nlo3Z2c4dWtMS3gveWoySGhLdHpK?=
 =?utf-8?B?QnJDNWJqR2wwRVpEUWp4ci83eVpVdU5kZ01VYjhlNUc0c1NzRUs2UEVhWm0z?=
 =?utf-8?B?Ykozdkt5U2gyVjVTOTVoUHpPNVFRMXB5QVV1K1I0VGx1NEtDd3J3RUE4U1Fx?=
 =?utf-8?B?MXJwcnZNbkJlKzM2cnNNYXZYK1FseDFFNW81ZjNxQk8vUWlzNnVaU3VUV0hp?=
 =?utf-8?B?REkxYVR0RkNtMmtnNm54WldUY2RUeG5RMWFUd25Mc25YSm15R0I1eC9XWFNB?=
 =?utf-8?B?djJLOHM4aDN1WFhoeGpUZm03MDhIOFJUQ3o0Q3pwS2xoTTBsRFBNQVBza1Np?=
 =?utf-8?B?c1BudE1DVDdUVG43UzR1Z2FuRi9sMDN3VEZsV3RBbXF4NkZ3SjFKY28ySVM4?=
 =?utf-8?B?REZVdjRxNEtTNXhLUStBclVqR1pBbGlidmFMTDZHdExObDRiM2ZCYUozTk5w?=
 =?utf-8?B?Q3l0REtiZ1VQeGMxNnJwTWVmUEdsc2MrTlZabU1mcU0vQlpWeUgxcUNmK0l4?=
 =?utf-8?B?dkRPYXVuYmsxYnZNUDhYWEZIaWJjL010cDZLVzJhd1V6ODdXOFpmS1gwRTJx?=
 =?utf-8?B?b21zWXlpY3dqRUNwUmZnRXB4Y1JJT05tZ0pmU3RXNGN2b2dIVS81dUtyRGNO?=
 =?utf-8?B?L3RLQktwV3lVUGxxaW9WeVpzbFdnRFYwcFB4NTgxdGN6WnRZSUlreFA5VVQv?=
 =?utf-8?B?L3hHd3lQWWlkSis4VEZaUUlkQjUzN01GZTh4ektSWkJUenBCYVdvNGFkRnZJ?=
 =?utf-8?B?cEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9f6585cb-4df2-4661-ec28-08db928a8973
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3674.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Aug 2023 12:26:31.3241 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mFLra1w4g6DBllybUsBQyJgJpXN7B77rsB0mEcR67/KoHOBI6ht7Lwf94Ivi14yepEuCMU5bD4FJ6Cw483X3g3Bal2lgx99H8Oz7IQSrObg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7757
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690892818; x=1722428818;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=2qm/0TM/IzCfwUM9MdDVdPv7SrLQl10CwMoIVmnVZcI=;
 b=kRzNBIB7xHBF+eY7n5E6FVvNFZx1BrKPZkNsE/k43O+F7Fc/Yhe4jtsc
 fNRvZOcGiQDPUSvYeRpoj9ey+KDE1O0oiFTgKLmhcm7LqRT3fAJ6iwc24
 R8e6NyL36mVdK5K/S3cDluzE3ZOJosDbI7841X+7z/FTssuF/RZyiGQtv
 twjNwdqguxHdZM7pVp/GCYQbyxw9ffxAHViosdNX29qgOwo4K6ZSS2+mE
 okPRfmzueVzk+noST6w8FdECkx7A7yE5CjDKd+Tv7sYp28mtrUlJ4gYqH
 Hp6RVBaRy/mdbxPFFjScazqmHATZzfqUgqLa46X0kF2NOycGDU/Pjzwv7
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kRzNBIB7
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 6/6] ice: refactor
 ice_ptp_hw to make functions static
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 8/1/23 13:53, Jan Sokolowski wrote:
> efactor ice_ptp_hw.c/h in order to make as many methods

"efactor" is a typo :)

anyway I would try to use different word (for whole series), as 
"refactor" suggests that there are possibly some changes other than just 
"+static" and "move function up".

For this particular patch I would suggest:
ice: mark some ice_ptp_hw functions static
?

Also, for whole series, you have to CC netdev ML when sending patches to IWL

> as possible static.
> 
> Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 6 +++---
>   drivers/net/ethernet/intel/ice/ice_ptp_hw.h | 3 ---
>   2 files changed, 3 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> index dd2fad831924..fd19afaf9c85 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> @@ -295,7 +295,7 @@ static bool ice_is_40b_phy_reg_e822(u16 low_addr, u16 *high_addr)
>    *
>    * Read a PHY register for the given port over the device sideband queue.
>    */
> -int
> +static int
>   ice_read_phy_reg_e822(struct ice_hw *hw, u8 port, u16 offset, u32 *val)
>   {
>   	struct ice_sbq_msg_input msg = {0};
> @@ -372,7 +372,7 @@ ice_read_64b_phy_reg_e822(struct ice_hw *hw, u8 port, u16 low_addr, u64 *val)
>    *
>    * Write a PHY register for the given port over the device sideband queue.
>    */
> -int
> +static int
>   ice_write_phy_reg_e822(struct ice_hw *hw, u8 port, u16 offset, u32 val)
>   {
>   	struct ice_sbq_msg_input msg = {0};
> @@ -1089,7 +1089,7 @@ ice_ptp_prep_phy_time_e822(struct ice_hw *hw, u32 time)
>    *
>    * Negative adjustments are supported using 2s complement arithmetic.
>    */
> -int
> +static int
>   ice_ptp_prep_port_adj_e822(struct ice_hw *hw, u8 port, s64 time)
>   {
>   	u32 l_time, u_time;
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> index 3dc1d6e5468c..4e3c1382c477 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> @@ -144,11 +144,8 @@ int ice_ptp_init_phc(struct ice_hw *hw);
>   int ice_get_phy_tx_tstamp_ready(struct ice_hw *hw, u8 block, u64 *tstamp_ready);
>   
>   /* E822 family functions */
> -int ice_read_phy_reg_e822(struct ice_hw *hw, u8 port, u16 offset, u32 *val);
> -int ice_write_phy_reg_e822(struct ice_hw *hw, u8 port, u16 offset, u32 val);
>   int ice_read_quad_reg_e822(struct ice_hw *hw, u8 quad, u16 offset, u32 *val);
>   int ice_write_quad_reg_e822(struct ice_hw *hw, u8 quad, u16 offset, u32 val);
> -int ice_ptp_prep_port_adj_e822(struct ice_hw *hw, u8 port, s64 time);
>   void ice_ptp_reset_ts_memory_quad_e822(struct ice_hw *hw, u8 quad);
>   
>   /**

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
