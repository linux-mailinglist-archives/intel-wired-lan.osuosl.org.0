Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAD9E510AA6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Apr 2022 22:38:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4BA9D40ABA;
	Tue, 26 Apr 2022 20:38:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RyY0y2vYYbBj; Tue, 26 Apr 2022 20:38:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 438D340A92;
	Tue, 26 Apr 2022 20:38:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DEB3A1BF3DE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Apr 2022 20:38:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D864582FAE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Apr 2022 20:38:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lSdSwXIc3H7r for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Apr 2022 20:38:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D8E5082F11
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Apr 2022 20:38:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651005519; x=1682541519;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=w9plOmRePbPEbie53sFUg+NxmJjQEeTpS35n/yrY+wo=;
 b=AJBSxUp/BDu0MCwZDS1jeDTOktR8T/bJGYMWZMbNQo/9lAyS3avtPokg
 3Mk8yzgyV8ZaH6XfEypsRqqIK9bMPvFGP/uML//G+GN9uJHMpoFifCnQS
 QGv77wnPcljWQWvOKhSpjMJFyBmRpsSE0KycCGae6bTTVECERRLFHlY1P
 +S4dRPd4C49fxmWtzqMElXMPGzZCb2KM4N62RhFqnO6Iyii8D/x0fTRe4
 y8It3e7Jwlh2TJ16wvVn4xuA7aNVnTyqVk+3XhXlQ8wBQn2VLwTWFm0LJ
 Jfpk62+44TZjLG9po8JLYZruPQjwWw1VUA6BftPezRjznpfnjBRC/Wojt g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10329"; a="326204816"
X-IronPort-AV: E=Sophos;i="5.90,291,1643702400"; d="scan'208";a="326204816"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2022 13:38:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,291,1643702400"; d="scan'208";a="513338722"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga003.jf.intel.com with ESMTP; 26 Apr 2022 13:38:38 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 26 Apr 2022 13:38:38 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 26 Apr 2022 13:38:38 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.171)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 26 Apr 2022 13:38:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z+fFq5FGiIhoIUwwsDAyWES5FsCD/tvHo12smBWpGK6h5GpPV8WGrkABf8GMu2C27hLb3RJk+YAWurUp8OIXvvUaONKfp4bLmrugs+v1WiOMCd/3Yo+p227C5dzYbDNO3h6mwJyB0+yZ24CkHsnrKYyj7fDnO+fw43RnUe4VbKbPPjKXy++14lSI3uAcXBolbq4XBDaOL0AT7LacDRDk1Cs9EsWCLuOhu5tDxc+j0AXtYlj6SIIv7i87bRXowQURw4uwyWYuLCKUXqBx8c99fETv2DnQwlPobkOhXepz2hUY89za99n8+q8xDucN/3vlwNrCr6GlQLeCZXkgBXFHNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HHSQ7bXVANwmromrFi6mS9R5vKHCiNMFxPkUDTguFgc=;
 b=Zjpe4sxKVlH41lOrSsIinlzKEZohr/wx2KeIZwAJ2JW64yur++/NIq1j4qEbO+2hjwKd57plxnNVqMpuSX4ZgzdQzLuPgIy3XYavX32o79dU4N6Qd8tK/5UnEJhfbaoiR4o0YHWoqXL5q/yD7aaF+4a83ZQBtRi30nTPcYuxtQ0R4wsp4Jz9LSLurKAjswgr4WSXQBwg0mmmbkf0KZHt1gXyPPopf5sUlZrZSgYKOh8GP25GfReVY8CtZRP11tDLJ8FZCwBSrJd0cmAT61iSqc7IcTdYTMkuQ8EBD+lQpSukELxLMDQefGRM1bL2IpShf4uFADjCf2zQ27MUQkxB5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by PH7PR11MB6032.namprd11.prod.outlook.com (2603:10b6:510:1d3::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5186.15; Tue, 26 Apr
 2022 20:38:35 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::317d:11f9:2381:a3a3]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::317d:11f9:2381:a3a3%6]) with mapi id 15.20.5186.021; Tue, 26 Apr 2022
 20:38:35 +0000
Message-ID: <36cb895d-aa0b-cf4b-7b0a-74bd63b5be67@intel.com>
Date: Tue, 26 Apr 2022 13:38:33 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Content-Language: en-US
To: Michal Maloszewski <michal.maloszewski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220426203707.149900-1-michal.maloszewski@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220426203707.149900-1-michal.maloszewski@intel.com>
X-ClientProxiedBy: SJ0PR03CA0059.namprd03.prod.outlook.com
 (2603:10b6:a03:33e::34) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 679974f4-7ab8-4f42-aff9-08da27c4bc5b
X-MS-TrafficTypeDiagnostic: PH7PR11MB6032:EE_
X-Microsoft-Antispam-PRVS: <PH7PR11MB60328FC617BB0907596DA12EC6FB9@PH7PR11MB6032.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: zKSlGWdqhPYvpKwUubfEb13O7z4VrUtpTvv4ZsgXgwK7K0HhtjcJ1nQ/dqBjd0bjjAJVPcj39h8kbxjHTWcOv410ML0SIa79NUoCxP+ShqsT+QmM05ziPTnMbfZK3llnW1NCo3t+larzMO8LfmazQM5QcOOrcjBtEbUB/ybqPboLczQK/DXNnhXsscfhNY5uCSoTEMuL1XT1kRC1Jq//riZQYXwtinYNOjYVseLusUYNOtkY3SnGWoGPbWXLmQmG28vF7f4A6m20Px725u0nNKFwSFA7xgDD5kaeu4RgSgOwDJEtpL7gnMn51w4tg0va4hAF07DYmFOiGPStRM7ivuQn3nH1AHo7WsI+YuJME4yh01bURZThY6n6j6tEzunZaVERtyv/6Qpo1tQkva8xn/p0luFE7z/oLjvqF7QFHjwN5YwTyGDqlv2pr20pr/Cum04sZtUj2/OXM1eEvP1pEFY9VutGS2Tgx6bGvNTc6kPQLZod8FiHATx5KdWJU3mKdtp8xXq0YqUgLXpj2/Qup6qb2nQdT2tHkq9x0uzkEkhODKHUj9QEfSYl/MrxRHqwfOxbQzIpO4FqcXY0sHD0m31INmNfMr8psjIU1BZmbvL26PV4R3Pj8Tbkr+O94JvplTtz9xKRDpnVxc7i8MDD9tkj58S6uXgL4rfAXDi55jlfiGur5NDdQy/NPi96X4whoJp0chrnz9xNrGpRHfmFZd1xOwNwu4QoQaMEIz6USdPla/A7aqfCy/05ex0VEfOPs4TUst3pgUNSC5Pd4FPTNa0w2/TCxw4DdBbQPH/pApIoPY3ITgNIsUZbcWLE546038PGbFMv75yHi/K+ti4FMg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(107886003)(2616005)(31686004)(316002)(83380400001)(36756003)(82960400001)(38100700002)(8676002)(508600001)(2906002)(66476007)(86362001)(4326008)(6506007)(31696002)(66556008)(66946007)(6486002)(966005)(8936002)(186003)(26005)(53546011)(6512007)(5660300002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dE9pcWJ6VllMOHZML0t2eUlzQm1UQ2tOcGpHb0hMVWFuVVBHR1ZvZS9wZHY1?=
 =?utf-8?B?SkNJdnVJM1BNR0crcVk5NFBTcGhlVXBSeWNJZG1qYzJBK3RGbzJRYUNCSUFx?=
 =?utf-8?B?NkY0VlB1U3phcUVjd1RTOUpuSlRBWDBWN0kvUzlCRU9kbmQ1bjFHbThDeXFW?=
 =?utf-8?B?OUw0M2E3YUI3WWcwbHorNTNjZUdNbDZYVzlVb1VaRHI0aUNZZ296ZXZ2ck9p?=
 =?utf-8?B?dE5CMktVbXR1Sk9YZWJzWXI2WWZBd0IrQmFPVXR3RElwYkZReUU4YXVnL2lj?=
 =?utf-8?B?TzVBQlkyZWtiQytHVWMzdTFoN2R5MXVEUlNvWSt0NmtuQ0ptQkZxTm0vcXg3?=
 =?utf-8?B?UGJEQlNoVGhLOVAra1NVSyt1ODlxK2lIMDZFK1lVS1VMT3VDNC8yeDdnSmpK?=
 =?utf-8?B?TUE2RUExSzVhSDk4dnBiTHNQMTFQNXA0SktJRVJEL01KSk82dDlLcEVQODNn?=
 =?utf-8?B?QWpEcCtFV2FRZ1RiYlV1MkRLNmxud29Gd2NuWGcvZXNtRXVtWlRFVzhHNGVk?=
 =?utf-8?B?Y1lJRm1xREFqVlBWVkVOQU5iaHNIbHBJVk9lNk9MN0hnSDY1OTAxOGRQc2s2?=
 =?utf-8?B?UElGRUsxMTgrbm9xZHFwUTBpSHRVSEhDT1hJeHlPaHhCYzdTNnFlU09QZ1dJ?=
 =?utf-8?B?QStRUmRHVlZiRThlZ0dvTXZSMFVOOG9zNHlvN2VSa3N1Nmx0b3MzM1RRcExV?=
 =?utf-8?B?K2ZiYXZnR2s5aVg5bS9NTlVaTjBsRngrbytyM3B2Yit5U2QxMTVuQTFHbG9s?=
 =?utf-8?B?SElxN0hvMFk3TmgvQUFZS1lhMlhEV3U5K3VRa0h3L3NaNDlQelZKdDE4cmNl?=
 =?utf-8?B?VTZiZFpodzI0Y1ZhTCs5YWIzUTNnN3lNTUcreUhsWExuZWdraDVRQnJKK3po?=
 =?utf-8?B?NDh4KzJHRGhqNk9kQ0tXbmdiTmdCN2lZMnF0UW04Y2tBdVdCd2JuZUtkdXdo?=
 =?utf-8?B?YVZNalFrRzZudTVhVlJFWFFTNUNMaU93T1ZINUxCK0FnQWJacFFUUFpsY2Rq?=
 =?utf-8?B?ZjBHNXdtMCtzRmkzNTVWVHd4V0VJMXZ1bG0vVEQ5ODVxd2lHWk12TzBKYjB3?=
 =?utf-8?B?VWdoZHVvR0hXRmhYWGU0ekRDUDdOazZWaDlOY3RtQkJTcE5FK2drRmpVN1l5?=
 =?utf-8?B?VDUzNUNWbHR2M0pIbDVVV0NacXRtRzV0SWRMbmtoK1FtWURvOXlHY0pIdGxh?=
 =?utf-8?B?ak0rMjM1Rld0TWFZcUJMMkNmTWd2aUJVcDdGVTNqVTdGYUIvelJwTEd1VjU2?=
 =?utf-8?B?TERvNzFSODczN04xdTU4MWFvTTVUUEV3aVNObGJXL2xJWXlqRmw3V3NYVS9v?=
 =?utf-8?B?c3ByaEpTYmgxbHZnVmc2cTRzK1lnRWdMKzRHNGNJMDRpYjlLUlo5Yi94S3VT?=
 =?utf-8?B?REM0K1d3NUdZcmhBQTJOMG1BTk5FSytvTHE3M0tMS0M3TkxWcndzM2pxTGNO?=
 =?utf-8?B?VGxRWUczY2Q5cUZYVVFWWklSQjFiM1hkOHRQUHpaaHZNUU5RaGc5WkhZcEtF?=
 =?utf-8?B?YkFNMWhROGwrNmJ6djNydEI5bEs3endrbVI0RW1KTy9PVUdZakl3NGt0MDB4?=
 =?utf-8?B?L0daQUN1cURlVCtnbnRHdzVSdHBPMS95Z2xjNisxWUY1YTY5elZuWjAxRlBH?=
 =?utf-8?B?Mkp0d25TOENGZmdpbThnYTg5T1dybVdSaGZzSERXUEpzMy8zNGlZWGdNdDlz?=
 =?utf-8?B?MFZ3WVQzYkJCRFBlMC82VlBvdnllVkkxOWM2VERUMGYvRVVlcytnSGF1Zkk0?=
 =?utf-8?B?WFNPUGxFRmVZcjJzcU5xc29hdFJZKzBYV2cxL3VFU2U3cldjN2RudllOYmho?=
 =?utf-8?B?L2V4TnF0Mnp3cFlIMmE5WEwrMFJDM1lQWTF4bUI0SUN3WTdhMEllSStoM084?=
 =?utf-8?B?MmRxWVBBSTV1dlpHQ1BXdEdDRGt6dmJBWmZwMkNKTXh3K1ZES0dSVU5lbGhM?=
 =?utf-8?B?NVdmSFUyRXlEMGZma0RLbTA0MzR6UjZsUnZxVi9VbHZqWExxV2lyS2tmempx?=
 =?utf-8?B?NFhjMHZ1RE5DT1V5K3M0RDdPTCtvRjNGUzBVZHczbWp0YkRLZ0xWMjVWdkRE?=
 =?utf-8?B?UlRick1jUkNMOWwwSWlaQS80VW9UQ3BHbk9ISGpGRFNHTUljM1VQYUtuc255?=
 =?utf-8?B?dEF5NVVmdGtZMndTRUZhaTI1VVZkS3NQWHNjdDNzdzMwSysybjh4RDlQamYv?=
 =?utf-8?B?OUlEUFZzY1FIa0hjT1FUZWxLNGNqZE1KdjZDQXc4ZFBkSDlQc2ZMa1cvQnN2?=
 =?utf-8?B?V1JmVlpPQ0NvQ2dlUXBXWVE1OC9GdXYxZk1xWkdVQ0xMZVFJNVFQdXJVMW9h?=
 =?utf-8?B?d255TXZRaG5Wak9HL3NhN0FRTUltRXdZMHZUd3lGdVNSZmNCZ2lZeE1TM2pG?=
 =?utf-8?Q?9OTrkNTixkwKUG40=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 679974f4-7ab8-4f42-aff9-08da27c4bc5b
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Apr 2022 20:38:35.5107 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GpvyMirk8TRwMxPZB0vvW0N2lfdRELiURFd5Bp24+CXsxsucAVBGqDBcRb0ZL0v4Al4g4Ly8kBd8FkzfkXgqhC5I5+U9XRA/mENMKMW+lVw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6032
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] iavf: Fix error when
 changing ring parameters on ice PF
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
Cc: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


On 4/26/2022 1:37 PM, Michal Maloszewski wrote:
> Reset is triggered when ring parameters are being changed through
> ethtool and queues are reconfigured for VF's VSI. If ring is changed
> again immediately, then the next reset could be executed before
> queues could be properly reinitialized on VF's VSI. It caused ice PF
> to mess up the VSI resource tree.
>
> Add a check in iavf_set_ringparam for adapter and VF's queue
> state. If VF is currently resetting or queues are disabled for the VF
> return with EAGAIN error.
>
> Fixes: d732a1844507 ("i40evf: fix crash when changing ring sizes")
> Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> Signed-off-by: Michal Maloszewski <michal.maloszewski@intel.com>
> ---
> v2: Changed unnecessary parentheses

This does not address any of the comments on the netdev patch [1]. If 
you're making changes, it would be good acknowledge that on the netdev 
patch.

Also, why the change from net to net-next?

Thanks,

Tony

[1] https://lore.kernel.org/netdev/20220422154752.1fab6496@kernel.org/

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
