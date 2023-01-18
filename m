Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 750416727E7
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Jan 2023 20:11:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6D33361084;
	Wed, 18 Jan 2023 19:11:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6D33361084
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674069112;
	bh=3Q3VjZQJ4H7EONtM299af4klLoI2rUthtiuNgiAk28A=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=h5iSghNOIDz9NJ/+HOADCe2bPj4OdgDYNd92De+vrcJGtZ7f6zUOwCLR8L5TO8M99
	 cicLzMOgR5vXn7hm9T+tMmAy0wMLP+XeJCjHpB0xIS2kjBYCbCOX0s+p+VRoxlUGOh
	 QySOthZkOcz33YFI607PbZYR0ow+Y7Czl20aycZsBjjd2fTA0vWXZJSTrshnjffw7u
	 kTi3jarDAdnwZmq88Pw6Ta6E+bktjsHKSI4Dltpplt/LoYlUCKYV28Y2RvqI1729fe
	 ho7jq4s+9AoQoAb/6NP1rktJUoJmfwIPzsjM5Jk91uLUPYQdkIrZkEJDhwcfmzPapG
	 dKJ8toLu97P8Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mP490lG33KSq; Wed, 18 Jan 2023 19:11:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4191F6107B;
	Wed, 18 Jan 2023 19:11:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4191F6107B
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4DC921BF429
 for <intel-wired-lan@osuosl.org>; Wed, 18 Jan 2023 19:11:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 278356107B
 for <intel-wired-lan@osuosl.org>; Wed, 18 Jan 2023 19:11:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 278356107B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OIJxmql-HdEn for <intel-wired-lan@osuosl.org>;
 Wed, 18 Jan 2023 19:11:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2ABC461064
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2ABC461064
 for <intel-wired-lan@osuosl.org>; Wed, 18 Jan 2023 19:11:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="387424377"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="387424377"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 11:11:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="692124197"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="692124197"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP; 18 Jan 2023 11:11:43 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 18 Jan 2023 11:11:43 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 18 Jan 2023 11:11:42 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 18 Jan 2023 11:11:42 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.43) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 18 Jan 2023 11:11:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Iqjsef19BTvDcJD3DbiA3PbfpSyfDnBzbs315QrQFyYIU5u0W3Q7wKqBGVTVV3ImR9o4l+OIWDhpmgtRGfC27327D/yUSHJCS40pxgTXThK4f14eD0aO9W+BKsiAc4gHwuhSgImk2UkOIeA0b1B3gmY+btGABxZ5cO0jGmHOyxmjlWp/c+qHFHctuk6SWGPVJwfBLLu4SINOipoz5o7NrFtJj3m6WHp4GM6b6WVCh83yE9/DSNswhj1iJ8yvsS39GPq8Tke/A2BFA4UdfVHWhFnSAfKbsaGSBdwISGHY8RkpU8TRjig0IhPeXrVxwmNzIe+cC7a+wGDZg3ysUUv2xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lLWtEyNfdmwAVNDt0ESl3isqttzO63fDi1kDaS323U8=;
 b=lpZ6NFQ+ClCy3sLHwbymN2q0/9OKP7rU9OEDN3/+Jd9Skf71k4sjhCQf/6yOjdMHeXmj/r4UzwyyScmzjvcc20hMxhHnK/eGn/FPDO6QuBQRGZVaWK+UXd1cT2FF9+ae9YHMlBFDq7+nX0d9hrJawuxHF1n4BcZ3G8SCjqXS2ju9MD2qgg5woS8BRMX/i1UVjUTxCUO9cmSPiEKEYZSKgfLQWnn0lcdIa2soCOocxN9Kly5n0PWDHuhZtBMpwvqegLvgp8VeIot5dUzc4rA+FvIVSp31j8Il+AwJGwK2qy6cPTsRQk8gZZr1qq+cQH9h2f7tx5hHVGOQEL7iI1OebA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO6PR11MB5636.namprd11.prod.outlook.com (2603:10b6:5:357::21)
 by SA1PR11MB6917.namprd11.prod.outlook.com (2603:10b6:806:2bd::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.23; Wed, 18 Jan
 2023 19:11:37 +0000
Received: from CO6PR11MB5636.namprd11.prod.outlook.com
 ([fe80::ae83:22d0:852a:34f7]) by CO6PR11MB5636.namprd11.prod.outlook.com
 ([fe80::ae83:22d0:852a:34f7%9]) with mapi id 15.20.6002.013; Wed, 18 Jan 2023
 19:11:37 +0000
Message-ID: <aa49973f-4d0c-49fa-9cea-db43ee124e21@intel.com>
Date: Wed, 18 Jan 2023 11:11:35 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: <intel-wired-lan@osuosl.org>
References: <20230113222319.111-1-paul.m.stillwell.jr@intel.com>
 <20230113222319.111-5-paul.m.stillwell.jr@intel.com>
 <ba037a29-15bd-ade7-8b3e-551f4bc7e53e@intel.com>
From: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
In-Reply-To: <ba037a29-15bd-ade7-8b3e-551f4bc7e53e@intel.com>
X-ClientProxiedBy: SJ0PR13CA0031.namprd13.prod.outlook.com
 (2603:10b6:a03:2c2::6) To CO6PR11MB5636.namprd11.prod.outlook.com
 (2603:10b6:5:357::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO6PR11MB5636:EE_|SA1PR11MB6917:EE_
X-MS-Office365-Filtering-Correlation-Id: 937c61c4-57da-44d8-c8ff-08daf987d271
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: MEj4r4kxRowwE134uV7YtF86k50eqa4kVNjouV/iRbH38KQ0gjDbnDbtQVcxtKw2299JtYURhUlv+Cw0t3M4WKBPvpimfoxHCFW5lJ1/wihqOZ46GTQ+IKJXbR8paNVmBniy5kM2bJVrMnGbmwF15RhpkbhUdKRsj33h7dy/rq6rhGzE/ExNugSq8kulpV/mHW/Db6oWorAkPV0v+moSBYg6QYaUTo874uxQvOxU4Bylzd03M1/hzQyaKDZNb1oOTPs3uxjD8DIWRRPRwW3FSjcYAVgV5BSpHhWcIq0F1s2rR44/Fyv4Wid79GWtGZdIKS+psBhYBhE762ws2ZW6Mkxc566LOb97aiqGX1cUcOTX9xV6x7W1vyD22yaFSVYMttRgeGhnqWMcdM3/jbcdOiTo/VpvoRkvbSk+1fLBCypq3pW59OsZQsnUaAYNb+1qqZQWlp7uGpuJGj2TplpWlLIXHnNw+pNYn5O3Z4K9hNlc3XKYE5bYj6NUuNlp5maVI1zCaw6klxi/340jr7gTNC9bouJ4FaPoabWPU46goR8M7ciKNl5aeMfP4qV5Tn3KMJ4cINEQan8Nwza93yisyhp85qnfESJTulecch+UIrOz8w6Pv1Mif4z3E9kPgqwhK7cbq7YDnr5Rw5ooLv54N+8F0FVrzuqeWssePZjVYyoqn0gX2OELzo4TYz2Md6g662UMho5Nh8SuL2Wz4lQfulS8pyx5r6Oo02VcIpO+b0UbXLtv9+/I7JH/x+qiUl0/
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO6PR11MB5636.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(366004)(136003)(346002)(39860400002)(396003)(451199015)(966005)(478600001)(36756003)(53546011)(86362001)(38100700002)(6506007)(6486002)(31696002)(186003)(82960400001)(26005)(2616005)(6512007)(83380400001)(31686004)(8936002)(8676002)(5660300002)(66556008)(2906002)(66476007)(6916009)(41300700001)(66946007)(316002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?L014VUVIcDJoWTBSd251UktjcE00Zkh3WCtad0t6MngxMnY0VjIyV2VHaGdF?=
 =?utf-8?B?L09UanFqd0dSUytYOEZvY3VvcG9TSTkvek5DYVFPZWFpRVhyRlJPYU5qZUEy?=
 =?utf-8?B?dDFzTmFLQ2l0aFRSUE41TmhOeTJEbmxUOTVWdzlPMXVYQlJiNGlRZ2xOS1Va?=
 =?utf-8?B?TmI1QWZIRmJicEFyQkdBaFkvWmc5RWFIQS9YcjdFOXlaRzRwMm1MTzYzTE1C?=
 =?utf-8?B?UzhJS0VES25aZ0o4dEFkMFZzVlpFSGVQZlUyT0xuSHJDdVYrM3N0enVBbkRT?=
 =?utf-8?B?K2lubDg4aEptdjRld1JucUhxb3BTRG9BVmlpRG1YTFpVRTZRTzlZMFo4M0U3?=
 =?utf-8?B?cUgvME5HSjNOQ0dwT3luZzdSQXdtbWNJQzdzUWVvbTFKenNpNkNwcUJiTmRH?=
 =?utf-8?B?QSsyaFI5aHZsc3J0Yk5RdjdvUUZWQVRjdjgxN0crb3YvQW5ibUVsSjFCeWpv?=
 =?utf-8?B?NlpjVXN6cDhlWVJpV2tkV05qRXVJdnIyV0FpbXZwM0ZVcytwc21Qcit0WDZJ?=
 =?utf-8?B?aFhXRmhwdDJ6RXhZMnJjeWhtaXhSaWNQMjdQY3ByUkVWN2x6T25qL3pGTTRa?=
 =?utf-8?B?OGRaTjVEUjVMRU1hZTRkaktwOUhRTjVNU2Z2T0UwWUs4QlE1b1JURHZiV3li?=
 =?utf-8?B?Q3ZsbVNLZTR5Vkw4WURieTFKZzRSWGJyZEVKSTJvT3k3K2lRdEpLdmdJM1Q1?=
 =?utf-8?B?RGgxWTh1WGpuOWlLNnMzWU8wNHNCMGN1Zjc2KzV4VmtQSmxqZFRjS0ovOUUz?=
 =?utf-8?B?UjlhVGF1b212TVRITVhMckdTb0pJdkJ5ampPSmJPb3FqenRBVnp5ZTlCclZ1?=
 =?utf-8?B?ekRQTnkrOW1tMkFVUlZqSEpsSVptQjRPZFAzK043Uk9rMVV3d25lOTNLd1dO?=
 =?utf-8?B?K2hnMVVtQ2RjRGppaHFJY3RCYmt6NXRnN1pyNVBqU21USmNuTllUOW5QM1Zn?=
 =?utf-8?B?TEZPZ3BiTnhlMnFwWmlEcU5WMUxQN2VJb1duQmh3aFlab3V1ekJGYjhLS2JV?=
 =?utf-8?B?T09OYTQwelRySWh1Q21ZbFRGdTN4MWhrNWFDc09jcnBqSTFJZm5sYXc4cXpX?=
 =?utf-8?B?b3ovTzFIT05SdUFsNDEvaVE4d01qdEZmWXlOandxREFxNXdZRkMvL1lIbG1a?=
 =?utf-8?B?R3VTVEpDS3NkU2ZPVFU0dWtkUWc5a0x5YUxMK3doRUVIdXFaWk5NcnRIdVh1?=
 =?utf-8?B?bEQxMU01T1gybHRVUEVVWlJhMEVIR1ZkN2UzeFNteFlZUndISkxjRTBtdC95?=
 =?utf-8?B?V1gwNDdmL3cwZEU4cVZNZGZiL0lmdDdSekZKV3djZkZ4UnJxNVNDYUliam9M?=
 =?utf-8?B?YXh6MG5aQm11YmwxdHVDbHJYV2lPUmF0MGFjUXhxcVNDcDh4R05XYkl2bkNs?=
 =?utf-8?B?bTQ0dko0N3pCOUdyeGRNK0c5UXE0RTdSS1htTkxSeC9KdG0vNnhvNlRFSkU1?=
 =?utf-8?B?ZUF1SFNyYmFqaUg5TGNsbDJVdHF1eUdxcDV6R25lVjUrZU1HcDlaYUY1Z1kw?=
 =?utf-8?B?Vm9MSUtsZlkzUGJoN0FOelp4OElrM0VobVQzN0R4L0RYNUJSUFIwM3ZId3Js?=
 =?utf-8?B?dEVCR0NCQVVLTXAyZUJhZ1VxWDQ2bnRpd1RwRHU3eXdRNStoVEt6cHE0a0dn?=
 =?utf-8?B?ZEQ0R0xWVUl4anhpK2dTQ2JSTkx4c2gySVk3OC9NQlA2V1hzYmhjTlJzU2xj?=
 =?utf-8?B?WVVwNW5Ra3Z1UUdUVlJNWmdQNUFSTlRONlJVZVJWa084WFRBMGV1QTh3REs2?=
 =?utf-8?B?UXE3aVhuR21IaGtkT3U4eDIraXAvaUVrNHFNNW1zelJEMm9JQmhwd2EyS3VO?=
 =?utf-8?B?YWZlc2dJTGw4aUZVSmtPVE5WYUJ4TndSaVRTYU4yV2xMSy81Y3FGdFVDVjc2?=
 =?utf-8?B?MlNvTUdna0hFUFp1VHNNalUxaSsyYUVjVm1USkdORGFwTGw1Z3JldWpQUktv?=
 =?utf-8?B?cEZ0SGxjckhwNkZRenFkdXVrOWZyRDhLR0NaVzJrT1JMMHpwbVdMSHJ6c1JI?=
 =?utf-8?B?RkZMTFpUNVNid0tuZnYrbkZNTWVDU1FtOEV1OUg4MU1pZm5mRDBVa2Y4Tjdn?=
 =?utf-8?B?WmQ1SVJNWmg5YjBPY01GcFh1NmtFL0ZBcVFlZkYxeXM5RktDVVoxSlFMd25X?=
 =?utf-8?B?Q3BOTFRsRnVjalJuOVZLUTdNMWVacXlSb0NMcEtZb3B4RlBVM0VObXIwTTk5?=
 =?utf-8?B?MkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 937c61c4-57da-44d8-c8ff-08daf987d271
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5636.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jan 2023 19:11:37.4794 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fMrae2QTi8qV6/Oi9KggUho60A8aUH0FsgG+4hgurmx5MMVg43/3keS1zFPQq7YZJHUKe33PvN+KpVykUbwRMghaREzKoB3DG6Amx3jgS2k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6917
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674069104; x=1705605104;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=n6qR6tdPHao0kDK/7E8z5MGJakvD6z+TenTnRTQXW5Q=;
 b=KW+BHj4fuTAzNA3y9M5L38PW8M0VOYAIlx8dXwCR/cFwzA++HYP0ZdFN
 4/WtVY3JaUdrGtUld1tHfIyZY6VKtTymabwDHpL7+boF6KBEzB9RoxoEq
 OmlUrLVDjp/aFQLy0z32uEQjfgMAEr5CrFBWhR6GRmhBpydg7JcTdlOkZ
 ajABeFUF5bIEo3NtwAkOWVAI3MGUZ8yNG5127blxW6O528yfS/j93fHkG
 2p/vXmeXL5I87ANj6itC/8ULbOM3b49bNF9gNcvYHNa6622K9G2oI5QYI
 Z40Jk396ZeLaQdWuNR6GaR304ufphLnS52iD6E/JxFZWMx0mdUdOX3nRI
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KW+BHj4f
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v6 4/5] ice: disable FW
 logging on driver unload
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

On 1/13/2023 4:24 PM, Jacob Keller wrote:
> 
> 
> On 1/13/2023 2:23 PM, Paul M Stillwell Jr wrote:
>> The FW is running in it's own context irregardless of what the driver
>> is doing. In this case, if the driver previously registered for FW
>> log events and then the driver unloads without informing the FW to
>> unregister for FW log events then the FW still has a timer running to
>> output FW logs.
>>
>> The next time the driver loads and tries to register for FW log events
>> then the FW returns an error, but still enables the continued
>> outputting of FW logs. This causes an IO error to devlink which isn't
>> intuitive since the logs are still being output.
>>
> 
> You could also catch this IO error and handle it if that is the only way
> to get IO error? 

I'm not sure if this is the only way to get this error or not. The error 
comes when we register for FW logging events. The documentation doesn't 
provide any info on what could cause an error or what errors we might 
see so I'm nervous on relying on this since other things may return the 
same error.

> Is there a way to check if firmware logging is already
> active after a driver reload? That might still be useful in the event
> that firmware logging gets enabled via some other version of the driver
> which doesn't disable it on unload...

Yes, but by the time we would check that (when we register for FW lgging 
events), we wouldn't know it without introducing some other flag for 
that purpose. I'm not sure it's worth adding a flag just for this...

> 
> Something like checking the adminq error and if its EIO then confirm
> that we are enabled and report success in that case.
> 
> Thanks,
> Jake
> 
>> Fix this by disabling FW logging when the driver is being unloaded.
>>
>> Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
>> ---
>>   drivers/net/ethernet/intel/ice/ice_main.c | 29 +++++++++++++++++++++++
>>   1 file changed, 29 insertions(+)
>>
>> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
>> index 9e610827966f..f24693e42e35 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_main.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
>> @@ -4497,6 +4497,33 @@ static void ice_unregister_netdev(struct ice_vsi *vsi)
>>   	clear_bit(ICE_VSI_NETDEV_REGISTERED, vsi->state);
>>   }
>>   
>> +/**
>> + * ice_pf_fwlog_deinit - clear FW logging metadata on device exit
>> + * @pf: pointer to the PF struct
>> + */
>> +static void ice_pf_fwlog_deinit(struct ice_pf *pf)
>> +{
>> +	struct ice_hw *hw = &pf->hw;
>> +
>> +	/* make sure FW logging is disabled to not put the FW in a weird state
>> +	 * for the next driver load
>> +	 */
>> +	if (hw->fwlog_ena) {
>> +		int status;
>> +
>> +		hw->fwlog_cfg.options &= ~ICE_FWLOG_OPTION_ARQ_ENA;
>> +		status = ice_fwlog_set(hw, &hw->fwlog_cfg);
>> +		if (status)
>> +			dev_warn(ice_pf_to_dev(pf), "Unable to turn off FW logging, status: %d\n",
>> +				 status);
>> +
>> +		status = ice_fwlog_unregister(hw);
>> +		if (status)
>> +			dev_warn(ice_pf_to_dev(pf), "Unable to unregister FW logging, status: %d\n",
>> +				 status);
>> +	}
>> +}
>> +
>>   /**
>>    * ice_cfg_netdev - Allocate, configure and register a netdev
>>    * @vsi: the VSI associated with the new netdev
>> @@ -5234,6 +5261,8 @@ static void ice_remove(struct pci_dev *pdev)
>>   		msleep(100);
>>   	}
>>   
>> +	ice_pf_fwlog_deinit(pf);
>> +
>>   	if (test_bit(ICE_FLAG_SRIOV_ENA, pf->flags)) {
>>   		set_bit(ICE_VF_RESETS_DISABLED, pf->state);
>>   		ice_free_vfs(pf);
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
