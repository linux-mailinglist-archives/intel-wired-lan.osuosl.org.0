Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E9E9495B8BF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Aug 2024 16:43:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6CB69819F5;
	Thu, 22 Aug 2024 14:43:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qisoI6VPFMBC; Thu, 22 Aug 2024 14:43:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 71353819D1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724337791;
	bh=GTb2LFuVKPQI4vnsbT7XMqetUBogvxowtDulmKJiKqM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5N+PHw5buDjmrFA76JBYgEMqUzJd009M27AnVCqQSFBo2Ou1C0XP1xrKoGWgi7C1a
	 +b41p4xh0+mLAFJxf622XW10lpkMHyR8ZAp2cnG+NHk+izNBUElDoStIcL4nHvChBF
	 pH+Uxlx8ZRagIJhejqLwFP9ha59P3hIYnTcuuYxUKsz+OvIPbnW6ROorCK+RS+E31E
	 nHNaDn6vigoAEmaj+Amyy/EX95pEj28Ny0AjXytFJQNl7YpAHuL8x6N1fhFyOU7Pkr
	 rm9jaFpAvAcdcy3yHut8dMFR0oRJJe1PVFlkFVc0KpxNmggZFro5Fcue5pe0QJua06
	 QJu+MBNeY5GYw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 71353819D1;
	Thu, 22 Aug 2024 14:43:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B945D1BF36D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2024 14:43:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B0BFD8197D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2024 14:43:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cKywGxzjx-v4 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Aug 2024 14:43:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9EE9E819B8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9EE9E819B8
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9EE9E819B8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2024 14:43:07 +0000 (UTC)
X-CSE-ConnectionGUID: VNsWW5bZTmG92RE+y4uQzQ==
X-CSE-MsgGUID: G08nqWuyRemaw9YBVfujtA==
X-IronPort-AV: E=McAfee;i="6700,10204,11172"; a="26508006"
X-IronPort-AV: E=Sophos;i="6.10,167,1719903600"; d="scan'208";a="26508006"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2024 07:43:07 -0700
X-CSE-ConnectionGUID: byCuFjSLTPy+aCXf5l9FQg==
X-CSE-MsgGUID: aTucbf/NTniompUZQn28zA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,167,1719903600"; d="scan'208";a="61461280"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Aug 2024 07:43:06 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 22 Aug 2024 07:43:06 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 22 Aug 2024 07:43:05 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 22 Aug 2024 07:43:05 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 22 Aug 2024 07:43:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=s6VC3WQQM2yCX6NZBDn2D6D+sCtW3V/3UDh3DfskYlVRdw2jSW8V1Ahp/L1EWVtlSd/OtgjOEHaPg5+gxzNZEb+LvBkJTLZELcZULRxb2WBG6M29CnJMfS5n4ZrZT/vF0+ZJlefEEZvmu6NtCy2nGppj0wNQTGQHu8y/mdlvo8NkVLnKhb/16I1dX6JimSptVnPs57PrGG/g7vb+v849Qg/E5Fo1186LRMGix8+bmtryZSp+4W2hLK0MHNtZ2dJyqtOeWfGI+pRVcL9VXUFJAidfnvjX0BKx164odz0j1NdV+2jO3jgt8aK71ltP52R6o0e8FfmBKi9pRsKgz4r6rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GTb2LFuVKPQI4vnsbT7XMqetUBogvxowtDulmKJiKqM=;
 b=fCDCqG0ai8Xax84SAgwL0NqzfLDrU8IbDWr6LlvjiyBRo2w/hwY/+uda5WUmMJt3KowmZuzJoJrwkw/w7UXKzBLj9SRfxvaZUwsqflUzg5kqdGMg9yjla34HRlgG77Uj/GOcFK7MJhnENlDArTZ5/SHe9cN9vvBMAPVw2IC9SEvCjjeNtx17xFObhT1WiEEf39QJ78JopSwpk3OyP2LF/okhkXMiAMye+KAJavZ6CkOa1WATTKPW2OQf+ZahqaBl8kBdamrq0OS/TRPe2Xt3Z8itq4TWARapmuvAnDF4DMbj0nUgUBVZbwtq93CiEqKhNteuk4iIItMUpTjxAvSN+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 PH7PR11MB7451.namprd11.prod.outlook.com (2603:10b6:510:27b::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.32; Thu, 22 Aug
 2024 14:43:01 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca%4]) with mapi id 15.20.7897.014; Thu, 22 Aug 2024
 14:42:58 +0000
Date: Thu, 22 Aug 2024 16:42:44 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Larysa Zaremba <larysa.zaremba@intel.com>
Message-ID: <ZsdOZM9VkSpCouJO@boxer>
References: <20240819100606.15383-1-larysa.zaremba@intel.com>
 <20240819100606.15383-5-larysa.zaremba@intel.com>
 <ZsciSbsTeIRGc1dZ@boxer>
 <Zsc1ktk/oX+LpFxl@lzaremba-mobl.ger.corp.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <Zsc1ktk/oX+LpFxl@lzaremba-mobl.ger.corp.intel.com>
X-ClientProxiedBy: ZRAP278CA0006.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:10::16) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|PH7PR11MB7451:EE_
X-MS-Office365-Filtering-Correlation-Id: 4cdc1169-4898-497a-44fd-08dcc2b8b74a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?KNF4q0zRwYM1jFOcf4tTISn0B/NewyxvXn7FAoVge6pF2Sij2sDNXZv+9Xu1?=
 =?us-ascii?Q?E5zfayAAhKr3BTNfl442dq6e6fadNhnoKhZ43GmAt6iNxOTGOPgUUKMKY2Cx?=
 =?us-ascii?Q?u2CH0ZFeJNkAeB8z+a+CmCwgKUxajvdyGIqo1lmVWjX5gw1q1HVE0Pt58h7j?=
 =?us-ascii?Q?qP7Jw7qs6FuUPrvDDyplsIG1jrnm2gdt+q2uXJ+pS5rTy0N877WrJNzwC6/O?=
 =?us-ascii?Q?F05SV7THjUFQ5arN6ZEowPZSs45PDHcSYV1NmKW8PLKdbrkvk9lnLvBNseSv?=
 =?us-ascii?Q?Saq9zB03+D/dUgwggA25kd8pW2k0xAxGtW+LAOY7mSiS7AdvpbBSkZTEzC+M?=
 =?us-ascii?Q?mEb8WmpcBZvddMFD3DYlgoBeyGJXvnzH/YLsJcnOAHV0FNBiVItTcLOucVJN?=
 =?us-ascii?Q?LkY4ahP4/G7SGTN9JfP+f7YV+4wJEMbFGNAGHrQR2L6Kr7hsM6D6I6m/osvR?=
 =?us-ascii?Q?16300wpBlueCmQKFaSPoSeFbqC5bmpnweWPfwR8BqUl6MGJsAEzrDakXl/sW?=
 =?us-ascii?Q?3E4c3Yggn1NtKIZyS0Xh+4/5XdR6Nls04KcASYQUOmWX8+1gnuspyTpUMq6R?=
 =?us-ascii?Q?X9YZ6HYILmA7PwBA1lI/gAAoshh7anvN4qe5DQD/a/bPyuOV4LPAmOAL3oin?=
 =?us-ascii?Q?ak1JZGdCFVTnb06y4cYT1lq1o5NQHPf7CE+k3eU10UBxHnsPEvHtH6b028Zq?=
 =?us-ascii?Q?6YOf7BD6dD7s6oq3fy1GAFVM4/fpTMK70SPOj2k+GNgZb623F2YNUvQ6+4uY?=
 =?us-ascii?Q?fiM0sbPQ40hjTgcn+1vmoPcdbw1FFhT68V7bh33TJ9n6rSEGqSdlrkwjZOV9?=
 =?us-ascii?Q?II1MDnGDQuwDs8GZ8PTn2amPxMUpFxEhu1ajYNwnqxeBGfuCgzXYoLtt+2ZU?=
 =?us-ascii?Q?PcHC0odLSYEJfcLwsZS+J+b4ffN3to2MxF4CALV1vyxyFQbnvWveFuIfGuNw?=
 =?us-ascii?Q?i+QSD5AMlzMwI1c8iealkNKLh54QCcMI7jgpEytFIemxqD66EArKN0zRhGMP?=
 =?us-ascii?Q?6QdjHCI4NJl3LkxHCV82Xmwu5sAC7+GtO+RGj85TS7APpqEOwy2AdHUwxpsT?=
 =?us-ascii?Q?aH6Szan7sHLLVpmoaCigoQXUMqHqh1yakEkZoImu65oD3tPQ3MalNgRvnc50?=
 =?us-ascii?Q?GQjHfRW9C/doV13eRcPS7ZDue64sTYVGbBvQ1xvpmiGerYHaBx0/GqQolJBH?=
 =?us-ascii?Q?m1HUYnXRSew+novajAAQM3+MU2XBirq67cd4AHXGnbgKHfkih/mo9xIX0DkB?=
 =?us-ascii?Q?OGZKFQzENWd4N18dfoF5+MVhmSQcWiEkeetKwuSUy5Q/5g7CHRGx0HQd8sOG?=
 =?us-ascii?Q?0PcNQ3LI8fsY8RW5R4YjFp12gq9mr9fX6v2aNRnHiO+nWQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?9uauxtnf1o0XQyBVFKvDHVQFBPdHCX5FXbhbLeTG+glabLn1FXK5J3Z7bObZ?=
 =?us-ascii?Q?HL4LlAg1f1jK5fTjPqJ/eCKICEx8DWqegsY3cUXbfiQuyJ7jlSKDG1WPsa9m?=
 =?us-ascii?Q?+g0/T8kwmF4VuJUvd+zzATYN/LOhP0TVXvVq3I8PWhL4nxUOmeTss6oRNzij?=
 =?us-ascii?Q?pBW8O70AGhw9el5dfSYclXTfj7R1ta9eJcaR7M32F7ibzuWHuJnrwPxl+OTr?=
 =?us-ascii?Q?5FZg9IpFBHDx+KapirfUwKJcehuCSPGBSCu5pwvF64nDvmGRyab2olVoWGgA?=
 =?us-ascii?Q?YPXQYk79oBft9myV//GPkImW2VEOmuUQ/cuDzGEsq93FYP5sug/DErKw4KtA?=
 =?us-ascii?Q?01HSoQoPXQvGe80pzDIZV37/MLQa2Ps8D7y78E3noLMQijJt5xXyYZOEnOdD?=
 =?us-ascii?Q?vx1FdUb4cwW3xRtZeeWeklNwqVBONScxLBnLADV4HQ2L02KqeY1Hidnx3oHR?=
 =?us-ascii?Q?nKBmi9giDeReLf2zpO0zJJResW3u2KECk8ccP5XVlhMMdskWyfCTHb1tMVzv?=
 =?us-ascii?Q?ihsNl4h+a8MeqfzwrmcTA2W7BtEPL10XRUNFNKBqfdbhw3XeHVUjiIR7kSM3?=
 =?us-ascii?Q?eRvkJXRZC65NXTnX6y8SmyTgdKUJtY+T+gwIw+Iwz/B696tEFidNkB7tu/3N?=
 =?us-ascii?Q?gf/q51rCZ75hzJlaszZ7kmDoZQraYQ+UE3J2vXSUrhC6NYcz/73pAroaXmXE?=
 =?us-ascii?Q?BXzno3AbdK/VEUuAdvNNiSQUYQ304OyhH9nM5Nu+BofAZcGRRA2RsKcbPOWq?=
 =?us-ascii?Q?THttJ016iIib8oiAym1VWgZ2SXUk3v7+MnW3DrRKR7QA1nV7p7tTVbokEgk/?=
 =?us-ascii?Q?+1pspGLW5HvRp9nAstVRgHkwdPDtJDEQzmX9suEWo9mPhbbZJVGK546kOW2u?=
 =?us-ascii?Q?mD7BdVdP+kEqlRbkgEAtLTPwyne/oZa/bdsaB0XfhLVODEL1vyJ3oOHEoo6A?=
 =?us-ascii?Q?3SFcRIr45TGTKOXMTGQm86blScFuMFHYCmKjYbIem5pGE2sC9JXlPo/J/xXy?=
 =?us-ascii?Q?SX+gMMXskmyCWcXJtr7mz7QtuHF57URgg84l3bjKeWsGiKB5fgTYhrCZjgom?=
 =?us-ascii?Q?NUOE4iTk0VNHGOsPVaOhCZinMZjyqst68X8zqeqIT5dJF4R5r0z44RApjITC?=
 =?us-ascii?Q?PG7esda/KVfR++aD1b60qZMitWNORh0sB0ZEzfTlJXi2Q6enIloetQPmKMMU?=
 =?us-ascii?Q?+sqXiDt1+Nd6tlnKBLZ2pvk5gQ+8qS5vfYyqP728lWpimiacpGplc915kV2z?=
 =?us-ascii?Q?+LS+gMpggO6B60MgX1v/pSuqE3YCTWern9vVUWF1H5WBe98QP+GL8RgCTjRm?=
 =?us-ascii?Q?XfsgsysXoAfzJCBkF2kO7iDUAxvdfVLqrFVSEPgUL/sZxVkMcoEAI1tBMJle?=
 =?us-ascii?Q?xCSmF9K5m1x2544zcf+DTBT/DIWVFzWyy4rbgqliJyE4AqoTGq5kP4T/nR6x?=
 =?us-ascii?Q?hxan3N5e01NkoKLJYYBR6vGGsgLHpuPtl+l7nRFdJ8BNkSM4Wix+1zxr4D3U?=
 =?us-ascii?Q?g4qoN38fK/PMddzy3AHWcMQUmajhIkxDQGSDASbkUCQXt8X6uBP/md9tcjKP?=
 =?us-ascii?Q?ns9933wQKYHNbNJfacqTbd3glmVurKBRkx9ZHKnZj8N61j5hYIfq4eHhHkJQ?=
 =?us-ascii?Q?yA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4cdc1169-4898-497a-44fd-08dcc2b8b74a
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Aug 2024 14:42:58.5927 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cFVDC4GGZ49+rmfKUhg8lMehXMf46cBvIpquQcTJIj+fkIuAXdS31FCUS6xcXidOSOLZExDnu3I2Asi8cnRqp7aMaOQRbKHY/FrFZnVHqO4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7451
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724337788; x=1755873788;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Gii9aOyxnyCjbbKNqVE4D07xCRXecEgKUAr16rZpWJ0=;
 b=iAHgshVpxTe1sXEaFpBLX5EAiR1kI/9EwsbmgT+gPXF1p/wk78SpHHlG
 uvhNA/t9/efWDj90WPQTuTEZo+rcFcZ+Izq+D6WHOu4SEdw/VqJ6r/rqF
 /ffIxNXuGLLVhk3sxOhMfO+7rrGL+eHSvR0jtc7Imo9ioeCL7JQGLBa7K
 qgqYTvedn6LKvth5zEnVMorb/maFvKDnOaAQ/JAIYoRI4ahykrmzpLgNo
 72s/45JT2TuEwC2S0bbxDhXU67f8MYUp+4NWc05UdJu8/9sjMPNt1npeM
 zF5Ay9tqMtzBud9/X+31PEXKsh/7+WOj2yVAclivrRjRM2xZGRTh3+O3U
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=iAHgshVp
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3 4/6] ice: check
 ICE_VSI_DOWN under rtnl_lock when preparing for reset
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Amritha Nambiar <amritha.nambiar@intel.com>,
 John Fastabend <john.fastabend@gmail.com>, Alexei
 Starovoitov <ast@kernel.org>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Michal Kubiak <michal.kubiak@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Jacob Keller <jacob.e.keller@intel.com>, intel-wired-lan@lists.osuosl.org,
 bpf@vger.kernel.org, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>, magnus.karlsson@intel.com,
 Chandan Kumar Rout <chandanx.rout@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Aug 22, 2024 at 02:56:50PM +0200, Larysa Zaremba wrote:
> On Thu, Aug 22, 2024 at 01:34:33PM +0200, Maciej Fijalkowski wrote:
> > On Mon, Aug 19, 2024 at 12:05:41PM +0200, Larysa Zaremba wrote:
> > > Consider the following scenario:
> > > 
> > > .ndo_bpf()		| ice_prepare_for_reset()		|
> > > ________________________|_______________________________________|
> > > rtnl_lock()		|					|
> > > ice_down()		|					|
> > > 			| test_bit(ICE_VSI_DOWN) - true		|
> > > 			| ice_dis_vsi() returns			|
> > > ice_up()		|					|
> > > 			| proceeds to rebuild a running VSI	|
> > > 
> > > .ndo_bpf() is not the only rtnl-locked callback that toggles the interface
> > > to apply new configuration. Another example is .set_channels().
> > > 
> > > To avoid the race condition above, act only after reading ICE_VSI_DOWN
> > > under rtnl_lock.
> > > 
> > > Fixes: 0f9d5027a749 ("ice: Refactor VSI allocation, deletion and rebuild flow")
> > > Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> > > Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> > > Tested-by: Chandan Kumar Rout <chandanx.rout@intel.com>
> > > Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> > > ---
> > >  drivers/net/ethernet/intel/ice/ice_lib.c | 12 ++++++------
> > >  1 file changed, 6 insertions(+), 6 deletions(-)
> > > 
> > > diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
> > > index b72338974a60..94029e446b99 100644
> > > --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> > > +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> > > @@ -2665,8 +2665,7 @@ int ice_ena_vsi(struct ice_vsi *vsi, bool locked)
> > >   */
> > >  void ice_dis_vsi(struct ice_vsi *vsi, bool locked)
> > >  {
> > > -	if (test_bit(ICE_VSI_DOWN, vsi->state))
> > > -		return;
> > > +	bool already_down = test_bit(ICE_VSI_DOWN, vsi->state);
> > >  
> > >  	set_bit(ICE_VSI_NEEDS_RESTART, vsi->state);
> > >  
> > > @@ -2674,15 +2673,16 @@ void ice_dis_vsi(struct ice_vsi *vsi, bool locked)
> > >  		if (netif_running(vsi->netdev)) {
> > >  			if (!locked)
> > >  				rtnl_lock();
> > > -
> > > -			ice_vsi_close(vsi);
> > > +			already_down = test_bit(ICE_VSI_DOWN, vsi->state);
> > > +			if (!already_down)
> > > +				ice_vsi_close(vsi);
> > 
> > ehh sorry for being sloppy reviewer. we still are testing ICE_VSI_DOWN in
> > ice_vsi_close(). wouldn't all of this be cleaner if we would bail out of
> > the called function when bit was already set?
> >
> 
> I am not sure I see the possibility to rewrite this as you suggest, we cannot 
> bail out for the netif_running() case due to needing to unlock after 
> ice_vsi_close() finishes. This leaves bailing out in case of CTRL VSI and 
> non-running PF, which we could do, but it would require a lengthy if condition, 
> which is not that much better than nested code, IMO.

Hmm. I meant to move bit checking onto ice_vsi_close() only, so you would
bail out of it in case bit has already been set.

overall, ice_dis_vsi() is a very cumbersome way of calling ice_vsi_close()
:(

I guess we can progress with what you have but i'd like to brainstorm
later about some simplification around it.

I prototyped something but not tested that, just to maybe spark a
discussion. Feels easier to read and swallow in the end. Not sure if
functionality is kept:)

From 706289d5c37c41cd3021997e0d5e64d7496e5536 Mon Sep 17 00:00:00 2001
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Date: Thu, 22 Aug 2024 16:33:37 +0200
Subject: [PATCH] ice: simplify ice_dis_vsi()

Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.c | 46 +++++++++++++-----------
 1 file changed, 26 insertions(+), 20 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index f559e60992fa..8ccdda69a1d4 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -2625,14 +2625,34 @@ void ice_vsi_free_rx_rings(struct ice_vsi *vsi)
  */
 void ice_vsi_close(struct ice_vsi *vsi)
 {
-	if (!test_and_set_bit(ICE_VSI_DOWN, vsi->state))
-		ice_down(vsi);
+	if (test_bit(ICE_VSI_DOWN, vsi->state))
+		return;
+
+	set_bit(ICE_VSI_DOWN, vsi->state);
 
+	ice_down(vsi);
 	ice_vsi_free_irq(vsi);
 	ice_vsi_free_tx_rings(vsi);
 	ice_vsi_free_rx_rings(vsi);
 }
 
+/**
+ * __ice_vsi_close - variant of shutting down a VSI that takes care of
+ *                   rtnl_lock
+ * @vsi: the VSI being shut down
+ * @take_lock: to lock or not to lock
+ */
+static void __ice_vsi_close(struct ice_vsi *vsi, bool take_lock)
+{
+	if (take_lock)
+		rtnl_lock();
+
+	ice_vsi_close(vsi);
+
+	if (take_lock)
+		rtnl_unlock();
+}
+
 /**
  * ice_ena_vsi - resume a VSI
  * @vsi: the VSI being resume
@@ -2671,26 +2691,12 @@ int ice_ena_vsi(struct ice_vsi *vsi, bool locked)
  */
 void ice_dis_vsi(struct ice_vsi *vsi, bool locked)
 {
-	if (test_bit(ICE_VSI_DOWN, vsi->state))
-		return;
-
 	set_bit(ICE_VSI_NEEDS_RESTART, vsi->state);
 
-	if (vsi->type == ICE_VSI_PF && vsi->netdev) {
-		if (netif_running(vsi->netdev)) {
-			if (!locked)
-				rtnl_lock();
-
-			ice_vsi_close(vsi);
-
-			if (!locked)
-				rtnl_unlock();
-		} else {
-			ice_vsi_close(vsi);
-		}
-	} else if (vsi->type == ICE_VSI_CTRL) {
-		ice_vsi_close(vsi);
-	}
+	if (vsi->type == ICE_VSI_PF && vsi->netdev)
+		__ice_vsi_close(vsi, !locked && netif_running(vsi->netdev));
+	else if (vsi->type == ICE_VSI_CTRL)
+		__ice_vsi_close(vsi, false);
 }
 
 /**
-- 
2.34.1



> 
> > >  
> > >  			if (!locked)
> > >  				rtnl_unlock();
> > > -		} else {
> > > +		} else if (!already_down) {
> > >  			ice_vsi_close(vsi);
> > >  		}
> > > -	} else if (vsi->type == ICE_VSI_CTRL) {
> > > +	} else if (vsi->type == ICE_VSI_CTRL && !already_down) {
> > >  		ice_vsi_close(vsi);
> > >  	}
> > >  }
> > > -- 
> > > 2.43.0
> > > 
