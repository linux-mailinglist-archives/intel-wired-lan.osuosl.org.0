Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FFDDA1A433
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Jan 2025 13:28:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E2BD34174B;
	Thu, 23 Jan 2025 12:28:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WTz_QhJpmtlJ; Thu, 23 Jan 2025 12:28:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7C006417B9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1737635307;
	bh=W7NppWiJIFH6Bm3T5yN2xfSVcbQ2hilofihIsTKGOAs=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=MMOSWs+EWtbdDmzHhOZy9qgK2ISK+uKNPuVJnDS5u/xMKSvs2eQ/+yfeeO+/xS4pw
	 QBJn2J/q6pT+tnJpr4Ta+QuPaD7ZWHgsKS02byQrBIY7seoFB4klvH3j53al8W0XXH
	 +uaFqypCSrGi5bW4NVxoBECygFWI8co2i6ixZFUD/aEnlBL7n3a6cqeEqhtrrDSXvl
	 09D+nJ9z6wcqPk/8Hyc77is7RePiLgWOeHUHi08W6ermawTqb18dCPwrmXCTjBpIls
	 gYKBWbLbfPJqQVwdTjNGrAG6Vr9GINu8J1sfNJea9ESwhnndrlJ3HwT7CgiMoA6DYg
	 fhXahMh1ag1bQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7C006417B9;
	Thu, 23 Jan 2025 12:28:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id E925DB88
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jan 2025 12:28:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CA4A160D4C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jan 2025 12:28:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TWNjEwJY775k for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Jan 2025 12:28:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A846660A67
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A846660A67
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A846660A67
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jan 2025 12:28:23 +0000 (UTC)
X-CSE-ConnectionGUID: vuxyHoSeRwOamspuh4NhIQ==
X-CSE-MsgGUID: b4ydDe3HQQeIAF9l+o3KPQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11324"; a="48628791"
X-IronPort-AV: E=Sophos;i="6.13,228,1732608000"; d="scan'208";a="48628791"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2025 04:28:23 -0800
X-CSE-ConnectionGUID: L8ZJNeGETDKPuuVpsRDrHw==
X-CSE-MsgGUID: ZThsJ+HoSOWwTzAuJL++4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="144683806"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Jan 2025 04:28:22 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 23 Jan 2025 04:28:21 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 23 Jan 2025 04:28:21 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 23 Jan 2025 04:28:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Q0oTelt6PUrs2w+ulMrsprbF+6Y2t70AyDOp+b8KCwQl36iWVdrX7JYB47YE5+gUM8nOsp1rUDf9EqqSLFX3G2++CO0NXJPp2YVn+JluTO51d1HjywfMYVNSQ2Mxh86+NR0hlJylYWlDhOQzsbHst7rRBnMJct1pgCQEqxfohADNUtiAlJ4Id/kskHu6AFiGzRiPAeloA/XlvxBM/k28HGjp3/GiYEwcDHCyEfN7bplJ6OptdHs5Zo44Vi7zry/BiysPzhxe057kx/vko47NNBxZq5IagvqUASNzmOEHHPb3Za9Gjah/Vh3Myzn5felRtOX26yok2Po1VP1RnXYR/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=W7NppWiJIFH6Bm3T5yN2xfSVcbQ2hilofihIsTKGOAs=;
 b=I10CR3MPw55QZVSZsOBk/jneMfq04wDpNah0Kx0u5kCvmaH9UItzjh0HmPSZ98Z1CmfF3xVceyf7xDNIznqj/FSyqKTwAVulMjjEVgD8i0jqa/7qxz6Pq9gbuE/gre00DPVdWQlUZRfaqjdTAXTfXeDgjcD7nwfcMpWXmi9BveiLJTQXeN86ZqVCLuobEuUWQKlfVaTZVq6Qh5KPaZS5Nk+AkONpaXyLHPYfK0X+9MZrfjRSfsM915H0h2IOcTKywvQ1HgGDiy6MuT7u9Cm5lEei/PmF/4dyoCN3NpfintmPDauMkqdoB/G6ER0uCAJJHSLT/QS14RW6VHDLhrT9ew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 PH7PR11MB6497.namprd11.prod.outlook.com (2603:10b6:510:1f2::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8377.18; Thu, 23 Jan
 2025 12:27:52 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca%5]) with mapi id 15.20.8377.009; Thu, 23 Jan 2025
 12:27:52 +0000
Date: Thu, 23 Jan 2025 13:27:41 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "dan.carpenter@linaro.org"
 <dan.carpenter@linaro.org>, "yuehaibing@huawei.com" <yuehaibing@huawei.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
Message-ID: <Z5I1vbqNpAUnyxnC@boxer>
References: <20250117154935.9444-1-piotr.kwapulinski@intel.com>
 <Z45hfyEC6dE2Zkm3@boxer>
 <DM6PR11MB4610D74ED1F1AB5575AE246EF3E02@DM6PR11MB4610.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <DM6PR11MB4610D74ED1F1AB5575AE246EF3E02@DM6PR11MB4610.namprd11.prod.outlook.com>
X-ClientProxiedBy: DB8P191CA0022.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:10:130::32) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|PH7PR11MB6497:EE_
X-MS-Office365-Filtering-Correlation-Id: fd515769-3d98-4877-8968-08dd3ba95afa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?oEYfteWTmoVf9EkMObqxd/vU9gZWbsYNlH185u8Nup/zvUvhoReAVrFAVn6C?=
 =?us-ascii?Q?wOL5Q13839ZGfbfqlFCLQGY5KtKd+eFG9zGbUoNfD2cubuvVQipwQ6vWcQck?=
 =?us-ascii?Q?1phg+XEpHjxsfrQZfkBG7ucXQa8WUQ4fkvBO3H+NUbUD2pzc2Aw/8maxKvfD?=
 =?us-ascii?Q?W+JVp52jnIroYQfELfzAClHg5GgG3tvb+Z2RIIWQwBcVpdMWGVm0jqRLWYs9?=
 =?us-ascii?Q?tFAaC4kzdinWMSf9juVzfoQLQCdG82NNwJ9OOpwnplv+0WNYmvxSScpqojog?=
 =?us-ascii?Q?THnmvT4uQemvr0KwkxkjEkLAxjvJyRkqFK7gFRhxtP3+NMy2DamA8RhimCxM?=
 =?us-ascii?Q?VH96N3AArAh8qIiIBwaZwoV8vW85MhKbanmrFPk9tey17TByXzy3TcZO23g7?=
 =?us-ascii?Q?oZEMLUUka9uUuaqVS59BA9QxZpQ1Ph4fIKrTemK8Jg5N5X1dbTcCmRQ92Xuk?=
 =?us-ascii?Q?+0OGI3XZSbyyu3em2Y1tw92nHXEOjayDBZJ4j+KqUTVoR5+kER55wSyTTgTt?=
 =?us-ascii?Q?UaXEpYHPjfg3t3Ghx9miSsqZhpgyEa7cG6DGub+Qr3qbNEncBf1RO6xX9qXI?=
 =?us-ascii?Q?9uWHbM8//BmqgpFXH8iuklItuZMs6liEEkXvF955wdJ5JKpogKmXNPgbVA6+?=
 =?us-ascii?Q?YgA8KCbn2Fv5C8Xn1xWMKKNjdqMyU5qlVaJLZFV3KI/gZ+d7xTPzSbfWls2E?=
 =?us-ascii?Q?NK4ldX6wBrb5hPwM6FL81j0dTY5id4OuuB2nQ0kH7BW3mvzCattcsqUX+aNe?=
 =?us-ascii?Q?u66Wbc1ude8L0Dd3Y8UZMUkCd1UwsARs1ViSNVTT9t1N13AV6FpMbP962UM9?=
 =?us-ascii?Q?ju+j+vx3hogfG5Weo+Z4mNW1c+7Zasy6WS+aNS8ZRsUyrNTYJ6YNJv1i0k+2?=
 =?us-ascii?Q?w2sb/qWpX+t/iMF6spyTz7mZKDXTcLIILswPTK8DyO+4K15J63/uPpivWgam?=
 =?us-ascii?Q?CxLiwN1rY3m3/Lb016dI3aiwDKzgXyyeBxFzONUrB7JYiJ/zaH58Clie/Wik?=
 =?us-ascii?Q?O8exs1QKzdzEESF/vWXI5u3oSPQMjOuJ8xXlkugg6JpHs89RA6TrpI+cPt6d?=
 =?us-ascii?Q?PJiGXjehQFtGou75ijLkPmxe0pP0HfDhdkClbdL5aeXr0Xdg7yrsyQIvq5Pi?=
 =?us-ascii?Q?w3ZU5YjG44Kxrxb3kMnwSyxWu2fTkaeGzqHL6++PHk1YmJa4JVRm/BU35kPp?=
 =?us-ascii?Q?LYVN7VfOM3OT2/YXLSLpxsSZP5AMS4bus9d1VAsFJ6Vcsd+Ny54C3RJ3lItc?=
 =?us-ascii?Q?UY8jAMws4IRja2B6BccWaMA+bjLw0wtex4b1SXgRmOkD9btFhiAEHOjVFZS7?=
 =?us-ascii?Q?JqTcbp5/dHENGirBxyOIHFJgV/CGN8/zNWqlUTvHrKWBVy4UkpKMvLD/LBsr?=
 =?us-ascii?Q?13GA9U8liqZt7FgNlbHRDzUor4JH?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?+9GtCWvuz7cgd+VH36T6q9lv+8xRLulwYg4F6nUTQhfKyCNzVJOODRzdHpFW?=
 =?us-ascii?Q?+mbkv+YwWCL34wO8So+KCvKEutV39vx6+QgARGU/tWqiX1Rffr0vg/HfkLW4?=
 =?us-ascii?Q?4yCXeDt9toQVagPzye9SCZF0B8M4Aaq7vu3EA7o0rXqDNXqaDN19NA8AXcko?=
 =?us-ascii?Q?pXvBHE6AjvvDB/cyf90LTlSo5pDjqcwqxEh0JkAFXuSh8EQFZ6EcngKjp5Mb?=
 =?us-ascii?Q?7peLxka201JuiNqgEcFIUcLoia1gMZCklWmN0/pONaTHKGHH0g2X4fm9o26x?=
 =?us-ascii?Q?dvKTD691bzSrg3W1om4RHp31sGx7z8dyLhejAkbFb3DP5ufHL7TEN+dnwaI3?=
 =?us-ascii?Q?dK+QScTHw3Gp3inJbbOMNyaIH/SJb+tL82ItCSXcRSkZ2V7shw34iQqfeBs2?=
 =?us-ascii?Q?omTlmryLloUV/K3lFKuf3d7wRcVKn3CwuNjGwL7oSB6QKIauWI+c7e53dyVO?=
 =?us-ascii?Q?0G5wm8V7dtIseDLpTA01ldcQp6ij8ogbo6MvSqB7iwqact4HDRkC24zkggZZ?=
 =?us-ascii?Q?sL/DD8spdZ0REQdfpEGC8p/s8Ux8DuS/zdGnvwUbEJhFXxH431yU+BrvNEb2?=
 =?us-ascii?Q?A1wIJqrAan08Zy+l1HGdbil42ku7+L9tmO7/BQFmteuF6p5QFh0KqEUY8rr0?=
 =?us-ascii?Q?4d9U5rRPRanI7LpjCXAcYlu3dCFJBhmAXPpSDyaeqmmDVcpji11UJrXWLOoE?=
 =?us-ascii?Q?tuOObT0m1gmTWmEvJ1vGKeWOQwmGhEvMB/JEHqRxd/PxGniR2vo3p7kVv/C6?=
 =?us-ascii?Q?eEKX9eW7MF3PJPIuIE9ca4lVSeAp53f9IEiSQrEFTRB/8YdW/C7cP4W9eJVV?=
 =?us-ascii?Q?HQDuqhLtbD2PljMn5bi/TlV23GroHXMIaNYfqvEEOEUyd83dumr1zp7cs8aw?=
 =?us-ascii?Q?Nz349NRHmvEzJ1ujCAC6lXuxtBHzoEqW+BEtB+tOgLTJOIk0fEdTk/aSSeSV?=
 =?us-ascii?Q?f5kOVV9z0gXU34EHNPxuzfkCchzaNPpMo49bgxWKZ+SbG9WPBQZYXmKwQg7u?=
 =?us-ascii?Q?X8Z9GRxz/EfCvzD5Lc3iZhETMJxc4pSmaIlh3/G8TL4eTZ0QvaTp0ujzph1+?=
 =?us-ascii?Q?vewa5FLe2a7J3acaUg+f5gRyi30YHiI0SkcNkAujFh6g/AF5XszLTgpHISXn?=
 =?us-ascii?Q?laDdR+1sErUIJ2QumiZ4CLuixieoV6HN9OJPH/QVreGReM2z4rWZ0Iezlopk?=
 =?us-ascii?Q?w4sldAjozGmwxhDkCgGy2vHLq5lmMEgz1j+B/+Cz54He8DEX3nSx3ILyzgns?=
 =?us-ascii?Q?BSsW+Z9RvO+O+yavil7iu9hNuqGkn9xjp8m04IYvUK/N6+QjA0u//syN7gxK?=
 =?us-ascii?Q?geJw0FmSyutiOhSAUqstrUheXC7L+kBlEbeFdZoKd95Q38zlu25Yiq9r/BKT?=
 =?us-ascii?Q?6XCQHW+2ntKviORDVp/pJfHyZXRMFvzDeJ7ZOIi4IdCide7ShXyecJ20cggR?=
 =?us-ascii?Q?8hcZIW0pPO+c+cWpRL1GdQQ5KVOdtsZf2mjYLH3qnGLQz8ffYdV+VYJfHUAx?=
 =?us-ascii?Q?y6ztos0MBilBWpoYzr0VRxp6HR1IIalVf2Lx1UaVh/51YY4viRRr0FKzliK8?=
 =?us-ascii?Q?gJ8bFwZ2K7sp5yBoJFNgaNH+5FvT4denWP7NC7jLLqk6A0hqinWwuQIC+E7+?=
 =?us-ascii?Q?ww=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fd515769-3d98-4877-8968-08dd3ba95afa
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2025 12:27:51.9939 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: p7mj4rvscyI4LDCBhbOxSPhukyJkIYcLa6UY1RhpFsrxa7QlxQU9LjYHqAkf1E/iox+TzQgGtb/R2pBAeJXgdFnPzxeM8GtKAPj7ZGRvNq4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6497
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737635304; x=1769171304;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=ypB6FTVNTgc6Vb1MMX9RzEWJefy5CGIBaJXOSafKczs=;
 b=cAKKrlnx+/0hwEMrwCNbbyfCJA9l9qks6mr6fZjkJyMCRlPvbekbdTTG
 G3JPkqiyHPzOwXHbwDuV0GposBdDzezk8snxOkGa1QGbMfcLZ27Qe1xx+
 h5SyLHaaxhyvOSobtMn+x4i/Xl0wJIf2vCY5kxa/wSRkbq5arIs0Vg+64
 AN4A0KWBmaRDKLcvYpYol/qQMaoxDH+89Sk/Ocpal76cl+UBJYmROuR6P
 1lvkfin394OgFc7HKRX2I91NcLdPFi8ZwRA/HYYQe/TCxRrBgb7QKdVA7
 KrEP795VHa/VhrVA98+euEp3S19QxOBplc/sGw2NYgOo9xXrFyeUV9l+3
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=cAKKrlnx
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ixgbe: Fix possible skb
 NULL pointer dereference
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

On Thu, Jan 23, 2025 at 09:19:34AM +0100, Kwapulinski, Piotr wrote:
> >-----Original Message-----
> >From: Fijalkowski, Maciej <maciej.fijalkowski@intel.com> 
> >Sent: Monday, January 20, 2025 3:45 PM
> >To: Kwapulinski, Piotr <piotr.kwapulinski@intel.com>
> >Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; dan.carpenter@linaro.org; yuehaibing@huawei.com; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> >Subject: Re: [PATCH iwl-next v2] ixgbe: Fix possible skb NULL pointer dereference
> >
> >On Fri, Jan 17, 2025 at 04:49:35PM +0100, Piotr Kwapulinski wrote:
> >> The commit c824125cbb18 ("ixgbe: Fix passing 0 to ERR_PTR in
> >> ixgbe_run_xdp()") stopped utilizing the ERR-like macros for xdp status 
> >> encoding. Propagate this logic to the ixgbe_put_rx_buffer().
> >> 
> >> The commit also relaxed the skb NULL pointer check - caught by Smatch.
> >> Restore this check.
> >> 
> >> Fixes: c824125cbb18 ("ixgbe: Fix passing 0 to ERR_PTR in 
> >> ixgbe_run_xdp()")
> >> Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
> >> Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
> >> ---
> >>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 9 +++++----
> >>  1 file changed, 5 insertions(+), 4 deletions(-)
> >> 
> >> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c 
> >> b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> >> index 7236f20..c682c3d 100644
> >> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> >> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> >> @@ -2098,14 +2098,14 @@ static struct ixgbe_rx_buffer 
> >> *ixgbe_get_rx_buffer(struct ixgbe_ring *rx_ring,
> >>  
> >>  static void ixgbe_put_rx_buffer(struct ixgbe_ring *rx_ring,
> >>  				struct ixgbe_rx_buffer *rx_buffer,
> >> -				struct sk_buff *skb,
> >> -				int rx_buffer_pgcnt)
> >> +				struct sk_buff *skb, int rx_buffer_pgcnt,
> >> +				int xdp_res)
> >>  {
> >>  	if (ixgbe_can_reuse_rx_page(rx_buffer, rx_buffer_pgcnt)) {
> >>  		/* hand second half of page back to the ring */
> >>  		ixgbe_reuse_rx_page(rx_ring, rx_buffer);
> >>  	} else {
> >> -		if (!IS_ERR(skb) && IXGBE_CB(skb)->dma == rx_buffer->dma) {
> >> +		if (skb && !xdp_res && IXGBE_CB(skb)->dma == rx_buffer->dma) {
> >
> >xdp_res check is redundant here. skb ptr will be non-null only for xdp_res == 0. so skb != NULL implies xdp_res == 0.
> That was tempting but eventually the ixgbe_run_xdp() handles the error exclusively. I suggest to leave it as it is.

ixgbe_run_xdp() on error paths will still return one of our homegrown XDP
statuses:

#define IXGBE_XDP_PASS		0
#define IXGBE_XDP_CONSUMED	BIT(0)
#define IXGBE_XDP_TX		BIT(1)
#define IXGBE_XDP_REDIR		BIT(2)
#define IXGBE_XDP_EXIT		BIT(3)

Plus the case "!xdp_res && !skb" is explicitly checked before calling
ixgbe_put_rx_buffer() and you're gonna break the rx loop altogether. This
happens when you failed to alloc skb for IXGBE_XDP_PASS.

> Thanks,
> Piotr
> 
> >
> >If I am not mistaken:D or ixgbe has some code path I missed.
> >
> >Besides this, thanks for improving commit message!
> >
> >>  			/* the page has been released from the ring */
> >>  			IXGBE_CB(skb)->page_released = true;
> >>  		} else {
> >> @@ -2415,7 +2415,8 @@ static int ixgbe_clean_rx_irq(struct ixgbe_q_vector *q_vector,
> >>  			break;
> >>  		}
> >>  
> >> -		ixgbe_put_rx_buffer(rx_ring, rx_buffer, skb, rx_buffer_pgcnt);
> >> +		ixgbe_put_rx_buffer(rx_ring, rx_buffer, skb, rx_buffer_pgcnt,
> >> +				    xdp_res);
> >>  		cleaned_count++;
> >>  
> >>  		/* place incomplete frames back on ring for completion */
> >> --
> >> v1 -> v2
> >>   Provide extra details in commit message for motivation of this patch.
> >> 
> >> 2.43.0
> >>
