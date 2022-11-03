Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BC186189EF
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Nov 2022 21:52:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F0F5F61049;
	Thu,  3 Nov 2022 20:52:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F0F5F61049
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667508735;
	bh=fdT8hQmJ4ClfGSqW4Y1nMgHC2iCAnSFYFnOBkZuLjGw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7KqPZ+iH94+OeAZq/cKaOwH6S05FfrBePTc346xllbZTBRNVo4TyHlACydSj9XZla
	 +SQyFzWkvAAeRfdITuEVy82zAW2s+obsxLmUEEBfp4uv01nq1oJppQQnBpajB2bZU4
	 r6S2IEhAvk/rnLkJDO/LwgYfXz4RryABMGWsf2dgHM4Hv1ecE7pP1y+Xdj8JayMlbs
	 nOuvdz0w+nFRxhONCPgOIcFbZwerX9H5viBy4n33nQ9Te6ZRbXDrgCM0KgZywWrhK3
	 gSAeA3pli/8k7kMrIuBdRJ+lcr7sC9TuG1IG+Lq8NboHVq8HdaLuH4WV/TezKi3pNt
	 pRzfT4065hZAg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2hKbOkvd-6Vr; Thu,  3 Nov 2022 20:52:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9078961042;
	Thu,  3 Nov 2022 20:52:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9078961042
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2A7D71BF2F2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 20:52:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 046FB61044
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 20:52:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 046FB61044
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4VlLfCLSBf3E for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Nov 2022 20:52:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0101361040
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0101361040
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 20:52:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="396103993"
X-IronPort-AV: E=Sophos;i="5.96,135,1665471600"; d="scan'208";a="396103993"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2022 13:52:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="964084990"
X-IronPort-AV: E=Sophos;i="5.96,135,1665471600"; d="scan'208";a="964084990"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga005.fm.intel.com with ESMTP; 03 Nov 2022 13:52:07 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 3 Nov 2022 13:52:06 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 3 Nov 2022 13:52:06 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 3 Nov 2022 13:52:06 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.104)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 3 Nov 2022 13:52:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aXsCwJZ/f099RM9jRGIXSmfl38pC3dWuojBywA6waIlQDhAmtM7H8howOZcyQBjW5+Y+re9Wgdfb2ZS9/RTcLqj+1dycnuNRYqjX2eq9e/AGKbMR+cU09K/HGfVRK6g2uft5e1IQb15db03BnAgRPfk3PMzgXjIJOKc6FT2KfGNnXx7dgUy2heu7sLcNr0IpNIJBDhUXQa+5AlPO2bF+cPKK50MEsUpha8cPf5CFlnbkR7gnvOBKKFZrlSSE1l2dU4rkJGjLngHVE+dEaAFsu8a0i6AqXj9E86KLanHu39eaxj9ylT2kY3/s6gGssPn4Pkr6haVjeA/AH9PvSp0bPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rjZmczX2Jeb+ruuHmbjbPPRFWWnB81i/CFn/NA6V8wQ=;
 b=Pze/eTuJ5FvOZ6BN2Pedt2WFvmX7kr0nfGTrj4pl6c9FgmL2yYNqo2NreBCyZZrZ+QPGWAITXGCcTqvFTAFZH28KjeYx1vYi0Va8qdgRQLKLFUb+v1ICp0bmMq8ANrzAkbT4s7S0NUwt3bSbNW8+YZWu+l99OBvLEG7NBauz4TSMHSs1mXNjp5JP3zCvVx5p1askCrYE00aqto+kzYyooxRvZsexflpDbxVBwYFH13QaOafvHVvvbq+dEvw+aaHKNFu61Du/41wtus50eXPTyDFS5bOWuOJHCqv/E6UH539g7qHylHepPlNAFS7IF3oQ/jpyH690i2RSXlmowAAf6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by PH0PR11MB4792.namprd11.prod.outlook.com (2603:10b6:510:32::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5769.21; Thu, 3 Nov
 2022 20:52:04 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::d408:e9e3:d620:1f94]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::d408:e9e3:d620:1f94%6]) with mapi id 15.20.5791.022; Thu, 3 Nov 2022
 20:52:03 +0000
Message-ID: <e6d6b609-e924-5ef9-03d2-fdf958161908@intel.com>
Date: Thu, 3 Nov 2022 13:52:01 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Content-Language: en-US
To: Tony Nguyen <anthony.l.nguyen@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
References: <20221101225240.421525-1-jacob.e.keller@intel.com>
 <20221101225240.421525-8-jacob.e.keller@intel.com>
 <8d90d805-0665-048e-2578-75280c7355bc@intel.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <8d90d805-0665-048e-2578-75280c7355bc@intel.com>
X-ClientProxiedBy: SJ0PR03CA0368.namprd03.prod.outlook.com
 (2603:10b6:a03:3a1::13) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|PH0PR11MB4792:EE_
X-MS-Office365-Filtering-Correlation-Id: 788c12cb-b8e4-4be1-06c3-08dabddd4300
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Exo2gNGZXSCW93ANQFVpYw+jmZNI+oA7y3cq4kBviEJAADVRGkT9haDQt0zurZcmRcBnC3XTRJ1Y4OfwfkLb8EvN4a3CZG4rZBNNRPbKzupFzOkCJfOxY3ALK2qUZ3fBBQIYWqqkQLn646rjKSUcRqGfjvpu+z3zD7gAFU49S/V/Z/DnxTz4+KJXu5hwUyQLGQpFdvWIK0wNk1MZ7YX/+XLZLW/ac5AuzcXxyeCAE5Xug9vZ++wfu1nNQPXx4X0TI7EDw5qtnVDSFADddPAwSKluuUZgMk2JxgQQCBArAFU3PZyLz9v3KYcGVXhP625W4fYwc3qWRWJ4bWkHtYZZ5g9vYdoRhh6vLpz8wRWKgGawGXZWkOo8Nlbb5e0ajLiLcJBiaxB4XsmAgbTLNsWswIhcZqfpZtCfoRZmym1R5gsFqV212UuGTURQFzyaEvLmVZOy/8zcCfCN2v9g3aosN33/vmHmwvanH6srpZzTvup34/vPENE6oqt+UoxQrR75rZNAmz6i1y6+t7xE15OROncdSkdqffMPYMd/rYBQf3Euan9vYx62svLD1hdN+hwYsljY/R5waHm5JmX37Bj/hM07PmrpV5oMBxX4OMCCreny/0mRVKgbKt3h0blWrw9wuGE2zOZlcfjZmhx0MIWuZQG7ifpxsvpoKyA3PyYFtFD+eBdyZnONpKnUnCdbFWjaiB+Tsrz8uE6h0xAIBrSy0tMYGtmg1l1Yk9V3QjYrRNYdfQifgQe0jPe+Rj2JBt123MUBRTsg0NOWADPgPdir+SuWzohlZMNi9SSWjv1JbLQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(39860400002)(396003)(346002)(376002)(136003)(451199015)(86362001)(38100700002)(36756003)(31696002)(31686004)(82960400001)(186003)(53546011)(2906002)(26005)(83380400001)(6512007)(2616005)(478600001)(6506007)(316002)(66476007)(41300700001)(66556008)(6486002)(8676002)(5660300002)(110136005)(66946007)(8936002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MjU3d2FpdUlHOElWWlZYNUx1cEVubnpDTk1vL0FyKzlUU0F4Nmp2MWhZbmMz?=
 =?utf-8?B?WndUK3JtcUZINENaeHZHMjUzYW45Rk1xT2VIS05heENRang0TnpxaFFMYmhW?=
 =?utf-8?B?ZldYT20xSUk1UWN0Z2FkU0c5UHRSN0xPVm5XOVhOZ0hXYlp2YWVjdHE0K2tC?=
 =?utf-8?B?Yy9xbXI4VERySFNFbUxFaTZsOUJVa2JTTFNHUmt4VHgxalFtZG9DT00rVDNT?=
 =?utf-8?B?Yk91UlhpaldWY052bkp0Vy9BeHNUclZEdExjbFJ3U2hYTm5zcG5hSjRyN3Bi?=
 =?utf-8?B?aUxrS0tTdUE1TWtaeFdjbG1icW1jbUZ5STM2eHR4cDk4eWJMTmJBbWJsNGZT?=
 =?utf-8?B?bElZL0JUWWxLVTFHRHd5S3pscmxPazVCdnR0aVJKS2prTFVzYm1jOVZSTUxy?=
 =?utf-8?B?VWdoZWZzWWJQMDA2dlF2MEx3OEpKWnlKbHR4RW9EMm42WEU5RUU1Vkh6Qi84?=
 =?utf-8?B?UHRzZCtzWm91UHZWcDZsWjFxMk1vWTRLMXdnc3BmdmZRNXl2MlRoTTVlNFRm?=
 =?utf-8?B?OW9QQXlidG1XNmxMS2xmaFJVcjAzNnZyems2MUtKWjVtQURvQWl4Z3ZNMW9F?=
 =?utf-8?B?TUN2QTVLUmhPRWlQNWZpbzBGMGswdXQ0S0YwNkY0Y2hLNTFVUzZ2dHNSN0Ro?=
 =?utf-8?B?TEVEZXN6a29VWjg5V2R2SWprcU1md0s2emhlc2xKNGM0NjJabHQ0VGMwT29P?=
 =?utf-8?B?MUlQYVFZNWJnc21RWWd6enFya2hLY2hUYlhPZDdKQm9UbXdXcmFQaHF4dW1C?=
 =?utf-8?B?Zm1mamJmS0xUbXVTenhuM3Vqc2MvNEROcktnc1BSOUgyTzRSajBKUFl0UU9R?=
 =?utf-8?B?QS9KemM5eHdxWnZCWTFFQ0MvZExuVW1aeFRhZU9rUXgwUS9CUWFFK1VhbE53?=
 =?utf-8?B?ZXdpLzRXTHo4ellCWVdDMU50WEVOd0VSdXZLT2tEZ2pENlY0OXZ4U081dXNS?=
 =?utf-8?B?R09DVUtHU3BuUmVzSUZJRkVsYW1JQnl4RmNISVBYREkrNlNGLzBGanJ5d3Rx?=
 =?utf-8?B?SEVoSkFrck4zL3hCVGZHbVdZTlJHdVFyMk82YStwWkhURzMzK2RLcVJ6empF?=
 =?utf-8?B?U1J5ZmlzS3JQQTlkOUZYTEpEVm9mM1JESWIyeXNaa3dLc3IwM1NBZThwcVEr?=
 =?utf-8?B?NWp3c2dwQ21OWEFCMXNReGdyQ00wUUE5b3pqakVTUWlubFhXZnkxcjhzdThV?=
 =?utf-8?B?TS9MQ2pVdnA1K1htaFBYbWNmYms0M21kZmN4c0RPNlJpT0Fpc2lSUlZtbEcx?=
 =?utf-8?B?bGNHSWx4YnhKQUlldGlWcWNYc2FGd01RemRCRHZyVFR4czRYVHBPRjBrck5T?=
 =?utf-8?B?bWpMZjl3ekt4RHZMeVRCT0F6OU1XK3FVRXdMYjZRb2x1MExaaWVKOWVzMEt0?=
 =?utf-8?B?dXh1MTdJbWNRWko0bGZkdVFxQWcyR3F4VjhBSjQ1a3Q4U3JjcFdiOVhuZGpM?=
 =?utf-8?B?RjdGOE95b0hzOWRkMnNGeFJuWEMrRmNyd1pJTWIxNGcwZGI4eE5wdzhNTmcr?=
 =?utf-8?B?M1Y5cGhoWWtiLytScTkxdWFTQTRWdklnSHcxUFE4UXMvUFBKK1FKbHB6USt3?=
 =?utf-8?B?WFYrWTF3QVZEb1hEMGowSEUvSUxvWUJBcFVCQVhlRmsvb2h1czJKdFNYUnFm?=
 =?utf-8?B?Q0VEYW5GWU51UUVjMVhpSHdwUllYVi9mUmNMN0xaUFJJZFozK1h5T0RmOWJH?=
 =?utf-8?B?Ym5TMWNQVDNoWk1ldjI1NFRMbHlPTm9PRHNZbWpPS0lmYUNERTl4SjdJeDBS?=
 =?utf-8?B?YnJlWkg0Y0MzZHJ2Z2gyOEk4WTRFR0ppMVduZXVoREs1QjVFeVZOYjdRbi9r?=
 =?utf-8?B?aldaR1J4TG9ra0oyM1FBOWIxejJJem9QR0FUMmlSTG92eHFqR1h2cjNGNlU2?=
 =?utf-8?B?TnM5RzdlUzB5UC9Pa0x2MEpNRHMvdHErQ0I2MzVxRC94ZklsTm1McGR2ZStn?=
 =?utf-8?B?cHlHdTUxMGc3aWZuaWtYOTRkZ254czRmZzU3TnQxa25pZTZjbHNRbVJrZFA3?=
 =?utf-8?B?Y0plOGR4TlRJZGJYYThBYVQvWE9qbFUrQUd0QjFoZlNFdGp2SS9oZDcvcXB4?=
 =?utf-8?B?MEhmTDdlNDM1bVFrQldMeEhYSmlsQTVJdkZUSlgvbldra2FJb0RTRmRrdE1P?=
 =?utf-8?B?YUVXUklUZzFOeXpmK2o1VDk5L2UzR0ZHS2prRGt3OTh5T3k3cHBVTDhaQnRR?=
 =?utf-8?B?NVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 788c12cb-b8e4-4be1-06c3-08dabddd4300
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Nov 2022 20:52:03.7411 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5uspEJLVmvr7cXKawMkKXgSIuMTascAvy2nQNcuEs4xK3Nlk9KSXLb6qjjwIyenktfwhdhyRXP+YAF9MQ7tfa8zqnYYQOZygvm+Tq8atj5E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4792
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667508728; x=1699044728;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Pwm+YiwVKbAu7Av2UOD98uAkER7PVxuCXZB3GYLiHAg=;
 b=jKNLW5+ncgb3azEv3omkh2c5MvuSVdZYDEhESVgPJfJ/3jO5OFJVh0/Y
 RAZ0YG7DMGcoJGUvcUNyuGQQM0SOL4gCK7OmsWW08cRm4hDT3X1YRIfVp
 sYVY/nH6ZZNPdJKbSjBayHkduv+tW1nu4qBdQw2M2yc9OnwHsuoKMAZHO
 NZxNC1Ji3lB0MTpqSXIe7VRsCgEvZjogRXtHIBCGGLEsNelN/IGsW36Qv
 22AM7wf0WRSAwPECvQ8Mr3AXalImimekGk33uA/GpaYF7/4SJ1gsZhbOW
 TA8SJiRT58knd3K01NRGWXPA0us6skzEZQmk/AQO819eUGvljOHaUl0Xv
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jKNLW5+n
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 07/15] ice: check Tx
 timestamp memory register for ready timestamps
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiAxMS8zLzIwMjIgMTo0NCBQTSwgVG9ueSBOZ3V5ZW4gd3JvdGU6Cj4gT24gMTEvMS8yMDIy
IDM6NTIgUE0sIEphY29iIEtlbGxlciB3cm90ZToKPj4gVGhlIFBIWSBmb3IgZTgyMiBiYXNlZCBo
YXJkd2FyZSBoYXMgYSByZWdpc3RlciB3aGljaCBpbmRpY2F0ZXMgd2hpY2gKPj4gdGltZXN0YW1w
cyBhcmUgdmFsaWQgaW4gdGhlIFBIWSB0aW1lc3RhbXAgbWVtb3J5IGJsb2NrLiBFYWNoIGJpdCBp
biB0aGUKPj4gcmVnaXN0ZXIgaW5kaWNhdGVzIHdoZXRoZXIgdGhlIGFzc29jaWF0ZWQgaW5kZXgg
aW4gdGhlIHRpbWVzdGFtcCAKPj4gbWVtb3J5IGlzCj4+IHZhbGlkLgo+Pgo+PiBIYXJkd2FyZSBz
ZXRzIHRoaXMgYml0IHdoZW4gdGhlIHRpbWVzdGFtcCBpcyBjYXB0dXJlZCwgYW5kIGNsZWFycyB0
aGUgYml0Cj4+IHdoZW4gdGhlIHRpbWVzdGFtcCBpcyByZWFkLiBVc2Ugb2YgdGhpcyByZWdpc3Rl
ciBpcyBpbXBvcnRhbnQgYXMgcmVhZGluZwo+PiB0aW1lc3RhbXAgcmVnaXN0ZXJzIGNhbiBpbXBh
Y3QgdGhlIHdheSB0aGF0IGhhcmR3YXJlIGdlbmVyYXRlcyB0aW1lc3RhbXAKPj4gaW50ZXJydXB0
cy4KPj4KPj4gVGhpcyBvY2N1cnMgYmVjYXVzZSB0aGUgUEhZIGhhcyBhbiBpbnRlcm5hbCB2YWx1
ZSB3aGljaCBpcyBpbmNyZW1lbnRlZAo+PiB3aGVuIGhhcmR3YXJlIGNhcHR1cmVzIGEgdGltZXN0
YW1wIGFuZCBkZWNyZW1lbnRlZCB3aGVuIHNvZnR3YXJlIHJlYWRzIGEKPj4gdGltZXN0YW1wLiBS
ZWFkaW5nIHRpbWVzdGFtcHMgd2hpY2ggYXJlIG5vdCBtYXJrZWQgYXMgdmFsaWQgc3RpbGwgCj4+
IGRlY3JlbWVudAo+PiB0aGUgaW50ZXJuYWwgdmFsdWUgYW5kIGNhbiByZXN1bHQgaW4gdGhlIFR4
IHRpbWVzdGFtcCBpbnRlcnJ1cHQgbm90Cj4+IHRyaWdnZXJpbmcgaW4gdGhlIGZ1dHVyZS4KPj4K
Pj4gVG8gcHJldmVudCB0aGlzLCB1c2UgdGhlIHRpbWVzdGFtcCBtZW1vcnkgdmFsdWUgdG8gZGV0
ZXJtaW5lIHdoaWNoCj4+IHRpbWVzdGFtcHMgYXJlIHJlYWR5IHRvIGJlIHJlYWQuIFRoZSBpY2Vf
Z2V0X3BoeV90eF90c3RhbXBfcmVhZHkgZnVuY3Rpb24KPj4gcmVhZHMgdGhpcyB2YWx1ZS4gRm9y
IGU4MTAgZGV2aWNlcywgdGhpcyBqdXN0IGFsd2F5cyByZXR1cm5zIHdpdGggYWxsIAo+PiBiaXRz
Cj4+IHNldC4KPj4KPj4gU2tpcCBhbnkgdGltZXN0YW1wIHdoaWNoIGlzIG5vdCBzZXQgaW4gdGhp
cyBiaXRtYXAsIGF2b2lkaW5nIHJlYWRpbmcgCj4+IGV4dHJhCj4+IHRpbWVzdGFtcHMgb24gZTgy
MiBkZXZpY2VzLgo+Pgo+PiBNb2RpZnkgdGhlIHN0YWxlIGNoZWNrIHRvIGFwcGx5IG9ubHkgdG8g
ZTgxMCBkZXZpY2VzLiBJdCBpcyBub3QgbmVjZXNzYXJ5Cj4+IGZvciBlODIyIGRldmljZXMgYmVj
YXVzZSB0aGUgdGltZXN0YW1wIG1lbW9yeSByZWdpc3RlciB3aWxsIHByZXZlbnQgdXMgCj4+IGZy
b20KPj4gcmVhZGluZyBhIHN0YWxlIHRpbWVzdGFtcC4KPj4KPj4gTW9kaWZ5IHRoZSBJQ0VfUFRQ
X1RTX1ZBTElEIGNoZWNrIHRvIHNpbXBseSBkcm9wIHRoZSB0aW1lc3RhbXAgCj4+IGltbWVkaWF0
ZWx5Cj4+IHNvIHRoYXQgaW4gYW4gZXZlbnQgb2YgZ2V0dGluZyBzdWNoIGFuIGludmFsaWQgdGlt
ZXN0YW1wIHRoZSBkcml2ZXIgZG9lcwo+PiBub3QgYXR0ZW1wdCB0byByZS1yZWFkIHRoZSB0aW1l
c3RhbXAgYWdhaW4gaW4gYSBmdXR1cmUgcG9sbCBvZiB0aGUKPj4gcmVnaXN0ZXIuCj4+Cj4+IFdp
dGggdGhlc2UgY2hhbmdlcywgdGhlIGRyaXZlciBub3cgcmVhZHMgZWFjaCB0aW1lc3RhbXAgcmVn
aXN0ZXIgZXhhY3RseQo+PiBvbmNlLCBhbmQgZG9lcyBub3QgYXR0ZW1wdCBhbnkgcmUtcmVhZHMu
IFRoaXMgZW5zdXJlcyB0aGUgaW50ZXJydXB0Cj4+IHRyYWNraW5nIGxvZ2ljIGluIHRoZSBQSFkg
d2lsbCBub3QgZ2V0IHN0dWNrLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBKYWNvYiBLZWxsZXIgPGph
Y29iLmUua2VsbGVyQGludGVsLmNvbT4KPj4gLS0tCj4+IMKgIGRyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2ljZS9pY2VfcHRwLmPCoMKgwqAgfCA0MSArKysrKysrKysrLS0KPj4gwqAgZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9wdHBfaHcuYyB8IDcyICsrKysrKysrKysrKysr
KysrKysrKwo+PiDCoCBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3B0cF9ody5o
IHzCoCAxICsKPj4gwqAgMyBmaWxlcyBjaGFuZ2VkLCAxMDggaW5zZXJ0aW9ucygrKSwgNiBkZWxl
dGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lj
ZS9pY2VfcHRwLmMgCj4+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9wdHAu
Ywo+PiBpbmRleCBlYmU5MTAzMjY5NjMuLjM5YzY4YTI3MmM2YSAxMDA2NDQKPj4gLS0tIGEvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9wdHAuYwo+PiArKysgYi9kcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3B0cC5jCj4+IEBAIC02NTUsNiArNjU1LDkgQEAgc3Rh
dGljIGJvb2wgaWNlX3B0cF90eF90c3RhbXAoc3RydWN0IGljZV9wdHBfdHggKnR4KQo+PiDCoMKg
wqDCoMKgIHN0cnVjdCBpY2VfcHRwX3BvcnQgKnB0cF9wb3J0Owo+PiDCoMKgwqDCoMKgIGJvb2wg
dHNfaGFuZGxlZCA9IHRydWU7Cj4+IMKgwqDCoMKgwqAgc3RydWN0IGljZV9wZiAqcGY7Cj4+ICvC
oMKgwqAgc3RydWN0IGljZV9odyAqaHc7Cj4+ICvCoMKgwqAgdTY0IHRzdGFtcF9yZWFkeTsKPj4g
K8KgwqDCoCBpbnQgZXJyOwo+PiDCoMKgwqDCoMKgIHU4IGlkeDsKPj4gwqDCoMKgwqDCoCBpZiAo
IXR4LT5pbml0KQo+PiBAQCAtNjYyLDYgKzY2NSwxMiBAQCBzdGF0aWMgYm9vbCBpY2VfcHRwX3R4
X3RzdGFtcChzdHJ1Y3QgaWNlX3B0cF90eCAqdHgpCj4+IMKgwqDCoMKgwqAgcHRwX3BvcnQgPSBj
b250YWluZXJfb2YodHgsIHN0cnVjdCBpY2VfcHRwX3BvcnQsIHR4KTsKPj4gwqDCoMKgwqDCoCBw
ZiA9IHB0cF9wb3J0X3RvX3BmKHB0cF9wb3J0KTsKPj4gK8KgwqDCoCBodyA9ICZwZi0+aHc7Cj4+
ICsKPj4gK8KgwqDCoCAvKiBSZWFkIHRoZSBUeCByZWFkeSBzdGF0dXMgZmlyc3QgKi8KPj4gK8Kg
wqDCoCBlcnIgPSBpY2VfZ2V0X3BoeV90eF90c3RhbXBfcmVhZHkoaHcsIHR4LT5ibG9jaywgJnRz
dGFtcF9yZWFkeSk7Cj4+ICvCoMKgwqAgaWYgKGVycikKPj4gK8KgwqDCoMKgwqDCoMKgIHJldHVy
biBmYWxzZTsKPj4gwqDCoMKgwqDCoCBmb3JfZWFjaF9zZXRfYml0KGlkeCwgdHgtPmluX3VzZSwg
dHgtPmxlbikgewo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0IHNrYl9zaGFyZWRfaHd0c3Rh
bXBzIHNoaHd0c3RhbXBzID0ge307Cj4+IEBAIC02NjksNyArNjc4LDYgQEAgc3RhdGljIGJvb2wg
aWNlX3B0cF90eF90c3RhbXAoc3RydWN0IGljZV9wdHBfdHggKnR4KQo+PiDCoMKgwqDCoMKgwqDC
oMKgwqAgdTY0IHJhd190c3RhbXAsIHRzdGFtcDsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIGJvb2wg
ZHJvcF90cyA9IGZhbHNlOwo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0IHNrX2J1ZmYgKnNr
YjsKPj4gLcKgwqDCoMKgwqDCoMKgIGludCBlcnI7Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoCAvKiBE
cm9wIHBhY2tldHMgd2hpY2ggaGF2ZSB3YWl0ZWQgZm9yIG1vcmUgdGhhbiAyIHNlY29uZHMgKi8K
Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIGlmICh0aW1lX2lzX2JlZm9yZV9qaWZmaWVzKHR4LT50c3Rh
bXBzW2lkeF0uc3RhcnQgKyAyICogSFopKSB7Cj4+IEBAIC02NzcsMjQgKzY4NSw0NSBAQCBzdGF0
aWMgYm9vbCBpY2VfcHRwX3R4X3RzdGFtcChzdHJ1Y3QgaWNlX3B0cF90eCAKPj4gKnR4KQo+PiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAvKiBDb3VudCB0aGUgbnVtYmVyIG9mIFR4IHRpbWVz
dGFtcHMgdGhhdCB0aW1lZCBvdXQgKi8KPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcGYt
PnB0cC50eF9od3RzdGFtcF90aW1lb3V0cysrOwo+PiArwqDCoMKgwqDCoMKgwqAgfQo+PiAtwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBnb3RvIHNraXBfdHNfcmVhZDsKPj4gK8KgwqDCoMKgwqDCoMKg
IC8qIE9ubHkgcmVhZCBhIHRpbWVzdGFtcCBmcm9tIHRoZSBQSFkgaWYgaXRzIG1hcmtlZCBhcyBy
ZWFkeQo+PiArwqDCoMKgwqDCoMKgwqDCoCAqIGJ5IHRoZSB0c3RhbXBfcmVhZHkgcmVnaXN0ZXIu
IFRoaXMgYXZvaWRzIHVubmVjZXNzYXJ5Cj4+ICvCoMKgwqDCoMKgwqDCoMKgICogcmVhZGluZyBv
ZiB0aW1lc3RhbXBzIHdoaWNoIGFyZSBub3QgeWV0IHZhbGlkLiBUaGlzIGlzCj4+ICvCoMKgwqDC
oMKgwqDCoMKgICogaW1wb3J0YW50IGFzIHdlIG11c3QgcmVhZCBhbGwgdGltZXN0YW1wcyB3aGlj
aCBhcmUgdmFsaWQKPj4gK8KgwqDCoMKgwqDCoMKgwqAgKiBhbmQgb25seSB0aW1lc3RhbXBzIHdo
aWNoIGFyZSB2YWxpZCBkdXJpbmcgZWFjaCBpbnRlcnJ1cHQuCj4+ICvCoMKgwqDCoMKgwqDCoMKg
ICogSWYgd2UgZG8gbm90LCB0aGUgaGFyZHdhcmUgbG9naWMgZm9yIGdlbmVyYXRpbmcgYSBuZXcK
Pj4gK8KgwqDCoMKgwqDCoMKgwqAgKiBpbnRlcnJ1cHQgY2FuIGdldCBzdHVjayBvbiBzb21lIGRl
dmljZXMuCj4+ICvCoMKgwqDCoMKgwqDCoMKgICovCj4+ICvCoMKgwqDCoMKgwqDCoCBpZiAoISh0
c3RhbXBfcmVhZHkgJiBCSVRfVUxMKHBoeV9pZHgpKSkgewo+PiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBpZiAoZHJvcF90cykKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBnb3Rv
IHNraXBfdHNfcmVhZDsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZWxzZQo+PiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvbnRpbnVlOwo+IAo+IFRlY2huaWNhbGx5IHRoaXMg
ZWxzZSBpc24ndCBuZWVkZWQgc2luY2UgdGhlIHByZXZpb3VzIGNvbmRpdGlvbiBpcyBhIGdvdG8K
PiAKClRydWUgaXRzIG5vdCBzdHJpY3RseSBuZWVkZWQsIGFuZCBJIGd1ZXNzIGl0cyBtb3JlIGNs
ZWFyIHRvIGhhdmUgaXQgb3IgCm5vdC4gSSBndWVzcyBvdXIgcHJhY3RpY2UgaXMgdG8gZHJvcCB0
aGVtLiBXaWxsIGZpeC4KCgo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgfQo+PiDCoMKgwqDCoMKgwqDC
oMKgwqAgaWNlX3RyYWNlKHR4X3RzdGFtcF9md19yZXEsIHR4LT50c3RhbXBzW2lkeF0uc2tiLCBp
ZHgpOwo+PiAtwqDCoMKgwqDCoMKgwqAgZXJyID0gaWNlX3JlYWRfcGh5X3RzdGFtcCgmcGYtPmh3
LCB0eC0+YmxvY2ssIHBoeV9pZHgsCj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgJnJhd190c3RhbXApOwo+PiArwqDCoMKgwqDCoMKgwqAgZXJyID0gaWNlX3Jl
YWRfcGh5X3RzdGFtcChodywgdHgtPmJsb2NrLCBwaHlfaWR4LCAmcmF3X3RzdGFtcCk7Cj4+IMKg
wqDCoMKgwqDCoMKgwqDCoCBpZiAoZXJyKQo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBj
b250aW51ZTsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIGljZV90cmFjZSh0eF90c3RhbXBfZndfZG9u
ZSwgdHgtPnRzdGFtcHNbaWR4XS5za2IsIGlkeCk7Cj4+IC3CoMKgwqDCoMKgwqDCoCAvKiBDaGVj
ayBpZiB0aGUgdGltZXN0YW1wIGlzIGludmFsaWQgb3Igc3RhbGUgKi8KPj4gLcKgwqDCoMKgwqDC
oMKgIGlmICghKHJhd190c3RhbXAgJiBJQ0VfUFRQX1RTX1ZBTElEKSB8fAo+PiArwqDCoMKgwqDC
oMKgwqAgLyogRm9yIGU4MTAgaGFyZHdhcmUsIHRoZSB0c3RhbXBfcmVhZHkgYml0bWFzayBkb2Vz
IG5vdAo+PiArwqDCoMKgwqDCoMKgwqDCoCAqIGluZGljYXRlIHdoZXRoZXIgYSB0aW1lc3RhbXAg
aXMgcmVhZHkuIEluc3RlYWQsIHdlIGNoZWNrIHRvCj4+ICvCoMKgwqDCoMKgwqDCoMKgICogbWFr
ZSBzdXJlIHRoZSB0aW1lc3RhbXAgaXMgZGlmZmVyZW50IGZyb20gdGhlIHByZXZpb3VzCj4+ICvC
oMKgwqDCoMKgwqDCoMKgICogY2FjaGVkIHZhbHVlLiBJZiBpdCBpcyBub3QsIHdlIG5lZWQgdG8g
cmUtcmVhZCB0aGUKPj4gK8KgwqDCoMKgwqDCoMKgwqAgKiB0aW1lc3RhbXAgbGF0ZXIgdW50aWwg
d2UgZ2V0IGEgdmFsaWQgdmFsdWUuCj4+ICvCoMKgwqDCoMKgwqDCoMKgICovCj4+ICvCoMKgwqDC
oMKgwqDCoCBpZiAoIWRyb3BfdHMgJiYgaWNlX2lzX2U4MTAoaHcpICYmCj4+IMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIHJhd190c3RhbXAgPT0gdHgtPnRzdGFtcHNbaWR4XS5jYWNoZWRfdHN0
YW1wKQo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb250aW51ZTsKPj4gK8KgwqDCoMKg
wqDCoMKgIC8qIERpc2NhcmQgYW55IHRpbWVzdGFtcCB2YWx1ZSB3aXRob3V0IHRoZSB2YWxpZCBi
aXQgc2V0ICovCj4+ICvCoMKgwqDCoMKgwqDCoCBpZiAoIShyYXdfdHN0YW1wICYgSUNFX1BUUF9U
U19WQUxJRCkpCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGRyb3BfdHMgPSB0cnVlOwo+PiAr
Cj4+IMKgIHNraXBfdHNfcmVhZDoKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIHNwaW5fbG9jaygmdHgt
PmxvY2spOwo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgdHgtPnRzdGFtcHNbaWR4XS5jYWNoZWRfdHN0
YW1wID0gcmF3X3RzdGFtcDsKPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2ljZS9pY2VfcHRwX2h3LmMgCj4+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNl
L2ljZV9wdHBfaHcuYwo+PiBpbmRleCA2YzE0OWI4OGMyMzUuLjU1YmJlNzZjZTBiZCAxMDA2NDQK
Pj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9wdHBfaHcuYwo+PiAr
KysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3B0cF9ody5jCj4+IEBAIC0y
NDE3LDYgKzI0MTcsNDMgQEAgaW50IGljZV9waHlfY2FsY192ZXJuaWVyX2U4MjIoc3RydWN0IGlj
ZV9odyAKPj4gKmh3LCB1OCBwb3J0KQo+PiDCoMKgwqDCoMKgIHJldHVybiAwOwo+PiDCoCB9Cj4+
ICsvKioKPj4gKyAqIGljZV9nZXRfcGh5X3R4X3RzdGFtcF9yZWFkeV9lODIyIC0gUmVhZCBUeCBt
ZW1vcnkgc3RhdHVzIHJlZ2lzdGVyCj4+ICsgKiBAaHc6IHBvaW50ZXIgdG8gdGhlIEhXIHN0cnVj
dAo+PiArICogQHF1YWQ6IHRoZSB0aW1lc3RhbXAgcXVhZCB0byByZWFkIGZyb20KPj4gKyAqIEB0
c3RhbXBfcmVhZHk6IGNvbnRlbnRzIG9mIHRoZSBUeCBtZW1vcnkgc3RhdHVzIHJlZ2lzdGVyCj4+
ICsgKgo+PiArICogUmVhZCB0aGUgUV9SRUdfVFhfTUVNT1JZX1NUQVRVUyByZWdpc3RlciBpbmRp
Y2F0aW5nIHdoaWNoIAo+PiB0aW1lc3RhbXBzIGluCj4+ICsgKiB0aGUgUEhZIGFyZSByZWFkeS4g
QSBzZXQgYml0IG1lYW5zIHRoZSBjb3JyZXNwb25kaW5nIHRpbWVzdGFtcCBpcyAKPj4gdmFsaWQg
YW5kCj4+ICsgKiByZWFkeSB0byBiZSBjYXB0dXJlZCBmcm9tIHRoZSBQSFkgdGltZXN0YW1wIGJs
b2NrLgo+PiArICovCj4+ICtzdGF0aWMgaW50Cj4+ICtpY2VfZ2V0X3BoeV90eF90c3RhbXBfcmVh
ZHlfZTgyMihzdHJ1Y3QgaWNlX2h3ICpodywgdTggcXVhZCwgdTY0IAo+PiAqdHN0YW1wX3JlYWR5
KQo+PiArewo+PiArwqDCoMKgIHUzMiBoaSwgbG87Cj4+ICvCoMKgwqAgaW50IGVycjsKPj4gKwo+
PiArwqDCoMKgIGVyciA9IGljZV9yZWFkX3F1YWRfcmVnX2U4MjIoaHcsIHF1YWQsIFFfUkVHX1RY
X01FTU9SWV9TVEFUVVNfVSwKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgICZoaSk7Cj4gCj4gQ0hFQ0s6IEFsaWdubWVudCBzaG91bGQgbWF0Y2ggb3BlbiBwYXJlbnRo
ZXNpcwo+IAoKV2lsbCBmaXguCgo+IAo+PiArwqDCoMKgIGlmIChlcnIpIHsKPj4gK8KgwqDCoMKg
wqDCoMKgIGljZV9kZWJ1ZyhodywgSUNFX0RCR19QVFAsICJGYWlsZWQgdG8gcmVhZCBUWF9NRU1P
UllfU1RBVFVTX1UgCj4+IGZvciBxdWFkICV1LCBlcnIgJWRcbiIsCj4+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBxdWFkLCBlcnIpOwo+PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJuIGVycjsK
Pj4gK8KgwqDCoCB9Cj4+ICsKPj4gK8KgwqDCoCBlcnIgPSBpY2VfcmVhZF9xdWFkX3JlZ19lODIy
KGh3LCBxdWFkLCBRX1JFR19UWF9NRU1PUllfU1RBVFVTX0wsCj4+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAmbG8pOwo+IAo+IENIRUNLOiBBbGlnbm1lbnQgc2hvdWxk
IG1hdGNoIG9wZW4gcGFyZW50aGVzaXMKPiAKCldpbGwgZml4LgoKPiAKPj4gK8KgwqDCoCBpZiAo
ZXJyKSB7Cj4+ICvCoMKgwqDCoMKgwqDCoCBpY2VfZGVidWcoaHcsIElDRV9EQkdfUFRQLCAiRmFp
bGVkIHRvIHJlYWQgVFhfTUVNT1JZX1NUQVRVU19MIAo+PiBmb3IgcXVhZCAldSwgZXJyICVkXG4i
LAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcXVhZCwgZXJyKTsKPj4gK8KgwqDCoMKg
wqDCoMKgIHJldHVybiBlcnI7Cj4+ICvCoMKgwqAgfQo+PiArCj4+ICvCoMKgwqAgKnRzdGFtcF9y
ZWFkeSA9ICh1NjQpaGkgPDwgMzIgfCAodTY0KWxvOwo+PiArCj4+ICvCoMKgwqAgcmV0dXJuIDA7
Cj4+ICt9Cj4+ICsKPj4gwqAgLyogRTgxMCBmdW5jdGlvbnMKPj4gwqDCoCAqCj4+IMKgwqAgKiBU
aGUgZm9sbG93aW5nIGZ1bmN0aW9ucyBvcGVyYXRlIG9uIHRoZSBFODEwIHNlcmllcyBkZXZpY2Vz
IHdoaWNoIHVzZQo+PiBAQCAtMzA5MSw2ICszMTI4LDIxIEBAIGludCBpY2VfY2xlYXJfcGh5X3Rz
dGFtcChzdHJ1Y3QgaWNlX2h3ICpodywgdTggCj4+IGJsb2NrLCB1OCBpZHgpCj4+IMKgwqDCoMKg
wqDCoMKgwqDCoCByZXR1cm4gaWNlX2NsZWFyX3BoeV90c3RhbXBfZTgyMihodywgYmxvY2ssIGlk
eCk7Cj4+IMKgIH0KPj4gKy8qIGljZV9nZXRfcGh5X3R4X3RzdGFtcF9yZWFkeV9lODEwIC0gUmVh
ZCBUeCBtZW1vcnkgc3RhdHVzIHJlZ2lzdGVyCj4gCj4gLyoqCj4gIMKgKiBpY2VfZ2V0X3BoeV90
eF90c3RhbXBfcmVhZHlfZTgxMCAtIFJlYWQgVHggbWVtb3J5IHN0YXR1cyByZWdpc3Rlcgo+IAoK
QWgsIHllcCwgd2lsbCBmaXguCgo+PiArICogQGh3OiBwb2ludGVyIHRvIHRoZSBIVyBzdHJ1Y3QK
Pj4gKyAqIEBwb3J0OiB0aGUgUEhZIHBvcnQgdG8gcmVhZAo+PiArICogQHRzdGFtcF9yZWFkeTog
Y29udGVudHMgb2YgdGhlIFR4IG1lbW9yeSBzdGF0dXMgcmVnaXN0ZXIKPj4gKyAqCj4+ICsgKiBF
ODEwIGRldmljZXMgZG8gbm90IHVzZSBhIFR4IG1lbW9yeSBzdGF0dXMgcmVnaXN0ZXIuIEluc3Rl
YWQgc2ltcGx5Cj4+ICsgKiBpbmRpY2F0ZSB0aGF0IGFsbCB0aW1lc3RhbXBzIGFyZSBjdXJyZW50
bHkgcmVhZHkuCj4+ICsgKi8KPj4gK3N0YXRpYyBpbnQKPj4gK2ljZV9nZXRfcGh5X3R4X3RzdGFt
cF9yZWFkeV9lODEwKHN0cnVjdCBpY2VfaHcgKmh3LCB1OCBwb3J0LCB1NjQgCj4+ICp0c3RhbXBf
cmVhZHkpCj4+ICt7Cj4+ICvCoMKgwqAgKnRzdGFtcF9yZWFkeSA9IDB4RkZGRkZGRkZGRkZGRkZG
RjsKPj4gK8KgwqDCoCByZXR1cm4gMDsKPj4gK30KPj4gKwo+PiDCoCAvKiBFODEwVCBTTUEgZnVu
Y3Rpb25zCj4+IMKgwqAgKgo+PiDCoMKgICogVGhlIGZvbGxvd2luZyBmdW5jdGlvbnMgb3BlcmF0
ZSBzcGVjaWZpY2FsbHkgb24gRTgxMFQgaGFyZHdhcmUgCj4+IGFuZCBhcmUgdXNlZAo+PiBAQCAt
MzMwNiwzICszMzU4LDIzIEBAIGludCBpY2VfcHRwX2luaXRfcGhjKHN0cnVjdCBpY2VfaHcgKmh3
KQo+PiDCoMKgwqDCoMKgIGVsc2UKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiBpY2VfcHRw
X2luaXRfcGhjX2U4MjIoaHcpOwo+PiDCoCB9Cj4+ICsKPj4gKy8qIGljZV9nZXRfcGh5X3R4X3Rz
dGFtcF9yZWFkeSAtIFJlYWQgUEhZIFR4IG1lbW9yeSBzdGF0dXMgaW5kaWNhdGlvbgo+IAo+IFRo
aXMgb25lIHRvbwoKWWVwLCB0aGFua3MuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQt
bGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtd2lyZWQtbGFuCg==
