Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AD26A58E58
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Mar 2025 09:40:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 78961811F1;
	Mon, 10 Mar 2025 08:40:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bSLw2bBBokyI; Mon, 10 Mar 2025 08:40:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B8BD0811F5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741596047;
	bh=g+0Jq3UC+2+KCPeW5YrtzNXWCFvvGdPGNViFnVIS+Ps=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5VKT8UKArESfdWKVmyC4wmR+bjNUqsVoBfTVTgMJLUumYc9wqnufTjYICs9yMADIV
	 MOaPy8JUR8YaJOq0Z2rV+s9GSJFrWCP1rN4IXMRWhl4hyTdSWgllZLqvUg7tt3R4nF
	 V73ufCclUCK+z2aZMhKlHCZzOap8+gz8zqA+FZwrXnMEaL9Fiy+/pJOD3ymUf/78F9
	 i0dKJqPyAAvJVc4x7VqTKTwJgLyiNFFQGuMZHfY53cWvU0TzN5VioxX1vE+QSiwXjX
	 c5sYH2xa4pVhs709UZcK5TDSdcW+x10QCrvqPrzp3+UMWtFMA8jhl/l1tGiMswygej
	 pzl2JQziRs5hQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B8BD0811F5;
	Mon, 10 Mar 2025 08:40:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 479081C1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Mar 2025 08:40:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 41ACE60774
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Mar 2025 08:40:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SgytymIPmanh for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Mar 2025 08:40:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 42EBA60767
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 42EBA60767
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 42EBA60767
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Mar 2025 08:40:44 +0000 (UTC)
X-CSE-ConnectionGUID: MG7GtVxFSt2WnioOzTfPcw==
X-CSE-MsgGUID: ARQOfZ3BRtiEbyITlLA10Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11368"; a="42455271"
X-IronPort-AV: E=Sophos;i="6.14,235,1736841600"; d="scan'208";a="42455271"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2025 01:40:27 -0700
X-CSE-ConnectionGUID: 2zMuVnHlQeq/p7veJ/f+qA==
X-CSE-MsgGUID: TrfvBSqfQw+xi+NPObeP6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,235,1736841600"; d="scan'208";a="119892818"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Mar 2025 01:40:26 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 10 Mar 2025 01:40:25 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 10 Mar 2025 01:40:25 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.44) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 10 Mar 2025 01:40:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=o7CFJatkvHmIx7rwa0uut9g7IGJkyI7DiXxWG/FHhK/mBWlHm1YNmvHmsdHa4IWCUvtHGDS+WE+bQVAq5NdFxTGtQJAhsIKHVuAh65PLwUvygZGo1RphZldFE0p88HV8qICasB0aQPLN4WPXh1yBQ2ybbCFBNqOCl03/8s2A1IAG/qOYrIE9HwzUf/U4y5zCTV1sCKqcGODEnsFhnLT3Z9ElC1DRjqO2dgfQUJvQ5heDYefWXpdM4VR1i7pdHAHMSJtRwJZmrLGkQP9CXowZkOUs5P7s0VuC6QyuULbT/UoD/dpUYXhGFZTdmdMfIoDZa33BiwuCMtGpBBkObQJMuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=g+0Jq3UC+2+KCPeW5YrtzNXWCFvvGdPGNViFnVIS+Ps=;
 b=LRvEHBmWPY+FT9yM3L/0R3hDYB6TBG0pCyDIPMU+HUd4BmOZFWfzfVqN1PJId3N9OIdu7O97iRGwtrLbKnMoxi8NrAkg3JjAhgWvbAd7jHaN/iZaNyD+o8t4YHMZebtJ5cDfVBwLjNy1LkYyXaXf3EWGU3oPSSTCtOVNozrLa29jIJUhwVTWJ8YtZ4RecpKxs6HGuBt+QQuabkXH5/3iExMdEN28trgY/TBUsCwpozEXVPh6vlP7Kf9T6BVP+2yAeZwtd7q+/79ONycEtwbNvBiiseCA2MYlnI3DDuGoRw9kKzL+2qR7XEkjzpT3BRxe02B4aQS3txcMMBJ78IwtBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by IA1PR11MB6516.namprd11.prod.outlook.com (2603:10b6:208:3a0::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.27; Mon, 10 Mar
 2025 08:40:22 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%4]) with mapi id 15.20.8511.025; Mon, 10 Mar 2025
 08:40:22 +0000
Message-ID: <144fbab5-0cd6-478a-9500-838cd6303a73@intel.com>
Date: Mon, 10 Mar 2025 09:40:16 +0100
User-Agent: Mozilla Thunderbird
To: "Temerkhanov, Sergey" <sergey.temerkhanov@intel.com>, Jiri Pirko
 <jiri@resnulli.us>
References: <20250306211159.3697-2-przemyslaw.kitszel@intel.com>
 <pcmfqg3b5wg4cyzzjrpw23c6dwan62567vakbgnmto3khbwysk@dloxz3hqifdf>
 <MW3PR11MB4681A62C71659C430281A15680D52@MW3PR11MB4681.namprd11.prod.outlook.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <MW3PR11MB4681A62C71659C430281A15680D52@MW3PR11MB4681.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR07CA0159.eurprd07.prod.outlook.com
 (2603:10a6:802:16::46) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|IA1PR11MB6516:EE_
X-MS-Office365-Filtering-Correlation-Id: 3a2de692-b2f5-4a04-84bf-08dd5faf3240
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SkNjc1piVWg4WmpPY0U4SWVUOGZLVHExVEhKYUF3WHg3UVlwbWVWcy9nVEtV?=
 =?utf-8?B?cFk4dnJzT0swS3VKY0NJVE9ZSkdFOU5Ndm44VVlKZUsrS1N2Z0tMUS9OM0FI?=
 =?utf-8?B?VDU3WkpPNDFLV0kxaWNqV2ZaWHNKa0NMemJoTStyOTQ0TjBtNXhOdUtLc0hp?=
 =?utf-8?B?bHc2NjBlNDFaZ0VmVFl2ZCtTd3YzdDVlNjJxcXVKL1FldEVuK3BlRlBXYkNr?=
 =?utf-8?B?N3JES0s0TWhCb3hwN2l4OTQ4ZElhdVdMRUNKZVg3dStxL016UkpuOFM1RVhH?=
 =?utf-8?B?UkF1b0s1L3M2Uk1JNk1JeWZ0WEZvSFpkU05XZlhBbjFJV0I5c2s2ZmZ3eWhS?=
 =?utf-8?B?QktsUzBGK1dlTXVzWllsRVU4YlNXcjBLcmJ2eXJxKzY0WXFsWS96SDVyOG5j?=
 =?utf-8?B?OTFYY00wanlSd01aSkptdk5ONmlNRUF2Ylhlb2p6UU9JSm4zVG1oeHA1cS9j?=
 =?utf-8?B?Z2kyNTZQNTJOOTlic2RrQU56U1VKOVBDOVU0MzVhQ1d6UEVPcnE5UHdJLzVZ?=
 =?utf-8?B?MzI0M002UjR5eGZXUGZyNHVYMDlxMGxYNVh1dlBCYnQ1MHA0MVc5SUh1Yktj?=
 =?utf-8?B?Zk5JMXBMV3dsVXBvN1VUQmpFUm1QSExWVGw1TG1vYlVJeFJaSFA3RjE3Y3Qy?=
 =?utf-8?B?YS8xL2NqK2t3K3phZWEydCtZVTlQelBDaDJ4K2kweGhYOHYvbGpMVzQxQmpm?=
 =?utf-8?B?R1BZNmZycXRDemE4R0wzcTBPU3p6OUVvMXBhd1V4cTZjYzZHenJkVG02T2hR?=
 =?utf-8?B?TUs3RW1DVGdWZXZzWU50WGRSdFJnWEsvam9QVXFxUGorbHZvMXU5T0IzRSsw?=
 =?utf-8?B?YW5PRE1ZMXY2b2NKZk9OUi9YVGtOc2l2TG10SUFhdC9wWEw3dDV6UVBKZ2N2?=
 =?utf-8?B?dFVkU0VLRU95TEFyNVBXRGpvZEIxMzJQT3ErV1lxZ0hhZ2IxME0rVVNXS0lR?=
 =?utf-8?B?MmQ2TjRZSDVTQUd6SE1YVFkrVHlHUFNBUVZmbEU0MW9acUUvODlJMDAvSkVT?=
 =?utf-8?B?bGZYdGQzMTFnZVU0MnE5T1NWWlArTmFpa2tBNEhNQlJWMXR5b2t3QkJtOE84?=
 =?utf-8?B?WEFhRGgwbWFHTTZwL2FSeGZXU1BpdnFMa0JuQ2VQMkduQzZzMzQrSk9oMGMz?=
 =?utf-8?B?RWxqcXZiMVNUb0xkR293R2ZpTHhYQzVLVTNwODdXM2lzL1lGaTZrcWdKSU9s?=
 =?utf-8?B?Y1AyUHZ3OFJzNDI3TE9taUVBUUlmMEdtdG5PeVM5a1hXTmtFdVFpMzRCZEh2?=
 =?utf-8?B?SDAvTGpQSHVLRi9BMU1GZXJLU0t0R08rditXeFA3ZFRRYUFtOEo4MDh0a0Vp?=
 =?utf-8?B?aDZNOHZuZWhqbGQ4blB2UlhBWndZNFdueXNla0cxMkI1bnVSdGdRN0ZMWG55?=
 =?utf-8?B?SDJZRmNrRHBSVm9rYVpXZkllUHJXcGN0cldFK1ZyUDdDcFBIVkpoNnhnMlRy?=
 =?utf-8?B?dnFVTEV2K1NNQVI1cmpwRXRmbUUrMlRpRFcwT0o1S0hScENJNGp6NS8rNDMx?=
 =?utf-8?B?ZExoLzlveDJjVkZQOCtmZk1ibzlzYm4zNVdjakt0VnBKODFSVGFpT1ZMaC83?=
 =?utf-8?B?OXh4K25oWms5TnpXV2xHYmZlYWZiQ3ppTFdPWWlqbTBIOGczcnZuaHB6SVRE?=
 =?utf-8?B?MGp1VGtPNDQ4V3hLVm1jVEhTcHc0ckZxTGVlZDJ1cWhmOWZkNG1oVXVFNzN6?=
 =?utf-8?B?Y2UzaVRnVi9RL3NQUEVmdUhacTRKSlJFckJrMDF3OTVMRTRxMzRvM1Z2dXV1?=
 =?utf-8?B?WkZnSEV5VFN0QzJMdjBMNzNBSWsydG5OSEJqTXhjcUhPeHFjK1Vick1DNTgx?=
 =?utf-8?B?L29lVnU2OFdJYkFFU1E2WXAwYmQ0UmlkQ2w4dm4xU2ZqNnNjdENtS0w5Q29y?=
 =?utf-8?Q?xyqzDx1CtlL5q?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cm10RXJYVG1la2JQYzJiV1JXaWpacncxeldBVXE2RUlNY3ZZa1BYeWRXQXNY?=
 =?utf-8?B?S2hyTkJVYWUvWFBOVmdCeTlUUDU3NzNMZWpvU3p4SmlPU3lBR28zWnZpZXMr?=
 =?utf-8?B?emx3a1pueTNodkl3aElOa1JDL2cvcTZZTC9YZ2NNMDVKbkpQN0JzdFhFaHgv?=
 =?utf-8?B?eUNobXlaSXlSb1RlT1FQWGpKbEEwb1YzN2lGRy8zRHJYTkxnMjhZZlNsZFJx?=
 =?utf-8?B?UzVhR2luVmhZQ3dDK1hlbVpaZkFuSGxPL0pGTm1Tamt5cUVJN0VYY1ZPdW1Y?=
 =?utf-8?B?ZUVydXl5SVpsSkhTbk1KOWJScThHMWdkV1Raem1XbytPalMwOXBqMzRPS3kx?=
 =?utf-8?B?Ym5UaFdEbUJIVjFNQTcwZjB1SzVWNVdRTlhCTm5vajI2WG5CU1hYUzRqbzZn?=
 =?utf-8?B?VjYxQVhxVnRLeCtoejl6NjJ2YWU1UlFMb1NIUHoremNhZndCc3ZLYjUwUlhN?=
 =?utf-8?B?ZS9mdkIwWXhsMWlXWjQ4VWZZSWd0bXNVL2ttbVNzRUhTODFvYWEwVzduTEdl?=
 =?utf-8?B?V01XWU9VZmhzUnEzT2Y4aEhUYXh0bUg1eTFnNUd2Y1F3YVJtby9aRmRxLzZB?=
 =?utf-8?B?b0NBMTFwR2J2ZVRWM1NDaEZHL0pZZXRLc2NpOHVJQ2VZd1lYTnZ4MG1sOHE5?=
 =?utf-8?B?YU5PTmRGYkpveHhvMTlWdFVBWkpxNTRsajBIS3ViakYxZ1NqdlNZdHlXZFcx?=
 =?utf-8?B?RmhLZ3lub0pxRVJaRWtackR3Vmo2cEh1Z2Nyd0xBZE9kOEN6emFvVFhRbkhp?=
 =?utf-8?B?bjE1c1pnYVlqZzJoMTZNZkMyQ0xJa1hWN3JScTdJWVdCM25qNVc2NG9rbVBS?=
 =?utf-8?B?WXFHZW1hbXhNSlY0eWtuTzhyNWIvUjhZb2szNzVTMDkwM003Ulc4NmdJUkxW?=
 =?utf-8?B?M2tWV3BQNzBqaVFOOEJnOVljK3B4ZVo5NzRZbTdBUHNpZFNCcHlaZkZMUTg3?=
 =?utf-8?B?ZGFoT1JPWmNtTDRCMGZrYU1Ka2RhdTFhL0tXZzg3c29OUnRGcEtYS2JPdW1V?=
 =?utf-8?B?N3VGSWUyalVkYVFoUk00cU9SWkQyQjVCdEZZZktEbXpMOGJ1WEw1ZVJESDBX?=
 =?utf-8?B?ekQvNEp0ZUNEbnVubk9nSHVGY0p5WlBtQ1J4NDdudEduSzg0N0lHSmd0anBG?=
 =?utf-8?B?UEtIWjhQc0lCekgvOGdxL1NkdkJCbTN2bSsyUW94VlVHSldpNEloV3VBWU96?=
 =?utf-8?B?cVpzSmxSQ1hpTzNEbUtRMjI3MENVdmNsNlh2L21GbzJnRk16M1FleklHVHlo?=
 =?utf-8?B?NktvK3ZmZURWcnFIeTFibFJRUHZUUCs2QkJyai9sSmtCdXpsbFcvcjhXK2Vv?=
 =?utf-8?B?TG82YW5VbG9mZFpudjBHb0h4czlNdnkybHNzeUt3N2ZZbkV3ZG1BTGRSbmVs?=
 =?utf-8?B?OXNPYVljZzBmSE9nUW1hMXBPNkNzcElvZDJaVWRpeXBwdDNjdGxaSUVlMCtx?=
 =?utf-8?B?Z3N2blNuT0hmWjRtK0tOMHhOQklyQmw5MlNTaGNUUms2Tlh6VjdRMExmak12?=
 =?utf-8?B?bUIwazBtWmgrc3cvYmdjWlVhTTduREp0WG50TXg2RWVVaS85K2ZVWk1PUkth?=
 =?utf-8?B?S3MxTlk3UHk4VmNrOGxqMU1iVmREOWEwQWhMUWdjeHMraFNnL2habGwveWpw?=
 =?utf-8?B?WnlZRmxuK20xWExwTElLcmNMZGs0ZWU5NzJPTTBnS2IxODF3b05aWHI2cjA1?=
 =?utf-8?B?MEFZN1hNQlkyTkVWS0xoSDZSdzhDL1BnWEhuVmNCSlFxRFdEOFNTaHJNV0tw?=
 =?utf-8?B?Y2RzL2Q2QmdoclN0Y0w4VS8zSXlKbW9pMGE2U1J3YzJQTnNPV2JvVmw0MkxR?=
 =?utf-8?B?WHRKZVNEUmxzaVJHc1JUMEM0VGsvaWdkSC9YazBOYXkyRkQyN2RIbURhUUFr?=
 =?utf-8?B?VTZLUzc4bDVWd2gybnhnTmdqOE9NZ1VyS2JGdk5iUXROd3g1V3RXTExvVTgw?=
 =?utf-8?B?NGtMQ1FnTDN6UUdsYTNYeFZqUENNSEpPYnBtYWdpOHY5d0Q2WklMVXAxcUdv?=
 =?utf-8?B?VzBpRFVaendaM1RIeHlrVmg5MGIzZmY1dnIzODZFN0tvQ3lCNHlIMkhWM2hz?=
 =?utf-8?B?UXhmdDJkempSSU1HbEJadC83NkpYQkkxYVNCam9mT1d1bDBhY20xOTd1Uyth?=
 =?utf-8?B?M1hvR1lyMW9OclVmZFp3Tzd3TVZQa1o1c3RHcU5QT3VOakRuV01yc245ZUFx?=
 =?utf-8?B?T3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a2de692-b2f5-4a04-84bf-08dd5faf3240
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Mar 2025 08:40:22.5694 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CsDt/WDWbDbSLck7R7/Rw3gEzwByUl14hQdfg6ylToTc90Cd4ApSGVPKv9x/O7FPBQJAvtsMHmcKluclebvRVpQy1Z7qXTxrT5oXhEIVQDI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6516
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741596044; x=1773132044;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4j7czz919rNhf2DlBvXq1bfKoJIaKAg1ol3FvudWOsI=;
 b=Fi0Vg/lP/fpui5Vcm31I44qSK851Jkc4DKLc51KKCb3H/EkDR/DOlsR6
 YTOgp4nXrp1wagtri7kEwkx0qlWPTWUSUGkdZyxigMhgnpdQ1VSVYX7fX
 SGWUqEmJYcidY6z8RaAyr4m0jCxsbxc1lY3fXuamG0c55IsXwaN8PRwqw
 ihhid+xgnvFMJpb0nhTkpzUkiOdNCGLhn1iFFKPNXHjwZ8ndNQgDWF01M
 XWdtzZdXIxm6+/3x11JQjYGPLBZNXN2jTm6WaE9Q8KEDxjH51YhRY5X/Q
 SpRqTJBzGArX0pQnRaUYc8yW8qURVg1OIZD7hvbvPzivtrkkhKRpr0RiH
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Fi0Vg/lP
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: use DSN instead of PCI
 BDF for ice_adapter index
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Loktionov,
 Aleksandr" <aleksandr.loktionov@intel.com>, "Kolacinski,
 Karol" <karol.kolacinski@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> Subject: Re: [PATCH iwl-next] ice: use DSN instead of PCI BDF for ice_adapter index

regarding -net vs -next, no one have complained that this bug hurts

>> +	return (unsigned long)pci_get_dsn(pdev);
> 
>> How do you ensure there is no xarray index collision then you cut the number like this?

The reduction occurs only on "32b" systems, which are unlikely to have
this device. And any mixing of the upper and lower 4B part still could
collide.

> 
> It is also probably necessary to check if all devices supported by the driver have DSN capability enabled.

I will double check on the SoC you have in mind.

> 
> Regards,
> Sergey

