Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C302F79D3F0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Sep 2023 16:42:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2C9FE415AA;
	Tue, 12 Sep 2023 14:42:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2C9FE415AA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694529758;
	bh=OTK/i0lYaix9UwEITCHHTPKerYeQuGV5pW0jjQo35+4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JtCojdiFNIZihXPGAPXFRMjFpAam3FD5S/bCEzOCZv1p3JFNGGGictfWPYP9lD4cy
	 UGoSSAUHbG9PiWferknytGh+mBUSUmD/4th3HfXAcxddHeIs4NFWRK/mmjbFvQVRii
	 HQzomdz642kCUWR5JpIgBe8XlN1Zjt77in1Tzheq11JEKoMmlyxbL1nC1KpH59hvZ7
	 rIPjFuYhBOsJw0eAtdrq1gfSZKk3LQo4DxXCcz3VMmIX9DZ/w9q3daEZutgXYpXTsP
	 9idTlzuZ9Fg5hxqZjZORjoa7cIrjtlEEjvxs3Jvdwc4lviflyFXeH4jvc1TurEfg8E
	 d+9QOK7wYnw+A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7ys9kSgtUekG; Tue, 12 Sep 2023 14:42:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CBD7340453;
	Tue, 12 Sep 2023 14:42:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CBD7340453
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 79D031BF358
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Sep 2023 14:42:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5192C40453
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Sep 2023 14:42:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5192C40453
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b-oTaKnVwyF5 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Sep 2023 14:42:29 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B95F4400DA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Sep 2023 14:42:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B95F4400DA
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="442408142"
X-IronPort-AV: E=Sophos;i="6.02,139,1688454000"; d="scan'208";a="442408142"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2023 07:42:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="746914137"
X-IronPort-AV: E=Sophos;i="6.02,139,1688454000"; d="scan'208";a="746914137"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Sep 2023 07:42:28 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 12 Sep 2023 07:42:27 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 12 Sep 2023 07:42:27 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 12 Sep 2023 07:42:27 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.109)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 12 Sep 2023 07:42:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bTspnBgp9VnPhVIIlQ42FySL2oQNLfhfQ+kaWdFxV3GMt+ScCB2JBdPepRHSwCCYvSxlIx/Bl1mZgY91kf9aczDUnrruX7dArhW7+ofT7m/ZDAiwMnW9YkS7LHx1gA0BzHKfDizOBuH3ZJPKWbXaF+HLru4PlPO8nf0MMQ3h/4uQ5ksfUo+sCLh7QfpA04lDPjOs0V4vgFbCVwVEVvw8IebyO1G3fhxJbLyOadNQpeK2l77W7+HvS66cJHVbhfu61OXluewxo6utSkSWkkdYp00aG8H5hjbTCKvElffZs+hIyZVRc6EqWbYOr4vB49OScPg+aiNiqMDOma5oDrzQMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4VU1dsY1u4XMcUlo1j14Yrpe/Pt4h8zsaqGvDMmAH8k=;
 b=leSA1gKIdZkwfXzNxu0TmkslbcRotco6rcSmGfevTIsNcKRhsJ1k4i/ey8az0U3YoUPGLsJTXJAvjtOhjOWdkqmrGH9qLzbu9gdmsn+Cp8xk0Np6E0oq1C9WjqmbNa5cw8sUBspB91qCpzy1xLxHu4jwEgNGRvsUmeCyG2UD7lWD5s7s/CIlA+EUsfEofGMtbpCepFLs0rL+uU7lKa4UvQ4EY2q5sHwLBeNzQ7X38PZRjdGys3pG+qNgfLZ8plLoy58aYOHhC1zrGY/d8wcEK8NZcNOfYtHaQVtcvWkRCgqplC/ThBycWJbZyrvQmKjW4UhPEc8PxaZbbEGREsCR5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by CO1PR11MB4803.namprd11.prod.outlook.com (2603:10b6:303:95::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.19; Tue, 12 Sep
 2023 14:42:24 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::bede:bd20:31e9:fcb4]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::bede:bd20:31e9:fcb4%7]) with mapi id 15.20.6768.029; Tue, 12 Sep 2023
 14:42:24 +0000
Message-ID: <ad50a349-11be-36bc-fed4-94f5aab3eabd@intel.com>
Date: Tue, 12 Sep 2023 16:41:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Paolo Abeni <pabeni@redhat.com>
References: <20230912092952.2814966-1-andrii.staikov@intel.com>
 <0168a988486f4bff08bd186d5aea1cfe4900a2c3.camel@redhat.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <0168a988486f4bff08bd186d5aea1cfe4900a2c3.camel@redhat.com>
X-ClientProxiedBy: FRYP281CA0014.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10::24)
 To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|CO1PR11MB4803:EE_
X-MS-Office365-Filtering-Correlation-Id: 575178b2-40d0-4dbf-f16f-08dbb39e7a62
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: eS9WybwTJ+PW5EZf2kbcm8puKCOg1IDjrZxB5qV6Lhepi0pyKzRsa3UL5YEIrwRwm4iPIsGrHrtyAWaKyazT9smCuHVz0hZZ2xQgHaT9irK+BLc3IlAEtY8vW5UjSFsj5Y/bKgL05nwMmHlIW/GMhpPwdxsOtSPkeSBkut/RtVFE0HWdfj1dmdFRerpSFC1yuz8WBKnFFOVDS6J9gRzYOX4GvkjKUkJsM+LYj0mrwTLPy+hxDe6+NoToL1h2/xCQ5L9AQGr1gpCX+BIsle2FFogaMFQATlcPBNv4iEtISsVP5knmW/gRyjHGeCrwjE4u7BVihDwT81qchPpMIY8XK2J91rMHIjpAbB76TkztasYAaQGj562lnpASjXWcv92zHNXIeYK3x7NDE1pomvmojWNCGHMzpMRHZqjHY5BUbLi6cCV7T9+az2pLqy2sTi6bHhlcv2DU6brYkG2McYktDOy2mU58vibA2utp5/UQTvnwBdu4O/bgvzhx6yxfe0LQ8Py7ftbfVwmrWsnLwZxeHIYxt6fastUQ/wAZH8t+AFxa2ZmdfUncolegcqkF4xHw2NRFK1m089d3dy1uVSnyOUfs54/DtZYRmyTLsBl/l0ZnL4WJT5lCwcBvyuXbxljp5JPX8i8BIcjg8UVvtEitzg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(346002)(366004)(396003)(136003)(39860400002)(1800799009)(186009)(451199024)(83380400001)(6512007)(26005)(2616005)(316002)(41300700001)(6916009)(66476007)(66556008)(66946007)(5660300002)(6666004)(8676002)(4326008)(8936002)(2906002)(6506007)(6486002)(478600001)(31696002)(86362001)(36756003)(82960400001)(38100700002)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QWJNVDlNeWY4b2hiYVlYNzBBV1BTZTVvTGpPSHBsVEZDNkdMcjlwOVV5MkJK?=
 =?utf-8?B?THN2VHhHcFFncGhHTjV0THdtTVZwVEF0OG9yVlpxWFRpMGF1Z1phc21ORVBu?=
 =?utf-8?B?TzNqdk1MQnp2bWoxM2Q5RmVkUE5ObkJsVStDdjlXUmlvNUlUVHp3bVVKOHZR?=
 =?utf-8?B?NGpJZGNzTnhIaVFicTkyQUJ1ZUZybHBJNzB3azVMNHlZZmNEei9vSDBuWCtq?=
 =?utf-8?B?RTdQUHFQbW1kZG1lckN3dDBORnBwbUxEMm1Na3dWSHlUK3RDNkMwZlQ5RWZB?=
 =?utf-8?B?WTRPOXg2Vk44bXpTNEZzVTZtQzUvaUdBREJUMEdvV1BTY05ZZXlBRE4xQ1BZ?=
 =?utf-8?B?U3hSVy9lc0hTOGRQckc3ejM1WExwWnVNczU4dlB1S1o1WVJKK29oelB5REtR?=
 =?utf-8?B?WVVKVldTWStySDJub2s3aSsxSE1WcmZIQVNUMU1tOFo0Y0dydktQZXp2cGZ5?=
 =?utf-8?B?ZWxzOEJpSTVLZHV1SS9HRXVhQ3ZtdzBIUUJsMjYrcXlqL0RScE5lV20yNkZY?=
 =?utf-8?B?SDBJT3NjQURYY0puL2RpaERPTzlzWksyekwvcVV2U1VtWHJWKzIybDUyUVcw?=
 =?utf-8?B?eGRyUjdiNXZMYm9ML1RHaUxNc2F2Q09ONEJqdjhIMGNDNzk5TXJiaVFFMkpt?=
 =?utf-8?B?TDdBKzZ1azlQelRrWExFL1UvMXRhdXFlSGdOVDdoZ2VSbUF4WDkzcUNCc0JB?=
 =?utf-8?B?dUFOQkEwNnY1bTRXN1BJMjZBL0c1bUh6Z05UalQ2SmhTSEkvZUk3Q3lrOHhR?=
 =?utf-8?B?VGthV0JSTTRKcUk5S3psZjk1SUVJdFpsa0RLWmg3S29hemoxSjBkUHUvNElB?=
 =?utf-8?B?NjZLbFVONGMwSXJjL0FEZXNRc1htYzUyNHNMUmlYY3pMdnZJdnBYdUdEbmZ1?=
 =?utf-8?B?d2hQK0hFaFEyUnIvaTRZUWlvQVNNRnA4MCtBTkpmdDRNMlMwZGZjWVVIa0th?=
 =?utf-8?B?djN6TVZNbXJsbUpyNmN3MnA3N3QyQUNuVEZ5MXh0bTBBbDNaN0FJY3AvdG1y?=
 =?utf-8?B?L280aUJ5YmdiUkhmWi9VNUZOeEhmMWFPVDQwSTV0VFEzaUQ5YWlEMGhTdHlD?=
 =?utf-8?B?Y2JHdlk0ZzJCbG03NnhQQmVkM2grTVRmN0NzUWdXYkpJMlhSZlZ1dmE4cExK?=
 =?utf-8?B?RWVWZUYyc2VCL0xuVzJkZTd4ZG5rSFY2YW9TS2xvSFRnRjNaQXU2NTZhcDZH?=
 =?utf-8?B?TXJabGlmOUp6NTV5SVdBS21MT0ZXZkdoVXZHMHYyb0lqdmZ4VThDeFQyRnZO?=
 =?utf-8?B?WFF6KzRqc2UxdmZRbGJoRG12NjNlY3hLSUVTSWN5dkhSRi9JSC8wTEorN1hr?=
 =?utf-8?B?QVZMbHhNS0srRVJkUWFzbzJ5eC96L3NscDIwTzVXSTMycDlPL1NicWU2TUZh?=
 =?utf-8?B?bDlBVjFvQnptbTBJZXl6eStGc280bTdZYzdmT2Ixczh4WE1zUDUwNjd4RzJ1?=
 =?utf-8?B?MzBnWTk5NEFtK0k0U0J0Mlh5SVlvVS9GVHZIVUg1QzNNUVZCTXBhYiszT3Bs?=
 =?utf-8?B?ODhIRzc4VU5EZ3ZCdDJtUlJsN1JYRHJHd29KTGZKT3JIT2plVUo0VDBWb21v?=
 =?utf-8?B?cnpyNjQ0UkF1L0tEV1ZvNThwaERwY3N1b2UyVnNxYVFxcVNBbGNRbGsrNUt6?=
 =?utf-8?B?YnFtVkthdjVpckJrYzN4NFc4VGVSU082MkprSmZncHNQZU5XL2RuRCtLSith?=
 =?utf-8?B?eEIzdUhKQndCbFYvbDN2a1l1Rm16ZGtuREpPK1IyU0FCZUZkSDFnaDNqVjRT?=
 =?utf-8?B?UUF3RHVRZVBKekJ2cW94RlJvYXJuRGs4aG5MZ1loajByVWpZSjNISGpudU5K?=
 =?utf-8?B?eE1uSUFMdDlDWVZiN3hvcFhINDVOUnBBa1VxL2dIbElKdTc0Y1ljZm5lVzA3?=
 =?utf-8?B?VDUwa3k5bDZjR3FVNXViVHNmbkh4OURsL2pmL1BtZU0wRlBod0lVTGEyWWQx?=
 =?utf-8?B?eU1Kai9xSzY3MHhpMGlKR3pNMENGSnZaSnB2VVNCenZHL3U2bXRoNnA1STY2?=
 =?utf-8?B?UDA2ZXo0c2FvcUZQMlFQcW5VdWtDVU45dER6a29ZMG52Q2Z6dVNueXp2Q0I0?=
 =?utf-8?B?TlFuQjBNdXVyWmpSd0w4eW5XbUtQQmhYSStmSVdCNzdpNUVsMXg2Zlh4VWZW?=
 =?utf-8?B?aUpGTG9GenRlZzNpK0dETjdJMXRYcHdYNTFkSUh6aHl4VXZ4YVczbCtwZnZG?=
 =?utf-8?B?RGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 575178b2-40d0-4dbf-f16f-08dbb39e7a62
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Sep 2023 14:42:24.4958 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /tcxrDwAzPFuSSeeieDpnRRIp23t4XL/rFE4IJXGKQodJxARsDzwCMxTvoy4pERz4TOlS5U6kXC5gF8gPQ7iI8ai5rzRVGRrPuMLgKhAFF0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4803
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694529749; x=1726065749;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=W4UE3ti1HJRmZq1GPwVsXBYDuBtFPTnV42dFxTszgdw=;
 b=A4KdAU5F332ZbJP6Qq3aIXe7lylIBdfpi0hQgnxD0p6BpzsucDMifxSL
 JfEbUOlAF4qh5+XTGgl4cqjO4HI2CsONLQZIMq3bfvcEqf1T4MB62ht3q
 NMcSHN4Oy9hptjup3IjgPVRy/PRXprYzrwnq8cBmt2hAufRC6H2eE9MNM
 o5kc7kfTdixox2klVfDLKBirw3skSg6eAiXruEBWVFLEqqo6hd4bxN6rn
 AYnTK1Gm1ch9/mNz5okLDadQRBeW7Uguw4aVqhh0xE2ZDv+t/Yv1RQ2/B
 FFC/7jA4ylZMytkGh1I/TwrwPMkUNatU0FjQLrphdSYsCxUxmabL007aX
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=A4KdAU5F
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ice: Add support for
 packet mirroring using hardware in switchdev mode
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Andrii Staikov <andrii.staikov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Paolo Abeni <pabeni@redhat.com>
Date: Tue, 12 Sep 2023 11:56:15 +0200

> Hi all,
> 
> On Tue, 2023-09-12 at 11:29 +0200, Andrii Staikov wrote:
>> Switchdev mode allows to add mirroring rules to mirror
>> incoming and outgoing packets to the interface's port
>> representor. Previously, this was available only using
>> software functionality. Add possibility to offload this
>> functionality to the NIC hardware.
>>
>> Introduce ICE_MIRROR_PACKET filter action to the
>> ice_sw_fwd_act_type enum to identify the desired action
>> and pass it to the hardware as well as the VSI to mirror.
>>
>> Example of tc mirror command using hardware:
>> tc filter add dev ens1f0np0 ingress protocol ip prio 1 flower
>> src_mac b4:96:91:a5:c7:a7 skip_sw action mirred egress mirror dev eth1
>>
>> ens1f0np0 - PF
>> b4:96:91:a5:c7:a7 - source MAC address
>> eth1 - PR of a VF to mirror to
>>
>> Signed-off-by: Andrii Staikov <andrii.staikov@intel.com>
> 
> The amount of patches that IMHO should land only into intel-specific
> MLs and instead reaches also netdev, recently increased.

Let's clarify what you mean by "intel-specific MLs".
Do you mean our internal MLs and review or the open one, IWL?

IWL is mostly rudimentary. It's open, but almost nobody outside of Intel
sits there, which means 2/3 of patches doesn't get enough attention and
reviews. It's used by our validation as well, but that's it.
Our internal ML for Ethernet patches works as usually. I realize roughly
half of all patches pass it without a Reviewed-by tag and it's something
we're actively working on. If all goes well, no patches without a proper
review will go outside Intel's internal Ethernet MLs.
Now, the second part,

> 
> Please try harder to apply proper constraints to your traffic, netdev
> is already busy enough!

Do you want us to stop CCing netdev when we send patches to the outer
review to IWL?
This would mean they will once again start missing enough attention from
the outside. I hope you don't want our patches to be reviewed *only* by
Intel folks, right? I don't feel this a good idea.
That's why we started CCing netdev this year. And we do that when we
send patches to IWL, i.e. outside. It's not like "ok, let's Cc netdev
instead of going through our internal review process".

Our clients, partners (e.g. Czech RedHat), our developers, want our
patches to have proper complex review. Dropping netdev would mean that a
patch of some non-corpo guy will be reviewed more carefully and at the
end will have better quality than an Intel patch, which "shouldn't
overburden netdev".
Saying "we'll see them when Tony sends a PR" also doesn't work well for
me. A patch gets taken into a PR once it passes internal review, then
validation, this always do take a while. Imagine waiting for a month for
your patch to be sent in a PR to get a negative review, so that you have
to repeat this process again and wait for another month to get some more
change requests and again :D

In a couple months, no our patches will hit netdev without a proper
Reviewed-by obtained during the internal review, let's not take corner
cases and effectively hide our code from the world?
I don't think you'd like to put a huge banner on netdev's lore saying
"please also take a look at intel-wired-lan" :z I also don't want ppl to
behave like Greg KH some time ago when he said "where's your damn
internal RB, stop abusing LKML" in reply to my early RFC PoC sent only
for an open discussion xD

> 
> Thanks,
> 
> Paolo

Thanks,
Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
