Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SKoJMaTQd2mxlQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Jan 2026 21:37:56 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E5BA28D230
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Jan 2026 21:37:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5913F81E40;
	Mon, 26 Jan 2026 20:37:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id z_izgngg_8HF; Mon, 26 Jan 2026 20:37:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A973181E4C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769459873;
	bh=X9E46ia4WITP27+8H/69W0feMQ1k+4v+KRkf/xHABbo=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=GihwVImVgxWumTkJSFdgwdvgakALQVzk7mWvv08wuMB/F3G3ii0UmJkVhjqC6405s
	 ZV8I+XwANKE6+eff8UUxt/nhrw0fvauLc223CV3D0lg0+RfjBNHybTzB8f5BMMaFnU
	 61Fclq3nA1+IlIAesovPAyV7CPWE8ZLM3T/Yw1KEqHWQPVaX4ahQkWH3oDKrsN2JYx
	 0KYaOd4RzPTVzHj3N0V6SlQOJpJhdH5zfm0foYMZkYqDils4VT6EV3tvYWey85Kw/x
	 9yYDB2NNhpPOcpH5REw2VqjnyUGTF3iFHy83T2zQu2BxN5mBR+j0XGWWtdL5RfUS1R
	 Vq1GV2RwbRcxg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A973181E4C;
	Mon, 26 Jan 2026 20:37:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 0D4452F4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jan 2026 20:37:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E668781E11
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jan 2026 20:37:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zGn86W9T78bA for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Jan 2026 20:37:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org DE95D81E03
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DE95D81E03
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DE95D81E03
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jan 2026 20:37:50 +0000 (UTC)
X-CSE-ConnectionGUID: +hAeBUTzSAevFegOBs2jLA==
X-CSE-MsgGUID: DntJCxwiRsWOJTLfcpfmHw==
X-IronPort-AV: E=McAfee;i="6800,10657,11683"; a="82014030"
X-IronPort-AV: E=Sophos;i="6.21,255,1763452800"; d="scan'208";a="82014030"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2026 12:37:49 -0800
X-CSE-ConnectionGUID: ONIVZW2EQ/u+emToN2mofg==
X-CSE-MsgGUID: NkbyExjhTYqJfZlD8EsSXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,255,1763452800"; d="scan'208";a="239032919"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2026 12:37:49 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 26 Jan 2026 12:37:48 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 26 Jan 2026 12:37:48 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.11) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 26 Jan 2026 12:37:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wl4yCpDXQQAAlbggJ66phZOnBOMEZZUbH78R9TyV/rU4KBqF5P1CxvGCbtF0BeBOHDR0RNdttAzJfbsWR0TrQCBoh4kzrhe/MLOhajfpC/dcFbNBd53Lggi+Y0BGI3WMW4i22qckBEypdftjM4N21KT/CA7CUw98JgVwgUU6HLDkjiXtQcuOe47mPvEFsBCJQOuXenyjNCyTyu211b+dIOZKcolPfpmGo10d12AT5cFyD6t+ZvRLONjIeYujYvJuPCiewh2SlzwM0q1SxDWkHtfwjxtgDXDZAzbiz7+jt11r1QzaZn2tZo0cRGaguttpaZEgUqBCRiQbs+uOOka8sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=X9E46ia4WITP27+8H/69W0feMQ1k+4v+KRkf/xHABbo=;
 b=PTOMGMPXxd4aUZ6UFhnmg0uAxqTN7XEB96oQebj/XvcZvkWBXRSi240dXKf6m0ExYVTEvbC2CBXGKvw6IxCJyK0Z+/zvf11l+2TKlm5JZ27wCgtOWr55w/91JCxJWhRb3+xn1WSRlKvqoMDsG4AVgV2hG5y9ly5lB2j0wtvpY83w7QbqWr2bxGqsAnbHkd+xT2iAO3ISXgrX2MreNDCuyo0lM1xquJ2nxTxHsGQJrW2E8uJcpJ2aJDWOkCZ3hBtCIuDDOA7Eg8p/3OMlCeRsJWUj3468N8WQTMD4smSUnbetpwPslY7GDD4mLo0Fp/UFXDXDnLo48iOAmgL4JJEmhQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 PH7PR11MB6545.namprd11.prod.outlook.com (2603:10b6:510:213::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.15; Mon, 26 Jan
 2026 20:37:41 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca%6]) with mapi id 15.20.9542.015; Mon, 26 Jan 2026
 20:37:41 +0000
Date: Mon, 26 Jan 2026 21:37:35 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Haoxiang Li <lihaoxiang@isrc.iscas.ac.cn>
CC: <anthony.l.nguyen@intel.com>, <przemyslaw.kitszel@intel.com>,
 <andrew+netdev@lunn.ch>, <davem@davemloft.net>, <edumazet@google.com>,
 <kuba@kernel.org>, <pabeni@redhat.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>
Message-ID: <aXfQjwrtvx+UdeB2@boxer>
References: <20260125140423.2077845-1-lihaoxiang@isrc.iscas.ac.cn>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260125140423.2077845-1-lihaoxiang@isrc.iscas.ac.cn>
X-ClientProxiedBy: DB9PR05CA0011.eurprd05.prod.outlook.com
 (2603:10a6:10:1da::16) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|PH7PR11MB6545:EE_
X-MS-Office365-Filtering-Correlation-Id: 53735ac4-19db-4b23-9b82-08de5d1ac06d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?uiFrLAgBcVJ1i/u2o0ELmo/UhjwuHuWWloBmgFHN0y0b4afe9Z1UKvqexm9U?=
 =?us-ascii?Q?/7gXuyc2GVRQ2taFeNrix02WaaO8vhgJm4Kq7R34A0NmMIfQSsivakafw++5?=
 =?us-ascii?Q?hcrxM2frvoxK37TSQ2eMQDxvFOSaCVSn5df2xBUzAN8H8SW1so1/tgT1IqEF?=
 =?us-ascii?Q?x/p5Wca3tNptI/5dUIVB4JiUy0Sq1R5dl9vRm0Mbvvzez+gWI47cBygEI1ju?=
 =?us-ascii?Q?trloPPsoU1OrtolSreUTMef4bcx4GYcs1bCHKTnvFg9GkUeGu0E5rxJdA1nv?=
 =?us-ascii?Q?fbwUVlcQ7CpgR08Z6Y2jhhWt3U/u3FHGhGnxeruXanzjsk3B/6KCGGOMvLdB?=
 =?us-ascii?Q?SioJTBirQazBVXjhc9TsAoRfMzc0h22rervrNvqSZR5pkcoviHe/bZB38F+B?=
 =?us-ascii?Q?hw7p63woy4CUo8JSzUuGMwLWixSCx8i7DWor9gODNTspWNn4155VlN543HEL?=
 =?us-ascii?Q?5B93d/kKAZHvt8kDEuIL/wHs83i9Wdl1DwYceK6rDhp748qbHsnk6EdbbZkl?=
 =?us-ascii?Q?+ED2ywMv23cwiuLgpJkhTD1aDKA8u6zksTpul5bjhnO03QdSVBjafwSOJ5L9?=
 =?us-ascii?Q?jU0zW6L8uT0JOIVHGIuHyzuQdUx/DBOP5feANetnGJdAuVcQ7efqUxdpgOyr?=
 =?us-ascii?Q?fHQeG9e+stYIxl/EcOfpuN29FO9uxONzeMy9ktHRccvN3vdSe6DjdjEErf4E?=
 =?us-ascii?Q?soPCd+Iwja3HzwTDgxnbQ+chdmoTApCzfK4SOoiPc5DrvgAEt3av/Z+fcvMk?=
 =?us-ascii?Q?Kj6jz1tL942fkz8tbxzw6FuMxpG5wTaPIf4eSK4wBbEDvbAGOQQt/Tst99r4?=
 =?us-ascii?Q?wMUPKjzB76pB25CL7KxU60rO93pPR5qZLw4Zml44bfU0y8p8SuZOAcb1bD00?=
 =?us-ascii?Q?tUvqWPw8MeGwoh2lEBghLjvA37ZPrVkqWOMXZ1lh09RX4UEM5Ho5nKkAGnmD?=
 =?us-ascii?Q?3fZ6aEs8P+vLs9xImnLPuWflGdgGQhjOJ0yqSjd1UewnrUI7lejtg/huo8JU?=
 =?us-ascii?Q?AZN2uRi/bJWTtzy6MCo8PfGEUDal1eaFR6d0kz6CjqM4bVhZ/+nfcYhEvO+p?=
 =?us-ascii?Q?jxijsSAkyMDSypTmDuJZEqW70pzUMBchvRREMZ8H2054Lpn0GN6EOfnIl/QK?=
 =?us-ascii?Q?hMzpQgDus5dJsndMbmlxOAG69z4yEN2RZZrcnSxAHA7ke+m6FJpf7Mkptvf+?=
 =?us-ascii?Q?crMmwcM9niYDenq63qesCdSaAhsQrZ2Ni2q6iu2SrE1HIQ+QWAhazzJ/qHS/?=
 =?us-ascii?Q?VeJmQ+3InyelPuo1roxU2oUhTMGaBWwYLnphcKoZPW6mYaTaKPH71mWNuK8g?=
 =?us-ascii?Q?GtODfhzlAKM+3jYU0IBwyLfSpW5cu0dHp0iq3yRy4YDwaGTrJ4lfewbjIlBY?=
 =?us-ascii?Q?cJadiGeEVfClt0lVPYpiTGbSTTZrodUCXzG3p4MMGnIE0D/ZzdCVgoZmDL4A?=
 =?us-ascii?Q?HqV33rRe1oKnb3cZENue1nfgEfQPxC9TACnVMADcR2RUJOa21tkwB6XwmzDS?=
 =?us-ascii?Q?TY9XploQ3JkvrQATgUAA4O/qHmE5OvY03xg3tm2YqYHQkAcbQY3B6h4S1O/W?=
 =?us-ascii?Q?zPFkhwSANRxYefjJQ/s=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?N1llqWc58JOOzAtDMhg3oYGT/qfRG5VUfAr4Qehkw2zPl6HAgWVStgk3otjg?=
 =?us-ascii?Q?y6kgSqxqemThxHJ7JBN5YW5qIL27peWNOgpfgmSKDvllOcqPVhWyRw/6dU96?=
 =?us-ascii?Q?ytiWhDIn4oCvK7JkWWxnHtO6tOHoDGqypwO0ws1mj/VUvF0amzdZJd1zF5AZ?=
 =?us-ascii?Q?TyLSNcc1n5UQxUOog0YEoK3NFNEzD/Hk95+XmTVZpujDNTXPnJaaIOEIQQOi?=
 =?us-ascii?Q?2fw51pNSDZfgBErgjR5d/11ecKyg5lWIhCqWcaeKNnS6m6tFhcADphNed36b?=
 =?us-ascii?Q?/+q2a4WYQeLoWgPD/HlpHLiIoCXERjyRikzvvJxL5AMABP6iqr6Y4QQqBYXE?=
 =?us-ascii?Q?jnv6PugTDfD5oHccBak7RrruajzBTbccxoSlG3g/IO8NHHjbPjXo/XAIe2Mn?=
 =?us-ascii?Q?sYcbdSHzeZ0z0s7kXWC0+nbeKV2ycu6eFyjK29uHH14eKb0otLjmABVleydq?=
 =?us-ascii?Q?5EtNY7BGBNNExRkRLDbm32KUjkpPM3FQzNg6OdfAvPdbaZ6pTYrEukapRsZR?=
 =?us-ascii?Q?xgmuM4DOgVwfTECAgwW8WB59o55f74WdTD5xVPMwU1V9XowJk7rOGiLRo3ba?=
 =?us-ascii?Q?PS1nIgtJamw+FBlFsGCm0LQ01s7zDIyA6P0zGpzkuYffNQ5wVXs7Jr62JZWm?=
 =?us-ascii?Q?8QAxv49LfKy+BeXe1ZNaAkUbeiMpfzuFpwHA1/+NWzr+Y8mU11QYB6SFgJ9q?=
 =?us-ascii?Q?gIpg5Mdp/JtsAOF25wn7tHsHkzctXhYLg53NXfqek5+lLPuhQP3e+2TyCqwm?=
 =?us-ascii?Q?Lv8/G2qv0+npVQKx0Sqs/kroWjmfu2NgYZLi/SAZCDE+aIE2sxer4HAT23FW?=
 =?us-ascii?Q?7liWYKNIzBxzkZZHrTkutNwK7oIux3m2FXy8Wy1g0NVMPgX1vsvJ1sI06fGi?=
 =?us-ascii?Q?i18bcUDyz13eyhHf3bfzeYfu4+oALqVQijS4BuQRT4EaD+FS/idekVnf0xQc?=
 =?us-ascii?Q?ietHraP2/7kTtx82sVxB3TfKL33mO23fxbjdutYW4+Wwq5KxTNKy8zj/OMlm?=
 =?us-ascii?Q?7nJ5r0pg2aRaDu+l8gN82s3mPCTwb/z2H+LmmxezAf+qkxouNiQT/7ti8LtP?=
 =?us-ascii?Q?zBQnkzuxjtZvcJehXxYvfQzAplX/AvWPM2hDSPArf3WTp38caOONiDp9lAgx?=
 =?us-ascii?Q?unhTcBmmMZ+SoupnqXfM7707oNogntjdE+DScsr5FUK1iihHegBaM+oRIQth?=
 =?us-ascii?Q?mFQfRZSctPYmfYVOxA4uSQCAT6L8f4YWL3QNwuorBVNcxA4UDfyHS6yu0fjr?=
 =?us-ascii?Q?avQTBlrDTmbhSppA73jYid3iBbIyOUHbPDtpH8AThe3FE9dPFxkYQ0zJLFIm?=
 =?us-ascii?Q?nRrHW4wKbU9Ce7jVv390CM2YTeCyJskI4K7MdFVYMSQ8FM2fn0OBUoRw6/+V?=
 =?us-ascii?Q?/8GW0PzUp++wo3/lwQ0ZrRY/zi2GjGzNLNjZxB5/k8we2al3Z5VSGh/b1bUa?=
 =?us-ascii?Q?EzM4IGkDD0PWL5RTscGRdP5s0FCL+bQpbRaY0Nrsn64CzNAVZIhAQXJdiGHd?=
 =?us-ascii?Q?Gp4hPiIjNjDRZ1KciL3XhoChBSr0N0G9iTsteQEe+C6AxQzCk29Qxo8HGn3f?=
 =?us-ascii?Q?IYX3b4bFJQMgwHZ7+PbkUqZ9rdRhEEblHj9d/9tgcVJ0EhXHG/nVM9f8Bjjn?=
 =?us-ascii?Q?ztAuN55T0WUugRhztxZPueXcPev1ncPiCMrygx0FB/vALv4DGTjSgl9ufdwv?=
 =?us-ascii?Q?WSbq3S4PgKF25jCSd5hgAHegfzSg9x6WIyNbTHZP087RPbAaGGC2Zd1Neldn?=
 =?us-ascii?Q?vsy0aK7rP4D5WPIKMf0N4CnMrVOtF7s=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 53735ac4-19db-4b23-9b82-08de5d1ac06d
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jan 2026 20:37:41.3557 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: P2/RnWuLLC4yYvsxzbBvPg89DPeJlDpVWbYkYCyYTFpa4vD12y8Tjjrugxd1NkYlcIUdnu1S0vp3voKh0GmmvPZm2ZQnPMUuQJtIc+Ee0oY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6545
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769459871; x=1800995871;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=EsKuQ8UcO2t1EHa20NhBFxn724Ab5ebBWRnuvrZGT6s=;
 b=MQ92edQgG+x1avoyr+Xhyiq88EDnBNFakjicphsl4P4TV5zRvYqAIEsm
 fXLfc0Gw2BCmP3FUVWFDrBjDU+P5p0C7hr4AJPaHpnChc9sDod4QxQV7p
 1Z/6WRnh64mzwv3oP41W0Vs59vzG1wN9xYU/8OnoOmNeFql9+tRdWAtTD
 t4EUSlwDaVOrL5aAAffP1Dttuo5hz4dlgVxJKQsRvSyPJgQy/cr1gFjbv
 jEfJic4N+Q8eDzUKmN8T4lp6vpNjZkYSAM/KW/KhXBatuqmqwxm/gFIXx
 OV7RZKu7Sux40SForl7UTkGcwXzl1Sz5mpbH2wUU+D8cOJbUnxTkQzrD4
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=MQ92edQg
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] i40e: add an error handling path in
 i40e_xsk_pool_enable()
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[maciej.fijalkowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:lihaoxiang@isrc.iscas.ac.cn,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[maciej.fijalkowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,osuosl.org:dkim]
X-Rspamd-Queue-Id: E5BA28D230
X-Rspamd-Action: no action

On Sun, Jan 25, 2026 at 10:04:23PM +0800, Haoxiang Li wrote:
> In i40e_xsk_pool_enable(), the memory allocated by
> xsk_pool_dma_map() should be released if some error
> occurs. Add an error handling path to do so.
> 
> Signed-off-by: Haoxiang Li <lihaoxiang@isrc.iscas.ac.cn>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_xsk.c | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> index 9f47388eaba5..92b853a75b28 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> @@ -108,23 +108,27 @@ static int i40e_xsk_pool_enable(struct i40e_vsi *vsi,
>  	if (if_running) {
>  		err = i40e_queue_pair_disable(vsi, qid);
>  		if (err)
> -			return err;
> +			goto unmap;
>  
>  		err = i40e_realloc_rx_xdp_bi(vsi->rx_rings[qid], true);
>  		if (err)
> -			return err;
> +			goto unmap;
>  
>  		err = i40e_queue_pair_enable(vsi, qid);
>  		if (err)
> -			return err;
> +			goto unmap;
>  
>  		/* Kick start the NAPI context so that receiving will start */
>  		err = i40e_xsk_wakeup(vsi->netdev, qid, XDP_WAKEUP_RX);
>  		if (err)
> -			return err;
> +			goto unmap;
>  	}
>  
>  	return 0;
> +
> +unmap:
> +	xsk_pool_dma_unmap(pool, I40E_RX_DMA_ATTR);

Hi Haoxiang,

this will leave queues in a limbo state if you fail before qp enable.
It would be better to call i40e_xsk_pool_disable() which will do the dma
unmap internally.

> +	return err;
>  }
>  
>  /**
> -- 
> 2.25.1
> 
> 
