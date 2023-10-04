Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CF9687B858F
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Oct 2023 18:44:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 453344223D;
	Wed,  4 Oct 2023 16:44:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 453344223D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696437850;
	bh=OJqZdo7Ws/IjejShRYHICSg9PfuKW40QIzfhf80LVbQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JzxHb4BLq4Ra52nVmtgX6/SXpxyfq560GcJHxuMwPFLrBgvxD1HdG/iz6oSgnLQP5
	 H71sCwm0bXQAX5BXtQwDHXSxx9kAqtenTeu3EfubeqR4gGwPMV5xxMnzDdDWwBK+v4
	 UVDOo5OJM0zicsjpttOHPyr3Njyqq9Tm3MqskH09Wc/IVFwPDXUnvaYPjXJCQaCI5p
	 uH/l/IzseQJsh5CL7KFanitwY5ELanEgd80703Q2gnCQLGYVTKaRnGqPBKHkFBlXVk
	 OF/j6roH7EntgoEoO8QVck+6TaBU6BqVD06HX1lfq0tpnl3ByJuW2peoMHRB2pBV0S
	 OT7gRhizb68bQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BCUeq5CSDn53; Wed,  4 Oct 2023 16:44:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8EB7B42238;
	Wed,  4 Oct 2023 16:44:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8EB7B42238
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 288411BF423
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Oct 2023 16:44:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F1DFB42238
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Oct 2023 16:44:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F1DFB42238
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pA6phSZU0iwQ for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Oct 2023 16:44:00 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BCC2641F89
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Oct 2023 16:43:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BCC2641F89
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="382092326"
X-IronPort-AV: E=Sophos;i="6.03,200,1694761200"; d="scan'208";a="382092326"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 09:42:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="780854183"
X-IronPort-AV: E=Sophos;i="6.03,200,1694761200"; d="scan'208";a="780854183"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Oct 2023 09:42:31 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 4 Oct 2023 09:42:31 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 4 Oct 2023 09:42:30 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 4 Oct 2023 09:42:30 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 4 Oct 2023 09:42:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AagRTx8V2fSEjWeaKSNf/HCiXXeY5xUyu5fzJZzW0KAP/b+rVrtmWOp7K8DUO194Wp5oVPQeyV4gARtmandZU+KQaSOA2Meh/CijOBgZ+AuzFabDEjvq9SQ+TiDX/vjU4weO+ZhK6Tj/mkHm0eDGgit5oMZ16aJlVneVKUtkU1lD0IOJ6qS9CpYu8DhqrfYPI0ERQCT5RJn3HAY0BcrEh00fdHfZSr+Flkc2BuXNon9SBlqZlGTzBnvy0QUlHxFmQ5yOO4+0gvbpVPWcLFx5GILCbhlVetfMEzpCePSrFtRwm0J+K0W9pwqkMjfidYbb2mHlVb1q7rS3cI0jO9cuHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9S9aftkEzZMZih7jSHHcRAHoueB44s2N0ct2y3g3hfc=;
 b=L/ltrb6FPjUauqAjGpgDS59d75A+4AgraAqJMm8dNjU+xqd/wbXVEkM3HoS2QkgiRD2N6xcw4/1kDUDyv11r/clhrgDF9+MCx3+GkXsLv5hkCUHmIdGVaUTChL7ppYmqGHT4JOWp5q3IqNXGpTYtotOkhQm0i64zbkSC8sA5W/jPrQZki+um+jK4RRDqPlaBf++DF+wdlgYU8s4Cz5ZyutkD2EDnUBFTwnDHSQnJFQpZzrpCp9l6FJ/SYeJ4fb1I/NIEfqLkSKhyXv7YkZBKYA7+2TY+Nj67j+a6484zgt+MglDCWCAa4SR11e1MImCe9wnYoDJZacM/0xtDBa9oBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4914.namprd11.prod.outlook.com (2603:10b6:303:90::24)
 by SN7PR11MB6560.namprd11.prod.outlook.com (2603:10b6:806:26c::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.29; Wed, 4 Oct
 2023 16:42:24 +0000
Received: from CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::9c1c:5c49:de36:1cda]) by CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::9c1c:5c49:de36:1cda%3]) with mapi id 15.20.6813.027; Wed, 4 Oct 2023
 16:42:24 +0000
Message-ID: <994cebfe-c97a-4e11-8dad-b3c589e9f094@intel.com>
Date: Wed, 4 Oct 2023 09:42:21 -0700
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Skyler_M=C3=A4ntysaari?= <sm+lists@skym.fi>,
 <netdev@vger.kernel.org>
References: <ee7f6320-0742-65d4-7411-400d55daebf8@skym.fi>
Content-Language: en-US
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
Autocrypt: addr=jesse.brandeburg@intel.com; keydata=
 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
 /fnLfll98Nhx
In-Reply-To: <ee7f6320-0742-65d4-7411-400d55daebf8@skym.fi>
X-ClientProxiedBy: MW4PR04CA0150.namprd04.prod.outlook.com
 (2603:10b6:303:84::35) To CO1PR11MB4914.namprd11.prod.outlook.com
 (2603:10b6:303:90::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4914:EE_|SN7PR11MB6560:EE_
X-MS-Office365-Filtering-Correlation-Id: 37a701e3-b5da-4be9-bebb-08dbc4f8e2cf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: pJpJxPTkeeYzeWZ31FaOe69TwsZ8xYNw6vpJfZrwTbp1mlP4rMNsIFAMLI0HrzpegVpQKGwpgoHkgF1CkspSBfUbiym5NLg0U405bY6q0q788p9pAvVybN2Ds0BABmhVVoH3tiEEtbQ5hchrem1aOca1D3ZwwV5wjbjvuc8W5H4zDIWiZqbsFv7cXzZccd0yik1pHk/B7v83qBxXIlsY4luGCrxnI6ND9Ybtr3gPm4ek23DtRliOwpXTi31AWirqss4ECO5EtLVqJXKKrrDw4ufPcb6vKDPBapOB/t//mwfMNhZ57JpCD6YoRu2GQgjvmhJM0bgrZQqsn+RkH5KHUMxhZSrrvl4NgkQb4Z2sXic93Yo8JS0ss1rzxmVmWO4Q93rUzAkYzWgi4XOxEC+f2oMnK5VelB4iO7E7/4sidoX7Tx2naQGafxduwImeyhdZw/oBjbUftebMCHtNNA0K88plu8DimQ8WDAz1uwYB2Yt44SP1YiDB97+ozYHWBXGkOMosB0Ugg+0txk+DwJziZYozvoBpDku1p5itJHGjjCJO0CUuXTw4hkIaknWLlb5cRu8wUQsPqOVD9kN9yCPXJ5aJC0otMmMkeJHAEhVSKLv2+UUotCFRpGuAb7k7ULz6sDgJ0WJxpsPGdmAkCWMXBg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4914.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(376002)(39860400002)(366004)(136003)(346002)(230922051799003)(64100799003)(186009)(1800799009)(451199024)(66556008)(66476007)(26005)(66946007)(38100700002)(6512007)(36756003)(53546011)(6506007)(6666004)(86362001)(31696002)(82960400001)(6486002)(478600001)(316002)(966005)(2906002)(4744005)(2616005)(4326008)(31686004)(8936002)(8676002)(41300700001)(5660300002)(44832011)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c2EvSy9MeWxML0lITGxJMUM2TzBFNXhKOXJyR2VSWkNIWkFLZlM4OFpoeFpY?=
 =?utf-8?B?V1pLdStVNDUvcEVHK2daTTNZNWdPeUdLQVZrdlJyWXpzdWo3YUR4SS91dHpj?=
 =?utf-8?B?VEZJYndkM3lGMTZ1NitDaDFqSHRDeWhlbDlhWEorT1hLanhnaExxcTBKZ1My?=
 =?utf-8?B?alV5Z3k0MWs5bkwwRGY2ejJMMDZLTU9wL2ZsOUhBTnMrRldrZDcyWUVWNExu?=
 =?utf-8?B?UStRWTdnTUtjL3pUUnZTRXpOOGErRnNqZW50eUtZNmN0a0NEY2htMExsTFRu?=
 =?utf-8?B?bVFzSUNEMm8xSWVSSHprbzN5YUQ3TVVRSU5MVkx4R1E1K0VNRlZuZ05kT0No?=
 =?utf-8?B?Q2VQei9HNm4rWkkyRm1odVVnY2Urbk1Ya2pSWGRaVTMwd0szeGNzMDA3cXY4?=
 =?utf-8?B?QjZBZVFmZk5jTjBvMjBXdnh3L3J2TjhPRmpzQWRRL0JJV3ByUVBUSm1tOFJR?=
 =?utf-8?B?SDA1Z1BncGpiNldoWDFVTUlxSU1JdEFMZkpUejRObmNHcFBnZkgxYXY2U1R6?=
 =?utf-8?B?dWJ0N25XKys0b2ZDMjQ4eDRkSFlvR3V0TUNpUGNDQmJkUjVrb1BMR2dEZFcx?=
 =?utf-8?B?QnF4MXByRWhZY2xveEN2RHFsa0FpUzBpUmpqa3JsdllveDNwK1Y3VlBtT3NS?=
 =?utf-8?B?NmQvZ1M5VUtOZlQyWnV5SnVNc01Dc1RnMzNWQ2tSVlRoUVE4M1plQ2ROZUhQ?=
 =?utf-8?B?am1xVmFMdlNoREwvRk56NllyWEZncGtXd1I2dTRvMjNzTW9sdG5kVWQwZWJ2?=
 =?utf-8?B?c0x5ZkI5REhUbldTQ1FnbGNuQXhCVDc1NittVTk1ZG9ZNjQ2VlF5aFNYTHBr?=
 =?utf-8?B?dlNQOWtGMk1xZ3NMNUgzR0lCVHZMU25hcWdSWGRoN01rMy9GZm9aR1Rja0l0?=
 =?utf-8?B?QW5TT1RoczV0QlVpaDdSY2RZTFJwMHpMSXRFRmpFcG90eldTMWZUUlBlZUg0?=
 =?utf-8?B?aUpvUGNlMGRQTHEwWk1lNWJsaExFNTdhK2lWeEZ0L3hhSHZENE4veTJDdVpn?=
 =?utf-8?B?T283cExNOFh0Z0tzMTJFVVJLaUwzUFpHZ0hUQTJzZ3RVbHZRSEl2Y05iK2Rl?=
 =?utf-8?B?TTdablJQbXQwWndlUTZEaFMzVE1Ed3ZCUldqUm4yZ3RCWG0xZVE4OHl6WjVK?=
 =?utf-8?B?WUJKOVNuZW5ydnJKSS9rTFRDNVlxTlRKanFoY1dITzJTalRvcEw2T2lROSs5?=
 =?utf-8?B?L1RxQml4MTkyb2tEc2NaRDkxeERnZWlqdjhzMjNac3ZndllEMWNlcy92cGFh?=
 =?utf-8?B?b1lJQzZBSHA0c0pFa0FBMUE4YmcwRUhKbjNHS2thRUlHUEpBY1RJRGdXZnA5?=
 =?utf-8?B?N2h5SHNWL1hXWnJTQU5qUmF5c2JDeXRFMzl6QTVYWE13bll2MU1JT0YvM3BK?=
 =?utf-8?B?ZGw5MkpaVkM1QzIvbisyQTAyUk1qSnhXV1I0Tko5VHRKL0VZakd0VkdhQ2dI?=
 =?utf-8?B?SkEvcFE1eHk2dEV2cXh5M2FoQk10WlNsaHYyNVdRd1hyZXhHU1l5MGlJMjZP?=
 =?utf-8?B?KzVlZG8rRG5oQjcvTlJNWGwvNW9XTGI4djVhRExCYzNwcWZxbXA5VG55b1R0?=
 =?utf-8?B?SnMwK1JUWWZQS0hMbFErVU56dWxmR0xYMzdhUS9EbjBmZnJPYUYwNysyazYv?=
 =?utf-8?B?SEoxV0RsbjUySnFXeVZTd1BaaVUvOE5NdGIvbXoxYlVoYTFPV0IrblpyN29G?=
 =?utf-8?B?c0tNRnY3RWtBSDVvN282NHB0SEhFbGQ1SVhyTllUWjhDQnE0QnpyMndhalUw?=
 =?utf-8?B?a1pjMDdYRVd3bWllWjdFanVKN3dBWkU3enhFN24rTVMyalRnQUwzR2ZURVRO?=
 =?utf-8?B?RlJtNGlnZUozbWRCWFpYS3JPNWQwbDVxcE9PSTk2WWhuNElrNDdHbkMzYkR5?=
 =?utf-8?B?cytSeUNzU2NGSmZnK2d6KzIxanVWOFZRS2hCSXhielFmY1N2UzlJWFYyMkNn?=
 =?utf-8?B?ejNjdkczMFlXeGNRWis1eUVObktVSEdoT2RVY08yT2xzeWRDV1lkWkV5empY?=
 =?utf-8?B?ZE1tcjdha0VJKy9uOTdGUjBQU1A4QlYybmFVUWlIdjFKTmFtaUJXeEk2U1po?=
 =?utf-8?B?d0JGamo5UU9Da2djb1M3azBSM3N2NjhuZUxmU2I1WFV3RmhNOHcvaE5WNkIv?=
 =?utf-8?B?NjJVRTdONTVsSkRtakNMRGNZaFlPY3d3Rml1T0l4M2tpTVpZcGp6VlpuVVdR?=
 =?utf-8?B?Y0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 37a701e3-b5da-4be9-bebb-08dbc4f8e2cf
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4914.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Oct 2023 16:42:24.1930 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SNvqTW55wmiPrunhK3mJ0QntcroMvnp9DRwQN7xMKntw6O5yPGgmueuHPfwu8Y+UnjkNNuy/Md0pJVP67CUklCAExUCwGiNQu50DtwlSMWM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6560
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696437839; x=1727973839;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8GCtzWAkHfaPL4NwnDvRV4MMYM4vbJru18S7hqJvu3Y=;
 b=jsdhWWmlB1JLZDwkhGWttHNQLp7BQoHpxKR/uDrEwm7QJR1mXhz6G08v
 kEWmOB5MUdlMPeHlu+HFB4zso5ohYJjcnGhVcHvKMtscPfE3pczwe7ZCE
 4G9LRNBUa517scKJ15/sljfNWRWzyZyUTAAnhLIzzEpmPoC6mP3nwxndv
 IezOgDKFoXleNsgsCXD8YaRrLpXh4D2WZyt7INTu9RpvUf0zU2blxti1w
 OHP+C4xU4SOpuMajidlWQvsjhNln/xNB/khtrMBKqkhMCNtPiYiuLIXzn
 SXR+UIsoo2MSE3E9d0ElQrcZtu3N2q7kDkwrdDj+nDdYbvJdhpHdZTeiL
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jsdhWWml
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] The difference between linux kernel driver
 and FreeBSD's with Intel X533
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMTAvMy8yMDIzIDQ6MjUgUE0sIFNreWxlciBNw6RudHlzYWFyaSB3cm90ZToKPiBIaSB0aGVy
ZSwKPiAKPiBJdCBzZWVtcyB0aGF0IGZvciByZWFzb25zIHVua25vd24gdG8gbWUsIG15IEludGVs
IFg1MzMgYmFzZWQgMTBHIFNGUCsgCj4gZG9lc24ndCB3YW50IHRvIHdvcmsgd2l0aCBrZXJuZWwg
Ni4xLjU1IGluIFZ5T1MgMS40IG5vciBEZWJpYW4gMTIgYnV0IGl0IAo+IGRvZXMgaW4gT1BOc2Vu
c2Ugd2hpY2ggaXMgYmFzZWQgb24gRnJlZUJTRCAxMy4yLgo+IAo+IEhvdyB3b3VsZCBJIGdvIGFi
b3V0IGRlYnVnZ2luZyB0aGlzIHByb3Blcmx5PyBCb3RoIHNpZGVzIHNlZSBsaWdodCwgYnV0IAo+
IG5vIGxpbmsgdW5sZXNzIEknbSB1c2luZyBGcmVlQlNELgoKaGF2ZSB5b3UgdHJpZWQgc2V0dGlu
ZyB0aGUgYWxsb3dfdW5zdXBwb3J0ZWRfc2ZwPTEgbW9kdWxlIHBhcmFtZXRlcj8KcGFybTogICAg
ICAgICAgIGFsbG93X3Vuc3VwcG9ydGVkX3NmcDpBbGxvdyB1bnN1cHBvcnRlZCBhbmQgdW50ZXN0
ZWQgClNGUCsgbW9kdWxlcyBvbiA4MjU5OS1iYXNlZCBhZGFwdGVycyAoYm9vbCkKCj4gRm9yIHJl
ZmVyZW5jZSB0aGUgdGhyZWFkIG9uIFZ5T1MgZm9ydW1zIHJlZ2FyZGluZyB0aGlzOiAKPiBodHRw
czovL2ZvcnVtLnZ5b3MuaW8vdC8xMGctc2ZwLXRyb3VibGUtd2l0aC1saW5raW5nLWludGVsLXg1
NTMvMTIyNTMKCkFsc28sIGZvciB0cm91Ymxlc2hvb3RpbmcgaXQgd291bGQgYmUgdXNlZnVsIHRv
IGhhdmUgdGhlIG91dHB1dCBvZiAKZXRodG9vbCAtbSBldGgwIGZyb20geW91ciBkZXZpY2UuCgot
IEplc3NlCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0
dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
