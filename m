Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 24434698902
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Feb 2023 01:03:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1BE39417E1;
	Thu, 16 Feb 2023 00:03:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1BE39417E1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676505785;
	bh=t9yCizYXfvgra3NZCgwhK2klE7KP0z7q5ZJL8kuYA4U=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hz5irxQv4/2uwEUGAZd9Qs7+HWau9wmNEmcR49trY95+B/KGrlj7VKi+u+KQ7u+C+
	 CIRhWea41ZFAOUUs8WYEOoaKfdzjs6ntufQC3a47vD5BZP20ANq4opQQuAlb/iPrCm
	 BeZll+A4KLZiJPJ4ZIRK1xLCVPs/l+vIopxelIWcT24H7g1FWBLOsBd58jBW9E0ntN
	 HLq0bvkHBRvgDKrM0pOU/96zx/2TVnpIXg6YAvgx0sOpYQUO4cqdDQwDYF7Gjenolt
	 /ajPo7po6l9vnmyKQmMZxzEzKxtD3E7K4GVmaJFlYwUwGHlDNxcNtVqT1fKcIeMjm6
	 aikzO4/2yoYcw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oeVte0AXTOy3; Thu, 16 Feb 2023 00:03:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CEE8B417E0;
	Thu, 16 Feb 2023 00:03:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CEE8B417E0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6C4581BF2BA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Feb 2023 00:02:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3DBC360746
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Feb 2023 00:02:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3DBC360746
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vRW1u9HrMyZ5 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Feb 2023 00:02:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B88876072A
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B88876072A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Feb 2023 00:02:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10622"; a="329298908"
X-IronPort-AV: E=Sophos;i="5.97,301,1669104000"; d="scan'208";a="329298908"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2023 16:02:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10622"; a="733650024"
X-IronPort-AV: E=Sophos;i="5.97,301,1669104000"; d="scan'208";a="733650024"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga008.fm.intel.com with ESMTP; 15 Feb 2023 16:02:55 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 15 Feb 2023 16:02:53 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 15 Feb 2023 16:02:53 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 15 Feb 2023 16:02:53 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 15 Feb 2023 16:02:52 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KZqR6k0Gw3eAPKWooKkZc4vu4vjVotXGr9VplrifTcY0sgQq4TkDifUBsop/zRagc4kKsbuPWwo/YpcrIM9tua/W0p0z7S3GiS8wtSFNeQP6gqsgfGb09uhmwH28vmNHp1AlRVkKnNmvKNcLIpYnXMi6t3mDkc4afQtPdyGDRhaoT2qpk6DwDb5bUBG0b5M1zPSYAaoZPdhPvInumqrZtRVnwO3NNrQfwkWmKIHZKs48v4CNL8C4t/Mb6fk736zVB6DxRxFa45NBlzwrqzcIEpBoRG+dm1CSI8ikujdhJMyP8QAzhxO1cAH/6T2mBg1Ia9G1Xp+mqwe4kxBnynQnUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1ykcKMx+/fn2kzs+zt+CM6iAYfXZmigOpRQOufp+sms=;
 b=d3RqQ7SHJZ17n5JYfq0OaFrf2Co0xSsQf4YgCYJ+KCLiJdfuksinBzRLex/bqBBYw/OwbyQRtd59bxER9djUPvC72gHvGMdIH1Z1Pyu/6BvteUamHjIgARe2RlMudw2e1uiDwTfkUT/y5sWBWPBWY18YKeaevWpCGJXgMyAdW8Y+2vobBTI5rzkdOtaCRnrk/FrcvDvYj43OkjwvF95S3EiUyXxmmV6tQEyelX8o06WrhiC35hzKcDd+taweZjffmpHoUFOxw9Hfj/f6elZ4KrPGu9T3eOHcn3ldl6r34UB+uGqcnL1tmf4WPpObE9172nfCu8p3c8t1RqK6WY5gaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SA0PR11MB4702.namprd11.prod.outlook.com (2603:10b6:806:92::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6086.26; Thu, 16 Feb
 2023 00:02:50 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::cea8:722d:15ae:a6ed]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::cea8:722d:15ae:a6ed%4]) with mapi id 15.20.6086.026; Thu, 16 Feb 2023
 00:02:50 +0000
Message-ID: <c78c5e12-1c5a-5215-812c-b10d4b892a1b@intel.com>
Date: Wed, 15 Feb 2023 16:02:45 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Lorenzo Bianconi <lorenzo.bianconi@redhat.com>, Tirthendu Sarkar
 <tirthendu.sarkar@intel.com>
References: <20230215124305.76075-1-tirthendu.sarkar@intel.com>
 <20230215124305.76075-9-tirthendu.sarkar@intel.com>
 <Y+zxY07GZ8aI7LrV@lore-desk>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <Y+zxY07GZ8aI7LrV@lore-desk>
X-ClientProxiedBy: MW4PR02CA0012.namprd02.prod.outlook.com
 (2603:10b6:303:16d::35) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|SA0PR11MB4702:EE_
X-MS-Office365-Filtering-Correlation-Id: 6f25e7e4-d261-4f99-a5af-08db0fb12449
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qI8Y6AXkjPzSfAJIsx7dPP/s/0PLlFGVmkw7C9u1oS7N8JPe62uOMeG3M87RPv0NWXmiZa1aG878fWibSNQk+zcI1tFg8Ft00VY4jCRWevhhqTtMCfkoTXT21dkIEzVRwpY9HpuI+qurscwRQncTIHq1smM/O8bZTY8YVPnYPs+N3YdXLgQCl7S+XWb7LRkP5UAxZNXmBmn78mDZM4SbaR/mm0HC4PVstOO6MCsLLBI8EwMiaMTB7saUrSdQ9eJDOr+leI8xn/LZoW/DbGP0IG16BopH844Njk1+DN1EuFDew6uagrcBVGizxyv7l7G5mwB9oGiYdDzO14IPvAjeXBxZvNOJ00hJHEIGmBYCzSQXnXp4QDFzN/yrl4TCc8meEB1b5rJ1KW7LduOxvtJzYCZC2z+X580LlMd92SeOT8FDK2r/6N8UaFMlh8EuoIDYHLtFgOo3+saA9nU57MYEYQL0gtCsTRyee2fbnzVpcBoPG+MV2Ng8ohZRXtsQa6SuAoI/z1xe7g7CF3mvRETYXFCKUIESf3tnD0hHxVAJXnIPd4JhDjs2EL/OYaLEFmOeITXBlNTA7A54D3t0TiRJE32i55pSXvU6F6Ke4sz2ukek6G2BDNrpenGa4J6/v1hj1azuNgnbgqTmU4CuZhcV1g/abm0UfMRhG8sU/V0l4F02g8Bx17icTsex+y7F4hlmgmzeLxbrLUg/KU5691+zW4lR8cA+w2jDG8f4I99+cwzhjhndkvkZOjgi5Oflpn27kSfYNLeXcp0PJO6FSgdY2K4baLyWPL/qalxKkQ8LaUc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(376002)(136003)(39860400002)(396003)(366004)(346002)(451199018)(2906002)(2616005)(31696002)(82960400001)(38100700002)(86362001)(316002)(66556008)(66476007)(66946007)(8676002)(5660300002)(6636002)(110136005)(8936002)(6506007)(41300700001)(6666004)(4326008)(107886003)(186003)(478600001)(6512007)(36756003)(53546011)(966005)(26005)(6486002)(31686004)(83323001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QmF6b2NYNURPeStuWkFJcjZDLzBHNjk5UitNMzJuQzlZcFRwZVJtNWp3N2pF?=
 =?utf-8?B?eEk1Y0NIZ0lsa01NYkl2b241SVFDOEo5MnRlL0NRemtkTE9yaTE4cUNOa2V2?=
 =?utf-8?B?RlVaSXczUDdvNDhYcUtkM1ZMb1gwQlY4RTdjM0RGemF3QmZ0b1BCcnEyMy9S?=
 =?utf-8?B?Qmw3VWRzd0NlN2VETG9hckxLem12OWVPQ1c3TWduR25BN0Z6bVZZQTZ0bm9E?=
 =?utf-8?B?c0JLc1lZSlJyeWYxRXRnaTJFTFZWNUkrQXR3c1prYWgwWmtQVGQrSURyenZQ?=
 =?utf-8?B?S2p0Zis2Mm5TT0EweExZRW5CZXJmWDVCRTRPUzdvaFRDd09Qc2pJVmIwL2Fw?=
 =?utf-8?B?THRVSmRhbHkrcytJaWt0U3hxUnc5K3lZKzk4bkxuUGg1TDlzUWZTcEVHTmxh?=
 =?utf-8?B?UHBMajY5NkFTcXpHQS9wTE04aXd4dmtic1lyeVZEWDNIa05yVS9hUzd0K0Fj?=
 =?utf-8?B?ZUpSZFp6Y0pmN1JRQU01QVJTeG51MFR6Y3dVNlZVdkRPUVN2dWI1Yk0xSDlm?=
 =?utf-8?B?dm5ZNVdFNnc2UnhvMjlhM1pJZjg0d0J4dHltVE1Sd2xMT3BYNFJvdVBzOVdC?=
 =?utf-8?B?QjhDMW52UUZoNU8zdVNWUGFMaVJoSlpONU5SL0lHQXo3Wkc0TERuWjlLczdi?=
 =?utf-8?B?WGhCRWc4MHFKOFkzai9MUFplV2JqUG9yaTFUNnVIelUxN1dOUGR0N0lONjUz?=
 =?utf-8?B?QjJMbDMwV29sczBaNmVaMDZhZW5HdXdDYkFZNjcwb01PTjFYdHdKcmNEa2VQ?=
 =?utf-8?B?ZUI2MHRaUHd2azA5RTBOdEI4dG9kSHh2dVdWdE9XYTVKeUxLMkl5L1RTNWVt?=
 =?utf-8?B?S2k1cmo1VjVHTlE1ZGxuMk1wVjMrSURjeVo4MVZIcllzbXdMVTJheE9JbHE1?=
 =?utf-8?B?OExjOFRndE5NUGlBVkRHeXp5dUFDMTBsamppcEROSFlqS3B4QVJpaFowWWpt?=
 =?utf-8?B?ZTZsdjlqMmY1Wi93aCtxOEUrL1Jja3RNd3BDbFQyc2YrbTBldjhFSk1XaDFj?=
 =?utf-8?B?RldhV2ZTNGRVdDdTSHUrbHhkQXJTSjgvZkE1K2JyWm9uMlZGcHNUb0NSRnRB?=
 =?utf-8?B?Z0hZQjdVeFFsSFVGbHIxYm9URDV1RHJPekRTWW4yM1ZkMk9xME5NUTloMmdl?=
 =?utf-8?B?azZGN0FMZGRhMmVGbkVOV0o1akhQOHlDQ2NnVG1hZG50WDJOeUREbTZrMjA3?=
 =?utf-8?B?cDgveGhMV1Fhdk9tT3Q4ZGNUc29nczRrWU5UQ2g2Z1N3V21jUDJrQWxrMEF4?=
 =?utf-8?B?Tk9nMTFEbElYTWlvaEd5TGtIMW05elYwSzhIL1FkOGhWQmpURU9ueXNDQmY1?=
 =?utf-8?B?dE1jT0NmQVFKTjY1dDRIZGIrR3AzU281OXZ3UktRcnVBMUJYU0xsejRWQnIv?=
 =?utf-8?B?YjE2VER3TWw0M29sTEpLQ1Z2U3hWcDNReE9EN1V1YjlJZDBaWEI2Y2JOVHNu?=
 =?utf-8?B?KzF1RlBITWdjQ0tSQmVsWnpsc0RTVkxmU3pLcDduMldtNkY1Wk5oZk9aaGFo?=
 =?utf-8?B?WEhqVUxiVkZGN3R6bXVXNjlCa3U5NnpRWEo4RDFKdHBSZHIrQlFyOEZ5Y2ZB?=
 =?utf-8?B?bkZMWlhyNHljL0pseEl2Zkh0NHFJZXJZUVR0OUZhWXE1U2FjTXA1SU1QMHJK?=
 =?utf-8?B?QTArVGVXOTJxTVlKNFlya2pGYjB1OFJsM3pabitKbEw2cDlnSkkyVXRibXN4?=
 =?utf-8?B?QnJ0dmtVSHlwZG9oV09mL2wrU2REYTcxcVA2YjRYUUdYcFFseEFHZHBLWjJK?=
 =?utf-8?B?bWlBOWgvUUZZaWZsQTJZWDBVQ3lpSFYrTFh4RDZKYmtHYXFBa05kc09UU2Ev?=
 =?utf-8?B?eXJJem12V1gyeVhXbFJwbnp3M3owUnF6SVl5TXg0OWVpTmxXS2RuYXFIVkFK?=
 =?utf-8?B?SDdqQzVTcWhGYUFOR0hPYUkxblJ5Q2VsRTFTVUFyUG5IYndYRFdLN1FBZzll?=
 =?utf-8?B?VDd1MlR3aGR0OG5lQ1IrWjRDMEhFV0pCV3R2RXZaMExnQ2Y3b09QSGJ0SDho?=
 =?utf-8?B?RjBDRDBPdFpqYlFQZVJKZlRha1dXaWdlWEZibmQzYWxmZllFY2NIRlZQR0l1?=
 =?utf-8?B?UTRiKzU0R1hDL0dDWnE2S3V3enJrWExGTGZybFBJUVpabmZOTjdyR3oybkha?=
 =?utf-8?B?Nmtqc1RjcUF1MDFFRU9Mem5oK0pKV2RaUHIwUkR6dEFTNGZiT1d3MnJwRU9O?=
 =?utf-8?B?Y2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6f25e7e4-d261-4f99-a5af-08db0fb12449
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Feb 2023 00:02:49.7678 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WsMSLs1fUuhcg27Kl9o6vzB0Gf3ziX6uTMjfr15RLxgu49wM7Od69hKQ8urr1Q1XUhXjK5vYsOODyFM9b6TvljwXpJePseRvRmkYTFhQaN4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4702
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676505777; x=1708041777;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=p02R5BZ3pP5vXFfqvxbkg7lUDMtzODJOXtstL530xrs=;
 b=CvjO8w69OE7+i55DGVOdc924x41uEiEFkdOFMRwFlLmjizNVCdSGmjV/
 Tobz0CjEcFkU66HBL1FZ42PM5v6Hi7mp4EzSLXRgrFpmmTW+xQmKEdQeP
 HLRSZCIEMNDJEh+beH9mkvXES6mp3qJFEqiuicK8fxgHUiS3eSOTCZ2xk
 eES+gNKWR3cD5gaJ74PeuBsu8JPcV3HL0KvP32F3+QDAe2fLwF5xLj2Df
 oZRueNvWXyoMS7Df660aQEXgwL82X3JvDJRFKjHhb0yZlDOQOQ/JhptTu
 DPbNCbnsWaGMvl89Z3czdw2jdYsDJ/3gCKII7xiEltq3RpXRcAioe2IVK
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CvjO8w69
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH intel-next v4 8/8] i40e: add support
 for XDP multi-buffer Rx
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
Cc: netdev@vger.kernel.org, jesse.brandeburg@intel.com,
 intel-wired-lan@lists.osuosl.org, bpf@vger.kernel.org,
 magnus.karlsson@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2/15/2023 6:51 AM, Lorenzo Bianconi wrote:
>> This patch adds multi-buffer support for the i40e_driver.
>>
> 
> [...]
> 
>>   
>>   	netdev->features &= ~NETIF_F_HW_TC;
>>   	netdev->xdp_features = NETDEV_XDP_ACT_BASIC | NETDEV_XDP_ACT_REDIRECT |
>> -			       NETDEV_XDP_ACT_XSK_ZEROCOPY;
>> +			       NETDEV_XDP_ACT_XSK_ZEROCOPY |
>> +			       NETDEV_XDP_ACT_RX_SG;
> 
> Hi Tirthendu,
> 
> I guess we should set it just for I40E_VSI_MAIN, I posted a patch yesterday
> to fix it:
> https://patchwork.kernel.org/project/netdevbpf/patch/f2b537f86b34fc176fbc6b3d249b46a20a87a2f3.1676405131.git.lorenzo@kernel.org/
> 
> can you please rebase on top of it?

Jakub,

I believe you are planning on taking Lorenzo's ice [1] and i40e [2] 
patch based on the comment of taking follow-ups directly [3]?

If so, Tirthendu, I'll rebase after this is pulled by netdev, then if 
you can base on next-queue so everything will apply nicely.

Thanks,
Tony

> Regards,
> Lorenzo

[1] 
https://lore.kernel.org/all/8a4781511ab6e3cd280e944eef69158954f1a15f.1676385351.git.lorenzo@kernel.org/
[2] 
https://lore.kernel.org/all/f2b537f86b34fc176fbc6b3d249b46a20a87a2f3.1676405131.git.lorenzo@kernel.org/
[3] https://lore.kernel.org/all/20230213172358.7df0f07c@kernel.org/

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
