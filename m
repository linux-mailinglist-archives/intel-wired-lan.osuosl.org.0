Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 143D6BC1647
	for <lists+intel-wired-lan@lfdr.de>; Tue, 07 Oct 2025 14:44:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2EA5F824DD;
	Tue,  7 Oct 2025 12:44:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JDv92ycuk9n8; Tue,  7 Oct 2025 12:44:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 33ACE822D3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759841080;
	bh=9A6qBFVuEQ5lQp8CVF/VfjROc2AlQgNJT6eQgq6BiIw=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xlhTcpWuHlXBPLSrhASvaKiajT9iZ3CFzpIB2Y4/tCcWPERZF9S/GuJQ1Vlh8HLCk
	 BW+m8y+Dn5bGKutgRwIpLQxZtV1S9zSnW3XBrjQ46JadQCAoQfoLexc68yeTQMmv81
	 cx0E4xuaLNAxvgdkaUgSWW38jD4Ugvz57W1g99c/kIU+apyhMmxy4dAU/d+O7UDTBM
	 Z8oGbh4hCHv29Q8h9dRQraxyHxDIBmTpZFNpuuy1BCUK7YUifZdV1OsBBsxsfgSy0d
	 qSma7ZESNDCzIZAfA1lRyqMEPsWHzLLJdBcI2AvvDgyzU7Hxi7FUgg9ZZXgzOzKmqC
	 YdMoAL9jWj2GA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 33ACE822D3;
	Tue,  7 Oct 2025 12:44:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 9A09E226
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Oct 2025 12:44:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8B932617AB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Oct 2025 12:44:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gUP-yffDx0UD for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Oct 2025 12:44:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9E95661781
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9E95661781
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9E95661781
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Oct 2025 12:44:37 +0000 (UTC)
X-CSE-ConnectionGUID: Rq3UmV5pRcu+VNHSXOyQfg==
X-CSE-MsgGUID: H2xVUCFXRYOwSZzv47Qsdg==
X-IronPort-AV: E=McAfee;i="6800,10657,11575"; a="72696287"
X-IronPort-AV: E=Sophos;i="6.18,321,1751266800"; d="scan'208";a="72696287"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2025 05:44:37 -0700
X-CSE-ConnectionGUID: wNsAo+T1QnOpOUHGOrZ7fg==
X-CSE-MsgGUID: hv7p+HyfT/Ou1wKWtfMmkg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,321,1751266800"; d="scan'208";a="179725699"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2025 05:44:36 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 7 Oct 2025 05:44:36 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 7 Oct 2025 05:44:36 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.68) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 7 Oct 2025 05:44:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GdW5rFenXox1pePKaxTzX0TwLN6kS/fGjmS7O0scEOq3rvc0YPeao8neJ0IDKel3PReLfdoeJtA2yNqHD99DlR5AHOpOYn+bEFbnzbSvDN5PNU+FTQmqO3YXsmWRA0nY5xqnrVeg+G7YkRG/mvRkxqB0ZKTL9im2p9Zs1sryUADu9KjhM5PtayX6O4JK/Lio8I+QaL0Njo9k+IdRWUh1MMOm0Wv/2x44Z41sNQ/ol3ZFpmP+t2ZASnCqi/dPx5/0lKdnM5T1+QIWwqmyRXuP7lMJSpRE0YXVDqgUNrn9hMejxo7+ld1SKfuuHeGozBhsQpZTs7xzSn5X/tZch5ljrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9A6qBFVuEQ5lQp8CVF/VfjROc2AlQgNJT6eQgq6BiIw=;
 b=xOfc4OB42VRGtNVXxq9unmHvIVvxJSLqhFAPNSvFYpeN8b2tDvmDkAHqmCKifLCNb2Xyy0yBXr3LZ1FmT6R/UrBnrbGXgYN3ewV0Wo12iW6p+FHj3Mn0brTLkew5SyA/mbCZJ9B009kan3oUM44SMdTqknsolNw6NndfAtMdMqCE8YBjb0r65RQ7YbcDkYs1CNyedKDIU6+b1XuD47ZgnDq5yE6wLPyOMSdJnM0eataM4nmjRmIzJ05dVohiMo+VrVFnDNQS08rZ2PbjLAyNNlS0589vV0RTcoS9yhP69yNM8lhudpzEZF23X0zvjcUryOObsNQ1MPoNlkr6CzjIYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7540.namprd11.prod.outlook.com (2603:10b6:806:340::7)
 by CH3PR11MB8702.namprd11.prod.outlook.com (2603:10b6:610:1cb::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9182.20; Tue, 7 Oct
 2025 12:44:29 +0000
Received: from SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::399f:ff7c:adb2:8d29]) by SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::399f:ff7c:adb2:8d29%5]) with mapi id 15.20.9182.017; Tue, 7 Oct 2025
 12:44:29 +0000
Date: Tue, 7 Oct 2025 14:44:17 +0200
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
CC: <intel-wired-lan@lists.osuosl.org>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, "Paolo
 Abeni" <pabeni@redhat.com>, Joshua Hay <joshua.a.hay@intel.com>, Chittim
 Madhu <madhu.chittim@intel.com>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, Emil Tantilov <emil.s.tantilov@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, Aleksandr Loktionov
 <aleksandr.loktionov@intel.com>
Message-ID: <aOULIXcBwiUpo67E@soc-5CG4396X81.clients.intel.com>
References: <20251007114624.9594-1-larysa.zaremba@intel.com>
 <355b43c3-fb0b-4e94-b49f-a008843f1267@molgen.mpg.de>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <355b43c3-fb0b-4e94-b49f-a008843f1267@molgen.mpg.de>
X-ClientProxiedBy: VI1PR08CA0225.eurprd08.prod.outlook.com
 (2603:10a6:802:15::34) To SN7PR11MB7540.namprd11.prod.outlook.com
 (2603:10b6:806:340::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7540:EE_|CH3PR11MB8702:EE_
X-MS-Office365-Filtering-Correlation-Id: f2edcc58-acb3-4396-5dad-08de059f415b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|10070799003|7416014|1800799024|366016|376014; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?HT+ROMDxy+OsNkCPgMP12tyN9D+nQyHyFUe2nrKuvfWncVgkgNIFqfjgwxDX?=
 =?us-ascii?Q?zkRKrx5grqS2gFDmxeceWd3JYGWd5Yn/2pNFzE2CGl6B6a8NimbK5tbEcRNq?=
 =?us-ascii?Q?o2ApmRsNEoY/mPQfw7+0K/HLdADCGNPTAIFeFLDftg8MeLnz761dYVTAJx5d?=
 =?us-ascii?Q?6WaV5FvRNspCrPDDRE163xIMS/pmQ65qjIUu9oA36bbzuMQI4sjQ9x365Ye+?=
 =?us-ascii?Q?Vo1CXEPoB3Y9MKSiA6xLNkAkHZ9I2wn0cOQzhlIvOfgA87P98XhHOxkFT/uG?=
 =?us-ascii?Q?7IVvEMoO2sF+nvdm1wlWbtB0ikzNQDJS27BL42WWOq5tu+JDSSt1nY3mNEJ5?=
 =?us-ascii?Q?9A0KANLNncrSDQ6dcmmEb5q3GbnvoIIbkBM/lBpIbWPPek60Co5PWPg4WFUp?=
 =?us-ascii?Q?8qK0evbBkrv4HQBqOkMIQ+bxE2b+NGuAq5NwfknjpfGWEIFTV1CG3sXjqP2F?=
 =?us-ascii?Q?kwJ3amEoyMXF8JbiRZVHIddskOMMgdRXK4yqXof6zFrI/XUcFmsrjNnWfHCl?=
 =?us-ascii?Q?w7yYiffiRp46p/lp0LqjA74Bsd+Exkjf7dHkFBBouD7/r48lvOdIjJ8Pg6iF?=
 =?us-ascii?Q?Wh01fhwcv7Gsjer1vqsMb6HKxW/Ir5uH1OkzFpFZb8Xkqf+YXaXjsKe4YEDy?=
 =?us-ascii?Q?Sun1UY918jW6HFKfagwq6BPSjHEvLj9X8Fcph5ULbSGtzsjSTGv/3Q3TFtgX?=
 =?us-ascii?Q?/NOGYS/C4TxeG+h13zY4zeUohSx2V44t2br4W8O0yC3e+zaVdE6J4B6L1Rov?=
 =?us-ascii?Q?wrK3AyGkoKT3S0r9CrvR1MhCS1Ci+F69ebMN/aLNM+0IDhSD9I7rqIixh9xc?=
 =?us-ascii?Q?JES+mWokyNd204VL70IFQJowYYHypVqSAdLsgABUpkXPGOFoYYCbRJAbT3B6?=
 =?us-ascii?Q?y0z1e7PfMh7pu4GM1UswppP3fAx/4P/VxpYvwlclewloc4QBKAeLZR+w8IEs?=
 =?us-ascii?Q?LWGH9z4HZj00xv2wyCkxmNSPxhpKfGT9gYS6zab9c95jawwOrqsPCTwQ9xAj?=
 =?us-ascii?Q?E1+dVkCZm8SCfMCxYtwiFFN/SI3ckwMQRkHQKIISzH+iXn5OieBDVxKJC+xT?=
 =?us-ascii?Q?ZvscbVxobzrfejgZlYcv+8Eq6o6x8MbmiPgEe6FX3E1Rk5UrjA+4TdJAHBr/?=
 =?us-ascii?Q?WIrCV2lo/l8Mu+7xHOal4x1e0FPdXlZolbWN32zD1nhuFuN4V3Vj1hHJWm0h?=
 =?us-ascii?Q?B5l8rTaChVdXjTxD2TO9z9JoBoY6b0IvtPmxZDgzlXXcB/3FJHU9pr54Viu3?=
 =?us-ascii?Q?VNFsVExBNpurYaiyMCcGzdwpGSH6RfNSi4hl447d2P73MaAV9A1B2V/uYtOv?=
 =?us-ascii?Q?DhLtnQkgaTcUBEo8BYRYa9JGPWwqrKszGJAKox++1tuPooCnaf7PDXD0mGFV?=
 =?us-ascii?Q?+QuvoCNVxS4q9m72w6wGj7JxOXjicAsRj6rhjh8KZfxQYPFSaA+MDrpM0EeF?=
 =?us-ascii?Q?/7L9LyBooJE=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7540.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(7416014)(1800799024)(366016)(376014); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Hq2Q7m7528uX7h08VeVFaqcDL5rG+gFtcrPHNMLkuq4oHSAhlvfCYwW7Ux11?=
 =?us-ascii?Q?B8bXg4+V6UfVw05kqz7OqjHKmrcRnRv9b6pf+BvEEL6fauo5ufUgHNQfNUXI?=
 =?us-ascii?Q?K7NCGZu0vpJ2/1ja1saaBSvZMlz/hg/MVp21mC4ANISaVBKq3QoVDKeEFOB8?=
 =?us-ascii?Q?HlPcQ+7WY5iYCTZ5fGlzj72qbDgh3u8vH1MueJ0DK4vccM3btl36iCUA6RXx?=
 =?us-ascii?Q?bnO8Y2yIFC/f8gXuD5Dl8aHfsvxQ61EgvUVHtsv6/+Nk2QVLRnjjw+v1LMI1?=
 =?us-ascii?Q?9eElfMfW62lZMBXe0jXnToGz+s57q2tgJHwd/aaM/SoGGFlJwIvcRHoMF32z?=
 =?us-ascii?Q?qWzlYk0gDaJwIRK/lwBdbXp/LRspr2trr1iLqs0YlDxR+7YmTVMj3W/8Hau9?=
 =?us-ascii?Q?HN41hFKRm8NER8BlYZ3D5x6k7CC3mUFfYxWYZuGHZ9yDNZKmrLLxfNacY5W8?=
 =?us-ascii?Q?sogxG03Tdy39UVQ7gHxSAceZLmo+scTsEAPs6N5onkPL/gM3MjsHKQM2NNoY?=
 =?us-ascii?Q?D8pNoN25CnDtGFIl/CyivfBtov6FJAk4sZgHt8U2gKEWzN8pfL0DdekLqUe/?=
 =?us-ascii?Q?SLtEDtN1aj5iLfor+0kpi/xqv5ziCh4l+8ZYQkTnk6jl05/h80z/nLRuE5vp?=
 =?us-ascii?Q?MWpSUe3QmKBcu4quK3RLPTHyJ8peUi8UjGbDbPEkMxIrjQYV+9smVrzrBeqq?=
 =?us-ascii?Q?K+nUgvcVnGuyQGNba2pEeJ+EbwIo50b2TwuLrCbCyk/mO8D6rULB0sI5LL4D?=
 =?us-ascii?Q?gZIdhm/q3rNJ3W6ppq0+6OZJzSrbX5yQqhipUrcoSIduNjhw7lrZhscbO3Km?=
 =?us-ascii?Q?0V+Wl4Y1TKe9ORhEQfDAgtyUZvDWqS2jjeusZDca7yZ7EvxOSmLQVp/drkAs?=
 =?us-ascii?Q?jIYdhRzv/ajx6BjtBCmsL6dm3WBTykkfbBvFxpjCHYirWMfhfrN/irQqRemn?=
 =?us-ascii?Q?oTjLdZbS0HSmhAUZpyJd4Qm5J9KF5mM6WhGZwov1nDLdhFoTN6siR6AfqfZo?=
 =?us-ascii?Q?NrucJmHjkSQiLY88ek/UxLuX4tbNN1SRgUYF7rypfEwVZPrS7IQwMFEC7uzL?=
 =?us-ascii?Q?uLRhmbGtRy5oBom1ylriWV2lVqV9mDnQjouf1FzeOdN0G4bhL6xgzY2g/T6E?=
 =?us-ascii?Q?PI/2CF3iYW2gX8jz45jAACBax8bOZgsjntb35EQIkyIwVZ25kKBPN/qXKZ3A?=
 =?us-ascii?Q?3Nh5GrphGtZ1TWzyprVy14g/dm5bWurh+WYzVfGqGht360BYxhW3Vu92zpP4?=
 =?us-ascii?Q?aoIm9AFe1w9y8Cm8TEt908s7GIG4TLrSQ+XjO/5GQkUANICK2dU+kTUyeaaS?=
 =?us-ascii?Q?XsH1ovW7hC1ytzxXM8OmaGYigqEALz5C/HCm0xXXtnwZpWkjXh1hmUKrI4fi?=
 =?us-ascii?Q?dwZqxkP3lieBxmh0VLGbvmfnX5zCPKrXrYx+8qSc6fegkzBuo2QQ6w22SS/0?=
 =?us-ascii?Q?fjgbihp3rW7Vd4yz0UvFe1GJRqE5aR2DGSjnVmToMWOlo7yd83FNjwd58zzB?=
 =?us-ascii?Q?2xK3Dohwk2klaK39uqboS0wob8l5mJWx4JrEo6jQAJEAWH8iVQX0Smsbsiib?=
 =?us-ascii?Q?hcLMpwsMsV13XH9xDt8YFjL+weCoKXb17odLsf/xOzU+SflWfzVNWz5KUykB?=
 =?us-ascii?Q?zz65BzoEbc9qWfaRlAgL7QOdCPxtDPze9VSS/eXSe/pClAtJqeIvi4aBJUVR?=
 =?us-ascii?Q?iTD/2A=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f2edcc58-acb3-4396-5dad-08de059f415b
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7540.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Oct 2025 12:44:29.0272 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /F7XwwOvwnitcjhANhhUp3BMXqJXCljzlf6q8GoPB/RfjDAfwz091y7G8CiEpDIG+LRcKKgMAwGh8Meuj8IIHHXFshu3QY5Coaf1S4n7+Bo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8702
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759841078; x=1791377078;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=6Ls/402Vi6qA+7vnPVyMRrtHWHXBYRXF5YNZfP3HKCU=;
 b=VHO3g0ak+I6Vclci07FQ8Z+8XiZ7x2/1JVBBkzG09eWy9WfksEJdHovs
 CQs1CUsQnaUoJSLYmkOiL9MJ+mmDBhTkWXNiVPWq8F2x0rC3O1QZvRxOQ
 NDiZhhdXTVBqABeMAJcEoJppTHa4lrEHVDZEM3ftQfnfEGr9554PYWbG7
 wON+dDTXNDT1M/l+yP9rUYdu69vLwTbPOnokhX6YnZHNAA0gdLVg5C3Ae
 AbjckBU23dsSULd0MEN2RDgYCFDMvfN0snZWZhMH1/ai5i1axEur9CMki
 eWW+Jfgo9aI94yg+WanKfqjv6dCbh4RTBUejRcFgEz3pwN/sfvkNM1ItD
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=VHO3g0ak
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: fix LAN memory regions
 command on some NVMs
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

On Tue, Oct 07, 2025 at 02:06:55PM +0200, Paul Menzel wrote:
> Dear Larysa,
> 
> 
> Am 07.10.25 um 13:46 schrieb Larysa Zaremba:
> > IPU SDK versions 1.9 through 2.0.5 require send buffer to contain a single
> > empty memory region. Set number of regions to 1 and use appropriate send
> > buffer size to satisfy this requirement.
> 
> Where are the SDK requirements documented?
>

IPU SDK is a fancy name for the FW. AFAIK, aside idpf specification intel did 
not publish any additional resources for it.

idpf specification [1] is unclear on the exact get command contents. What I am 
fixing is the reality of the implementation of the NVMs that support CPFs too 
(supported by ixd [0]).

> What are the current SDK versions?

2.1, I tested with 2.0.5 that was the latest when this patch was first 
implemented in August.

> 
> Do you have a reproducer?

I can reliably reproduce this on my machine with intel IPU SDK 2.0.5, the 
command fails every time without this patch, causing the probe to fail. Also, 
other developers such as Michal S reported such problem. It is most probably 
present on older NVMs too, its just that the command was not used before the 
RDMA patchset.

I have checked that the patch does not cause regression on the platforms that 
use another idpf-only NVMs, used by most intel IPUs.

[0]
https://lore.kernel.org/netdev/20250516145814.5422-1-larysa.zaremba@intel.com/

[1] 
https://github.com/oasis-tcs/idpf-specification/blob/main/idpf_specification.pdf

> 
> > Suggested-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> > Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> > Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> > ---
> >   drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 5 +++++
> >   1 file changed, 5 insertions(+)
> > 
> > diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> > index fa3ce1e4f6ac..af8b3ebee4d4 100644
> > --- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> > +++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> > @@ -1016,6 +1016,9 @@ static int idpf_send_get_lan_memory_regions(struct idpf_adapter *adapter)
> >   	struct idpf_vc_xn_params xn_params = {
> >   		.vc_op = VIRTCHNL2_OP_GET_LAN_MEMORY_REGIONS,
> >   		.recv_buf.iov_len = IDPF_CTLQ_MAX_BUF_LEN,
> > +		.send_buf.iov_len =
> > +			sizeof(struct virtchnl2_get_lan_memory_regions) +
> > +			sizeof(struct virtchnl2_mem_region),
> >   		.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC,
> >   	};
> >   	int num_regions, size;
> > @@ -1028,6 +1031,8 @@ static int idpf_send_get_lan_memory_regions(struct idpf_adapter *adapter)
> >   		return -ENOMEM;
> >   	xn_params.recv_buf.iov_base = rcvd_regions;
> > +	rcvd_regions->num_memory_regions = cpu_to_le16(1);
> > +	xn_params.send_buf.iov_base = rcvd_regions;
> >   	reply_sz = idpf_vc_xn_exec(adapter, &xn_params);
> >   	if (reply_sz < 0)
> >   		return reply_sz;
> 
> 
> Kind regards,
> 
> Paul
