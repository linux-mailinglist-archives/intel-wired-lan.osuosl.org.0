Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 2Ko7GUuHTmqsOgIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Jul 2026 19:22:19 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 956B4729238
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Jul 2026 19:22:18 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=MZTQp5wl;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2402640F11;
	Wed,  8 Jul 2026 17:22:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mOKZa96-QKao; Wed,  8 Jul 2026 17:22:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 46D3440F08
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783531336;
	bh=ZFkGnyVnN5TTqK/K7OLSHDpZxjbaTCmZvM8wjoJDeTo=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=MZTQp5wlgQMnLUwqNlxTOGdtZf8E72bXhb19LhbBeVj44PyGA9bfyUJGcnNlv0bfZ
	 fV65OrkrqevJKT0Sn9d0ENCDg84QJHjuwb7DGA1LO5KueFDCJAxtPI4v0ONIST7vU9
	 FeGyoLZn7AjrVP9krMSDZoWkimq99Ce1EoTXoUNJw76ycj38DzPiNAGwyYtCxmf5fm
	 IYVqRQDitEM2Tb9/ruIb92FVq800lPFz+5zUp0765WkiTR/46oRv+2Qu0ZmZYnBwRv
	 rLgrtLFuJRE3stgxMqjq06vcoiWURQJCYR1bilbxczgGkBHKkE2u4wmqoybg28vCSd
	 jp0EA9v+2ta0w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 46D3440F08;
	Wed,  8 Jul 2026 17:22:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id B2D482D1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2026 17:22:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A3FE940B56
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2026 17:22:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HUB4qb2c7mio for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Jul 2026 17:22:12 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5BB2E40EED
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5BB2E40EED
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5BB2E40EED
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2026 17:22:11 +0000 (UTC)
X-CSE-ConnectionGUID: xRmv7quYTrKcEkdiqvdwGw==
X-CSE-MsgGUID: qNOtHvXZRHu3/rXbYj5t5Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="71723359"
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="71723359"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2026 10:22:11 -0700
X-CSE-ConnectionGUID: e8wAEY8pRKGZwAsFyOftPw==
X-CSE-MsgGUID: xl2rVXqnRRWIm/Dzfrraag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="259249030"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2026 10:22:11 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 8 Jul 2026 10:22:10 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 8 Jul 2026 10:22:10 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.11) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 8 Jul 2026 10:22:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gAKdEMGnYxs0JbV8gjmpzO0v/9aXCNt3lqEvUdusSgoasEjfwszXChCZmmbjjAV/GsOc1GCEEz2QbIXhRIr3QYTgEqkjiHmhqBzqXFsatQSW+WTjY0CooI1Rr+EH055KEHHy3cIpMudNITgr6Eji8gB1EiW/WzgoxFlnOWAuibQREnl7psiTRPN56y0LYVkeWGiiPuRp3+f4Al60sEyb+PYBRBQIJFwA8y/kY4dT8YeVAhLkm+VD1DHUPKVVjV3cU+3kxHwMF0AYCv/9VW1POU2QPPK10oUB7JJ1nptcqxUC/lEbStwESWyu8IePWi0VGUH/sXUWR8R8TTK6at5rEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZFkGnyVnN5TTqK/K7OLSHDpZxjbaTCmZvM8wjoJDeTo=;
 b=XWuRS5zNPTzsLN2ijtO/W8mcDY2YreL8rM2uFlsXy4Xq3Pu5kIylvRRJBkaYSaOj9rAmH9EjL4Axe8ySQn+X5Mb1hBUGAMzrZXZzm+k3hx84iOLBA9ewauPpV56+1uYKPHhRI0f2/9jLJ5PyIpNgbmLFSuiTPh9yukkuKM1QiV6mcrEBPTwBxtLNi7vVG5Cro6oWAisYUEpGTRq+g/aEEn2Qgp5YZcrD5ouO0ozoC9w0tqAREcBcMg/oIdr36PIS06Vlw3qbyGYJ20glfGX4IIm7n08nwBU3iieJg8PIPWuW0WEe9HF56LRUyuT+WDDDEXRsvrYNDDKppeLpMhwGxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4SPRMB0045.namprd11.prod.outlook.com (2603:10b6:8:6e::21) by
 LVTPR11MB9912.namprd11.prod.outlook.com (2603:10b6:408:3c6::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.10; Wed, 8 Jul
 2026 17:22:08 +0000
Received: from DM4SPRMB0045.namprd11.prod.outlook.com
 ([fe80::b630:ca9c:20e1:f485]) by DM4SPRMB0045.namprd11.prod.outlook.com
 ([fe80::b630:ca9c:20e1:f485%6]) with mapi id 15.21.0181.008; Wed, 8 Jul 2026
 17:22:07 +0000
Date: Wed, 8 Jul 2026 19:22:02 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Simon Horman <horms@kernel.org>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <magnus.karlsson@intel.com>, <kuba@kernel.org>, <pabeni@redhat.com>,
 <przemyslaw.kitszel@intel.com>, <jacob.e.keller@intel.com>
Message-ID: <ak6HOhJh/pxdloEs@boxer>
References: <20260701124524.13644-3-maciej.fijalkowski@intel.com>
 <20260708150455.1498611-2-horms@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260708150455.1498611-2-horms@kernel.org>
X-ClientProxiedBy: VIVP296CA0120.AUTP296.PROD.OUTLOOK.COM
 (2603:10a6:800:358::8) To DM4SPRMB0045.namprd11.prod.outlook.com
 (2603:10b6:8:6e::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4SPRMB0045:EE_|LVTPR11MB9912:EE_
X-MS-Office365-Filtering-Correlation-Id: bc8a21b3-9447-4d22-7ea9-08dedd157000
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|23010399003|376014|1800799024|366016|6133799003|22082099003|11063799006|18002099003|4143699003|56012099006|5023799004|3023799007;
X-Microsoft-Antispam-Message-Info: EcJq2NOJH44CUSAb0UEGkiI4wrGfUjsE/h61SAth3vXxuZz7Z5aYsaJz03okVRuXdZbMD59X//jAVbmxfBH/vTqFIfEMcV7Tn4GH3WvKRuZu6el/y+xbnLZx2rOiPuLVwXFNnSXMORCbo4M9wRrKbfQezeifzCk6V1MT4CtxA7Q3wG2jaimQM/YmCMepyOVJC/D+V8hN50Ejq2dR8V/YV9XpDfUAo7zuMg9+2nxpSANn4ckpPvYziWyMagXW1V6lx3sOoSZ7lrfsJrDlJTUKVeckdC4sHIpiNYdroxNS6YQ1JgJuMmr+qE0369pBLhhuj8LwD41CxVKuORPOgUvYQuwEfNLWNnrbPG3EE833F/UyJ9zWcI/4c5ChploUNZ0ZJU77fKX4khghXdWaTNcaH7hZSKzPJwD3Aii5STHrYQNq5Ipim0QBcyX1T3h36eYA/r0T6SUqz8Dk1WNTjtt2OXolphWgmUMk8GLIuWW7SQXo8ydUe/e1vocEqba4NzdqhcrL5yb6dtGcpceMpcS4wJtMX69Y+R9SaJnvfAaSTx/OvXH+1jkZMA6q3s5GDyRzsBn1fzDm2viG2HIfQeDyNEZpK9trxCDYtaNbvCnhn/8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4SPRMB0045.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(376014)(1800799024)(366016)(6133799003)(22082099003)(11063799006)(18002099003)(4143699003)(56012099006)(5023799004)(3023799007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?QZ4tNZddYhX6mBrogW6Kf/tH9Z7bKgLxc5RhBc6zc2yzLP0b1AWWgb0p2Sij?=
 =?us-ascii?Q?pUg8OkpwNVNVvOiy12K1XuJsFB5DNCeu9E9bVoDDpS9DFy9x5lG35tqnE2x0?=
 =?us-ascii?Q?fBginWsmOJbFtTFjSlNHld5MzJMLZIv61B2jC/DGEz/MCZ49QORzuMnVytws?=
 =?us-ascii?Q?5lDquduFrI4iT6gkmnQLWG5nrJUQ+ARJcKEUCSwtm7rGUJSzNXnrysxj7hZE?=
 =?us-ascii?Q?fQPRal2srkfFQyBErknWiWbUg42NSXZNzUSZ1v/1pggktxVBXHilnLwirENn?=
 =?us-ascii?Q?w6BJk4tqjemoYkSSzGOWh3r/I9aoLBiAKCrIeRm9GmccHoQnsywnOzoRSG3I?=
 =?us-ascii?Q?B/lm4EQjddReqsbfRoYPuglNpUk7Io85mo4BTq5ZpWAZaoIYMNwUOwT6U8wI?=
 =?us-ascii?Q?V1K8+eP7Sv4UkE8JH6vTQlSw1GUQGLYYxGlcy1K6uT21KQPTnwwDAu/ai3v6?=
 =?us-ascii?Q?psBpu52jN9bAxG1irOhhvJ5kM2+u2wik3RXttlDiDpupNMyKwnrAYPQSX2kp?=
 =?us-ascii?Q?MOYFdXovcSkOy33UiIbydi4/DxS114MiVuDficyvEJTsTb8Gyq7x2f/rq4Jq?=
 =?us-ascii?Q?RzgyLoxhAXoqj3f/xJ3XPDN8AIZAF0fOXTL96n3b9IdFwUSSBfvdhXbeCKSo?=
 =?us-ascii?Q?iGBcEttI0HbKeQNnDwMPhppUgnGB3pJI5VBGH5JZjBSlVqTjNPT1qSUZ3gNI?=
 =?us-ascii?Q?dxjCs1yRHkYKOUSgji9saToKAg3GAhvrhQluHupgC8+wVgbuiSt3MuyuZyjd?=
 =?us-ascii?Q?EyYBSjIwbuQeMYznkUdf5IWewuXDmwc0VMBNmNl3LB8AcJI2FVTN33isWGTe?=
 =?us-ascii?Q?Np0z3tq4dSLW3gXaV6WMYwonpiIF9UOcXFEG+q9d3A+FCGtjpOHPOVIMqCWf?=
 =?us-ascii?Q?afUA4k3QgxXwo8tL8HAqSql1nkOOjKuMmbdq/F0JAHQzmcujAGYwV3Qx8+IM?=
 =?us-ascii?Q?RHkI4iUTsnoGwPNmLY5iQFAgHpQxYdDYF/4ydeVSObBOR83KEj3FIe/Wub87?=
 =?us-ascii?Q?tZhb92yH3uJ0qInTsLN9YSHe+Tjjqrv7s++C+6dQ+SZw6j1jVpczRAnztM/+?=
 =?us-ascii?Q?nk8u15FUNMNz4dKnCec3U2kNuCPqgasuc5kXih4oE1MGA3IVZCHlnjFAsZvV?=
 =?us-ascii?Q?NUXGZAx2xoHZMwyhkGtCxhaTC0z5ZffXHDB/r29GQ05b0sezbv87bjn3vnjz?=
 =?us-ascii?Q?/zbqafhnwydO1pDa77Zs/mgH5cla6zVZQokfnH/2mHMkGBLfi+hxB1vergaf?=
 =?us-ascii?Q?YQ7Tw/dDhl7fPHLphd9ei2QIufbZ99RUiwlMaEoYVva9fIFg1UBWoPbrsjv8?=
 =?us-ascii?Q?iSD+A8ojC3fsseJzG1uMKXAmpXOySa0vup9kZwJCIFEALxd12E/1Si+Owinq?=
 =?us-ascii?Q?iWO5euNuywGWb1GPFQNteV4iKnTEa1qJUFJ7ULNhvkFV5AKYWdUljX4nvHmY?=
 =?us-ascii?Q?pcNYj9QfH51trWo/BqE9LRsEdh2JXHcqYP93VdEjih9N0CFiJBSUVMyz36cL?=
 =?us-ascii?Q?/F7m12PgeIAioj2vDwMvqfPD9CKxw8jTKQMgbk7UOSf26XIGPUkRuDC1n66p?=
 =?us-ascii?Q?qtaRyeaiXg9NvLtXw0yUVk9aOqBEY0GASECgMCOqY0+zmQA+q0VZrmzMJwBb?=
 =?us-ascii?Q?gyNT1A0Dc5T11soa13Ky8DmadsMIMf+V+Z2wtx8IrnTE8AHFT9dochSvB55R?=
 =?us-ascii?Q?VzHgs7CX6zpq+riR2huabV+Gf1D9MVnGAonP+2wbZ0LdGp6/HNuTCmu/C7wL?=
 =?us-ascii?Q?0hKMaiU4Xi/4y4Y7vboQtHW2s5m9rfI=3D?=
X-Exchange-RoutingPolicyChecked: BwLwInI69IDM88ocGzaycvdW9LrubVoU2A/9fgm2Tz7x2vG3kxZlr0fwkVdtYOzSwRyr47FhJu/+YwbKo+hUCBaJd7VzWKt4K9rJBNfaJ2e+vKzxSPYNyTkU/WUIrd1sC50beMjsE88RLd/YAgF0mdydjjlwiKEK1+xESGlkGZQR41Ov6wsCY6CzLsm73Ax6Z9Mjc9TSIK54kxweyvvpdcK+RqOnqShDCI7AcJGKMqk3Yt+NmaQ3oClEhRYxwl3rDR2mUVFeL7ii3mxI/s5zBKaNC9agEL+NtL93Q7JaFzniqYEwj/G1opEwX77qsyqjC7E0OkJe70WyYAFPToV0Xw==
X-MS-Exchange-CrossTenant-Network-Message-Id: bc8a21b3-9447-4d22-7ea9-08dedd157000
X-MS-Exchange-CrossTenant-AuthSource: DM4SPRMB0045.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jul 2026 17:22:07.7296 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yyf/lkk9wYvJ8ltu8xqcWut3Um+p8wwLJCcrNyVQ4sjO6J49fbqilSj242LmdyrQk1/rkJ67F1hnVPNm2CeQ91KVx4cxTrOkZzUG3B/ZfGs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LVTPR11MB9912
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783531332; x=1815067332;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=jfjx59+UbOiO7W/ePN2Ds9XAmUX/4Je++PwNW6tkSTk=;
 b=gOcDqoD957PglO1icE//QpBU1LqG5kkK87qQcOWGdjArA1HIwR6FGrlb
 BBRZe4Kmh2CbRalgDnd/98jB9WGwZCJtB1LTvldZDU+YPz1Efq7g/9VP7
 +qwDAnRRgA9kElS0CJnbjU6Cg6JPlwwY9YpKw5AcaQ8rCk0LBSMZbd6r7
 rNzOLRmdYyKbjf9ZRES3Z0zUiaD+CBrmp9HvS/ZW8sxV8po0SXVdUErK+
 6p+suXBdwE+Mna0qPi7ld5bIbbdYFq2yuFqOoqHje8oGyCzubuOS+UmnZ
 Fps5DjqIziZJq3uoOAUWKa9zURFxY3+ln3yrTOEqYw9YN6k6NkkJqmpcH
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gOcDqoD9
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v5 net 2/7] i40e: avoid null ptr
 dereference in i40e_ptp_stop()
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.89 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[maciej.fijalkowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:horms@kernel.org,m:netdev@vger.kernel.org,m:magnus.karlsson@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:przemyslaw.kitszel@intel.com,m:jacob.e.keller@intel.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[maciej.fijalkowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:from_smtp,osuosl.org:dkim,intel.com:from_mime,sashiko.dev:url,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 956B4729238

On Wed, Jul 08, 2026 at 04:04:56PM +0100, Simon Horman wrote:
> This is an AI-generated review of your patch. The human sending this
> email has considered the AI review valid, or at least plausible.
> Full review at: https://sashiko.dev
> ---
> i40e: avoid null ptr dereference in i40e_ptp_stop()
>     
> Check if main_vsi is not null before calling dev_info() to avoid a null
> pointer dereference when i40e_vsi_clear() frees the main VSI during rebuild.
> 
> > diff --git a/drivers/net/ethernet/intel/i40e/i40e_ptp.c b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
> > index ff62b5f2c8150..ca93df4d67859 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e_ptp.c
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
> > @@ -1556,8 +1556,9 @@ void i40e_ptp_stop(struct i40e_pf *pf)
> >  	if (pf->ptp_clock) {
> >  		ptp_clock_unregister(pf->ptp_clock);
> >  		pf->ptp_clock = NULL;
> > -		dev_info(&pf->pdev->dev, "%s: removed PHC on %s\n", __func__,
> > -			 main_vsi->netdev->name);
> > +		if (main_vsi)
> > +			dev_info(&pf->pdev->dev, "%s: removed PHC on %s\n", __func__,
> > +				 main_vsi->netdev->name);
> 
> [Severity: High]
> This isn't a bug introduced by this patch, but this lockless check appears
> to introduce a time-of-check to time-of-use race condition.

Thanks Simon I saw these, however since all of the issues are classified
as pre-existing issues IMHO these changes are okay to be taken and then
we could go with another round of fixes.

> 
> When i40e_remove() calls i40e_ptp_stop(pf), it does so unsynchronized from
> the background i40e_rebuild() task. If i40e_rebuild() fails during setup, it
> calls i40e_vsi_clear(main_vsi), which frees the VSI and its netdev.
> 
> If i40e_ptp_stop() caches main_vsi right before it is cleared, couldn't the
> if (main_vsi) check pass, but the subsequent main_vsi->netdev->name access
> dereference freed memory, causing a use-after-free?
> 
> [Severity: High]
> This is another pre-existing issue, but I noticed that i40e_ptp_stop() doesn't
> seem to cancel the background workqueue task ptp_extts0_work.
> 
> During device removal, i40e_remove() calls i40e_ptp_stop() and then
> subsequently frees the i40e_pf structure. If the work executes after the PF
> is freed, will it access the deallocated i40e_pf structure and trigger a
> use-after-free?
> 
> [Severity: High]
> This is also a pre-existing issue, but I am looking at how pf->ptp_tx_skb is
> cleared earlier in i40e_ptp_stop(). The teardown uses I40E_FLAG_PTP_ENA as a 
> gate guard:
> 
> i40e_ptp_stop() clears I40E_FLAG_PTP_ENA, then locklessly checks and frees
> pf->ptp_tx_skb using dev_kfree_skb_any().
> 
> The interrupt handler i40e_ptp_tx_hwtstamp() uses the same bit as a guard:
> 
>     if (!test_bit(I40E_FLAG_PTP_ENA, pf->flags))
>             return;
> 
> If the interrupt handler passes the test_bit check just before i40e_ptp_stop()
> executes clear_bit(), both contexts could concurrently read the same
> pf->ptp_tx_skb pointer into local variables before it is NULLed out. Could
> this result in a double free of the SKB?
> 
> [Severity: High]
> There is a similar pre-existing issue related to the teardown of the
> timestamping state in i40e_ptp_stop() racing with the TX datapath.
> 
> The TX datapath i40e_tstamp() protects the state using a bit lock:
> 
>     if (pf->ptp_tx &&
>         !test_and_set_bit_lock(__I40E_PTP_TX_IN_PROGRESS, pf->state)) {
>             ...
>             pf->ptp_tx_skb = skb_get(skb);
>     }
> 
> However, i40e_ptp_stop() checks pf->ptp_tx_skb locklessly and only clears
> the bit lock if the SKB was present. If the TX datapath acquires the lock
> and is preempted right before assigning pf->ptp_tx_skb, i40e_ptp_stop()
> might execute, see a NULL ptp_tx_skb, and skip the cleanup block.
> 
> When the TX datapath resumes, it assigns the SKB pointer. Since the device
> is subsequently destroyed, does this cause the SKB to be permanently leaked?
> 
> >  	}
> >  
> >  	if (i40e_is_ptp_pin_dev(&pf->hw)) {
> 
> [Severity: High]
> This isn't a bug introduced by this patch, but while reviewing the driver's
> cleanup paths, I noticed a potential leak in the i40e_probe() error handling:
> 
> drivers/net/ethernet/intel/i40e/i40e_main.c:i40e_probe() {
> ...
> err_vsis:
>         set_bit(__I40E_DOWN, pf->state);
>         i40e_ptp_stop(pf);
>         i40e_clear_interrupt_scheme(pf);
>         kfree(pf->vsi);
> ...
> }
> 
> If initialization fails after VSIs are successfully created, this cleanup
> path calls kfree(pf->vsi) which frees the pointer array, but does not appear
> to unregister the netdev or free the actual VSI structs and hardware rings.
> 
> Could this leave an active, registered netdev with dangling pointers to the
> subsequently freed PF, potentially triggering a use-after-free upon network
> traffic or userspace access?
> 
> [Severity: High]
> This is a pre-existing issue, but I noticed an ad-hoc locking pattern in
> i40e_remove():
> 
> drivers/net/ethernet/intel/i40e/i40e_main.c:i40e_remove() {
> ...
>         while (test_and_set_bit(__I40E_RESET_RECOVERY_PENDING, pf->state))
>                 usleep_range(1000, 2000);
> ...
> }
> 
> This attempts to synchronize with the background reset path by spinning on
> a bit flag, which acts as a sleepable lock without the standard fairness or
> deadlock detection guarantees. 
> 
> Since this ad-hoc locking scheme fails to provide proper mutual exclusion
> earlier in the function, could this be the direct cause of why i40e_ptp_stop()
> executes unsynchronized from i40e_rebuild()? Should a proper mutex be used
> here instead?
