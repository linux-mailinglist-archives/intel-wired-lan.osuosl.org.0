Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sNpxNWQtsWkVrwIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Mar 2026 09:52:52 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2284025FC1E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Mar 2026 09:52:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CA510421DE;
	Wed, 11 Mar 2026 08:52:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4WSgKHdQqoly; Wed, 11 Mar 2026 08:52:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 37FCC421DA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773219170;
	bh=vewktMtHswgjykWBZ7Gai1ebwU5m+Jgk/3cvifa/jeY=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Huoghdi0qLfeESXVObvxo/ZXG2RZ28m86Vcte2Cm7utvQsa2Vhcxm2+WPB56s4Z4B
	 2OpUMLv0d1vEUEuRbuGjRqH91qKHyPZRDMEKU7v2AzGWDv68zAAzteOG9bu+Hm41N2
	 UHkJQ3T3t8msrIhZDA1Vqik+fC6qNQsB0jxkvIFjZ7tmJ+nzl1QtMEJe1uOQI46PZF
	 Bext3B58Xo3GBvGO9S+eufnDXavNTFbRn+/Smi6G0VybegAHXWOh5kHurXMrpYM0q8
	 wBb15DevWJrAWgexo5fae7gbwW0lkcxjWcdbiifMmeoFwGIFUMCTPlDuCYGH9azSX6
	 RI/feRexD4jAQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 37FCC421DA;
	Wed, 11 Mar 2026 08:52:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id E9711228
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Mar 2026 08:52:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DA584843CA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Mar 2026 08:52:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uoM3ZlHfw_Wo for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Mar 2026 08:52:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5BB79843BC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5BB79843BC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5BB79843BC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Mar 2026 08:52:44 +0000 (UTC)
X-CSE-ConnectionGUID: uwRe0vMbTLCpJ3S7W6j3rw==
X-CSE-MsgGUID: f7goIq4JTcG2Ju89MbgeSA==
X-IronPort-AV: E=McAfee;i="6800,10657,11725"; a="91851540"
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="91851540"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 01:52:43 -0700
X-CSE-ConnectionGUID: OgXTl6nPSSSUprtHbTNfCA==
X-CSE-MsgGUID: saXht1c1QW2io+MXYy+Xiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="217083805"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 01:52:40 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 11 Mar 2026 01:52:32 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 11 Mar 2026 01:52:32 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.65) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 11 Mar 2026 01:52:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Kn9nABaG9cg8ke4nH4PgsysESL6wD39IsxwuzPxBqJ9lKds6e7/dgv/Wsm8HYb9ndO2wdo2aQjjyUFyCHxgge3/ZIkh7lsF8uYhDPtqA7E/29/tPfJaJ0J8wxInc/r4L9AqfQoF1zG/pxUw7B2EvvGCAO0Wa7yx5vny0Ht6Zrz/msBcxAwLef7iHStFDZcrtKpXfIiPfPiFCXoBFYmFMgu1kXoq/5RIl4Sd4ISUguq68egwTSCU0wLEPDzw/aWikSzDHlbyOTnaZfCUQLJ8EuuRP5iX2p8laD46541Tib2UMCgZGFZeXWhRK5LOaaURz82uVuAtFS64hhpv15qd6Ig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vewktMtHswgjykWBZ7Gai1ebwU5m+Jgk/3cvifa/jeY=;
 b=OzsjuI1gETswkAsXP/253CgAZTvD4zr5by+G2JoODsJOreCDm1lUaguNrLqug3S60iuqZxwdmOBQUWZs2MBtkrNidWxXlqFXk6CDIGEdGvLQCinzJuhn0ZzxxD2c5H33v5DuZV41glh8iqQX+ZhYyayu9qpK6wUT912WkEtWdJg7WvdIjTluyT/Yho85DKBu2C0XvSC2wQyQazM72QU59U3EmRV+XBW15UfQDTYMbkp/kaCC4+fD079AdrNqZ5jOGRTHBNuU9oUC68GsFDN4cdH6cGTiiEgsdnB17w1AaOHgi84lOh67Ug3KEpMG4mb8dMFW/gTCVU6ucyrkB94qbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 PH0PR11MB4869.namprd11.prod.outlook.com (2603:10b6:510:41::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9723.3; Wed, 11 Mar 2026 08:52:30 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d9b3:e942:2686:3cdd]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d9b3:e942:2686:3cdd%6]) with mapi id 15.20.9700.010; Wed, 11 Mar 2026
 08:52:30 +0000
Date: Wed, 11 Mar 2026 09:52:19 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Alex Dvoretsky <advoretsky@gmail.com>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <anthony.l.nguyen@intel.com>, <przemyslaw.kitszel@intel.com>,
 <stable@vger.kernel.org>, <kurt@linutronix.de>
Message-ID: <abEtQwISGizUXIwf@boxer>
References: <20260306211310.1213330-1-advoretsky@gmail.com>
 <20260306211310.1213330-2-advoretsky@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260306211310.1213330-2-advoretsky@gmail.com>
X-ClientProxiedBy: VI1PR06CA0088.eurprd06.prod.outlook.com
 (2603:10a6:803:8c::17) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|PH0PR11MB4869:EE_
X-MS-Office365-Filtering-Correlation-Id: e0be9d05-b9ee-438e-c4e0-08de7f4b874d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|18002099003|22082099003|56012099003|7053199007;
X-Microsoft-Antispam-Message-Info: Lr44sxKhu6kK70XcH3vVvWwlqR00e79j2NrjBmAQFJAjdz1ZbzYR7GHbDT/atkooHcULDIi1jpUWgHzCt8dbQ0dxA14CQlwSMVFGsDFG8krG6PIlGVnPePxfES0sfzS0SqAaMrUDse3NRX/P8IFkdPNWOgRiiIPDlfzY2tA04ZImJIOaVkqEOroRj1mPHQuwKc5+XUY4uN/y5Zox2G1kJ8Ridw6xL5tdzBvUbjYMa6KTM6BD0jCiHeiE3jZ6o+dpH5F2cxh5+ryHv1O4RAXzpQ4lQnBwB3LnH3Nhecvn5RFNxb/OhG+K1AQO77kUSRvxhERqR2Tv1oWD19+1lsP/bXMLS+1LnmXsN+K+RvErX9GsIBxfnRAxbVk/1Dl9RkUUlPObRk9WxuKsdbQ86mhpxVbh644p9UAjAanpG/GLnlf0kL8zl22FAjxN84ORoY4YSclhv/JqVrZF/3IkfGbSISGNkCDvWBW+cUHeF78LzAMpBOr9JpvWN06qo7pNE2W77xprsFLQmdYlYYR+n9HRiycF0ysHxlIoOKMLNzTWCw9mviFABhmq1zt9GTwwQ//73ggVX+tCQ+ZB8O6dyxc7RhGu+kX5VOQH6xeuQQR5PHoT0nBUIh7j0uO/ch1lp0w+3eodCYFuHwTGYx2R6DDtQI8grnGdCDp0+GpYorwMH6PBu2QD2vdDVDrab+MqHYEarRMFt8pDNFJEqohX2HhPOCbGiKkVR4r3ZSKy2HWn5GE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(18002099003)(22082099003)(56012099003)(7053199007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?JBCVfRUNcT1l8O4xcGKTsOjZjCoKfqgRbfv3W1QeBm4aoOleFO+oNyCOaJb3?=
 =?us-ascii?Q?tZzqU7Z5Z/yxTtEO7IL5pksM/j4o0f3lDoVinYnUWsYUkzlW96NC6/Gl+ehr?=
 =?us-ascii?Q?Nc2XkF0uO7Wp8OAp92mEnl5NK9eDlb++ThIIGgelh74WarQa/Yo1qxor9jfs?=
 =?us-ascii?Q?j/h7Fh9F4CHs4bfjE9dcnx2AmhWz2pBcb/ZsAh+p4WUlrTAtv6aMc31X6L1G?=
 =?us-ascii?Q?yYa7yRRf1eJbAz5bStY/1bOdLkxV6v4YR2l9pYzzVGZ1g+xz1uiNWQnuwTv/?=
 =?us-ascii?Q?+yY67jEQV8qJXOqBxwF7AF8cm2H+nxwegu6Ji5Gn4wA5YII+c1r7mrnIqbaF?=
 =?us-ascii?Q?/nGq56bY2Sum+sniILg9iPJPu0VVxFm3r2daw+V8ZfPRO+3J+CO38IVvXr3Q?=
 =?us-ascii?Q?/3eiB7GiTUtRDNIAENvPkiTxzNCRy4UOi90hm+l0DUjscWftqeeW49vVNL1U?=
 =?us-ascii?Q?/nyzRZg5LLPnpN8mgXVfA3v+hRdh0iIEiLgvm+VsCeIfXdhwvV9vr6efRfx2?=
 =?us-ascii?Q?/lWseAWRZr/92QyC50AwK62G4tOOAihmBjHvZsgN5tq80HNqQYvG/DLRjYIR?=
 =?us-ascii?Q?O+/3S0bjFv9KCWQj8wEAigeJdLa7mJ34stqkTpLOt5Bze2PRt+KL0ZARuuKM?=
 =?us-ascii?Q?bXNrearnDxc5rf+UdL2REGl50CcGbF6OghwMqWtYbQbH/6DKAIEVUiwzvCiL?=
 =?us-ascii?Q?aorLYlpuRi1UriS3IGxQqOpKrIaeJQPzzErzQSpzLs+mx+980qgW3nzwrfzN?=
 =?us-ascii?Q?LIYZB1d7/1QD2YTwt3eBZg5KugDAggT1ey/4jC3jo9jwIwDJIyOrtEcji0vr?=
 =?us-ascii?Q?WGTUFtlfIRUqX6bK/OeTfrVdMIMmEZQvhWVRk4uekW2fAfkVNaYOS9fZNIac?=
 =?us-ascii?Q?WrVeArAbHGaRl0+ng6lpMrTXRHZbY0RkmaJA2Rg+BtKMgkMYJezs2VCfiAfR?=
 =?us-ascii?Q?hcWTXtH6YwEfVCFnBss8aJ1lO/xPtNcaOMd8N4OL557LbXSoCLieL8Wk7zEc?=
 =?us-ascii?Q?28Q25igPNDi4vCxvwNCO80RVSnOGZr7XCfQeOcsFUui05TRz/JowXx9tSsLg?=
 =?us-ascii?Q?51UC+20isERBYmmXh1k2MEuTsOPStHeWEBIXC7HJ2c5Dhb8vKsZp/jYMKlW6?=
 =?us-ascii?Q?BUYBD3F3g/GxYQlPvcX3kC9kLQYtZRCutW0rIgOL/KZfTjBYgw4Uk4yXrMYv?=
 =?us-ascii?Q?glDINQAwF0l3JN1fbtftsxMcDTZVz6xDVAj8KmxYfE7/GJ3mlCYLsbUx3u5D?=
 =?us-ascii?Q?cgUxg4SauouheUclm4UspkMWvQ2LPFzyosO1LsY9NVsBVi4OWuh6ackgan1D?=
 =?us-ascii?Q?JKhld4u+uJTA1t72t7GdDmpR9C02VXjL51wM8y96YgX87u9wMupjODk8cH8A?=
 =?us-ascii?Q?KkpTo+kK/TpM9LJBlQQ16QNKKboYUXWOsRcrSqouWzh0pNi0w0RZnnhbm1AL?=
 =?us-ascii?Q?HSxfSu0YZXbLfOV6yJBZRzyZXdm6Chxg4BV94tdkrBigkd0J7TXhRebvp8Ye?=
 =?us-ascii?Q?or+OXt7OMQOksK9jHxcHEyeETHZjFxD7HtM5fqGAGaQXMPtlGTNrGUROlTIq?=
 =?us-ascii?Q?Py9KGcB+8tW1+gAhfgSCg7/OupvuTKFOARsbhxDMSmQpjKNpD8HmUpvKYzvx?=
 =?us-ascii?Q?+p+NJX12ecPF/yJdajpIM2sllmAMw19ptYAnttcgeTtGBTnimRHExVDCfzzm?=
 =?us-ascii?Q?gAvieCAmAYzmg+5x748lov48zDc5lHimZRodyLRd3PcPRZJbc0DRnVEYglCW?=
 =?us-ascii?Q?IGGetOXS0ZWpeoknyLMM+6mN7il9E4c=3D?=
X-Exchange-RoutingPolicyChecked: udvsJehqTCSiutxDhAx3XRGAV2VJy4cP2n7xIs2DMMGuWOwb2Kt6rKolpjqxXyRem3EiIYxLNSZFOKIp1ps80be3liR2wpnkkrq36mZuiOa35So/VEaiqW4xVtFGWNACqtCfDW/GAg5VC6E5wwS2DF+a9M1wiPzgwd5fsxrqD+a9nQdgRB/8O0dRgLT+iKLL06VcSyRDJSAaW7mgRThxWoXUXCSpEryNPpSlZRl4HSbFGjVVGmp2NWk+WbSBXo2cgcHT+LCEiplbfgMyJYRRJiV5ES2Gg21Jx9eYEzc6a7fx5bOYnSDSAUb0FaamsuFeg9wnNylCY87hyTMH1uEHjA==
X-MS-Exchange-CrossTenant-Network-Message-Id: e0be9d05-b9ee-438e-c4e0-08de7f4b874d
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2026 08:52:30.3687 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Bm/ClA5G3ISwYW7rPr0uyyv82pH4E7yel05NJp6O4KuicE44kxGKLAubnYdKX+9jVAmCwVQlUx7o4HnaI7gdiclQiNyd3PPx3IacvZHokp0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4869
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773219164; x=1804755164;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=X3qCbxGMa1nAl3KfM9mdsoqNzVANTM+3ABiI9/HD+bA=;
 b=fr0/jpVWDStU753ScjQsm1cScbQ+TFUYQRkqeOgaBDUi/L520h1lNEVO
 ICNtIoqR2vfgFdX4bCxANBuMAQ0QujQEplx6jrL/hUPfsAjCl9+3DDcYI
 PRtNOwh2wY0C9IeJc5C+tHY3gOMAz/i3L7OEFI6wmZ8u7LXaoGPVXiYz9
 55ZGu+2MJUo4spdwxp29dp6JrKso68RdMyDZ3YBpWykP8ah85BqBCngm2
 2eyFi44XRAIYnbbv2v55Kg/MA/bB8yeVNuqLejroW0plRAovmxvF2eL0B
 a1QBzNIIPeUF4aMtP/QwjOdHn9dG6V7orEHAvdoc5SJ7dHRQzxFE/xZ3N
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=fr0/jpVW
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net 1/3] igb: check __IGB_DOWN in
 igb_clean_rx_irq_zc()
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
X-Rspamd-Queue-Id: 2284025FC1E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.89 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:advoretsky@gmail.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:stable@vger.kernel.org,m:kurt@linutronix.de,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[maciej.fijalkowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[maciej.fijalkowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[7];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo]
X-Rspamd-Action: no action

On Fri, Mar 06, 2026 at 10:13:08PM +0100, Alex Dvoretsky wrote:
> When an AF_XDP zero-copy application terminates abruptly (e.g.,
> kill -9), the XSK buffer pool is destroyed but NAPI polling continues.
> igb_clean_rx_irq_zc() repeatedly returns the full budget (no
> descriptors, no buffers to allocate, xsk_buff_alloc() returns NULL)
> which makes napi_complete_done() re-arm the poll indefinitely.
> 
> Meanwhile igb_down() calls napi_synchronize(), which waits for a NAPI
> poll cycle that completes with done < budget. This never happens, so
> igb_down() blocks indefinitely. The 5-second TX watchdog fires because
> no TX completions are processed while NAPI is stuck. Since igb_down()
> never finishes, igb_up() is never called, and the TX queue remains
> permanently stalled.
> 
> Fix this by adding an __IGB_DOWN check at the top of
> igb_clean_rx_irq_zc(), returning 0 immediately when the adapter is
> going down. This allows napi_synchronize() in igb_down() to complete,
> matching the pattern already used in igb_clean_tx_irq().

How about getting rid of napi_synchronize() instead of hurting hot path?

napi_disable() sets NAPI_STATE_DISABLE which should prevent further polls
for you. Did you try that approach?

> 
> Fixes: 2c6196013f84 ("igb: Add AF_XDP zero-copy Rx support")
> Cc: stable@vger.kernel.org
> Signed-off-by: Alex Dvoretsky <advoretsky@gmail.com>
> ---
>  drivers/net/ethernet/intel/igb/igb_xsk.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/igb/igb_xsk.c b/drivers/net/ethernet/intel/igb/igb_xsk.c
> index 30ce5fbb5b77..ca4aa4d935d5 100644
> --- a/drivers/net/ethernet/intel/igb/igb_xsk.c
> +++ b/drivers/net/ethernet/intel/igb/igb_xsk.c
> @@ -351,6 +351,9 @@ int igb_clean_rx_irq_zc(struct igb_q_vector *q_vector,
>  	u16 entries_to_alloc;
>  	struct sk_buff *skb;
>  
> +	if (test_bit(__IGB_DOWN, &adapter->state))
> +		return 0;
> +
>  	/* xdp_prog cannot be NULL in the ZC path */
>  	xdp_prog = READ_ONCE(rx_ring->xdp_prog);
>  
> -- 
> 2.51.0
> 
