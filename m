Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CF701A34953
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Feb 2025 17:13:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 485E2607E4;
	Thu, 13 Feb 2025 16:13:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id c6Xk1jpruWPS; Thu, 13 Feb 2025 16:13:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 205B0607C7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739463229;
	bh=xwM5qFHYiqxBPzRbUX1HBo/5AJwVVBVYbxna5P9EXCg=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6RjlhUM7VXJPxWVCfyOJSyjOOX4KvYkYFl+UbA5ML87RzIJfX2zwjykYU+XnNGvJC
	 7km63KuFDJzkjK8YfEfY7nVwQ8vaBrV5h2P+aUtszTB0JGTJyo6jJrx35T98jHkyJ6
	 14XvSBoxbnPVuNK7tAqvj2W00Flsd7sTGiEgUYCMF4n8Sn3Zqx+RFJzWXH0pLDWa/z
	 y6IS1Wf8Fvja3/bPI4Tx9aOQcZC+pLArUAEK6CZ3jP8r1H7SHhKYoeRewPX6rpSGK7
	 NCdkKvz47EOdIJvpwBDvfb7Y93gJFYt90XwY1dccwIxGtjl+yeU8OgqzPMxL6BH3DZ
	 fFnjthQS0Shkw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 205B0607C7;
	Thu, 13 Feb 2025 16:13:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id C1689199
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 16:13:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A58B38343B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 16:13:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id v0K9DztWSQPj for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Feb 2025 16:13:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4BF4B83312
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4BF4B83312
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4BF4B83312
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 16:13:45 +0000 (UTC)
X-CSE-ConnectionGUID: 6D398o+tTXaIEegyOORxvw==
X-CSE-MsgGUID: dFH/6LL5Quer+D7Xce/G7w==
X-IronPort-AV: E=McAfee;i="6700,10204,11344"; a="39359250"
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="39359250"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 08:13:39 -0800
X-CSE-ConnectionGUID: TvGZmZZ/TaWxn7ns/IINkw==
X-CSE-MsgGUID: Ct0lB1PWTXSA0VJa9N2fMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="118119423"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Feb 2025 08:13:38 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 13 Feb 2025 08:13:38 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 13 Feb 2025 08:13:38 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 13 Feb 2025 08:13:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sFaxsXH+weedhqpp2myI56KvAG9O+xX9g5NeAHcoRvp1ltkTYjYZG3VFGpwQ+HLts7L2OnxCoK8fcNCXD/pHjYmbTu4lqjgGZgHCUJVF6J2sFKjJQCC1o0yNxjTJpJaZqjvGNVhYtNnk9YWUacPmAuIBzRCeFqSDB4JUqdn1hMSQ4zWxNZe0IV1Kp+VmKtXuf/IRB3/ODns/iu+3FZY4ujc2v41dvaSA1GAbWxkWtDtpBDO4Uvaw3L2roA6DXmZApOOBjaS1MVMYy+D6oYIIhsXp5iGT89ITptul5nvqXxl0u1jFM/rpc5Pfp0tc0TZZlKJJPzGlaSJ4aK05CD6lZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xwM5qFHYiqxBPzRbUX1HBo/5AJwVVBVYbxna5P9EXCg=;
 b=HbCcHtHFwO+50FE90uYKMuS5neSshGlIq8PDZNft4xYIkSHaK/HkQMdBEm+o+VYEJBJ0ubY2GuVJ9Bf/swIVgjjMXSaTGF+IgmAS2K5rd64ZCBs7of2gXODI4pN1KjK9EKZ57hfhl8vxUiy5otjV8ol/kL0zgZjWy2b416/EbrjlCnm61H3/M06fKQktIn2JZ0Y7ZzklPDMudW0su9I2JgtNR65cvu19Nh80NCB3SWXebWr49bN+UywZIOlsKIrTDnXKoCT6pGZBJkh1wTixMagC90NexJLSXvI2Bb2//NyiPFWk1MVyYhvzVxAFLe4u+HFzd2ribQdJNtEtIDkUWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by PH7PR11MB8570.namprd11.prod.outlook.com (2603:10b6:510:2ff::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.13; Thu, 13 Feb
 2025 16:12:53 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%6]) with mapi id 15.20.8445.013; Thu, 13 Feb 2025
 16:12:53 +0000
Message-ID: <f253c4b6-e4ee-44a3-953d-44f20ac5e79d@intel.com>
Date: Thu, 13 Feb 2025 17:12:46 +0100
User-Agent: Mozilla Thunderbird
To: Leon Romanovsky <leon@kernel.org>
CC: Tatyana Nikolova <tatyana.e.nikolova@intel.com>, <jgg@nvidia.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 <linux-rdma@vger.kernel.org>, <netdev@vger.kernel.org>,
 <intel-wired-lan@lists.osuosl.org>, Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Simon Horman <horms@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>, "Eric
 Dumazet" <edumazet@google.com>, "David S. Miller" <davem@davemloft.net>
References: <20250207194931.1569-1-tatyana.e.nikolova@intel.com>
 <7e12c97d-8733-44df-b80e-2956c0e59dae@intel.com>
 <20250210110935.GE17863@unreal>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20250210110935.GE17863@unreal>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: ZR0P278CA0116.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:20::13) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|PH7PR11MB8570:EE_
X-MS-Office365-Filtering-Correlation-Id: 693944ed-8595-44d0-181b-08dd4c4944d8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7416014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Q2VUa29xUFpxR0VaTEZabFNldEhOcWhiaERBWk9VNEJ2YmgzVXMvZ2F6K3M5?=
 =?utf-8?B?b0I4RWRDV3ZpWXNMWnpvcTRPMXhnOXhxOUVNTFVmMkpMNGw3OEpUajNiSDIv?=
 =?utf-8?B?RmJsNEVJWTVxN1psazJkZ3A0ZzZUdWNrbFNNV1N2ZzNYTi9JbDliUjBXREsx?=
 =?utf-8?B?bkQ1emhtYVN0SkJ6SURpWU94Sk1LeXZmZktNWHlMcmxCRS84TDhvM3NLS0hz?=
 =?utf-8?B?VTBHWEpTZjdnWW9UcExZSmNqbExIMGI2M1hTUjlXN2NkMm1yWElMYzhlby85?=
 =?utf-8?B?UnVZMklqMmdzRFI1b0JuaHVWWEhYb0xDZTRFaS9UYTlWWU9ncDNWVmRETUtU?=
 =?utf-8?B?WEJTbzN5cktCYkNHNEFvVWovekQweXRBQmN5RHJYeTVRM1hsMFY3WFpITTVx?=
 =?utf-8?B?eDhwUmxtZHp5SUNwQjRJNFZWYzNkRjhtVTdmRDRWNzB3emo4dEFqYjd3MFd3?=
 =?utf-8?B?b2NaelhVV1g2UnU1N0VrT2FOR3E2WUdJMWs0dEZ0ZWx5eG1icUxEcDFTYXJ5?=
 =?utf-8?B?cGd6aTN6UWV5OUNEZXJwTk1UY082K2JvSE1ET1QxVCtkNy9tbnJydjNjeEdh?=
 =?utf-8?B?SU1wRDA2aDhocm1uVjQyUUZPenVQUitwekM0bTlYd01qbllES3oyRkhGZUxh?=
 =?utf-8?B?aWswUUpsQnJLUllRcmovQlhzUS9Eam5sbmYvOXZDMFNqVjVUdEpWMGE4TjU1?=
 =?utf-8?B?WlEzRTdKNTNGZHNxODQ5d1h2Y1pmZ0hDazVsUGZQZHIzNU5lSHhFVkVib1Jm?=
 =?utf-8?B?aGUreUJ5bTV5NXh1SDlnWFdOUUtmSnh2Zmx4WWEvY01BcDEyY200VUhWNDlj?=
 =?utf-8?B?dFRwc1o4K2tXN0YzSVIxdzRDK1lhcjE5WWhNelpZbUl5WUtwajB5RmF1dHJk?=
 =?utf-8?B?S0xtbFZoS2lXZ1Bnd3R4NW15TGJySGVNK1dYaUUyZmRVbDQ0em1Vc3o5cVlL?=
 =?utf-8?B?bXlRaklHZ0ZqaWRocElpbmN5ckpqb0U1OG5QZnpWQ2tQMGc2MzBzeVdtVlNW?=
 =?utf-8?B?YWYxNG13NkxDSzY2aGY0QmNvK2JVWlUrUFFXczFWLzZUQ29mWDZiUXIvbXRK?=
 =?utf-8?B?cTBuMzBKTDBZdEtvZUJicW05ZUFlb3pCRjRYM2lacUJpRjFkRmwyNTIyaklB?=
 =?utf-8?B?RmZpVEdFZHdzYnY1NmRaRnBwUlNWV1FnM2pkMWlLcDJCVGhWVTdVQXpzd21M?=
 =?utf-8?B?WXZQV2M5VUlYdEduWkZ5VHc2MFlobmJva0pEbTRXbXZsTVkyMkpLdDg3QnFq?=
 =?utf-8?B?aHJrNzUvOVVhdS9RbVRIaHd5V2MwQ2Vyd1UvbXB5LzA1TnpSdm51dlNaNThq?=
 =?utf-8?B?VTdod1VLc0VYeExKVGI1c3EzWEo4OGF6dm43clVUZ2t3ZVBRUStMR3VzN0tl?=
 =?utf-8?B?aW9CdnUwWHZITXYvODdUUURGVVROTWd2ZDM4L2lNU0trVUQySnBYbjhYREJq?=
 =?utf-8?B?K21EdVhtVzR0MU5ZTHlnYm1yTGRlMkF6YlBpaWlXOER0M2FGajVvUUpPd0Qz?=
 =?utf-8?B?Tm83bEcyWW50SUExYTFjZ3hMdzNnOUIveXcwdHdDKzVES0lWUHo1RkVMbzZH?=
 =?utf-8?B?RlJOWUxYTEg5YzlKVE9yZ0tua2JoRG1aK1NGNXdoTFNMNFFobTE1aDNNRkhD?=
 =?utf-8?B?Rk1lcUg3ZjM2a2NxSm9peXg4bzRHeUhCbm1SRTBlYmlwNS9hRlRSRUd4WkNl?=
 =?utf-8?B?UU84eFp6T0RCVFJVL0F3V1RBMktidUl4NG1VWHlJejhSOVRINlpZYU0wVm42?=
 =?utf-8?B?dlZES0V5T1FGeHpaMWJiYVNoV1UzdDhlWEZaUXhLM3NGZ2JLbXNyOEpLRzRi?=
 =?utf-8?B?d1RXc1RpUGIwd0dpVGQ4QT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7416014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TW1CYzhNdEhtWWZxUldDdVdVUklTTEpGNjdiMExydG5JWHZMMnlXN0M3ZlAw?=
 =?utf-8?B?OG5pTmlBeVh6VS9SVWZjVUdBVDByWDhuUHh0VlQ3eHpuaE1jTElPV01WOHJU?=
 =?utf-8?B?Z2lyVkUxWG1sU3MweEQwb2VjdFkrZEJrMTRzNThXWlg5cjF1Y1B2ejdpVVUy?=
 =?utf-8?B?dlpVWWtPanAyWFFocElNM2Nxd1ZoSHRPWWMrd0g1ajhlUnA2SXVXZG9wRWJK?=
 =?utf-8?B?NG8vYU1zbVJ2SUI3VWVwYkZhQk5nS1FObG1sUFcyNXhJTlBPcEVwd3ZlSnZz?=
 =?utf-8?B?R2tXRkIrczhHZ2pmWHg3L0ZZMDRoNVd5ckEzb3lJQ01jOGdFT3pySm51S0Zi?=
 =?utf-8?B?YlBMdkpUbnhlQXNlUnFyTnZmUnVtOHFRTzI1RGFRejNYRzVKV3RxQmErSE5z?=
 =?utf-8?B?TjRBajBUWFZYVFdNYVJKQkkxVy85R1BqTjMyd0Z4aXpaNXo1NTdselhIUkEz?=
 =?utf-8?B?cXBEYjNjbERJc01jUnQyaWM2SVlvYVY0L2tJYWk3T1ZveUdvbGlheWFMTmRC?=
 =?utf-8?B?QVN3Z2tZMk14bTN6VGpUMExFR3hseHEzMEVlWVVHUkVvbkEzeCtZRHZYZXcv?=
 =?utf-8?B?VjZndUNiVWxqcGdoME52ajRzZ0Q0VXJpZlZ1SUxqNGFJNjRCK1NpZjRSNmhn?=
 =?utf-8?B?QkVjUE16Z3JZVUZITUlmd3kxbnk5RHN0RGJiVXJ0dHdSWTdQVzBHNWhrMjZ2?=
 =?utf-8?B?S3ZacXVYcFIyTU8wblQyR2JzTDRLOFJsTFVCcnIvZStjMVpjMm11cnVHeUZC?=
 =?utf-8?B?R1U3N3hsMTZLbWhVKy90OUdEMEpnL2VDSVBPYXYyd0NhKzdjM3Q5YUtkSmVa?=
 =?utf-8?B?OGRlNHNvTTFlSWd5RGtuNUdnL2dkdDlVaXdMMzBCZVVRUWR0dXlBV2M2bExF?=
 =?utf-8?B?RlV2ajNYRysyMzBzR2pFcVl1bmdNNVFTSGlDWXFHVkdmY3FoSTVCMDlQY3Ju?=
 =?utf-8?B?cUtTNGg3R1FZU1FzWE1oY21tcUNPTEVEdm5OOGprNVdCYVVhZmlrdG1tV0Rl?=
 =?utf-8?B?d1ZJQjZlZzdrMmVwQUZDY1hQVHNlNWlvT2Z5NGQyV25DcWhTRVVWUmhueHA4?=
 =?utf-8?B?dWpmd2VOejVhZHdsQmVGdFg5TEtKcG5GYUYvcTNmUkk2UFdkaDRaaHZjazMv?=
 =?utf-8?B?TUhFUi9RVlZsOTVRa1dZa2pVVHhqRmVISklHem5OTHk0QlNEUGNOdHRTVUNs?=
 =?utf-8?B?MS9uQ0lwK3lRcmZIekZueTRqclNhV1V1ZDlVMXZMU0JzYzdLQzhGMW1MYlQ5?=
 =?utf-8?B?RDhSbWExVWhRRnlYWTlMRFZKMUJmcm52VWJDMmZnWkRmRmxrWFM0a1hldXBl?=
 =?utf-8?B?NXV3SmcrTENhUFBZcUpvK2V5b3FHam5RdmJobHlwbytFcWM1OFZsc05DUUFw?=
 =?utf-8?B?YkhiMHBlWEQxN1VJclJLSUN6UnNCMTBHS0p4MHpvb3hUNmlQTFRUMEFZSEZw?=
 =?utf-8?B?VHZ2WWlEa2xZenVBbmRFMWtLczQxY2s1ZnVxRitidnhSMnowemFUTHRHbjFD?=
 =?utf-8?B?eURkTUp5OEFVM3ZxSkN1WGc3ZWM3UTFVODRHblhvR1pTZlJrMHN5RndZMzFV?=
 =?utf-8?B?cFd4UXBxVjBJOGtBSWdMRWt3ZUdNUDNqdnlWUzJQL0pXTmhodGltZ0NyVkxy?=
 =?utf-8?B?bHJIMDVBSk44SUR3ZDlXTVVxVVYzTGhOajl2SG82TXBMNXhDdDhtTWhNWUN1?=
 =?utf-8?B?OC9ad3ZMTmtTMVZKYU1YaHFDYy9mMDRyYktFYXZIWlp1dUhQbktoNkJpanhk?=
 =?utf-8?B?cHhOdDJiWEE3bEdNWWRFV2tWTmQwbVRhWFAyeitrQ09oWE00MUx6RUZISEUy?=
 =?utf-8?B?dC9CalMralcvTElxaHJjSHFLREdvMEwzTklyNmRTNkNrcG5hdCtHT1FqbGhx?=
 =?utf-8?B?QVFicmlkR0ZHZHRXNnp6OUsweDRMc2dnNUNmakFqNFJkVDhNTWhGa2prY3VW?=
 =?utf-8?B?bk9YWWFMZkZaMkp4Z0JoaVE0eVpFNUM4amVPRitwN3loZ0lrNGlEMkJOR1Fm?=
 =?utf-8?B?QUxld1FhTWt3N2tvTkwvdm5Lem1zTDlscHVyOTk3TXo2Qyt4L1JRQUtEczRp?=
 =?utf-8?B?a2FxZjBJTHd6bGI0MDIvOEc3eFFhc3dDOEhmTGlXanU5UHExcG9XUTJQM2xr?=
 =?utf-8?B?YVJybkpDb3ZyMXBUWHpvMnhrSHplWjNuZmlsS3hRQWZ4alNRUUN0YWtFNW1w?=
 =?utf-8?B?S1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 693944ed-8595-44d0-181b-08dd4c4944d8
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Feb 2025 16:12:53.0605 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Hrub7UHFDDWsHs6nOjaeNdlF6QufDE2JvYGMqpZ83MlKqhQwdMPTA+ya8o5NOMNvbQN2Y6qh4nMxu2W8LF5j44yI5pH7Qv3YecX2gJ2q8Cc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8570
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739463225; x=1770999225;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VQhcIjOLtn+MKxBMfN2pYthv8eF3qqrJyFMxPRsl9+Y=;
 b=ge9r0gV52YGSAUv1uxk3USJuIiI77uDHtSpYqG35c+DZrOYEdG5f5qjD
 C6lQQwRbot9A7WPmI1nPeQuFVkLyqPSi5HTRKE1p+iTGLBqpoN4Y9MXJt
 Q96LQiNSFypSkuAiLsrNf42jlqV7fhIfvMsWlvjWdFYq1RDa/1Y4w94jY
 JXYpxSx2H9XJSUGxQDXbVOhwAhVurMD6vWfs/JWzUEnIiMtww79K8984S
 1yJ1NZ4IA6b3MuE3p/vAwyn4rxHHSpvsEB1jXMTpwmiq1xfQn2vlobzyM
 YBwgbPWoJOXWIObegtS+1ya2gYePWtuR0Ngb45glEan05Wt5T+dkCiXRF
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ge9r0gV5
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-next,
 rdma v3 00/24] Add RDMA support for Intel IPU E2000 (GEN3)
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

On 2/10/25 12:09, Leon Romanovsky wrote:
> On Mon, Feb 10, 2025 at 11:41:31AM +0100, Przemek Kitszel wrote:
>> On 2/7/25 20:49, Tatyana Nikolova wrote:
>>> This patch series is based on 6.14-rc1 and includes both netdev and RDMA
>>> patches for ease of review. It can also be viewed here [1]. A shared pull
>>> request will be sent for patches 1-7 following review.
>>>
>>
>> [...]
>> TLDR of my mail: could be take 1st patch prior to the rest?
>>
>>> V2 RFC series is at https://lwn.net/Articles/987141/.
>>
>> code there was mostly the same, and noone commented, I bet due
>> to the sheer size of the series
> 
> It was very optimistic to expect for a review during holiday season
> and merge window, especially series of 25 patches which are marked
> as RFC.

that's true

so, given most of the patches will go via your tree, how do you want
to split us the existing ones into series?

a) 1st, idpf, rdma
b) 1st, rest
c) all together

In any case I will do a review too of course

> 
> Thanks

