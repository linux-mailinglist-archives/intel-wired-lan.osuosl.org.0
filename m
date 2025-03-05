Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0856BA5013E
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Mar 2025 15:01:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AFF2082012;
	Wed,  5 Mar 2025 14:01:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fos7NvNT3Wnw; Wed,  5 Mar 2025 14:01:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2EFE982013
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741183297;
	bh=sQ1O3S2/AlYirH45PzylTiUdZHfAohgBqPPNkhYXa78=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=M7klE77XG/4wzKcixl7knjCLpJUzvMkryW/poaCm5PTELORDX2jon4M3c1/rEYMTD
	 Sk9TlGc/eoVU12DoO7jNPg80HpQ3upX0WtAJN+h1A9FYb6pDnNKWEtCelX5hOlpcTT
	 6k5BQ0UhpCGz+STXTF8W+rsoR7LYl5SzptnKBwkS8/4MG7ZyFHR08eX/BQfnOptwLM
	 kxKnWCawrpC+uRRXe2wTduyYGAD8RaOL7/iNj4c9MxeVIADSBu5Dc6vteW7u5teswS
	 M8nCwBHicbPuH8uz57pcYi5BjwPBk3Z3CK4fkVl09hJdxyfMy7Mv81jzdAFJSPeEol
	 PRyvlY/cgZ70Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2EFE982013;
	Wed,  5 Mar 2025 14:01:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 0A4D795F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Mar 2025 14:01:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CC41340175
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Mar 2025 14:01:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6t3L6PChM06R for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Mar 2025 14:01:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2C37C40263
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2C37C40263
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2C37C40263
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Mar 2025 14:01:33 +0000 (UTC)
X-CSE-ConnectionGUID: I1odU4DZQwCusZe2bNsUpw==
X-CSE-MsgGUID: p8kG0uFWQIezctohKkJjnw==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="42009866"
X-IronPort-AV: E=Sophos;i="6.14,223,1736841600"; d="scan'208";a="42009866"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2025 06:01:32 -0800
X-CSE-ConnectionGUID: /lUzbpryR9GWKOCU/lWoYQ==
X-CSE-MsgGUID: Uf4ZfGgcRUaLKcUZBNaVUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,223,1736841600"; d="scan'208";a="118714812"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Mar 2025 06:01:30 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 5 Mar 2025 06:01:30 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 5 Mar 2025 06:01:30 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 5 Mar 2025 06:01:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=k81kb6/iZzimM/BeK0NdEzAcBHPyjvv90jEiPZuTx2DjDCoY7ybHBlO2SqFD+6M1igorhF3ye10FaR1fPec1f/bB8xkZ1tNwwb9OZqKxCKFdP7x8jSZByTt4Iu5nXn0W1+ja1mtTDqP4cPd29SffUpAz9j2X4BBQc/BBYK8z+3boM9BVG6oqewnfzng+4kfrqZgbHBIQiP6LNT9/9igMY5bjG6yo+Dy7/SqwCAyVUxXFMcTClNy1Vya6qwpfWKPK8tIJKziP0Xfp6eTzb0wbPzSbj91XbIAgcxhJCtOdEJJ0HbXrgAZsVYm/iEP5qHSxP0kFVTtPwB/xEH7T69XOog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sQ1O3S2/AlYirH45PzylTiUdZHfAohgBqPPNkhYXa78=;
 b=c3/+yyD5AV3klsdlLtEJiV97n+0UFgo5EIqArDv8Yt5lScaSzolXH7PiJSTkH252u5tIWNEziz9fyQeRDYrV6AariB2tqR+W9nOi1Yergp8mM/lH2XZtmxcKw/5xlIBCjKZji3TNy68kQtlxUda6AB13wS+IjxjnreC/UTtXGe6Fg489X5T8vmvjh6eYwKO2BobX+CXSAIr+q5gmt4e66UyjcxIfB/fdGjEQ4a/E6CCYxW1Tgd47Fe6iIxFnwqBj0+JLmmFieRGRZSE/6KvQAtPc2UYKkuWU9gL3tXjNleFEDNknE3MzArzDdMAb+jZBMFG8bv/coBgTTpSA+DNp1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7420.namprd11.prod.outlook.com (2603:10b6:806:328::20)
 by BL3PR11MB6436.namprd11.prod.outlook.com (2603:10b6:208:3bc::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.18; Wed, 5 Mar
 2025 14:00:54 +0000
Received: from SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::b8ba:be35:3903:118f]) by SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::b8ba:be35:3903:118f%5]) with mapi id 15.20.8489.028; Wed, 5 Mar 2025
 14:00:54 +0000
Message-ID: <1536b866-debe-4861-9c7b-082682bc966c@intel.com>
Date: Wed, 5 Mar 2025 07:00:44 -0700
User-Agent: Mozilla Thunderbird
To: "Arinzon, David" <darinzon@amazon.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "jdamato@fastly.com" <jdamato@fastly.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>, "edumazet@google.com"
 <edumazet@google.com>, "kuba@kernel.org" <kuba@kernel.org>,
 "horms@kernel.org" <horms@kernel.org>, "pabeni@redhat.com"
 <pabeni@redhat.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "michael.chan@broadcom.com" <michael.chan@broadcom.com>, "tariqt@nvidia.com"
 <tariqt@nvidia.com>, "anthony.l.nguyen@intel.com"
 <anthony.l.nguyen@intel.com>, "przemyslaw.kitszel@intel.com"
 <przemyslaw.kitszel@intel.com>, "shayd@nvidia.com" <shayd@nvidia.com>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>, "Allen, Neil"
 <shayagr@amazon.com>
References: <20250224232228.990783-1-ahmed.zaki@intel.com>
 <20250224232228.990783-3-ahmed.zaki@intel.com>
 <c531f3a202e746e39faf27211b80aa69@amazon.com>
 <54f50b81-7361-4140-8b88-acd765fd8f49@intel.com>
 <abc6a4b765f84eb09efd7b10a62c4391@amazon.com>
Content-Language: en-US
From: Ahmed Zaki <ahmed.zaki@intel.com>
In-Reply-To: <abc6a4b765f84eb09efd7b10a62c4391@amazon.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4P222CA0019.NAMP222.PROD.OUTLOOK.COM
 (2603:10b6:303:114::24) To SN7PR11MB7420.namprd11.prod.outlook.com
 (2603:10b6:806:328::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7420:EE_|BL3PR11MB6436:EE_
X-MS-Office365-Filtering-Correlation-Id: 0635dece-dd0d-436f-2627-08dd5bee250b
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|376014|366016|1800799024|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Qzg1REFVQWsxVmdUVitpOVpMTDRQWTFJN3paYnRtcGU4V2dCWG1BRGdjUXBt?=
 =?utf-8?B?WU1LRlArbWJ0eXNoU1NtbnpJOE1Qdnd4dlhpUCtkdGVvRythQTl1WVRKeHVQ?=
 =?utf-8?B?R1dNeXQyZEVZZ1d4QTQ3NjJTbmZhaXdseVJGZ0dMcFAvdGxXR2hNS3A3WlRn?=
 =?utf-8?B?cldoWkRyRXZMM1B3N0JvNXFFQXZNNitxRTl5Qk9HOC8ySkNML3FNd3lEWTN2?=
 =?utf-8?B?d1ROaHh2QURtZXY2eU15T09rL0tNVDVjZVl1RXdRQlFDWjg0TmlkN09pb0x6?=
 =?utf-8?B?SG1xaWZzUmVzQ3oyallzS3c0ak9DMEJNOHJKa0tiaXJ2WGJMaU9FRGFrNjAx?=
 =?utf-8?B?R00xdW1HQkhnS0JNM2RlNkdyLzRaMC9SajJ0b2l6ZWw5cldoUlJJVHhtUlM0?=
 =?utf-8?B?U1VnYWFXUWliYXBVOVpuWm9yMUFJRVFEZVZvZysxbHVMRmZLNzByOHZWZTRz?=
 =?utf-8?B?ejhpTVRRM2JaQXNFWldlYmJDRjcwM2FHNXpJdzNuc2lzMUZZd2Fmb1crT21H?=
 =?utf-8?B?ZkM0cnhVMEdqc0hIUkpCdjBVWkRzajI1V0hNVzJ0cE1ZNWQwb0FONnNxM2dJ?=
 =?utf-8?B?bEdQbHRDMm1qdlltZ1BxbmI0elJVRUNZWFV1TTY3TFZOVEQzOU01UlVYTmZO?=
 =?utf-8?B?RVhCQ3BibHpZczVUZjVwcE83Ry9aQkJKbXVJOTUvOUpFbnVGOU1HdzBxeWZq?=
 =?utf-8?B?b2l1c1ZHcW0xWTBmaFI2OFJidWRXV2YzVFEwVzg4eXlGVVBPTk1heUhhZ3lr?=
 =?utf-8?B?cmhkWHV1VG1iTTZibmpKT0VSY0xXOVRja3laQ3hobnIrVys3RVg4ak4rT2k0?=
 =?utf-8?B?b2xaRjIwTVA4clRzWmFwL1J1Y3BVeDRjRkpYYkdTdmJmOWlFaHhaeExkWndY?=
 =?utf-8?B?RGJvb2ZhTHY1YjMxSktXbnJJbE8xTW5LVDlaNEJ3aUMzdStTY0lzK1NPakdG?=
 =?utf-8?B?NW42NmV6M3puam9yZjFTS3grcURwaERCbVNoL3ljdDRoYnczSmRhUHM2cGRQ?=
 =?utf-8?B?Sjh0K1ovd043UVFTMjFsSlNLT2xLRnNGMnl4cFlDWWJWUUFkbkdhemgraDA0?=
 =?utf-8?B?QTJXMng0M0V2alZnL3JObnZpZzByQjV2U0hlZUlrYVlXZWFrSDBxZ3FjN2lO?=
 =?utf-8?B?T1JvUXpGVHA0WU9UUWRISDJ1dmdoc3E3eVo0RmtPbTlzaDNqVlFLWEpVbG45?=
 =?utf-8?B?NUwxVTY5WUc4aGpVcit6WWd3Qk9Hd2gxcEVwT3BHZWtXNGRPd1ArUUk4RWlK?=
 =?utf-8?B?U0wvQTZJRkJmOGpJRXdIOURYT08yL2ROeEF6Z3I3dU11ZUZkWUUzMXZVSHc2?=
 =?utf-8?B?RHNYNmxUYS9lWjZIVWpWRm5xR1B3bHRheGJQQnFLWDRJcEo3d3FtUEx6R0gr?=
 =?utf-8?B?azNOeWRUOVFSTFJUQ0FhVnJtMktjSWlpbGppdlFYYWozU2d1NVhYd3JOUVVy?=
 =?utf-8?B?RDhKQXZBYTNYcWdKTFBnbUdTRkFKallJbEZ2QVdLTktYSTVxa3QyRFRPeFkz?=
 =?utf-8?B?bkVnR2s5Nzd0WnQvWkMxTmtwOUlGRmt1RURJaGZEaTlTRUhsVFc2WkFzUnVk?=
 =?utf-8?B?dnhMZXBaSDNJcyt5ZmgrTVA5STlUWEZYUnlNMXBadUIzLzM1SkE3OFFFdCtF?=
 =?utf-8?B?Y09ZbE1SYXBOSUQ4ZTFWSnlFOFpOODNVa0ZLYVJyZkFUbCswd2tlQU5kRDVL?=
 =?utf-8?B?ME8rZ24zSlFaUmVObFZ1aTBDbkU4RTRPSklnczVnZk1YVmJZV2RJWEFwUjBl?=
 =?utf-8?B?dUJjdW1nbFF6em9JMU9BZlluRllBNE8vTVUyR1hwdHl1UWpqY1hIbGJCOC9w?=
 =?utf-8?B?enh2YWowZTRRQ3Z2ODZjcXJ5djR3N1JSNVh2clduaFVGNFZSWWJwaU5ldEFK?=
 =?utf-8?Q?JrYcD0Vc6iaLv?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?anliTjYrSzVJM25qYi9kOVBvK1g1YzA2WnVSSHliZTNvRTFMZ0JacDQwblc3?=
 =?utf-8?B?MFdteU9YYklYdWN2TFNTaU5CaXJUbmpyV2xyckVSdStYMFIvRGgvKzNnVXdN?=
 =?utf-8?B?cHR3ckYvTnhYRGM3eEVsa0dIb3RrWGlXK3pNNUJsMWttTzJiNlA4VlRhcVFH?=
 =?utf-8?B?WlVjZnppZUFyeGxCUTV3RGlQVTBUdm5zZi9TVVdicE9FZVBQQ1RWZ1ErUkdK?=
 =?utf-8?B?QVlSaTdNcFBlcmdkRFhUdWRvSkdvd2daWlZHWlExOTQ5bnpnZlVUUi9IUCtD?=
 =?utf-8?B?bnBidkUwa085ZTJGOHJETERMTEgvUFhoWFlDanJPcHFXcndRM3NtNThiWW1a?=
 =?utf-8?B?c2VSYy9JL0QwOXA3cFVuWkNnaG5MVGNFLy9rS0hUeHVBTkhLZ1VzcjVDZzNK?=
 =?utf-8?B?YWxIZ0NQVTg4bWRaNEhmN2puZlJUZ2s4dXFJQksvVUtBWEswMkdFZnUxMlQ5?=
 =?utf-8?B?a1RjZXpUcEY0bVQzL0labiszZGdrSzdOeUpXS1NSQWxkaGE3RTI1THAzVlFB?=
 =?utf-8?B?SFBQUG9NNkdKaTdWU0hUajREeWZKaVNXb3FPYktWYk1uRzFMZzFTZFRiSGhF?=
 =?utf-8?B?TUl6TWNpOFdlem1MQWlvZDhFQzNCdkVGOHQyNEd0eVpNY25kRnoycEw0eW1O?=
 =?utf-8?B?NVdlalo1RTdKaVZ1eUpyN2FRR0VPNnhkakthNlB2QkdjejEyb2lqVTdYa3l1?=
 =?utf-8?B?UzJxWENvVXFUUEVZVkxpNnE3UHlpMlhOemZZMTdGeHEwYVRPeUtUcXVKWTd3?=
 =?utf-8?B?RjZDNG9KS1d4RGtSQjhXVGdWUFJvczcyN3FlcUcwSVJNRDliS2haU3A2ckxQ?=
 =?utf-8?B?K3RqblQ0d1V6S1NPZkhvTm1KS3laMk5zM3ZLdS9oL2tQQ1ZuYi9lTndTYkhs?=
 =?utf-8?B?QzVVTFZ1aXZJTS9obzU0SEFQeUovY0o4V214RmQ0MjR2Z1Rva1A2a2h5ajIx?=
 =?utf-8?B?amVBKzJ5dlpBL29NUnA5bVpEWVpVd2cwNGRmK0o5LzVIRWlseVpWVFVPaFlk?=
 =?utf-8?B?SlJEMG1JZE9QY1E5MEozSXhSeWwvTHhkSzFhWlBRc1lTUDA3ZWJybTVhMmFE?=
 =?utf-8?B?T1NOcmRWSVBEWTFmNWVVTUl2Y0RCcFFRc3M1MXAwWnlaQm5GWGRBQ0Z5eHo5?=
 =?utf-8?B?cXM5Q2dOMnFJVmRHdjFEQ1pkZWhWUHdQbzBuMW1kcHdxY2hRVUlCd0kyMGpN?=
 =?utf-8?B?OWtCbDV4Q1hCWHphTWdKZFhWWjR3cmVnRVY5SXBucnBjb1U0WmFpT0huUFRX?=
 =?utf-8?B?MGFzVkE5OC9ycXpIRU4rYlBpeVN6NjcyajhJM3RRNWVxc3BxVmhha29LN25k?=
 =?utf-8?B?Um1rNmdLOWc4Mll3WTZGRENjM1ZGRllxQmMyQVhzNkJUYnZDMW9SVjhTRHRJ?=
 =?utf-8?B?NUNuZW9Na2UxZUdkY0ZOUXc0ZmRzaEg3bjV3NFBLdXVxUEFrNkQ1clhGc2pJ?=
 =?utf-8?B?RC9oZTZ2REk2bGdzekYvcEVtVCtIVHdGTjlBeUE2OHBpUURxMFloMHFFcVo4?=
 =?utf-8?B?Q0wvWkJTRUxLeGZveUgxQ0pSdmhwM0hPOXdpKytoS2FHMWp4UVNYR2Q1cXdI?=
 =?utf-8?B?OTJMakc0ZlkvdStTZHlSZHZNZWFCOXRnNXY3WHd2ckJqKytNcUZHaXNMYmky?=
 =?utf-8?B?UmFqdlJiTE05U2ZmOWJRYmc3QzQwLyt0UWdnc1RVMkpqc01KaVhXTW5hV1Mr?=
 =?utf-8?B?U3VQcEVSczJUdVNUTEFQQjhNNUU0aFNWeWVmaDZoUjU3UjliY0pRT0tLQytN?=
 =?utf-8?B?Yy8yR0N0TGdzMHgxVGdRR2dlMGhMcFZiVlJITTJSZEIwN3pVbW1Vemp4T0U1?=
 =?utf-8?B?SFpCcW5Lbm4zeDVOZzJpNVcrazhzcDRJVkJINGRRMVNzN0FkaU8xWlpJQzA3?=
 =?utf-8?B?ZGxrN044V2dMUmZsaUovenVpWFd2TjBUQ290SjVicE9LWDdGM1J5ZjI2RHhM?=
 =?utf-8?B?ZGw0S3VMWXJyUXB3RWtYcXhscmZYVC9OUEF3SnFXMU15ekJxRkJUM0gwZFoz?=
 =?utf-8?B?VUpudW54WUJTODlKcHordGRFNGdWbW9qaEVhS2J2WW1JeDZuN2Ird0JyVzU3?=
 =?utf-8?B?NjkrRlJpWEQ0NUszalJJSGxZNzRaeG1OUm1iZ3hqU2tjMW1xM1ZKUE1vRFAr?=
 =?utf-8?Q?1kbN6yIiMXoPxoyfWmPRZMyec?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0635dece-dd0d-436f-2627-08dd5bee250b
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7420.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Mar 2025 14:00:54.0782 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ln3eYHwUMjwIkjZqvglWJGB7aG1lkMHrw5TYLgYYrKxw8Jl0C65aDoYiDDZUHL+Q6yocpjCwQ98Ki+fU+zVN4A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6436
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741183293; x=1772719293;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1YRH1D4PGL8uLGNnAkmuVGvhf0gRd6EL+kbR4249mjs=;
 b=LWOFQY0UgYw1XOZlyD5UU8jNDjdddU80osB/ar01gOyfNrvGpTjxGxQ/
 /HzzyZsV5FmwPiwDsGBb6jTe4xLGx5RtIBT4PUfH2qOcQiblfACSK7yVC
 mCPnVhcgBvmbntFMkl2wR0tVNVVwoHEgtvEMFWtTr2DtmkxgzdUHm1fad
 L7L2tW+hu5TSDGuWf6oBlA7GhpdQtAVZwRte/CVFgykMza0LxbFxMyO6H
 0Qpf5KNe8W2VTho/h2UtPbRdbvzMhu6XVE+NI2j3A8uaPTyyN+bZJiHgt
 rtWFe0jbfoPG2NyhI8nJqEl0OvKie9lY7XS30UfR/nrN+Jn084xs1iKRW
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LWOFQY0U
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v9 2/6] net: ena: use napi's
 aRFS rmap notifers
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 2025-03-04 11:33 p.m., Arinzon, David wrote:
>> [RE-SEND] I just realized I sent this only to iwl, sorry for spamming.
>>
>>
>> On 2025-03-03 10:11 a.m., Arinzon, David wrote:
>>>> Use the core's rmap notifiers and delete our own.
>>>>
>>>> Acked-by: David Arinzon <darinzon@amazon.com>
>>>> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
>>>> ---
>>>>    drivers/net/ethernet/amazon/ena/ena_netdev.c | 43 +-------------------
>>>>    1 file changed, 1 insertion(+), 42 deletions(-)
>>>>
>>>> diff --git a/drivers/net/ethernet/amazon/ena/ena_netdev.c
>>>> b/drivers/net/ethernet/amazon/ena/ena_netdev.c
>>>> index c1295dfad0d0..6aab85a7c60a 100644
>>>> --- a/drivers/net/ethernet/amazon/ena/ena_netdev.c
>>>> +++ b/drivers/net/ethernet/amazon/ena/ena_netdev.c
>>>> @@ -5,9 +5,6 @@
>>>>
>>>>    #define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
>>>>
>>>> -#ifdef CONFIG_RFS_ACCEL
>>>> -#include <linux/cpu_rmap.h>
>>>> -#endif /* CONFIG_RFS_ACCEL */
>>>>    #include <linux/ethtool.h>
>>>>    #include <linux/kernel.h>
>>>>    #include <linux/module.h>
>>>> @@ -162,30 +159,6 @@ int ena_xmit_common(struct ena_adapter
>> *adapter,
>>>>           return 0;
>>>>    }
>>>>
>>>> -static int ena_init_rx_cpu_rmap(struct ena_adapter *adapter) -{
>>>> -#ifdef CONFIG_RFS_ACCEL
>>>> -       u32 i;
>>>> -       int rc;
>>>> -
>>>> -       adapter->netdev->rx_cpu_rmap = alloc_irq_cpu_rmap(adapter-
>>>>> num_io_queues);
>>>> -       if (!adapter->netdev->rx_cpu_rmap)
>>>> -               return -ENOMEM;
>>>> -       for (i = 0; i < adapter->num_io_queues; i++) {
>>>> -               int irq_idx = ENA_IO_IRQ_IDX(i);
>>>> -
>>>> -               rc = irq_cpu_rmap_add(adapter->netdev->rx_cpu_rmap,
>>>> -                                     pci_irq_vector(adapter->pdev, irq_idx));
>>>> -               if (rc) {
>>>> -                       free_irq_cpu_rmap(adapter->netdev->rx_cpu_rmap);
>>>> -                       adapter->netdev->rx_cpu_rmap = NULL;
>>>> -                       return rc;
>>>> -               }
>>>> -       }
>>>> -#endif /* CONFIG_RFS_ACCEL */
>>>> -       return 0;
>>>> -}
>>>> -
>>>>    static void ena_init_io_rings_common(struct ena_adapter *adapter,
>>>>                                        struct ena_ring *ring, u16 qid)
>>>> { @@ -1596,7 +1569,7 @@ static int ena_enable_msix(struct ena_adapter
>> *adapter)
>>>>                   adapter->num_io_queues = irq_cnt - ENA_ADMIN_MSIX_VEC;
>>>>           }
>>>>
>>>> -       if (ena_init_rx_cpu_rmap(adapter))
>>>> +       if (netif_enable_cpu_rmap(adapter->netdev,
>>>> + adapter->num_io_queues))
>>>>                   netif_warn(adapter, probe, adapter->netdev,
>>>>                              "Failed to map IRQs to CPUs\n");
>>>>
>>>> @@ -1742,13 +1715,6 @@ static void ena_free_io_irq(struct ena_adapter
>>>> *adapter)
>>>>           struct ena_irq *irq;
>>>>           int i;
>>>>
>>>> -#ifdef CONFIG_RFS_ACCEL
>>>> -       if (adapter->msix_vecs >= 1) {
>>>> -               free_irq_cpu_rmap(adapter->netdev->rx_cpu_rmap);
>>>> -               adapter->netdev->rx_cpu_rmap = NULL;
>>>> -       }
>>>> -#endif /* CONFIG_RFS_ACCEL */
>>>> -
>>>>           for (i = ENA_IO_IRQ_FIRST_IDX; i <
>>>> ENA_MAX_MSIX_VEC(io_queue_count); i++) {
>>>>                   irq = &adapter->irq_tbl[i];
>>>>                   irq_set_affinity_hint(irq->vector, NULL); @@
>>>> -4131,13 +4097,6 @@ static void __ena_shutoff(struct pci_dev *pdev,
>> bool shutdown)
>>>>           ena_dev = adapter->ena_dev;
>>>>           netdev = adapter->netdev;
>>>>
>>>> -#ifdef CONFIG_RFS_ACCEL
>>>> -       if ((adapter->msix_vecs >= 1) && (netdev->rx_cpu_rmap)) {
>>>> -               free_irq_cpu_rmap(netdev->rx_cpu_rmap);
>>>> -               netdev->rx_cpu_rmap = NULL;
>>>> -       }
>>>> -
>>>> -#endif /* CONFIG_RFS_ACCEL */
>>>>           /* Make sure timer and reset routine won't be called after
>>>>            * freeing device resources.
>>>>            */
>>>> --
>>>> 2.43.0
>>>
>>> Hi Ahmed,
>>>
>>> After the merging of this patch, I see the below stack trace when the IRQs
>> are freed.
>>> It can be reproduced by unloading and loading the driver using
>>> `modprobe -r ena; modprobe ena` (happens during unload)
>>>
>>> Based on the patchset and the changes to other drivers, I think
>>> there's a missing call to the function that releases the affinity
>>> notifier (The warn is in
>>> https://web.git.kernel.org/pub/scm/linux/kernel/git/netdev/net-next.gi
>>> t/tree/kernel/irq/manage.c#n2031)
>>>
>>> I saw in the intel code in the patchset that ` netif_napi_set_irq(<napi>, -1);`
>> is added?
>>>
>>> After adding the code snippet I don't see this anymore, but I want to
>> understand whether it's the right call by design.
>>
>> Yes, in ena_down() the IRQs are freed before napis are deleted (where IRQ
>> notifiers are released). The code below is fine (and is better IMO) but you
>> can also delete napis then free IRQs.
>>
>>
> 
> Thanks for the clarification. Some book-keeping, as this change fixes the issue.
> The need to use `netif_napi_set_irq` was introduced in https://lore.kernel.org/netdev/20241002001331.65444-2-jdamato@fastly.com/,
> But, technically, there was not need to use the call with the -1 until the introduction of this patch.
> Is my understanding correct?

Correct. The new patch attaches resources (IRQ notifieres) to the napi 
instance that should be released before freeing IRQs.

> 
> If it's correct, then the fix is for this patch.
> 
> (Also adding Joe who authored the mentioned patch)
> 

I guess so since there was no need to call set_irq(-1) previoulsy.


