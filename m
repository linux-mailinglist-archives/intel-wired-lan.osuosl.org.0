Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB70577D716
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Aug 2023 02:32:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 991CB414DE;
	Wed, 16 Aug 2023 00:32:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 991CB414DE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692145933;
	bh=EXvNaZzZug9NxpuPJbqf3f81CFbnRTAydXHSnXAwz5A=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2jnanFx2NLTQJF1/BqUS5cVP7sBxFJnjnKOiEaGDwhw06C8MjJTcWpTc86c/UrVpI
	 X7MwkR4tr1VrS4kBo+BikCsys7+zUJOppz8DyAmVOJ5y6TadGZBWKIamv7IKc/Nl9d
	 +0ppPzpa/mGlZCSom666T8RpWYbzrepTBah9y9s+z5BS4642lGqPF1w9242dzJYNtg
	 hpLBIfZx+ZMQTUy2HI9Nr61+As3CNLBGDf2XCD+dwFJDG6Y0UyfCOQsgsaCf6zVmjH
	 IJ7Aohch16UJcjrsbmb4BNAVou+xHLEhrnHF9ezoTjSlqDABROuhw5zrfx+Qq4ZBrQ
	 R/jRsYK4KL5yQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J2fFGiap_Zaj; Wed, 16 Aug 2023 00:32:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2E12C414CE;
	Wed, 16 Aug 2023 00:32:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2E12C414CE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E73DF1BF97D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 00:32:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BA31D611F0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 00:32:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BA31D611F0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oa646lRcm6JP for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Aug 2023 00:32:00 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6FC39611EE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 00:32:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6FC39611EE
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="351993719"
X-IronPort-AV: E=Sophos;i="6.01,175,1684825200"; d="scan'208";a="351993719"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2023 17:31:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="857624230"
X-IronPort-AV: E=Sophos;i="6.01,175,1684825200"; d="scan'208";a="857624230"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga004.jf.intel.com with ESMTP; 15 Aug 2023 17:31:59 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 15 Aug 2023 17:31:58 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 15 Aug 2023 17:31:58 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 15 Aug 2023 17:31:58 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.106)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 15 Aug 2023 17:31:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n2qV07RBU+ifM3NlvWsCX/AphRYelZZ3fXpBKkXnakmzaQPfx0XejVicPR93JLj2Dqitw1zP97z22/CJhDOyzbcFLOduLpzCzYQTUyXgsm4M4pOY7rR33Aj2/lkvzselZcjam+moWjgE/4kzyz+w6tbSyTaZMYmvN8dBHUed2QgXhx0amGHiRrVGHRvBH48myxoPysnzDaRpaMW1ruvtwj8B0TiJH3haXVzloGAS+UM1r+zELeT6LGduVgP6N59j4U02WwD7AvHlHtyHhQ5PcdMrURU3Qqw8zLclpWhH/z4FswUXjyh+L14K6/sfFNJmZHp1l1A/k+H+BqHDEwHmPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RWsw47dllI9WatP8Vnd+RcxxHDY3n2K53nMjls5SuHY=;
 b=RmWyXPK1V5hH43ALY98FoIDHsJt4Q7cP2pqB9xa7Cf4EJx2R+fb2kfMlppvg7g8NngGP1yaHO+6kUpsdseTqM4jLy7DMLdOn+56bGy6uo3D5O/yaPNWZMoyuu/Y9CixJfI97zk1Lvcdc7RwasVZB6E3UNa5ZxBMUDXBlkVf5Y3MliSE6thApr3qGybuhr9tYpD4oWymOr49TjADZNs4h5dz/EX/QMMasiGA0oFEh/6GLA11Q7qDPKW3MccjuMnU2f/J8aPUdvpUSdQjBWQQEmzPkbKLbeWRNvp4Ab8Lqy/egZPSqpKIGswRUsfN3zAhz8P7djAssgB7SyX3alNUJAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SA1PR11MB6824.namprd11.prod.outlook.com (2603:10b6:806:29e::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.26; Wed, 16 Aug
 2023 00:31:56 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::6a23:786d:65f7:ef0b]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::6a23:786d:65f7:ef0b%6]) with mapi id 15.20.6678.029; Wed, 16 Aug 2023
 00:31:56 +0000
Message-ID: <88248296-aa42-7d8d-83d8-2e2a17d42759@intel.com>
Date: Tue, 15 Aug 2023 17:31:53 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
References: <20230815223551.1238091-1-jacob.e.keller@intel.com>
 <20230815223551.1238091-4-jacob.e.keller@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20230815223551.1238091-4-jacob.e.keller@intel.com>
X-ClientProxiedBy: MW4PR03CA0140.namprd03.prod.outlook.com
 (2603:10b6:303:8c::25) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SA1PR11MB6824:EE_
X-MS-Office365-Filtering-Correlation-Id: f030c491-f64c-4326-b4e8-08db9df03206
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: y3OVv60PHhjz9GkwY+6Zwvu94RPUqHvXZzy35Uk8QdvZzF0f3TyWp47mVc0G9khFPioIeMbq0/6AdmjDeum6hwQM7a6Kmft62hazVXqxU0ggVsB8MNVqcLsDP56iitm6EvZ5KAmxYX5G/fgpkJZD7OPG2cSsUU0d1vhAglXIlET1TyERHOK5yrH+UtjCaki8PUGjg1+FrXDRx0cKWx/aRyQbAW1cfOyzQEAWpcjmrsdDwpxbbcPfvqooKjaDZub7lNWWnk+/+ReIS0bVZ5MgGNX/PlF0EyS0Zx7+rHRT8IxwCwxm6EP1kzA2qpGGRZkOtMjDA5amgtR7f59owgUn2ypnIncXsmCY+Iw0IsLWKEpwkWWmX1qXy3xrlVX2nLqrq9tKTEK4d3eYOoZC/MtXSDyJ92djrocpVt85oylvrg68qOWxfwRksI1Ffkr0uX0cnNP1jHMJFDJ6VCS8O2+ZX0sarXqBHwOCzjkwJLokrzlZuJeP5dZzUp9ziRP2ono0RoZ+lanYuNtxwibHC12bIesahq/Q8TR/qwMgj2SoOjQ9pebdD32R6Gx3SG2tIrfgK0euT6C6k/ICSJpVkRPr7xu7C+H/LqrzX4h38B6K7oe7JHnjexcKJAEC4MrKnQB8wS7zQGtEXlOA8NMkgJpKYg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(366004)(136003)(396003)(39860400002)(376002)(451199024)(186009)(1800799009)(2906002)(83380400001)(316002)(6916009)(478600001)(6506007)(26005)(41300700001)(36756003)(38100700002)(53546011)(5660300002)(6666004)(31686004)(4326008)(66946007)(8676002)(66476007)(54906003)(66556008)(8936002)(86362001)(6512007)(2616005)(31696002)(6486002)(82960400001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OEpjTXE1SFZsMFNhcmZJWTVsNUYzbVpXRTBaT0N2Vm9YOEx5S1JTbW5IVFZW?=
 =?utf-8?B?NmNuQ2YvRTJhK2xSMFZDTGxSUEtoNmVmNmNVQnJLRmVQVzZUWDNnbTVqSUh4?=
 =?utf-8?B?VVp3a0NEWkwyZTB1QzJWRUtacnJwQ0I1M01leUJJejhYaXMvQ05naGhkK3NK?=
 =?utf-8?B?Q0Q3Uk5aZUdGRm5aMlBNL0VNTFQ3RFFzcllmTlFNcWdGV0NhNTRJWm5GUkMx?=
 =?utf-8?B?TVozY2JsclZMSU9MdjVXVkxMVEI1dU9nMkwrNkVPS3Q3QmxPWHVMQ1pDNkl3?=
 =?utf-8?B?UlpWdEFwSTFlSDhJclk3T2ljUGdDa1RyWk1JaFRMQ0JHd1pHcnNQLy9DenNU?=
 =?utf-8?B?bkR1cTQxVnJHenpGQ2t1dXZYNmJNOHY3bWUyTm5TWFBzMmh6cnJRRFJ4OVlE?=
 =?utf-8?B?ejd0OEd2clJRRENGMXg3VTRJbTMwSHRjc3VIT0NXMTIxdlc4UUFSNWdzMnY3?=
 =?utf-8?B?bC9HMXZ6OG9SQTBzNHFwbk8yNG5BNUlFL2oxZWNTMkY1K09McVMyWjhWSTF2?=
 =?utf-8?B?Ty9yMHg5RjBSVzNVNmZneUp4RFQ0R0pEU2JXd3k4TWFPOGlhMG9vcFUrc2hF?=
 =?utf-8?B?OWNxU2dNb0l3S2ZmYm5MWFZScE5CRUtTL2Z4WWFmcE5yRFBjSTFCdzN3NkY5?=
 =?utf-8?B?R2dLcFYxWWVhODJpZlJhbkptWGJ1YlJzK1dhWDByYWdnNGd5YXE4dzI3VEJn?=
 =?utf-8?B?Wk9KcVROU1F4WnM4N0pEMzdlRkszbWZoMGNUMGhKM3ZkZ3huMWJSUG5pcWdt?=
 =?utf-8?B?cVhWcUt5czY2THNHZFpwSndadGJYRHdzeERPbTViY3RLUTEyUzEvV0wrc29E?=
 =?utf-8?B?VUxGdE95ZUJScWx3bUQrcTJGelZaTkp0Mkk1TlJMd0pwTmZJMEVxQUFTTUs3?=
 =?utf-8?B?RFJnYm5EazJnYnArdEZsZ3ZUaHVQUWdEd0xuSEhiNmNjZkw4U2ZDWkZmTzNN?=
 =?utf-8?B?ZndFekFoMVBEMFE0cVBKWUNrVndidlpvWmJMNmwvK2FYVnUvZ2NaT1R0eG9n?=
 =?utf-8?B?UzE1eTdLVWlGU05oSzk3MndNRTBBRnVaZk5JeDdGVXhVVkF3TzFVYW83QklV?=
 =?utf-8?B?M0o3Wk9SbStVQ0JMZWdBVkN1cjYzVmg3ZFpPa2pPN2IyQUorRzJqMzdNSmxH?=
 =?utf-8?B?djlrWVFwQUV4T3BZMXNtRVNsY2hEMlNiRmtqSW1HS2ZaVitaRzEwdytUbnBH?=
 =?utf-8?B?RTlqSHJEVHRMbDNwM3dtY2Y3V3hZemxCeTZWdkQ1VU1Cbjl5elFuUzA2SDRU?=
 =?utf-8?B?dHgxb1NKQXpTTU9DQmw1RmRSRkplWndCYnYvc3h2Q2t3NzZPTVJKSFZFNXVR?=
 =?utf-8?B?VkZzL2RtME96RjYrK2VHa3BCTkNVYlFRQkZIVllhNVdvOVlVRk9vRStNNEs4?=
 =?utf-8?B?QzBLQkcvcmp5dGxDYnFQa0dFUHBYQTZGMWxXOXNvL1JTLzRodnc4ZkQ4dmQw?=
 =?utf-8?B?eVlIUTFyelgydHp2bEdaNXZHc0J1T1grcjFFaDhIOFV5dURrRnY3S1NaOTZm?=
 =?utf-8?B?UUh6NEwrVEVQL3pKUzhEbDcxQ25JaXY1ajB4QmhOVmpORHNhZzM1Nys0c3NY?=
 =?utf-8?B?cmUyNk9nY2FUTnhaN2MwelVqZWtWZlI4bU53SVNtU00zWkZlZ2FoeTZSdTVs?=
 =?utf-8?B?dGVteUkxcXBqVDNqWFhYbmk4TmVDdDJIRGFtQVlSZUExb0djaXVKOTJHYnB4?=
 =?utf-8?B?TkJINkRqdzNiam9qdFZvbjFNNmJBemRRNjdtUHVmWDQ3SDRBSEl0SlNJM1Vo?=
 =?utf-8?B?dVkyZ2x4UEdTQU9JWWRxZ2p0aDVnVW1zNmNWYTdHZDYyc0pESGIycXl4TVdy?=
 =?utf-8?B?ZXFYWk1xUEhPaTF0Q0xNd2hXRHFTbVhVdmZPVnhsdE1RcnNDTVNaWmNHbGxa?=
 =?utf-8?B?a3pqNEw3clMwdVpLU1I3RWlyVnlMV1JHYjJQZjBybkx4NE1VeHNBTXJPZkRB?=
 =?utf-8?B?STRndnZYMmVoUGgvOUY5bjk4cC9IeFBJdGtXNVFvSFZjcTE5TzZLcStmUHlv?=
 =?utf-8?B?T3RnTER4UE4rWGdQSFRISG9td0N1YlZFSnM0NmNEdFczN0pXSk5RazhJa1do?=
 =?utf-8?B?aDNQd2tzOENDeU8zSkUwRDQwMzJoSExueHNWdTlURnVLQ0N6b0pZOFIweks2?=
 =?utf-8?B?QzIya0Nxbkx5NncyN0VwdHc1MjFBZ205QUhDeCtOd1E1eVkyak02eHBoMGt1?=
 =?utf-8?B?eVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f030c491-f64c-4326-b4e8-08db9df03206
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Aug 2023 00:31:56.1819 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: v/fTVjfyrlj3nVzD49asBDBKHhDE5tNc8tdQlQaVYy45VlyMoKeV8mY7jTX4oW5Acpc6nxW07ARdg6YPoCthKltofrEXB6bQ5m+seXKX2U0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6824
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692145920; x=1723681920;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=oKVhlAFcNkECv5to28FjfXGEb3JglbMJ4DIERwltfzQ=;
 b=eFDjFCK7cBzAGENbViKNxrbUpih7XlVcwcV5kq6sLJUOkQFch+4fzP4D
 Q0K4rRqXALWu57ZmS1CuxMLXXQjCxaOXopGVcwUlF5BQMQwpjqFYC0ZQz
 x77jlqmV07m3EWnlQRhOj1lBUuTB8rFClQOiHKf08RXki3rBlcuHc49K1
 CsKOj1UA4r+hfB+NF5S1UxjbavMzK7Ns8tpTa2lT9jBCC34mMdvS0QQ6/
 GKG+jNziMbnq/UfQiD6RtUakZtpsilkkYJnxcjEOtKtdlUnpZgegf7BI4
 ozwBJYzC2V4pn5o6+X3uruLaYRGthRqiy0BK9C5lGulbz+zuLM49dOL/c
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=eFDjFCK7
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 3/4] ice: check the netlist
 before enabling ICE_F_SMA_CTRL
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
Cc: Karol Kolacinski <karol.kolacinski@intel.com>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 8/15/2023 3:35 PM, Jacob Keller wrote:
> Currently, the ice driver unconditionally enables ICE_F_SMA_CTRL for all
> E810-T based devices. In some cases, the SMA control access is not
> available in the netlist firmware component. In such a case, the driver
> will fail to setup the SMA pins. When this happens, the driver prints
> "Failed to configure E810-T SMA pin control" and forcibly disables all PTP
> pin configuration support.
> 
> This results in failure to use even the fixed pin capabilities of standard
> E810 devices, resulting in reduced functionality.
> 
> To avoid this, check the netlist for the SMA control module before enabling
> the ICE_F_SMA_CTRL feature. If the netlist lacks this module, then the
> feature will not be enabled. In this case, the driver flow for enabling
> periodic outputs and external timestamps will fall back to the standard
> fixed pin configuration.
> 
> This allows supporting the software defined pins on a wider array of
> platforms.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  6 ++-
>  drivers/net/ethernet/intel/ice/ice_common.c   | 46 +++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_common.h   |  3 ++
>  drivers/net/ethernet/intel/ice/ice_lib.c      |  3 +-
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c   | 16 +++++++
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |  1 +
>  6 files changed, 72 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> index 90616750e779..82c4daf0a825 100644
> --- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> +++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> @@ -1367,6 +1367,7 @@ struct ice_aqc_link_topo_params {
>  #define ICE_AQC_LINK_TOPO_NODE_TYPE_CAGE	6
>  #define ICE_AQC_LINK_TOPO_NODE_TYPE_MEZZ	7
>  #define ICE_AQC_LINK_TOPO_NODE_TYPE_ID_EEPROM	8
> +#define ICE_AQC_LINK_TOPO_NODE_TYPE_CLK_MUX	10
>  #define ICE_AQC_LINK_TOPO_NODE_CTX_S		4
>  #define ICE_AQC_LINK_TOPO_NODE_CTX_M		\
>  				(0xF << ICE_AQC_LINK_TOPO_NODE_CTX_S)
> @@ -1403,8 +1404,9 @@ struct ice_aqc_link_topo_addr {
>  struct ice_aqc_get_link_topo {
>  	struct ice_aqc_link_topo_addr addr;
>  	u8 node_part_num;
> -#define ICE_AQC_GET_LINK_TOPO_NODE_NR_PCA9575	0x21
> -#define ICE_AQC_GET_LINK_TOPO_NODE_NR_C827	0x31
> +#define ICE_AQC_GET_LINK_TOPO_NODE_NR_PCA9575			0x21
> +#define ICE_AQC_GET_LINK_TOPO_NODE_NR_C827			0x31
> +#define ICE_ACQ_GET_LINK_TOPO_NODE_NR_GEN_CLK_MUX		0x47
>  	u8 rsvd[9];
>  };
>  
> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
> index 2652e4f5c4a2..9eeda3f5aa75 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.c
> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> @@ -2503,6 +2503,52 @@ bool ice_is_pf_c827(struct ice_hw *hw)
>  	return false;
>  }
>  
> +#define MAX_NETLIST_SIZE 10
> +/**
> + * ice_find_netlist_node
> + * @hw: pointer to the hw struct
> + * @node_type_ctx: type of netlist node to look for
> + * @node_part_number: node part number to look for
> + * @node_handle: output parameter if node found - optional
> + *
> + * Find and return the node handle for a given node type and part number in the
> + * netlist. When found 0 is returned, -ENOENT otherwise. If
> + * node_handle provided, it would be set to found node handle.
> + */
> +int
> +ice_find_netlist_node(struct ice_hw *hw, u8 node_type_ctx, u8 node_part_number,
> +		      u16 *node_handle)
> +{
> +	struct ice_aqc_get_link_topo cmd;
> +	u8 rec_node_part_number;
> +	u16 rec_node_handle;
> +	u8 idx;
> +
> +	for (idx = 0; idx < MAX_NETLIST_SIZE; idx++) {
> +		int status;
> +
> +		memset(&cmd, 0, sizeof(cmd));
> +
> +		cmd.addr.topo_params.node_type_ctx =
> +			(node_type_ctx << ICE_AQC_LINK_TOPO_NODE_TYPE_S);
> +		cmd.addr.topo_params.index = idx;
> +
> +		status = ice_aq_get_netlist_node(hw, &cmd,
> +						 &rec_node_part_number,
> +						 &rec_node_handle);
> +		if (status)
> +			return status;
> +
> +		if (rec_node_part_number == node_part_number) {
> +			if (node_handle)
> +				*node_handle = rec_node_handle;
> +			return 0;
> +		}
> +	}
> +
> +	return -ENOENT;
> +}
> +
>  /**
>   * ice_aq_list_caps - query function/device capabilities
>   * @hw: pointer to the HW struct
> diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
> index 2250a9c5f61e..f7178a5686a5 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.h
> +++ b/drivers/net/ethernet/intel/ice/ice_common.h
> @@ -94,6 +94,9 @@ ice_aq_get_phy_caps(struct ice_port_info *pi, bool qual_mods, u8 report_mode,
>  		    struct ice_sq_cd *cd);
>  bool ice_is_pf_c827(struct ice_hw *hw);
>  int
> +ice_find_netlist_node(struct ice_hw *hw, u8 node_type_ctx, u8 node_part_number,
> +		      u16 *node_handle);
> +int
>  ice_aq_list_caps(struct ice_hw *hw, void *buf, u16 buf_size, u32 *cap_count,
>  		 enum ice_adminq_opc opc, struct ice_sq_cd *cd);
>  int
> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
> index f29ff54383b5..4ac8998cb964 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> @@ -3989,8 +3989,9 @@ void ice_init_feature_support(struct ice_pf *pf)
>  		/* If we don't own the timer - don't enable other caps */
>  		if (!ice_pf_src_tmr_owned(pf))
>  			break;
> -		if (ice_is_e810t(&pf->hw)) {
> +		if (ice_is_clock_mux_present_e810t(&pf->hw))
>  			ice_set_feature_support(pf, ICE_F_SMA_CTRL);
> +		if (ice_is_e810t(&pf->hw)) {
>  			if (ice_gnss_is_gps_present(&pf->hw))
>  				ice_set_feature_support(pf, ICE_F_GNSS);
>  		}

This change also revealed a subtle issue with pin setup in ice_ptp.c,
where the E810-T device needs to use a different fallback value for the
pin count. I'll send a v2 of this series tomorrow with an additional
patch to fix that up.

Thanks,
Jake

> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> index fd19afaf9c85..bd3f32bfbc78 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> @@ -3018,6 +3018,22 @@ ice_get_pca9575_handle(struct ice_hw *hw, u16 *pca9575_handle)
>  	return 0;
>  }
>  
> +/**
> + * ice_is_clock_mux_present_e810t
> + * @hw: pointer to the hw struct
> + *
> + * Check if the Clock Multiplexer device is present in the netlist
> + */
> +bool ice_is_clock_mux_present_e810t(struct ice_hw *hw)
> +{
> +	if (ice_find_netlist_node(hw, ICE_AQC_LINK_TOPO_NODE_TYPE_CLK_MUX,
> +				  ICE_ACQ_GET_LINK_TOPO_NODE_NR_GEN_CLK_MUX,
> +				  NULL))
> +		return false;
> +
> +	return true;
> +}
> +
>  /**
>   * ice_read_sma_ctrl_e810t
>   * @hw: pointer to the hw struct
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> index 4e3c1382c477..3768e7a01920 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> @@ -195,6 +195,7 @@ int ice_phy_cfg_tx_offset_e822(struct ice_hw *hw, u8 port);
>  int ice_phy_cfg_rx_offset_e822(struct ice_hw *hw, u8 port);
>  
>  /* E810 family functions */
> +bool ice_is_clock_mux_present_e810t(struct ice_hw *hw);
>  int ice_ptp_init_phy_e810(struct ice_hw *hw);
>  int ice_read_sma_ctrl_e810t(struct ice_hw *hw, u8 *data);
>  int ice_write_sma_ctrl_e810t(struct ice_hw *hw, u8 data);
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
