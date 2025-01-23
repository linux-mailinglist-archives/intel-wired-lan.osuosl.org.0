Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F0EEA1A232
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Jan 2025 11:51:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2C34B610BD;
	Thu, 23 Jan 2025 10:51:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ol9ngJcidR6R; Thu, 23 Jan 2025 10:51:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2F63A612AD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1737629481;
	bh=feoWVmH9RIomXoK3IMMRSVGH3ujI2toRLso66bPESV4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9yiP0A8kGFTtoySgqUH/24rcvMc3WZQIL73HwYZD25DADe619bPOIVhlwLw4J07pP
	 u8ZGNDZcohKUxc+CwHKKzlszBxReXY/qCuLUrAiaSIsETtnx8yqKc+xaEO2VgzXyDV
	 g6KEB3xeCisbsd73QJAuScstjkBjmQpc62tpcdkhsR2y0QPiSsk9HIr5otiYSZ7Ls0
	 bkPhb/o773kUfD+kE0KOmDuefhOr3YNBCYIyp4LUY7dCxgvaRdGEaej0Sx5Gd6QLI8
	 IepcgM6tjbiFzn0Iz+VkjQy+rhiPciYnZsy2qK6umV60Q1BnBq+7VCVKhm4MmlqafF
	 t2ghNQ1Ryrokw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2F63A612AD;
	Thu, 23 Jan 2025 10:51:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 1C452B88
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jan 2025 10:51:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EB9DB848BC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jan 2025 10:51:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pfAgI9HfIlr3 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Jan 2025 10:51:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1B2A8848B5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1B2A8848B5
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1B2A8848B5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jan 2025 10:51:17 +0000 (UTC)
X-CSE-ConnectionGUID: Qx6pkNC7RUu5ncLx/1fBgw==
X-CSE-MsgGUID: Ksek+ABoQySTN6esen6caA==
X-IronPort-AV: E=McAfee;i="6700,10204,11323"; a="38037085"
X-IronPort-AV: E=Sophos;i="6.13,228,1732608000"; d="scan'208";a="38037085"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2025 02:51:17 -0800
X-CSE-ConnectionGUID: zTcZlJI/SxiZziMDf0lVhg==
X-CSE-MsgGUID: XQhgtHu8TWm7hZVhfBgnFQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="144666139"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Jan 2025 02:51:16 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 23 Jan 2025 02:51:14 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 23 Jan 2025 02:51:14 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 23 Jan 2025 02:51:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OflRtG3YPzZwxJQfAhcAlcdZvmTAxrBZux4P0uChYM8Aan2VF8nv7zOdEZs8alcp8xkPqQbMTuYHRPoq8dJaEVGRP4x5fIFaJrwLftFv6vBCZ2s25VRpkJBdnCyIo/0dR7jZTC7W6nUQlG2WORTN3lYmN8s1rGoTAviTB3NTRVbcJZZh1Xwm1Mr2M4I6tim8x+Ky5stW0lqVhalkCHXUO5eI/OvdgnroInawWXV5yvD7qogt0ZmQVV4GqDfWgowpdVnYcg/c0BmBeWTvT4H7mFJ/Vdo0+A43mOTJjkYAtA5I4H9s3VGHaVQzucNny0Y6FNOVJ+HCbm6385icCicAgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=feoWVmH9RIomXoK3IMMRSVGH3ujI2toRLso66bPESV4=;
 b=rm9burqwJjpXXQu+yZxKj+uNQE7Ng2Udg3Mxq03US88S6ZX8dACDio5y72E0F0nS9JMG7nPSnlJ6YrNEb2+PDJCH6naws4XA+2A/StsEZ/a5Hg3AtN4KrrIoZUZdriP2TN09xQN+tK/2xhH6sgzFN2GbAXG+sgUXVra7MMuDgF8GTAhrLqgHlbNGmnvNfe+FJ9rqN+8gYK1X7nMrRrEBJrXeu1KTw1f3rqFzb/4Mkw3mDSLEV4ZIfpP1w4Llu3FqjKvfgprbQK350WvtQyTVaR7Q+VYRQ90PsAG90OH52CL9GnUF/yR073P90KOUBs/oTkaKMqhU+7ckjZI3K7OAgg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 PH0PR11MB5784.namprd11.prod.outlook.com (2603:10b6:510:129::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.20; Thu, 23 Jan
 2025 10:51:12 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca%5]) with mapi id 15.20.8377.009; Thu, 23 Jan 2025
 10:51:11 +0000
Date: Thu, 23 Jan 2025 11:51:06 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Simon Horman <horms@kernel.org>
Message-ID: <Z5IfGpKdnskgoJJ3@boxer>
References: <20250122151046.574061-1-maciej.fijalkowski@intel.com>
 <20250122151046.574061-4-maciej.fijalkowski@intel.com>
 <20250123104536.GL395043@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250123104536.GL395043@kernel.org>
X-ClientProxiedBy: DU7P191CA0022.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:10:54e::22) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|PH0PR11MB5784:EE_
X-MS-Office365-Filtering-Correlation-Id: 613e1f6f-3a6c-4716-c0e9-08dd3b9bd9cd
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?YfQ4PijjNefTDoh3kKqSrdpXpWJT5mr4PY1G/qpdHNky7r1VmFmDrp5rhb5/?=
 =?us-ascii?Q?YI/wabEUwInn6AgHyUfe4yN4/WPHfQcZgDwRrHU600jxI8OHiRbmRH/UiC+0?=
 =?us-ascii?Q?DcPikIiTeGBN/zJ161ZV763PNOEgGAsnaV5++sbB6GjyGp5P6lQ0FBnDgwMk?=
 =?us-ascii?Q?ftzIx9rr7KnvdKy2/uJrXHT7uSAwOmLgWmqZIp5qvlUcqk0efWPctR9xi9l8?=
 =?us-ascii?Q?Bu+jQ1dTgmH0fVPzZzxGS2Og7YTcxP0koDYIyKkST9ZyooICihoXcap5h/3Y?=
 =?us-ascii?Q?fY8/T9hlACjJnA+rl1MGUfQ22WU+yZ1pk4deXZT626cnYKTigyxiwrMz+yem?=
 =?us-ascii?Q?scxIHG2QZgFMA9JnvQ2iKGpmi7zQQCM7RDnkk/9kI7SxDNk348bdv1ItJldI?=
 =?us-ascii?Q?HJ7GePks5JOrkyjcUJ/D2+S6iwDQOtCFnBSWICitpJ+HMTzX315twuVn3+lr?=
 =?us-ascii?Q?3tFbnxxSi+x0gg39nfKrToNiHoX1mv8S8fWaJd0Zn9sFhDnu+fecW/GxiOPY?=
 =?us-ascii?Q?BRZ/TMLJx25jc5jILYTieHWwLv8plITdeyKT2Z7WnkAvHo+7YaOGjwimS9JG?=
 =?us-ascii?Q?zFkDugpWwvqXouUZ0JiMyqRcSSL4GRuSKlUioDbZiYggcMg4UcErxLjL3ULD?=
 =?us-ascii?Q?Roskr6ZFbicj32QzTvE0D/qur/iNqCQIv2AdQBPQNYmCgfqHKYsNMofk+rcV?=
 =?us-ascii?Q?lKmH6iUNe2fIkaMf62s3BmNqVAR1OSYJNoW1sH66MuYQA/f1fj8I1Nzta62s?=
 =?us-ascii?Q?bj6CpPScvhe1B+q5j1VA6iETO+5g5VE7i8nEt0Y2Ip0UQuPeUKBOc9Clkq+o?=
 =?us-ascii?Q?rqIqdndj0qDfO5f7tQwUesC6H974DPLmRdzdE3HIUPa6mXJHbdxaQ6frJ7ar?=
 =?us-ascii?Q?na1ySkOl7bBTUsDpV5zIpN0ZolSUXEvtSkRypYkaadRyF2m4mNK0tSeQoiP2?=
 =?us-ascii?Q?nW1WPmb6HTGXkKJWpiJc6uQ1mB6DmL6YE5AIc5Rv2Sjv8f69SYB8PGi5X06d?=
 =?us-ascii?Q?+8hQGSwEuW3kEhgrMWZvcfWKEL/Z0y/M0qgUeYIxvIXOJJvudmu1u9WK0kvP?=
 =?us-ascii?Q?KtYfy0A5giFcwBp3epF1urWcyFlkjuEh+joMmt99IsgdCSN1zDV4r/XNm75W?=
 =?us-ascii?Q?lo1CtXQPhs4ABL8A3bJREiRKaWh0Q0HtPwQBhMjYy/wcOYmLV9fMm0JhTxdK?=
 =?us-ascii?Q?4IXi7UYz8qHJIgOZ+xFkco9bpmaWOEP4ThlG+E6ggOgVNL+MQhcvP3Bxm6iU?=
 =?us-ascii?Q?lhROrlEWK2yRQQR88QXo7Wnm7zrsROq8TyQIiALJ/klCP68Robk8nGMGpst/?=
 =?us-ascii?Q?ABYvniVpGsvfNkOlf79m1bxsr0G25lW8WDqI0v1Oq1ZzvLWtvBSa0yyD7XR6?=
 =?us-ascii?Q?Ksj5Gi+BTPawjMwJVRvj6Xss33t0?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?RqBDX1BKw+dKwAp0riCocoD/eNl5znl54MLcmjrRh+l40rQyElb3NsBsUVDS?=
 =?us-ascii?Q?ttZOC+w9mL4q+YBa6dfl10qZPfwoyazqEbd8y6MJTNjs1r2TYJ3hl0o52rzZ?=
 =?us-ascii?Q?/q7ZBet36FSKkqbAgdoKKDojPcG7H6EC1vPm1lVWPYWjX+EiofH0lK93tpXL?=
 =?us-ascii?Q?7Rpv+BszTPN2nh3Ws35+rZLIgitZivdIQB258Dk9VX/wSwsOJW5hJIaeXEIq?=
 =?us-ascii?Q?nCN1nZYfHc8P6KnJL+DxPx8azYqIs27nJONSngC3/boFLR64MB7AYPFYcALX?=
 =?us-ascii?Q?KHCik/fjOA2FwkCoVfxErYFfrzPDXDAWxJJedkbO3j9Fg0AfUXRqkIamm2W6?=
 =?us-ascii?Q?muov3AxTrsj/sXZ4M0EPeOoWERlF2DuB5c9KqJXIDZ/wE6cL5izHXMda78Q2?=
 =?us-ascii?Q?ZyPTK3gay45fAVer9pr4Qh0QagIOfYYPWCWjrxmZHd3ySjQTrFOphZrwUukm?=
 =?us-ascii?Q?1ERedanpwEZncJ797mt3YyLFru//8Bch35hYYAtJHMNPUjcEeLaPfDJpYBA6?=
 =?us-ascii?Q?HUxYphwSyz4w1228LPL5K3HKEhOMLlqcfN+8vIkg11WPp+jNyV23cL11Yhzs?=
 =?us-ascii?Q?hxoUEYWq9hkSO1ZJBtf0T5Wfv9GiPfp6c7Bnx+NF9lF1rqax6vrT8fZfFdp9?=
 =?us-ascii?Q?9CkBXyegzbWfhMb4gr2wKk2zBR/DFJdkzET4TbYnsBwXDHeSpnVGvSPoH3VZ?=
 =?us-ascii?Q?LjRHiJ8CNFwA6wov/YpaLbQJIl24oCGTNqPlWLkXagShfIbUKTBc4HX2PiyI?=
 =?us-ascii?Q?MIf9+9qHR/AZ/SykCFKY9s3jXM7vPla6GO2074lqLsRPqWjHDKx47NB58NYx?=
 =?us-ascii?Q?JUevnCX+cqFDx3EPyTETMPC7A5i3V8RTTUoZDLhiHJ/GPytvgV9WcLEVelSh?=
 =?us-ascii?Q?ais8q+/AOwzn3tEQv5k6PAZmmlswx11yX1LRwI6Sqtv11OOPfYtUR7bPhOSk?=
 =?us-ascii?Q?77RkF0/BZ7JvODKBhD6in0KEnXjHeljHKvyhgDeq86X2jo7G5hq61zJdqf7A?=
 =?us-ascii?Q?r8fPKSe4P8cvnQG1sA5rPYEmRYSztEruIfpiQpfvPfhSW3K4sRg8EpkkAQ0M?=
 =?us-ascii?Q?1fDNQaeNYN9UG2FzWwPRYHTYNyHsJQTwQG+CKvDC748H8/9FvzznkGDil3Qi?=
 =?us-ascii?Q?5rIPPALjSO959e4eH5cvfnRiL3lA1r28/YNW20Qv+dwjEYgcipKGDsMMR86A?=
 =?us-ascii?Q?FsuZl1yNCgB0iPEvFsm9BsUmRrW68ULGiaieJX5n2TRS2r53kZD1VpWSUz1g?=
 =?us-ascii?Q?Qob9IOWEQnnafq+fVmkBlMP4SvPGNKwA8jjmGl5cuYmkGSxKMflh4PtdsPJX?=
 =?us-ascii?Q?kFjUXgOQQeP2lgrP52o/5ncEa1GitCpdBrOmj/deXPuMy5fGghar7uBVjvi2?=
 =?us-ascii?Q?YhMBSsH4OumogpaN14DiQCLGxEsr2C9yhxN2ganpfpSAnYOqeevn7dSdK8c5?=
 =?us-ascii?Q?RFth7hnfV78C8h5+ZN+6cPaEiq+qPMfPeU0oCZEG7ffQ5MkVYboQ2YNi/Dyi?=
 =?us-ascii?Q?6RSzfP34PnW5Mvksq/NTarWjZ7VN5Ti0K7O2VkQqEDnJYxubfc85YMDEfoGg?=
 =?us-ascii?Q?/pcg6ueZAVyxoG6mVffdE9y9kPXAhol/D+pjIrU37P86h3iCmaNeERRpfwUr?=
 =?us-ascii?Q?jQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 613e1f6f-3a6c-4716-c0e9-08dd3b9bd9cd
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2025 10:51:11.8055 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VfcVeukRUdmdZKlYpH0nqQdjzaIzsnB9sctvmqzhX4b+GOTaQpimn8DwYxhANBbKZc9kaP9pAxyKw923jhWYs+HOo8pTW2CjK1tTle+oWgA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5784
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737629478; x=1769165478;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=OkuZ1rhQa32tGka4MQxKU7u2kNzsbewMpZnp8+S3cjw=;
 b=Y8Eaz2oW1OOyBur2HN0dklY773o/plZio1w8W3ahfk+f88AOpeKeOudS
 CHgBYOE+L6pj17FCstLZyEczhTcVyMgvD669a7Q7UlY6e1VBLWoI56YJg
 RBITTH5ODaUJwkRJ1Wgee1pumv390AKVh+AbXjWbpsDBDc0+9voYTbqcK
 qzzI0VyStBUzb6njbv6eCxtIPHCoy4dFJUwBBrUgWXfUInV+CLaAj9TrO
 Ks/bUfUcSVD+ZrX4u6az2P68NfdiB2Y1Z6HCiG5l9pyuUpB/Nbz4RGeHN
 IhQSRO9D1I2crukntJaHJnweCT8X/99SgB0wZKgnkL/br5JAvDRTJsmAM
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Y8Eaz2oW
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v4 iwl-net 3/3] ice: stop storing XDP
 verdict within ice_rx_buf
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
Cc: netdev@vger.kernel.org, xudu@redhat.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, jacob.e.keller@intel.com,
 intel-wired-lan@lists.osuosl.org, jmaxwell@redhat.com,
 magnus.karlsson@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Jan 23, 2025 at 10:45:36AM +0000, Simon Horman wrote:
> On Wed, Jan 22, 2025 at 04:10:46PM +0100, Maciej Fijalkowski wrote:
> > Idea behind having ice_rx_buf::act was to simplify and speed up the Rx
> > data path by walking through buffers that were representing cleaned HW
> > Rx descriptors. Since it caused us a major headache recently and we
> > rolled back to old approach that 'puts' Rx buffers right after running
> > XDP prog/creating skb, this is useless now and should be removed.
> > 
> > Get rid of ice_rx_buf::act and related logic. We still need to take care
> > of a corner case where XDP program releases a particular fragment.
> > 
> > Make ice_run_xdp() to return its result and use it within
> > ice_put_rx_mbuf().
> > 
> > Fixes: 2fba7dc5157b ("ice: Add support for XDP multi-buffer on Rx side")
> > Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> > Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> > ---
> >  drivers/net/ethernet/intel/ice/ice_txrx.c     | 61 +++++++++++--------
> >  drivers/net/ethernet/intel/ice/ice_txrx.h     |  1 -
> >  drivers/net/ethernet/intel/ice/ice_txrx_lib.h | 43 -------------
> >  3 files changed, 35 insertions(+), 70 deletions(-)
> > 
> > diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
> 
> ...
> 
> > @@ -1139,23 +1136,27 @@ ice_put_rx_buf(struct ice_rx_ring *rx_ring, struct ice_rx_buf *rx_buf)
> >   * returned by XDP program;
> >   */
> >  static void ice_put_rx_mbuf(struct ice_rx_ring *rx_ring, struct xdp_buff *xdp,
> > -			    u32 *xdp_xmit, u32 ntc)
> > +			    u32 *xdp_xmit, u32 ntc, u32 verdict)
> 
> Hi Marciej,
> 
> Sorry, there is one more Kernel doc nit. As reported by the Kernel Test
> Robot, verdict should be added to the Kernel doc for this function.

Yeah that is embarrassing. I have now included

./scripts/kernel-doc -none $FILE

to my pre-upstreaming checks so that it won't be happening again...
(or is there a way to run the kernel-doc against patch itself?)

> 
> With that addressed feel free to add:
> 
> Reviewed-by: Simon Horman <horms@kernel.org>

Thanks! Will include them in v5.

> 
> ...
