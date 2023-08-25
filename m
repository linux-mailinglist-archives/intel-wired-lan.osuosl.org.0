Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 41917788C96
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Aug 2023 17:38:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C521783104;
	Fri, 25 Aug 2023 15:38:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C521783104
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692977937;
	bh=FRCar/rdVvwlD7WaHQo5ta8OpAsNn8zuIl6ZKFV+koc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=cVDpJbQsmptXirVG2NpIBa8SOdf+ghy4iq++EDN8swXOEbCPG9wEniDC8qRTy+CNb
	 G7AUtIMfSwcHEJ/CElMywa/pLFlWxrMEvGzq1k6Y9iKPqvF5ckU5a/lQY37cE45lDN
	 x+weQ7c/fmmnOSQ1hGrAOpNxtEboNMM3KSXSFkE38VmvFNPeYgzGvkv0XtgGiHuOdj
	 UJrDuL7egtuUMrHU86/MbeJkgVK5gRxllWs6EWR2D+RJG0fGM/TFRxNzGqR1mJevPY
	 PCA7DePzYvJJYYUXUWFnvK8TgyYwjl3urj5zB2DtfWZNtRb12meSgNwiTb/lFnbXcv
	 uRGE8KhxlD74g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EddkpF5_GGhA; Fri, 25 Aug 2023 15:38:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 918DF82C61;
	Fri, 25 Aug 2023 15:38:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 918DF82C61
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4EC041BF271
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Aug 2023 15:38:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1D8E361473
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Aug 2023 15:38:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1D8E361473
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6VbzhH1U5vPQ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Aug 2023 15:38:51 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4FCA661001
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Aug 2023 15:38:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4FCA661001
X-IronPort-AV: E=McAfee;i="6600,9927,10813"; a="378518540"
X-IronPort-AV: E=Sophos;i="6.02,201,1688454000"; d="scan'208";a="378518540"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2023 08:38:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10813"; a="737520166"
X-IronPort-AV: E=Sophos;i="6.02,201,1688454000"; d="scan'208";a="737520166"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga002.jf.intel.com with ESMTP; 25 Aug 2023 08:38:39 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 25 Aug 2023 08:38:38 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 25 Aug 2023 08:38:38 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 25 Aug 2023 08:38:38 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 25 Aug 2023 08:38:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OKDJH8lIjuNw/ahk6iowjtRCFTXNZpfkJLUeX1ExWBLqd2658tjFqdJ0lKY6WTRUsrDmO06KnqGUNe4rIvSqr3mmnKpgvdlXVayvMvBMOszbac2cqGzQZqkpgtX13EnfqNVeaT3P0/RGdWt8K8Vd8ikmTvac+oI4MHBeLC68vmBPOv4z+k//XFCG3rkLuxMyvBH1rZwpt4TFS7VPEVfbPOq8R6qZBfZs+HRgMU0yCMtSUNgrSLwhZOQyivOg+/v134INDFPjWgR/qTITeHDbqtVr0eJqPbJWXB+sOrsmSbMeKq0RyNC0ckSl6ccZEqWHgg2JUNMNMnTSqCBMlBV0VQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0Jcb5to0tqQC/XkQR2NCv5QnEoP7Aj6soh0jqgfKpKY=;
 b=Z1VCi/itAYSZoXD4aIkd6Xvzbct8J3ZBZjRsPuNTwVYty6shrdO/vDAH3MJZhVBDDoexfd4usnEgbByz5Gqj16Z9O8IvrdSaFso5oQmq0XP28RNZWUNyUDWhfeD1A5jJvJ/xrEwPCwm7h4bVlayNiFe55pDCSVTTM5wTimAZqyYXuFUUQ54AcnUuEybgUd0neONKw4T1draT/KbgFVL0lBmESkV2tVqkXB0IjB3H8BAwEsctfgllzdxvwd0qAuw364VczapUuME/Xal86TK/gxnVwp+qEkdPZdFubLCYW6qo+ND8VWl08HmKyWKdHd6TEXrur9tSQrhNBdTgyOOqJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by DS0PR11MB7624.namprd11.prod.outlook.com (2603:10b6:8:141::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.29; Fri, 25 Aug
 2023 15:38:35 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::44ff:6a5:9aa4:124a]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::44ff:6a5:9aa4:124a%7]) with mapi id 15.20.6678.031; Fri, 25 Aug 2023
 15:38:35 +0000
Message-ID: <db89ad83-a4e8-d622-fd65-f2046a10f8e8@intel.com>
Date: Fri, 25 Aug 2023 17:36:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Ahmed Zaki <ahmed.zaki@intel.com>
References: <20230824122337.3300895-1-ahmed.zaki@intel.com>
 <bb334cef-1cd5-0aaf-6fe3-fd632b34d756@intel.com>
 <536c1d2d-d371-97ed-d550-26800c142274@intel.com>
 <30ae8892-3332-7fb7-273d-81f40a068175@intel.com>
 <f60f2e8a-d77d-9048-405d-9c356960eb01@intel.com>
 <a9bd1a28-34d3-1342-8811-555e9d3904d5@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <a9bd1a28-34d3-1342-8811-555e9d3904d5@intel.com>
X-ClientProxiedBy: FRYP281CA0002.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10::12)
 To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|DS0PR11MB7624:EE_
X-MS-Office365-Filtering-Correlation-Id: 4a1f5432-6027-479d-6077-08dba5815817
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +jOMbRY7gjTWkNv3Vg2/nywb3/QwPWMkkgR9F7YqQKDfjDeXGw4I9fOEGVPmwXG8mwLnbXHwLdzCGHgM4ECLCu0hXdjF5n6INSP4lB24FMPykhPEVlCGV4lRw8PpJdLmeD2pGiPwb2qgSmsP8KzzGu8NpjdEvwOcdYrs02JzC//GKHCo2+om6rBdpRxxfU4p/TL8QnxTwHz9NK+Vh+Bm7DqwKeLWnA9gIrIvKQKkVVWZeumHo8Vpx61KwlL2Rf8WPUDpc0OGEVq/K94EP3aODGD97azrks79CQPJh+7KSSSO/jomV+sg1HpyV/BGJWwBp6gHRjGUgMyu76UeNWPBNaHHdkQmOav/pXbPMZp07P4liPqtakJTvzES8gI3Gz4haoKc5r6kv1ujb90VAQXUMdhIRVxo7fsFLGnUZZi8x6gNng2w8NSX+suQPbk38jEAIObITWTkBVAi0LXWEdQAFJeQ/7fPyoT7OJwXUAp2Dr4Y25UGzI+YIAlfRM4Vo8RnifOjV0wqHLjQLuTtDj43vyeU0N9tiDWzV67Y3ditgLpggcE5LyliRJ4IKmTN+96P5L6KEj8eiVvaqKW/hE2JZ0WXqBnJzfkRVnLBhNYH2f8NmcdXGeYKkCJffDJcq7lFukkTzgdh7K5JQIkb40aWyA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(396003)(346002)(366004)(39860400002)(376002)(1800799009)(451199024)(186009)(83380400001)(6512007)(478600001)(26005)(2616005)(5660300002)(31686004)(2906002)(8676002)(8936002)(6862004)(4326008)(66899024)(82960400001)(38100700002)(6636002)(66556008)(66946007)(66476007)(37006003)(86362001)(41300700001)(31696002)(53546011)(6486002)(36756003)(6666004)(316002)(6506007)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c282OHJLaERxRHJhTUlxVFg3Tk82ZlkxbE0vRmNUZjVUWWs5dXJmZDV4NDBX?=
 =?utf-8?B?Ti90Um1IWFM2UlFydjdZemlEQjJoWHB3S2JucUpZT0w0Mlhqc0N4S1VFV2VR?=
 =?utf-8?B?c2R2am81cUsxV0JqRTI0dlJOZFpGd2N0YU1ZRGo3MDdvSGlWQWYxVUZjcmk4?=
 =?utf-8?B?NHpFUnBYTE9pN3hCRjVlVmFHajAzdWl2QkJPMk0yenRHRi82UmJIaTdrZnFG?=
 =?utf-8?B?ampmUXJmc3VMMjEvSlJDU1IyNTF4UTRvU3Zyd2tIZnZkUmYwMi9LMzB0NFVJ?=
 =?utf-8?B?aHBCU2pZdWpjRjBOb2NyR0g3cU5iT1Nsa0dZNHMycy9rYWt4UXpHSCtvR0w4?=
 =?utf-8?B?T0tDNXFvMVNBdE0vejVPRkx4QTBmajJMTlZrZnhvc2NPdTBORGxVSE55TUhp?=
 =?utf-8?B?SUh3NlcwbkliZDYwRUUwU3JnV2dsL1NjZVk5MmUrUnpITlhSZDhDZ1RFbEZB?=
 =?utf-8?B?dG14dzFKd1N4WjVQNzFFOElRem5LdHNpSUlLeGlOeGlPWHZnU0tFSlJnNzVn?=
 =?utf-8?B?OFJlajlKcjhCWXlVSDFnVjhuYjgzQWx1YTZiYUpDQnRHOEprbHBlTCtYTk12?=
 =?utf-8?B?TFMrdW05T1JUTzMzUVg3SXRlMEVWallITW9Ga0M5ZXd4YUQrWC9QS1o5YjFB?=
 =?utf-8?B?MWtZQkl6aThSMmN3Z1g5M21xeUd1QmdKWGRwbWppaFdSQm1kRS9ublZUMWdh?=
 =?utf-8?B?L1Q1SEZYQ0JWbWZzRkkyZHJYWVYxS2hpSk16QUoxY2ZqYlhGbTU3Y2VtbGc1?=
 =?utf-8?B?K2VMTE83QWNSbTgyQXl5N3kwRWsvdmZGSElZMWRSS2FrUjdpMnl2b0R3bXJX?=
 =?utf-8?B?VFZ0dElIQ0t2OFZSUzVJa3RITGszZ0wyL2VIMlpMNlBYREJQYy92RVM5eUpr?=
 =?utf-8?B?RjR6a2dZUHgzVGZ1Y2RyRFgxVjFxYzU5YXdiWFZWdzJXQ2xyQ2lEazBsdnhG?=
 =?utf-8?B?VTFSdFdGcHJpZjFvbnp1ajVLd1lmbGlwRlRKYnpMM3laSmVoYXo3QnlMZVZ5?=
 =?utf-8?B?SDFUZHNZU0FYWjZRamY5ODNQNUE3c0REVXZKZjBkelBlN2VUOENsVEx2bVkv?=
 =?utf-8?B?YXhHT2hCWGMzU1l5THRyUlRMdWI0Uk1WdUVhWkFuVHpMRmFCYjc2Vm8rNG1j?=
 =?utf-8?B?YnJjazhkNmxQalYzQ1NGRTdRVHdtb0F1ai9WSkh5Z1RzU3JZY1ZaSEdwTkdB?=
 =?utf-8?B?UmpKZzRJYWpNdVdSLzB2TStGUXpiWmFBYWZlYzM3Z1M4NzgxbGRmTjA5NHRI?=
 =?utf-8?B?a0RUSTBKUHJZd3JUYVFWYkJiK3h2Szh0YXJJRm9QTVZVdm41cVB2WEoyMXNh?=
 =?utf-8?B?aDFxVzA3RCtmYWsxNHI0ZStjSndtZjRXU2pDUE1RWldqbGpqYzM3Z3N3WGs2?=
 =?utf-8?B?MGp2dDFhZ3lsSHJBWEVHYWMrQVRiVklwTWR0RHBDQm0yTlRGeW82Yms4YjhV?=
 =?utf-8?B?WmtEL0Z3VTRJcW81K1RKTEhycklrR3ovcU0wWXlCVlI1RWlrOHFEd211OGpF?=
 =?utf-8?B?LzdjcUphNktyN1NrMTFvU3JvU1BwOXJhK00xU3FzNkc0UTJTL1BNNG5DTUh6?=
 =?utf-8?B?OTV1VVhLaTZ1WVVSdGtuTnVjUnZNVEdjdmlNVHFhU3pSOGZpOUdFK0dnTUtE?=
 =?utf-8?B?WmpIYjNVODQyRHp0b1J2U3pPOGlmeEJEOUlPV3ByNGpOVFhDb0xqUzJ2TGhQ?=
 =?utf-8?B?T3NBTEV1b0Z5a2orWnFWS01ZRUZrcVgrVHJVVVdPZmJqdVBZOTFLR2pxVWFP?=
 =?utf-8?B?WmFiVkU4MUtiQys3NEVOVnRFNXpkZSs5Y0Y2bFVtbVpWcVpoRWUzaGJWTVNl?=
 =?utf-8?B?dGlOeWxUZDRLZjJFSGJZZmpVcjdMclY3RWJHMHpUVW95d1o3Zmk0djV1VTFy?=
 =?utf-8?B?bmpDekhGdmkwTVF1SmEycHFyNW1tSmQyamlLVXlSa0c2TWJkMzIzMVd4LzRG?=
 =?utf-8?B?cXZOWlYvOGJTK2hoZEVRbWhiaTdoUGNFMExkT1p1VHJZMW1BUEdqRVpjS01t?=
 =?utf-8?B?dWp0Zmk1aUFXNzUrSEk4cEwvK09CS0tQYmcvNUxpWmVsRXAwbHdnVC94YWQz?=
 =?utf-8?B?ZXZJZmJiaUUrRWVhclJ5RUN2a0hNTUxYVDF3UW1oNVlLN2pZZ05NVm91b0No?=
 =?utf-8?B?NFlhYzRBWWJhRzZieUhOaUUzZnFJWkJnWDZIVWlOZDZjSWsxMEs5M204aDR0?=
 =?utf-8?Q?5H9cm6pVB1TZtCfHiT0FMio=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4a1f5432-6027-479d-6077-08dba5815817
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Aug 2023 15:38:35.2901 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2TICi+AbAr4KcXjiDD4xZmodNIhgkhBEraaUmKUXbq8CgX/HGwrhcjUliI7m4vAIbN/sShiZ+Qoywhf/LXIHS7pPOzuYuR4hoIxucox7ATI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7624
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692977931; x=1724513931;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dMON6xwdyeMLQm67BvIRWq0/3TRpxW07jBDrANc72IQ=;
 b=SWTk2EoGikzq7+4x62h8aLbpK40K3yQm9WlIHcdDUxbAoELJABOHaKpo
 hHmd8vdE3WbI3gSJt/L6XVGm2AJE2BQCdN6d8faIQW6fsCu49Z8Z2CYjr
 460l79/tsMCYu8usaoxe9091Pz9jVdyKJGcDTPdiYkGgAfIobTD2uWE8/
 JBdosRKLy/L45GbfBvrB7suzwh/O/xrZSkzGEzbdz5iFRYIVXWNtv5bT3
 AwbyW2ZYVpLvwPSZJ9jIYsDWQqDCebJUqkvS9ks0Ltm/SYmY2rCKsaGZ5
 9bGmVZzJfdZItPB8mC6o1Cgl1OMCDuUHxmROQHw51CxzE4Wy0aAKAU4WI
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SWTk2EoG
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] iavf: remove "inline"
 functions from iavf_txrx.c
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJvbTogQWhtZWQgWmFraSA8YWhtZWQuemFraUBpbnRlbC5jb20+CkRhdGU6IEZyaSwgMjUgQXVn
IDIwMjMgMDk6MzE6MzggLTA2MDAKCj4gCj4gT24gMjAyMy0wOC0yNSAwNTozNiwgQWxleGFuZGVy
IExvYmFraW4gd3JvdGU6Cj4+IEZyb206IEFobWVkIFpha2kgPGFobWVkLnpha2lAaW50ZWwuY29t
Pgo+PiBEYXRlOiBUaHUsIDI0IEF1ZyAyMDIzIDE0OjA4OjA1IC0wNjAwCj4+Cj4+PiBPbiAyMDIz
LTA4LTI0IDA5OjQ2LCBBaG1lZCBaYWtpIHdyb3RlOgo+Pj4+IE9uIDIwMjMtMDgtMjQgMDg6NDks
IEFsZXhhbmRlciBMb2Jha2luIHdyb3RlOgo+Pj4+PiBGcm9tOiBBaG1lZCBaYWtpIDxhaG1lZC56
YWtpQGludGVsLmNvbT4KPj4+Pj4gRGF0ZTogVGh1LCAyNCBBdWcgMjAyMyAwNjoyMzozNyAtMDYw
MAo+Pj4+Pgo+Pj4+Pj4gRnJvbTogSmFjb2IgS2VsbGVyIDxqYWNvYi5lLmtlbGxlckBpbnRlbC5j
b20+Cj4+Pj4+Pgo+Pj4+Pj4gVGhlIGlBVkYgdHhyeCBob3RwYXRoIGNvZGUgaGFzIHNldmVyYWwg
ZnVuY3Rpb25zIHRoYXQgYXJlIG1hcmtlZCBhcwo+Pj4+Pj4gInN0YXRpYyBpbmxpbmUiIGluIHRo
ZSBpYXZmX3R4cnguYyBmaWxlLiBUaGlzIHVzZSBvZiBpbmxpbmUgaXMKPj4+Pj4+IGZyb3duZWQK
Pj4+Pj4+IHVwb24gaW4gdGhlIG5ldGRldiBjb21tdW5pdHkgYW5kIGV4cGxpY2l0bHkgbWFya2Vk
IGFzIHNvbWV0aGluZyB0bwo+Pj4+Pj4gYXZvaWQKPj4+Pj4+IGluIHRoZSBMaW51eCBjb2Rpbmct
c3R5bGUgZG9jdW1lbnQgKHNlY3Rpb24gMTUpLgo+Pj4+Pj4KPj4+Pj4+IEV2ZW4gdGhvdWdoIHRo
ZXNlIGZ1bmN0aW9ucyBhcmUgb25seSB1c2VkIG9uY2UsIGl0IGlzIGV4cGVjdGVkCj4+Pj4+PiB0
aGF0IEdDQwo+Pj4+Pj4gaXMgc21hcnQgZW5vdWdoIHRvIGRlY2lkZSB3aGVuIHRvIHBlcmZvcm0g
ZnVuY3Rpb24gaW5saW5pbmcgd2hlcmUKPj4+Pj4+IGFwcHJvcHJpYXRlIHdpdGhvdXQgdGhlICJo
aW50Ii4KPj4+Pj4gVGhlIGNvbXBpbGVycyBzb21ldGltZXMgZG8gdW5leHBlY3RlZCB0aGluZ3Mu
IEkgd291bGRuJ3QgYmxpbmRseSBob3BlLgo+Pj4+PiBUaGlzIG1lYW5zLCBJJ2QgbGlrZSB0byBo
YXZlIHNvbWUgb2JqZGlmZiBvciBhdCBsZWFzdCBibG9hdC1vLW1ldGVyCj4+Pj4+IG91dHB1dCBo
ZXJlIHRvIHByb3ZlIHRoaXMgY29tbWl0IGRvZXNuJ3QgaHVydC4KPj4+Pj4gSWYgdGhlcmUgYXJl
IGNoYW5nZXMgaW4gdGhlIG9iamVjdCBjb2RlIC0tIHRoZW4gc29tZSBwZXJmIHRlc3RzIGFzCj4+
Pj4+IHdlbGwuCj4+Pj4gT0ssIEkgd2lsbCBhZGQgYSBibG9hdC1vLW1ldGVyIGluIHYyCj4+PiBi
bG9hdC1vLW1ldGVyIGlzIHNob3dpbmcgemVybyBkaWZmOgo+Pj4KPj4+IGFkZC9yZW1vdmU6IDAv
MCBncm93L3NocmluazogMC8wIHVwL2Rvd246IDAvMCAoMCkKPj4+IEZ1bmN0aW9uwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIG9sZMKgwqDCoMKgIG5ld8KgwqAgZGVsdGEKPj4+IFRvdGFsOiBCZWZvcmU9MTIxNjYs
IEFmdGVyPTEyMTY2LCBjaGcgKzAuMDAlCj4+IEFjay4gQWRkIGl0IHRvIHRoZSBjb21taXQgbWVz
c2FnZSBwbGVhc2UuIEJ1dCBiZWZvcmUgdGhhdCwgcGxlYXNlIGNoZWNrCj4+IHRoZSBzYW1lIHdp
dGggQ2xhbmcuIEFuZCBkb24ndCBmb3JnZXQgdGhhdCB3ZSBoYXZlCj4+IENDX09QVElNSVpFX0ZP
Ul9QRVJGT1JNQU5DRSBhbmQgQ0NfT1BUSU1JWkVfRk9SX1NJWkUgYW5kIGlkZWFsbHkgSSdkCj4+
IGxpa2UgeW91IHRvIHRlc3QgYm90aCBHQ0MgYW5kIENsYW5nIG9uIGJvdGggb2YgdGhlbSwgc2lu
Y2UgdGhleSBwYXNzCj4+IGRpZmZlcmVudCBgLU94YCBmbGFncyBhbmQgcmVzdWx0cyBtYXkgc29t
ZXRpbWVzIHZhcnkgYSBsb3QgKGAtT3NgCj4+IGlubGluZXMgc3R1ZmYgbGVzcyBhZ2dyZXNzaXZl
bHkpLgo+IAo+IEkgYWxyZWFkeSBhZGRlZCBhIGNvbW1lbnQgaW4gdjIgYWJvdXQgdGhlIGJsb2F0
LW8tbWV0ZXIgcmVzdWx0LiBJIGhhZCBteQo+IHN5c3RlbSBvbiAiLU8yIiAoYWJvdmUgcmVzdWx0
cyksIGNoYW5nZWQgdGhhdCB0byAiT3MiLCByZWJ1aWx0IG1vZHVsZXMKPiBhbmQgSSBnb3Qgc2Ft
ZSBaZXJvIGRpZmYgcmVzdWx0IChleHBlY3RlZCBzaW5jZSBub3QgbXVjaCBpbmxpbmluZykuCgpB
Y2ssIHRoYW5rcy4KCj4gCj4gVGhhbmtzLAo+IAo+IEFobWVkCj4gCgpPbGVrCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWls
aW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wu
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
