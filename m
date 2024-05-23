Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 64C2B8CDC68
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 May 2024 23:53:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 14AE540211;
	Thu, 23 May 2024 21:53:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SAhZ3w5sysnE; Thu, 23 May 2024 21:53:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6A8CF4021C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716501218;
	bh=W+8oe7c1QAYvV4L5UkjS80pxRWvnG4Oc25IYu7GwCdU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bvb5emtt52sESuA9W6XE+44v7Kv/bt+vqvwtmzBG2GnIEX+23FYV3X/JHQxrHcQIq
	 VzRbjk0MUOCjvi0cLA8Zt74XVHQGYhy47qEDJ79hl4m9fYPgVAlb0Q+ekBnyFgsYPX
	 TeqR145oqLTwjZ5a43ZwrjQsAUreao5gQZ/o7NrscvZlFGDYqdjlBUIkt0nudNkSeG
	 XOq7JgL9Eu+D3Z4fvKsGJM7k5RoIZ5iJum6psiMs0eHg5xIZvQ4wC8ub3JfYr+1BkU
	 U2siytGaOPYIr8/QxwoFImhPIg4fSuzz9AP5JCfJuRlo3KooUAPqB6Q+oSP9TWEHoX
	 LBj4q6RbZNdxA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6A8CF4021C;
	Thu, 23 May 2024 21:53:38 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BB6D91CEA99
 for <intel-wired-lan@osuosl.org>; Thu, 23 May 2024 21:53:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A492682948
 for <intel-wired-lan@osuosl.org>; Thu, 23 May 2024 21:53:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hTUHoNuUjf0l for <intel-wired-lan@osuosl.org>;
 Thu, 23 May 2024 21:53:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org ACCD78264A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ACCD78264A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id ACCD78264A
 for <intel-wired-lan@osuosl.org>; Thu, 23 May 2024 21:53:35 +0000 (UTC)
X-CSE-ConnectionGUID: 5lsJTMT6Q0WGjfKfO5Jkfg==
X-CSE-MsgGUID: 7tfMZFp+SZC7HPBg8x6ahw==
X-IronPort-AV: E=McAfee;i="6600,9927,11081"; a="35371176"
X-IronPort-AV: E=Sophos;i="6.08,183,1712646000"; d="scan'208";a="35371176"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 14:53:35 -0700
X-CSE-ConnectionGUID: Gogm3biiRZ6uXzqA/O4Hvw==
X-CSE-MsgGUID: rlkmRf9JSbSlXUh3uOI8pg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,183,1712646000"; d="scan'208";a="33890878"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 May 2024 14:53:35 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 23 May 2024 14:53:34 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 23 May 2024 14:53:34 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 23 May 2024 14:53:34 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 23 May 2024 14:53:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CGnCMmjzbbZLHhzLr/V59a3DsnSHq2k6kXRijLB2PcfoR/EW5w6Qo4MZWDFkCjUa/SCJ1+Rw6MrYtR4JNIp3qOiwpEIvuvGHUGE9ZxUq+RthFbD/BUZrDvpsb42fa+rvstYP4+HWJR4s54uOUSMnIIrrI4nup9EwGtXcCtkClD7Qe68qhPw1tbL7l31xNm5Zg2IgLVBBB9v8lNdYo4Gg2EsMis9Gu+4/bMDLpeepJSFVSJ5ZpaFwy9WR7J/LcTJ80rxoVN4k0N49Fqo2WXzzXQi2J2ShagjZNXVzTLnSm+qzaNfdKpV0xFCGvR0oZYZ1OeXO9qK+8jLzS5U+onOagA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=W+8oe7c1QAYvV4L5UkjS80pxRWvnG4Oc25IYu7GwCdU=;
 b=JKzmbw2dRn5gX499vHT6Up01TqEvo00wv0n7qz1xzOrAsjGix1XcnVxbFIwu6twlcwLMndd2ASkVn5KnfOtqAshhnwpxGjwOXKGw3xwRX7laxf3ntOjhV1jjTcx/hRONOc4E9KmspHGUKrIxkgWRpZiP+PmLfAQkJKplLebOsJMRw6JtdRhEERxu6DOCvRaaHKl5bA3oe65E+EAKGq32JxIW3wCmjRe1O6KZeXUPuN4yCDYQQMmXmNHsA0bXO2txOda5zM95Z2nkg9uYRo/DhXy7POTvjU6xHiBk9vSkUAUUSPY5nWNyYKNKqxlE1Jpf/fGr6iWZPXgLPf1+dqyE/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SN7PR11MB7138.namprd11.prod.outlook.com (2603:10b6:806:2a1::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.19; Thu, 23 May
 2024 21:53:31 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%5]) with mapi id 15.20.7611.016; Thu, 23 May 2024
 21:53:30 +0000
Message-ID: <2a2da8a1-0e55-4bd9-9658-777c81f6651b@intel.com>
Date: Thu, 23 May 2024 14:53:29 -0700
User-Agent: Mozilla Thunderbird
To: <intel-wired-lan@osuosl.org>
References: <20240523210424.2883960-1-david.m.ertman@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20240523210424.2883960-1-david.m.ertman@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR02CA0026.namprd02.prod.outlook.com
 (2603:10b6:303:16d::25) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SN7PR11MB7138:EE_
X-MS-Office365-Filtering-Correlation-Id: a946ce58-e5ca-4326-539c-08dc7b72c8e0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|1800799015|366007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?L0g3YWNsbytSOEpjVlBFMGljMVZKNHdycHBFamI3K3MxamNvUW5lam9mMGlr?=
 =?utf-8?B?TkZEVzNLUnlWVk51YmpNeGlmM0x4R2Q5SnpsZzFkTDk4SjBiSk53dWUvWkQ2?=
 =?utf-8?B?Slp3NW5CN2ZjM2QzVnVnR2N4QVRrMDJVK0hjUGxEOXFIMGtyc0lReUNPSVVs?=
 =?utf-8?B?Zm9mSzlBMVdTTlRJcDVCUVJrYklRSFNVRzkrakoyaFh6WTRGN1M1MnlRUm02?=
 =?utf-8?B?OWlrWHZuemFGOUR1b05xczNBcHBXYWRtMlVEQU5JcmtrS2Nwa3Jua1RmRzdI?=
 =?utf-8?B?TURUR1BCaTFRYWlyaE1BNE1mdDFkdCtaM2pRenA3MEcvcHZFRldITEFvbFJ2?=
 =?utf-8?B?VnRLQnFWbU5KckZyTENjV3RwSWFVaVRxT2NwYy85WDYxS3NhREhDQUxSM3ll?=
 =?utf-8?B?U0s1U0ZSeEhGOFNES1Fuc21EUm1kekxnTStvbDZwb1hSQ1JEMVFiNGZIbGRI?=
 =?utf-8?B?ZnFKK3BwRHVXREFGSERGeDhNN0xTVGh5bS9wUWM3UjVvRjFtVHZvVU1TdDlj?=
 =?utf-8?B?cHgvcXJEZkdqd3laa0wxWjU1a0tTMGpaUjJZUVVCMjZkVGVrc21Nd2UyeDNR?=
 =?utf-8?B?R0lwZ0R5TEE0d0tPYXhXVFZRbE93UE9uMkw0MTB0Q3VHa0pGRjVGTFZQUDN6?=
 =?utf-8?B?NE1xWmhpeUZxNFIyRFlQMDltQkU3bmp1cnRkYk5Ic2hQR1IyNWg5Qk04Yi90?=
 =?utf-8?B?Rjc1bm8zN0FTdXB1VVc2WVFZLzlTK1lUK2oyNHB3SUkxcmlBM0x1VXN4dEpH?=
 =?utf-8?B?MUNNZGtEajh0UXc4aW1ka25LL0JSMzVNenRwb0EwUUFtcU5OOHVHNDNJUVho?=
 =?utf-8?B?LzlMUFlBZjREdHZFTm0ySnRXVWkyQjFjOEJscWNDR3hFakVwZ3ZVM1V1bzdj?=
 =?utf-8?B?c1FrNkIrS0Z4ODF4Zmx2RW14VDFMeVJ3eEZ2SDB0UTBRY1pFTENOYUQxNU5H?=
 =?utf-8?B?djdxYy9GWmtIMndDOGtPekZCbnY4S01uS1ZJS1VCT00veDVxZW0ybGpQTnRD?=
 =?utf-8?B?TjBWbTYyaXdqOGlPRmxpRFRlTHRaNi9BV3lEc2JvOUxGTEQvOWJqMGxWa2pX?=
 =?utf-8?B?VTRueHo1eWVRVGtabzlKVVJCYmJiMHZuZktSTE1JMkRyRm1DcXB5MHI2aGJs?=
 =?utf-8?B?WS9mbXgrbTlGVUJDYTF2L2FvckNXeFFUWkNCb09oRWhSTWI5TjM5ME56bDcy?=
 =?utf-8?B?T3VoL252OHVwcnZxVUNsZ3FpS29zeDgvL1hER0FuZWlKOXp5NFZ3TEdFYUFN?=
 =?utf-8?B?aGJWK1Z0MWVSdzhmeFR2M1BGbGFjL1ovaEZIQjMzbFQyT29IREcwNUdYc2ds?=
 =?utf-8?B?TlRtZkMrWC9nVGdlTTlwSTA5L2hGRnFLNitEQldPWGZEdFlJZ1Fyc25nYm1F?=
 =?utf-8?B?c0plWjhjMkpCWEEyaEtCa1R4OGQ0djA1RVFsd0syQ0QrbDBPZkdoT1ZQUUVP?=
 =?utf-8?B?ZlJFZS8xekJrVXN0RW5xSXBXZ2MyWk52anRFZW9MMVV2dE5jUE5WZGNoWlhx?=
 =?utf-8?B?emd6UVF1cmFINkNmd3E3Nzc2eW5Oci9tVnFUQVFGK2NLMXI5NjA2ZHVGYVE5?=
 =?utf-8?B?SWk3dFFJb3VtR04yUXZ0d2hMUi9mN0JZNENJNU1QY05tK3JrOVhYV1ZqRXRP?=
 =?utf-8?B?eFBIYjlwdlF5NDA0SGhGRVFHVXd1ZXFnREwxdWhXL2prQTBxNnZjYmNyaENW?=
 =?utf-8?B?TkwyYmtOamlNQmEwYnJ6bkZ4eFk0S25YZHpOMi81Q0RhRFg5bFRIM1VBPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NEdBdE1XWEJ5LytuaktIck52STRWaUQ3MkhkVi9XeTZtT2N0OTU4S05VMUtt?=
 =?utf-8?B?T1J6MkJhWEFnVWk2OWZlZG0yREtleGxGYTJ5Zm5kYnppMWJ6ajZsM0ZmNEhw?=
 =?utf-8?B?V24vNnFzcFBuMUpUeXRuNkZ2dEs3cXE4YUdKSGFMT2ttNkluY1czck9Md2ZO?=
 =?utf-8?B?K0dJOWkrem92MVd1MmhQREZpTVFtSmJmZjkxVXAyTmpOZHQ1blU4czM0Vncy?=
 =?utf-8?B?Yk15cXNSR2hqNzNVQjVmSmozK2dGRnI2MUxiWmtQUkJkbTh0M0QrcUh2R1o3?=
 =?utf-8?B?NzlEYmNzRWpkNlRURE1ES3hUNTdORkRzUmNHN0YzSWZ4T0QwTGpld3JjYys5?=
 =?utf-8?B?L0FLTFdZVXhBVGhkU05vaHk1dlo3Z1hZNDNFNmkvMFFWM1oydThLOVdDWHI0?=
 =?utf-8?B?bkxpVXhNT3dmR3BUMHlrcHhESHppd0lQU3hVdjBEa1p6S1J2Lys2ZG9YQU0v?=
 =?utf-8?B?MFNIVjVJUkZOeW12UjRBYjY1MnRET0NYSFZjUFRWQ2lydm9rY1Z0L2laTEFB?=
 =?utf-8?B?N0hKL05XeWtVbE1BU2w1VkF0TEFJLzMzdlBpT1pFRkNzK2lXWmt3NlVyR2xy?=
 =?utf-8?B?UmNmNS9ENW1HVnNjSGh6NmZXUVp3dlRDOTJsREtQS2JqTkN1amJiK0pGamsz?=
 =?utf-8?B?aVNTQitGVXpXdGFYQlgzYkh2N2VyOHR6WmxEaTl3Y04wdGY1SzMwR2FFR3dm?=
 =?utf-8?B?czY3STRXL0dyQzVPRFJHU0xacmNXb0dpakJ1Y0JUQTlRdkRYODZ3dFBxczZY?=
 =?utf-8?B?bzVpbG1MTXV5TjMzQ2lqQ1RkK3M0QUZlWWhPbFM0Y28vMkJPTGprZTNXa0ta?=
 =?utf-8?B?cGFMaUoyRTNsaURFam1IZkZub2ZMZ0JNM3g1M0YyUDdGM0Q1RWxCcytjamdP?=
 =?utf-8?B?Y1Qzb3hnNEpXOFIvbVJab1ZWYlRGbS93L0dBSUFBUXJDc3lEN2dhMmY0NW5R?=
 =?utf-8?B?QUFobVgycVhmWE9lZWhlSWU1VDhjdTFMZm1RTDNkdERYdGtDdjRmOVBTWGVr?=
 =?utf-8?B?V0VOS2pXWTFmbVMzZHJmK0VueG1QeXZGRy9FbittcStxU2Mzd3k1VW5zby9i?=
 =?utf-8?B?WVlPQmlEcElZYU11Si9TZnU3YXdSVmdOVzk1anhHME1oak5waGYvTSt2djQ4?=
 =?utf-8?B?NzlsbGpPbUduQ0c2d1lSc2pvMXVzcEhwRks5V3lZOG5EdmQ4d1diWmJ1enc4?=
 =?utf-8?B?MFgxV00zT0NzaW5pYlVmakJyWmtoTHNaa3VlM2J6c1NCNndyQ1NwUS9EcXJY?=
 =?utf-8?B?Z29jZHBGamx2ek4wd1VJTWFlREVQNVkwTVVSU3VXMVZBdzZqVVQ1aFUvbDZh?=
 =?utf-8?B?cGtieUV4U01KVkFDc1ZTMUQ2R0RyR092cmphSmVHWWJsbVRhYWR3SHhlSWhB?=
 =?utf-8?B?QVkreTc4NjYySTI2LzdKQ1JsTFFnb0xXS1gyMXFTRVR2ekRtZWRuZXRaNWdT?=
 =?utf-8?B?c2dBK2o1akJBQ0ZCaXNoZUEwZkJBM2JJOHRTYU1jNU5zeW4yenFJWklMamVu?=
 =?utf-8?B?YjBzQVNYVHRZLy81Ry85ck1YMkwzbGtFemxaL3F6dnc5NDF0Rjg1SUVRRGxN?=
 =?utf-8?B?VWV5M05sUitOTzF4eW56VjFtbldPOVc4NWpoVU9KS1VUbjFqY0ZuK05QcXlu?=
 =?utf-8?B?QUd0dnBkRFM2ci9DeHZCYy9RdVBRYklOTFhVS2dQcFNJT2RjazB0cXRxcFFx?=
 =?utf-8?B?cWFGZVdRMnV4aUlpbEVGUXhCZnppVkdtKzEzdHVVcFNFQkdNdnhTL0FKMWFi?=
 =?utf-8?B?R1BSU0NCSXdhSnVtNWFPa2JiOGRGdTB2RlQva3pwcDIvWkhVOXlRUFNEOEdk?=
 =?utf-8?B?S21EeHdLK04yNjFoL0pUTVZPYU5UbHdFL2FSMGhTMGcrTW5NY1JSdHY0dS8r?=
 =?utf-8?B?MVRQVlduNVQ5RHV0ZldtUEphbEx1SXZ5NmtWYWllY0h2c0dwd0orYmY5Zmd5?=
 =?utf-8?B?Z0tDbitpZ2gzdGNkVW51dk1zT0ZlWS9mQWVtQlFNMDBVM1JVOGp3UGpvaHE0?=
 =?utf-8?B?YzBjOW9wRWVkSEI1ZFFjYXhTU1JnSmxlUk1vVzVqVEUvcDdBc2pLNHZ0bUR3?=
 =?utf-8?B?aFl2YTF3Z0QzT1dLWmZMaS91bDRBYmJ5T0FveFdpQVRSSE56K3J1MDBBUDd2?=
 =?utf-8?B?d2dPWmhSOWFVZnMzUkc3Q2krdGhsKzUxNkRqbDhPL3QyQjdqbnJrRUYwK2xK?=
 =?utf-8?B?Nnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a946ce58-e5ca-4326-539c-08dc7b72c8e0
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 May 2024 21:53:30.7017 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3OroH4GNCgVoR2C4n0eDA7N844mmBOR2yTP9qqCOysyQe8IkLhOhEZj6c413OfgpdLE5VgJC9WwndvigGRBPZ5bgF6IMOGaudVRvmbh+CQM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7138
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716501216; x=1748037216;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=wlY/O410LfUjUJV1hZmy5ybwUZVoMzuNpbP3vKotw80=;
 b=e6QGu7NwjEdmfkeUU+NHY4P0Qe0DyJ93DjF+KXQ2fl1CP2TKguYSjsso
 TNManuVzq8MYoISFvSx/NOCfvqzmvQL15pUsXr9TO09VrSqqujV5GEXyD
 G+7Pab5e/9sg0mwbW9QzlkqPt6PX6wOj3RtYsJuYZ9qmwDUZd4Gi23lRy
 eLZGkQbzxU+FfMBENgZM3ZpqV9LA60xKeSzpYdHAp0BmiJOEqHEv0QfUt
 OMRT+baMb27PTD6r2VIK08enfOk3QG1YrqFSmCMN/7lm+wzFMwCQ/3ZkC
 jJ9wORZJLL88tT9c1EaNNDDkHc+E+kN5z+699e7AXyd53Z+9pOyyeEQ1V
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=e6QGu7Nw
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: check for
 unregistering correct number of devlink params
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 5/23/2024 2:04 PM, Dave Ertman wrote:
> On module load, the ice driver checks for the lack of a specific PF
> capability to determine if it should reduce the number of devlink params
> to register.  One situation when this test returns true is when the
> driver loads in safe mode.  The same check is not present on the unload
> path when devlink params are unregistered.  This results in the driver
> triggering a WARN_ON in the kernel devlink code.
> 
> The current check and code path uses a reduction in the number of elements
> reported in the list of params.  This is fragile and not good for future
> maintaining.
> 
> Change the parameters to be held in two lists, one always registered and
> one dependent on the check.
> 
> Add a symmetrical check in the unload path so that the correct parameters
> are unregistered as well.
> 
> Fixes: 109eb2917284 ("ice: Add tx_scheduling_layers devlink param")
> CC: Lukasz Czapnik <lukasz.czapnik@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> 
> ---
> Changes in v2: break params into two list
> clean up variable usage
> ---

Thanks for cleaning this up!

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
