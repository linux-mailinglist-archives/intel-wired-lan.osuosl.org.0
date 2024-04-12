Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 912048A2DBA
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Apr 2024 13:45:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0736240432;
	Fri, 12 Apr 2024 11:45:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Y-HMsVZ1B7m5; Fri, 12 Apr 2024 11:45:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E184C4049F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712922300;
	bh=ROEUWvCx7L3MrZkl3Dc9kmuvP1Yyy2N0JAYh76eCLOU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2/PJV3RtHgc6NqVaKLRRBNQOR/ScHv8/T4jCesUZp807YSr32/S5Sa+iKHWX45EZd
	 3lFfeL4G/yjCdxvRZVo7+xpqMdeLkWxiECSFxnBVaEy3C/3AIc6G7LdBQddIBztdIp
	 BGalt/sKqAaa6ZuaOwZKoYPDPyLvYw3O2TatXVzJ7dEVwmfNL3eD0+jKo46V2yBTt9
	 kBr76d9Eb4n7jMEGNf10FuQ7heBb9g/JWJSbyjpR5C/IvRvDqd8wDiDLcJjKs3klYJ
	 L94a1hJ0N9kvnmBjbvPiQW6nX/6xVdWHcq3PRbnR5SJfePKIP0FAhKrtVa7h0arJN9
	 IoZKW+UDTIQog==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E184C4049F;
	Fri, 12 Apr 2024 11:44:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7D0071BF20B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Apr 2024 11:44:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7366D812E7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Apr 2024 11:44:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Rom2r933Xv4R for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Apr 2024 11:44:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3DACC81314
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3DACC81314
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3DACC81314
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Apr 2024 11:44:54 +0000 (UTC)
X-CSE-ConnectionGUID: Wg/mHfQTTPuhm368uw+HPw==
X-CSE-MsgGUID: OyBfLhtNTeOQPr4Js1rcfQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11041"; a="8291142"
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; 
   d="scan'208";a="8291142"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2024 04:44:54 -0700
X-CSE-ConnectionGUID: pp0eKf1qRGy/TrBq/4fzOA==
X-CSE-MsgGUID: hZFHzl2+RrqJiYuWoxrsQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; d="scan'208";a="25993740"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Apr 2024 04:44:54 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 12 Apr 2024 04:44:52 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 12 Apr 2024 04:44:52 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 12 Apr 2024 04:44:52 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 12 Apr 2024 04:44:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CwYtCePSLWytzGXeLZHkIdvMPK2JUC1xNdG1VfKy42QkWTGjmH/6OT7YxIqzgtGfizINkRvRUEkZ8w0btteahPVD2Vu7Uz3mX8grHBn9/QnePu3ePE1lJKnN7godBTk8uaygzrxa/V4HiDRGC96JRlanAWWr4Q3VgmFew9dxZYlR+XfLksJrEowAwwvFco6WD+YUO3HN9Q/HsK+ulycXZE00N1/Jhmot2kPL/LfQTI7P9CGp26p0S5QMsMso0vc6MIzvM949G9MX3Uov7tP2vN3ef3hdOxCzWo0XnT+ZVbsQ1qwG5yUmwu3ALqI7Z3a26Zmnp2XqIXZSUx4o4Eck+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ROEUWvCx7L3MrZkl3Dc9kmuvP1Yyy2N0JAYh76eCLOU=;
 b=J5N2UE05l086u++27uscPVJReFuRYcL6dkcCiV7b6g61LYa/3RUCYPMGZEKGqT3HZtxgy4mPvDU9XqXyNREgPnRWXzrocGijhSPU25cTI1FVjB22rKo//Nr8LTvD9TPwWW/tTuC3JbYp2eR4QZ01bi5fDuJiI7pj5/4r1ou4MguonbQzfc+njABeg2TFghVuR2PxrYlBFrM3DU0wogaHyhIUo3JiIXCxycry7L5fi8P9FyhWoNqLrPZBPP1GPDivWdHT1oIEJgZ9vnVJrOUdFCDRSx5RLKUDNI6Z29NFGIEwUlbpU2/CRpdyvZB31H44+Fyf9Ybw3n4YEQlDNUaPYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by CYYPR11MB8307.namprd11.prod.outlook.com (2603:10b6:930:ba::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.24; Fri, 12 Apr
 2024 11:44:50 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::5c8:d560:c544:d9cf]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::5c8:d560:c544:d9cf%5]) with mapi id 15.20.7430.045; Fri, 12 Apr 2024
 11:44:50 +0000
Message-ID: <da5f3048-e90b-4e34-be23-602c8a9edeb2@intel.com>
Date: Fri, 12 Apr 2024 13:44:45 +0200
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20240412063053.339795-1-michal.swiatkowski@linux.intel.com>
 <20240412063053.339795-6-michal.swiatkowski@linux.intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20240412063053.339795-6-michal.swiatkowski@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MI1P293CA0002.ITAP293.PROD.OUTLOOK.COM (2603:10a6:290:2::9)
 To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|CYYPR11MB8307:EE_
X-MS-Office365-Filtering-Correlation-Id: 885803be-d72a-48f1-a49c-08dc5ae5f604
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Zv/dAlSxp+LiGJTIB6KSMYiroTHa7alr8ab6kYqwghKTnP0dRVpa33FEaRHzOM5wtbnTNMWpq0/t2I0o0Rhjx9dObfeo30iYZx6HLn38JykQT78oswrIN4usJzSdIank5hdtpcvMo3MPpc3M40eJ+scueJGGiR39KIDyntmlL6KzJTSdc5ACTF7LrHgtddvYXoU2YW3eNu7Uzfsa/cZ6deK3QObINERbWKDSNRMQny/RvysC8HoMm0n+E8wU/5d4CBoqkuHtbr4jHc7z0Fx5aKO/dYACRK2U9Pqw4LhM/grGIMJjxB0ObBpp4kqv8AYAbhpIElwBu6dQ2IlNvm+BNnvTTu7XOJCOl9ygI38r8IcxmRt0sQX012lt/6yIGHVVY9FeBaHvA90A89CK3zjCQ+EvkswdgYS/jm0Q+lz8fPqu6CEyCRVMv90LiLTO1bbsYOkOnaDEgvEMEB5LF7z5dq3bRZn+KA8esmH/ihIBfV8s+Bt/iC20WTgpZM2WIxl+A8Io6ICpGfeE7ht5ZnUe29Lg/Q3UX87PUnUApV85vWtVP2KOXlF8178TCPTTPmAfHLDDavSWz1PfhOjWVAxzckDkaODUf3fSitCLY3Z6KEv3PD+BHuqoA39gk8CNOH2gThzD/7jmw8wymQz8GtLF394nm0E2YeQnXxuATuAX8PQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YVFtcDRZK0lRVE9TWjBiN0JrM2NCZ2M1d1lDNEQyUEJnNWs4eWtrcUJBYlZO?=
 =?utf-8?B?UThNYzlmdWFYNW5pS1d3NUdWZlBvd2Jxd3NINFBtR1N3VkFQQXMvNlZub2VX?=
 =?utf-8?B?Tis1SWdhUUx1VlZ0dmpUZEhTeTRYWG9yZllrTDRUS1JYVDNaRDI4aitBWkI0?=
 =?utf-8?B?NDNBOVVkUlpMZldVa1hTdEVlV081T2JsRGZacUpqNzRHaHpyZllYUVYxQjhR?=
 =?utf-8?B?cFdXcytvbDdCNmtlcWNXbk1wODhtdnVjcTFuMHJXeU41Nlh0MkVkK2xFNGk5?=
 =?utf-8?B?NTdWU0NkTGdiOHlXVk9ITlp3ZUFPaGpYb0QzcHFCV045dVRMNmFlVGZ2Mk9J?=
 =?utf-8?B?UmlReElQNUFnaFJNRzFsQ0NvMlRyNEVxY2lJbUc0NlQ5MVRubmhoai9aaFFi?=
 =?utf-8?B?VEVXRmpOeFZhT3B4aDdjaUtReXJuZDBpMitrNVBYQUJzZmw0QWdEWW56N1VN?=
 =?utf-8?B?eTRyZHFXVVpQa0pFOUJnb2FjemlwTnR5bWNpemRtZmU5eXNQdmRsQ0lzZURB?=
 =?utf-8?B?N1czV3psNDgyNHV4VUFLU2NUVldleTVMSUluTitKZFBYT1lTaThENFIzTlV4?=
 =?utf-8?B?NTZoZVQ3ZnQvaWNZMVYzK1JhNmQ2YVhuUEM3Rm1xZ050L2Rta3NuRDMyU2Ex?=
 =?utf-8?B?OTlmNUR3TkVoTnFQUFRlanpKMXpoQ2NkS09jdCtTYjJ6QWh1b1BZUVJta1lF?=
 =?utf-8?B?NmVmaW9KcTU0anBWcnptTjB2UkhjTnFybHJONk5LVXNuUUFiYWdBTHdua0pV?=
 =?utf-8?B?OU1uTlZjQVpjb2lrQVc4SUpraVpWYVI4d21KL2NnQU1sUmtGb0FHYVg2L2lT?=
 =?utf-8?B?M2tVQU1obG5WSFVJQS84TnpENW9KOU9WK2VtYjBqektVVHVhaVFuTVNDR2lr?=
 =?utf-8?B?dkVFRzM5VkJSUzV0RkhkeG5OS2t6MjUydFJXZmk5TG1ZemhhcncrUmpnV0pW?=
 =?utf-8?B?WHhJbE9WZEczWmNOQjlsbHZlMUJkMkI5NXRCS0hwUjgrbythemFjVXZ6bVd1?=
 =?utf-8?B?VHpDYmJlaGh4UUcyU3M1YmlrbWVYR1VsUGZMSVJQSmJubmRLWjgrMFRlZitZ?=
 =?utf-8?B?R0pXS3NmdzRYWEszTVVyUmVpZGlnSDd6K3hDcitlc3N0MExOQjJ5OFZoa0RN?=
 =?utf-8?B?YW1rdWZkSWo2TStXYyt4MWloZDFrYzFQa3Z5MTZLbGhiVjhGaXBJWlNnbisw?=
 =?utf-8?B?Mkc0WDZzNDI1d2ZsUDE5WUsveWdId0tRMHBza1VjY2FwaHZXUVUrMjJHcGw5?=
 =?utf-8?B?bnBRbWNmK2EybGtVRS94RDM0cndvY0doRG5wSC9Ubmh2aXo1ZXpSNVhLNFAv?=
 =?utf-8?B?dko4SmJmZjVpdnZrTVVKaWtOR3ZFNENxS3k1M09kL05oOVpZMG5IY213NEht?=
 =?utf-8?B?NWxwVytnWUFrZG5mUEpDMDJiU3FwM29ES05hbW9TMkh1NDZWamdXcVVPNnJa?=
 =?utf-8?B?Um9uNkZuSlJvSHEyQ1Q1eThaUmlLVk5mOVRTbWltcnZCNmdIbzQ5OWllVlFN?=
 =?utf-8?B?bVczWmt6bzB6VDFyNFNvY2QyaWJuS2hKTnN6WUZibUFCTWJYWlVtZnh5ODBs?=
 =?utf-8?B?OEZsSmxnRnNZYjZXMHkySVRDUlhOMUowQi9hTTVrTTk3YTBqTXNodWRRL3Qw?=
 =?utf-8?B?NjRNWmh2MTJHcW96Q2p2QW5Hb3FQU3NJOTJZcTlWRk9GcXNlTzJVY3E3SXJR?=
 =?utf-8?B?RHRqaWdYWlRMMlNYYUNKNnFnTmxvQSsxa1VJVmkzS1lhUnRFT2psRTBSZC8v?=
 =?utf-8?B?aGErNXNia2pmK1AwVVliOU83UklydVNUM2dOVkdmTDVQQmRrY1BvL1laNnIv?=
 =?utf-8?B?Zi8wcWsrQlVHYnQ4ODZqL0tyKzdHT2o4bGpWUG5zeVd6VHFjZkhCMUk1UWho?=
 =?utf-8?B?Zkg4OFlJZ1c1eWszZEk4dFpzMklabVlUZUZHVmJLRW9LZFpCNHFONVJuNEpr?=
 =?utf-8?B?OU1hVE5jYjBHOEVmMW1pcEVVUWM1UzhRQlFRVlNxM05YdUphL3ppQlZESWJx?=
 =?utf-8?B?TFB1RDZOblgvczlDM2NvTE1YMVYxaWF5WitMQ2MrZ2pZRjB5eTQ5QmdpYXlk?=
 =?utf-8?B?Rm9lZG4rYnZpUk1WY3RnVHQ3dVpTRDBlcG1rTkNkQ2J1L05KLytNeTNGZWYz?=
 =?utf-8?B?clFBVjBpZ0EyeURZd2FSZ0VVYVhEc2w4U05rcDNTTitiaDk2bXlZWVczNVFQ?=
 =?utf-8?B?WVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 885803be-d72a-48f1-a49c-08dc5ae5f604
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Apr 2024 11:44:50.2507 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Q0u7gjQ1rC4kOUR3UAW0N15nr0YqopdN2yR9oF00SEjk57P0qI/Sgu5y5y1AXlSZfnIMdnhgsrmHrvWuJqq13hDqUIyqxX9sGtUWZ2pE5ho=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR11MB8307
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712922295; x=1744458295;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=687+ELtQ7t8ynchUe35smfgwoZxHHIAq2YLVd9JFJXI=;
 b=IWxFEiNh4OD4wZEswebDqA8TLcibk1Pm9Ya0poUDO5I5GU0PKQIEbbzc
 r81eDMRBQIX6AvDFp8JiCTyfWsf/R3rVTyTwSRhJ9lDwz8dscFDftw18G
 TdxvLs+l1e/pgY/amwDALMeu726gsLUSuMt9Mcz6VgVS+vnz0Uazur6U7
 hCDb0BIPYe7dxjMvm534AHXWqnqv0Ibzc3Q+958vmDfa3O7Fd672WgC8q
 cobXGd1A9YyNKVOouRxJ2Qj5+m/SJCh8UXBXOOG/R4vOe7sOuMnh7GNKs
 Thkcjr4xMo0u8DwoROx/AbfM6EaL9utatIiTpKBA9uOMCsJCLPOAThn7q
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=IWxFEiNh
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-next v3 5/7] ice: base subfunction aux
 driver
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
Cc: maciej.fijalkowski@intel.com, mateusz.polchlopek@intel.com,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com, netdev@vger.kernel.org,
 jiri@nvidia.com, michal.kubiak@intel.com, pio.raczynski@gmail.com,
 sridhar.samudrala@intel.com, jacob.e.keller@intel.com,
 wojciech.drewek@intel.com, Piotr Raczynski <piotr.raczynski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 4/12/24 08:30, Michal Swiatkowski wrote:
> From: Piotr Raczynski <piotr.raczynski@intel.com>
> 
> Implement subfunction driver. It is probe when subfunction port is
> activated.
> 
> VSI is already created. During the probe VSI is being configured.
> MAC unicast and broadcast filter is added to allow traffic to pass.
> 
> Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>   drivers/net/ethernet/intel/ice/Makefile     |   1 +
>   drivers/net/ethernet/intel/ice/ice_main.c   |  10 ++
>   drivers/net/ethernet/intel/ice/ice_sf_eth.c | 130 ++++++++++++++++++++
>   drivers/net/ethernet/intel/ice/ice_sf_eth.h |   9 ++
>   4 files changed, 150 insertions(+)
>   create mode 100644 drivers/net/ethernet/intel/ice/ice_sf_eth.c
> 
> diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
> index 03500e28ac99..4d987f5dcdc1 100644
> --- a/drivers/net/ethernet/intel/ice/Makefile
> +++ b/drivers/net/ethernet/intel/ice/Makefile
> @@ -31,6 +31,7 @@ ice-y := ice_main.o	\
>   	 ice_idc.o	\
>   	 devlink/devlink.o	\
>   	 devlink/devlink_port.o \
> +	 ice_sf_eth.o	\
>   	 ice_ddp.o	\
>   	 ice_fw_update.o \
>   	 ice_lag.o	\
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index 29552598ddb6..f55e3340b608 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -15,6 +15,7 @@
>   #include "ice_dcb_nl.h"
>   #include "devlink/devlink.h"
>   #include "devlink/devlink_port.h"
> +#include "ice_sf_eth.h"
>   #include "ice_hwmon.h"
>   /* Including ice_trace.h with CREATE_TRACE_POINTS defined will generate the
>    * ice tracepoint functions. This must be done exactly once across the
> @@ -5857,8 +5858,16 @@ static int __init ice_module_init(void)
>   		goto err_dest_lag_wq;
>   	}
>   
> +	status = ice_sf_driver_register();
> +	if (status) {
> +		pr_err("Failed to register SF driver, err %d\n", status);
> +		goto err_sf_driver;
> +	}
> +
>   	return 0;
>   
> +err_sf_driver:
> +	pci_unregister_driver(&ice_driver);
>   err_dest_lag_wq:
>   	destroy_workqueue(ice_lag_wq);
>   	ice_debugfs_exit();
> @@ -5876,6 +5885,7 @@ module_init(ice_module_init);
>    */
>   static void __exit ice_module_exit(void)
>   {
> +	ice_sf_driver_unregister();
>   	pci_unregister_driver(&ice_driver);
>   	ice_debugfs_exit();
>   	destroy_workqueue(ice_wq);
> diff --git a/drivers/net/ethernet/intel/ice/ice_sf_eth.c b/drivers/net/ethernet/intel/ice/ice_sf_eth.c
> new file mode 100644
> index 000000000000..70f7cbe6c609
> --- /dev/null
> +++ b/drivers/net/ethernet/intel/ice/ice_sf_eth.c
> @@ -0,0 +1,130 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/* Copyright (c) 2024, Intel Corporation. */
> +#include "ice.h"
> +#include "ice_lib.h"
> +#include "ice_fltr.h"
> +#include "ice_sf_eth.h"
> +#include "devlink/devlink_port.h"
> +#include "devlink/devlink.h"
> +
> +/**
> + * ice_sf_dev_probe - subfunction driver probe function
> + * @adev: pointer to the auxiliary device
> + * @id: pointer to the auxiliary_device id
> + *
> + * Configure VSI and netdev resources for the subfunction device.
> + *
> + * Return: zero on success or an error code on failure.
> + */
> +static int ice_sf_dev_probe(struct auxiliary_device *adev,
> +			    const struct auxiliary_device_id *id)
> +{
> +	struct ice_sf_dev *sf_dev = ice_adev_to_sf_dev(adev);
> +	struct ice_dynamic_port *dyn_port = sf_dev->dyn_port;
> +	struct ice_vsi_cfg_params params = {};
> +	struct ice_vsi *vsi = dyn_port->vsi;
> +	struct ice_pf *pf = dyn_port->pf;
> +	struct device *dev = &adev->dev;
> +	struct ice_sf_priv *priv;
> +	int err;
> +
> +	params.type = ICE_VSI_SF;
> +	params.pi = pf->hw.port_info;
> +	params.flags = ICE_VSI_FLAG_INIT;
> +
> +	priv = ice_allocate_sf(&adev->dev);
> +	if (!priv) {
> +		dev_err(dev, "Subfunction devlink alloc failed");
> +		return -ENOMEM;
> +	}
> +
> +	priv->dev = sf_dev;
> +	sf_dev->priv = priv;
> +
> +	devlink_register(priv_to_devlink(priv));
> +
> +	err = ice_vsi_cfg(vsi, &params);
> +	if (err) {
> +		dev_err(dev, "Subfunction vsi config failed");
> +		return err;
> +	}
> +
> +	err = ice_devlink_create_sf_dev_port(sf_dev);
> +	if (err) {
> +		dev_err(dev, "Cannot add ice virtual devlink port for subfunction");
> +		goto err_vsi_decfg;
> +	}
> +
> +	err = ice_fltr_add_mac_and_broadcast(vsi, vsi->netdev->dev_addr,
> +					     ICE_FWD_TO_VSI);
> +	if (err) {
> +		dev_err(dev, "can't add MAC filters %pM for VSI %d\n",
> +			vsi->netdev->dev_addr, vsi->idx);
> +		goto err_devlink_destroy;
> +	}
> +
> +	ice_napi_add(vsi);
> +
> +	return err;
> +
> +err_devlink_destroy:
> +	ice_devlink_destroy_sf_dev_port(sf_dev);
> +err_vsi_decfg:
> +	ice_vsi_decfg(vsi);
> +	return err;
> +}
> +
> +/**
> + * ice_sf_dev_remove - subfunction driver remove function
> + * @adev: pointer to the auxiliary device
> + *
> + * Deinitalize VSI and netdev resources for the subfunction device.
> + */
> +static void ice_sf_dev_remove(struct auxiliary_device *adev)
> +{
> +	struct ice_sf_dev *sf_dev = ice_adev_to_sf_dev(adev);
> +	struct devlink *devlink = priv_to_devlink(sf_dev->priv);

RCT

> +	struct ice_dynamic_port *dyn_port = sf_dev->dyn_port;
> +	struct ice_vsi *vsi = dyn_port->vsi;
> +
> +	ice_vsi_close(vsi);
> +
> +	ice_devlink_destroy_sf_dev_port(sf_dev);
> +	devlink_unregister(devlink);
> +	devlink_free(devlink);
> +	ice_vsi_decfg(vsi);
> +}
> +
> +static const struct auxiliary_device_id ice_sf_dev_id_table[] = {
> +	{ .name = "ice.sf", },
> +	{ },
> +};
> +
> +MODULE_DEVICE_TABLE(auxiliary, ice_sf_dev_id_table);
> +
> +static struct auxiliary_driver ice_sf_driver = {
> +	.name = "sf",
> +	.probe = ice_sf_dev_probe,
> +	.remove = ice_sf_dev_remove,
> +	.id_table = ice_sf_dev_id_table
> +};
> +
> +/**
> + * ice_sf_driver_register - Register new auxiliary subfunction driver
> + *
> + * Return: zero on success or an error code on failure.
> + */
> +int ice_sf_driver_register(void)
> +{
> +	return auxiliary_driver_register(&ice_sf_driver);
> +}
> +
> +/**
> + * ice_sf_driver_unregister - Unregister new auxiliary subfunction driver
> + *
> + * Return: zero on success or an error code on failure.
> + */
> +void ice_sf_driver_unregister(void)
> +{
> +	auxiliary_driver_unregister(&ice_sf_driver);
> +}
> diff --git a/drivers/net/ethernet/intel/ice/ice_sf_eth.h b/drivers/net/ethernet/intel/ice/ice_sf_eth.h
> index a08f8b2bceef..e972c50f96c9 100644
> --- a/drivers/net/ethernet/intel/ice/ice_sf_eth.h
> +++ b/drivers/net/ethernet/intel/ice/ice_sf_eth.h
> @@ -18,4 +18,13 @@ struct ice_sf_priv {
>   	struct devlink_port devlink_port;
>   };
>   
> +static inline struct
> +ice_sf_dev *ice_adev_to_sf_dev(struct auxiliary_device *adev)
> +{
> +	return container_of(adev, struct ice_sf_dev, adev);
> +}
> +
> +int ice_sf_driver_register(void);
> +void ice_sf_driver_unregister(void);
> +
>   #endif /* _ICE_SF_ETH_H_ */

