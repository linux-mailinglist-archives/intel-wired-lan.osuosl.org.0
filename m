Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A262D06999
	for <lists+intel-wired-lan@lfdr.de>; Fri, 09 Jan 2026 01:15:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B2E4282FC9;
	Fri,  9 Jan 2026 00:15:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LuJxTmyAo_Oi; Fri,  9 Jan 2026 00:15:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CE57082E1A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767917714;
	bh=q288M0qBi7v/MgNbKzBtL7J1QGPM7ietSG7DTCxkBK0=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=4cyxkkEaOBCbsRTssbutDjAgt2yF1CFnjOJEdFOBlJzr+UUcu7swxd2YpojLQ8fQy
	 7aTTP5bxIZGcp6AEUBqc2FMUV6UQAfJvnYPZ/lxzqfPzErNe0QCrCmS9b+HSkCIOfF
	 6VtjI0FGkJ2l+fjAtSa+vVpFdg7FtjNQqy4Eyw/PxnymL4+lAN5IwyTNPJ5jrb9To2
	 2UZlkrXlU2Y4jh69NPuFXPk8KiwNUtaQKDK2aF6nUYLOgClwVal+kWIRoa0FPsfGBD
	 XqVsbzxg3r7CRTDupZ1Q/1KAKv7iU9jEY5jVDR3QaNLRT77mkmIdJzXXg8PUek+dLU
	 4+R5EP6z/52Ng==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id CE57082E1A;
	Fri,  9 Jan 2026 00:15:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id D385012E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jan 2026 00:15:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C4C96608A3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jan 2026 00:15:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ebYVyU6YyLAU for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Jan 2026 00:15:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B9D1960832
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B9D1960832
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B9D1960832
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jan 2026 00:15:11 +0000 (UTC)
X-CSE-ConnectionGUID: O+R0TNR9S/qTR3aIGpGGig==
X-CSE-MsgGUID: bZyMNGK+R4WbbY5jdOe2aQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11665"; a="79941973"
X-IronPort-AV: E=Sophos;i="6.21,211,1763452800"; d="scan'208";a="79941973"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2026 16:15:11 -0800
X-CSE-ConnectionGUID: eT4qZBGLQAyAd9dcGYcgdg==
X-CSE-MsgGUID: ppHLQ2BXR6uC1B3oXGc/Aw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,211,1763452800"; d="scan'208";a="208388660"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2026 16:15:10 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 8 Jan 2026 16:15:10 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 8 Jan 2026 16:15:10 -0800
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.45) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 8 Jan 2026 16:15:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=X2uWNJ7OHyxDnge9H4768M5mp6EBLr2snazH/GaPqeUjFwiwfcdTKRzeG+R48PePJliciX6FMG/lOySJugNMwcO4ubGiZpKQ5jnydHHx6YBpAPbPy2wC32Dtd/gmJjU8KR0sx72W71U1SObHOopQgbl5g9EKPZKXg8SEFSSi7s1XNVaUsO3QtemL7g6OqFYjVWhoPdyYkAiBqC7LjwoHbG0vIBw9kd/QK8NoYDFFLFpVv/WKjDP18rNGwrMpSldbT2HYkR1rpCt6f2vYSBKiRTEJn82AerwsVzO2bqM8ly2Ij4d8iaZDcCHPTDsEtvCZVyt7arWQQC2vgBEVYDqRNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q288M0qBi7v/MgNbKzBtL7J1QGPM7ietSG7DTCxkBK0=;
 b=nqufks5m41CaLzjC2QcCcuGiuPMbhoN54r+SvHKaIK2599LrghdWiVBwQ/vuBIKTZPn/ZDwlK97pXAsJpCwbaBXDSX5S1Fu/8naiGetA9eO1Xpg1dExTtBZafD1nbweum7RDcY0l6vMpRInQQv9rNhahiaYez7RdYXybDDGotvlg7jpB6IqPxolcQfrRCgaYyhsaZ8rxOWZLvgB1rEc1iU0gCVb2d1r19I82l9j8hgmXeKleMCQLwWBwQhTO9s0JAgzeKvmUu7TOYX5+SfR5SIgH+BaENvJGWJWWS/KzIHvMGFNl76Zy529xcENi+I/TmAc6m3mYv3Uk6kriWnE4Dg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 MN0PR11MB6183.namprd11.prod.outlook.com (2603:10b6:208:3c5::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9499.3; Fri, 9 Jan 2026 00:15:07 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca%4]) with mapi id 15.20.9499.003; Fri, 9 Jan 2026
 00:15:07 +0000
Date: Fri, 9 Jan 2026 01:14:56 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Vivek Behera <vivek.behera@siemens.com>
CC: <aleksandr.loktionov@intel.com>, <jacob.e.keller@intel.com>,
 <anthony.l.nguyen@intel.com>, <przemyslaw.kitszel@intel.com>,
 <sriram.yagnaraman@ericsson.com>, <kurt@linutronix.de>,
 <intel-wired-lan@lists.osuosl.org>
Message-ID: <aWBIgOaRG50IuJsU@boxer>
References: <20251222115747.230521-1-vivek.behera@siemens.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20251222115747.230521-1-vivek.behera@siemens.com>
X-ClientProxiedBy: VI1PR10CA0094.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:803:28::23) To IA1PR11MB6097.namprd11.prod.outlook.com
 (2603:10b6:208:3d7::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|MN0PR11MB6183:EE_
X-MS-Office365-Filtering-Correlation-Id: 71ff98bb-5b8f-45d8-f89f-08de4f14249d
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?GdvFLKY61qy7c6b+ofM6v85a8Bpl6QtW+hmNqQ87IYtr99dNRsLThNhivB5w?=
 =?us-ascii?Q?1vItsxW/ceV2kiUGGTjZyW7P5AK+17+x/5VNQ+SGXHMCJXulbWTyUAQkpks7?=
 =?us-ascii?Q?ijWSGUzoMu5eC7CJfJCXwkitOKbIL6tb0nOS1S5dxZqSu71blE/fb90ZcVAH?=
 =?us-ascii?Q?gmMyf0d2dlcdbyThvIYsARPQ9ouaR6nEzMKQYXDEfutF5leOxSpmbkEX7ubc?=
 =?us-ascii?Q?CVkFYKbxR1607vf9Nr0SmfjErT9Q3w+pMRN2Qj6DhVoa0ScZ9riNKGd8mP/9?=
 =?us-ascii?Q?mdjItoWkQZdhFWPmZ9A5aSlZioqGSNlYwST7eNC7xge0OfAW0TGtxlEz1P4S?=
 =?us-ascii?Q?HqlY+B2dg0Zt4aitRush+L+HIx5Anbs5FO5r+lLbt338dmtcHSVU8ZPK9kya?=
 =?us-ascii?Q?Vym/9R0LzPkgv/nyM9/9ytO60ablX3Ege2vP2IcIxbTWDzvmTP7MTgUR0IOK?=
 =?us-ascii?Q?CRNTV2w744rOozASwEzq41/rd+ErjzcH8DVYqDn6M7I2VL4j2Us7kAdkiKkO?=
 =?us-ascii?Q?fIN8cPKqAXczAV1bRjqorGpwdgm04H89vpddFGkc33BCOOzxuhipWcK0Uhwk?=
 =?us-ascii?Q?dKWSnV2UCIDjNCwdcpoY8mC9f4cSuURHuIitSR7fY9Rl0+EbGRY9Po2qdYBp?=
 =?us-ascii?Q?6ilyvtYWjwqZKqVI8TXfHinvRtG5/NUi4cdrgWf55pCqWjXZvI4EKxaLeze5?=
 =?us-ascii?Q?tI0I/TYpx3QPiQ46lMheDJxGiZq1nH4gHetgA8jkVWdNcMPaPsDv4UMIXQG4?=
 =?us-ascii?Q?5l9QH99TMn/JDDWVRNYeD7gnsUaVn9TYipt8JebYSJZSvDWd3JLXTE9V+of4?=
 =?us-ascii?Q?Z04S9UzZAokGfvq7wlXS1h/l4JK5xpcMqwfmUzIXg/NKk4IK2D+TBg4C/RVJ?=
 =?us-ascii?Q?44DObNo8zhvXabwFMWu5P0iuKQJxUoAO28HohK42ZNMX4mG4G1N/Xnsxh67n?=
 =?us-ascii?Q?IH12+bx920g9ApoqV+GdZMriD62fbYbXcqc+LeNqoItBF7j/Pk9BG44PUde3?=
 =?us-ascii?Q?G+pKRkA/f0xkxNPjKsUeRQ78XX6g44D1BCm+o1+mweeIdsd1gvjKlfFDl2jT?=
 =?us-ascii?Q?Y35n4FR1nL6J+28UUss/HwTLVeFAuyS9XLepTLFA5PvreLO0r7M11haXVRxC?=
 =?us-ascii?Q?ZHruwrCkp8NGpkE8qCH1r0PJaWssg9Kq0rmRcO0uPavLXFFFuVclWfuKSDJW?=
 =?us-ascii?Q?Q2kFM0jVqbpehhdHFkEVoCEHt+DF6gLn5I1NH537AWMNacU5SWK5jBpmILll?=
 =?us-ascii?Q?Z9zkeuw9PulEgXke4z5A80b8rvoHzkBZaXTVFJeWkXJ/DP1jPga/X6zBasbq?=
 =?us-ascii?Q?L0DwpeDyEVaJ7WrX5m/2kARuKxp7Q5aE0u22pzgdZWOVEp7Ok4lxeShHTKxI?=
 =?us-ascii?Q?rlcLauY6Su2GHBIdxiIcMgMv+H/lV4vyAgRz9SxObnzHWT3vereA9H0bBQPP?=
 =?us-ascii?Q?MZFn+3DYXRBQJ5fTv9Hoh+AH8B9Y2qIJazGpI+Skrl5ElgoGsfztAA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?EMKKxj22g6zeTpTB54wxJ1B/zRt+CUqsKEHZUQeVWUJF0ZpTppcboyKpco0c?=
 =?us-ascii?Q?aDu2pKvioeuNb6eCAY6ZAzyhbeMoZGfHlTyJ40PIAFIeN3clK36JoVQD7/oL?=
 =?us-ascii?Q?fZkimjpKMMOkZXyVWmLfZbvFHtF4exemOvmPpDTyhNIbynRcE59/DIKdWoVm?=
 =?us-ascii?Q?G6uZqpBheOtr/w3FaMBVPUdmdptpAfLTHnVo5S5pFqqI/wGl/c740WtIYCeM?=
 =?us-ascii?Q?K3Dn69di6UdASbX+TQhddGMkFsHQdjZ27SpT11c+HyGvTwuyqIR8S7WfGfr5?=
 =?us-ascii?Q?Mxjl+uVfne25+tj4haRrMOgwq6tgbIWI4LnU0yZtWSKDNzw8uljlMCPoU7H3?=
 =?us-ascii?Q?rr/LH+BqSm0JGaMkLckT6t7NoBfJML97o/m4Nnq7Rtp8jhhk8i0hO7WR6X3v?=
 =?us-ascii?Q?52NCYF3FXnYIB3PSGFtRHcwV7gx++NSjGN4X12P2wvjHrZJLNkUqaWrWX5bU?=
 =?us-ascii?Q?kDS7yZ5ytOLSutB7RKlPaZ/1UdZCPi6g/I3qi6mcLvzid3LWcE6Qm3rCRS50?=
 =?us-ascii?Q?dlCbd6kSSFISgZasmP8HkRe9/P/e2gqDyNeB3rwkQHVUMJxNLyrF1mZ+NoJ6?=
 =?us-ascii?Q?6I68C/HbSIag22VPpdjQmlF+Zm8J5KjeAQuCxG+l7KEIrOB/yqQe31VPvKrF?=
 =?us-ascii?Q?viwqWKQ97zHt65i2bcwv3F7Mj6b31AKja2x8M7FA5FSc1hbQGsz8HKo0zLnj?=
 =?us-ascii?Q?ZAfJfeI/cqrQX4efVAmte4ApzAy8BlF1ZDRDdBtgw3zrUfarxtklYswTCy5I?=
 =?us-ascii?Q?UoZnCfec3aWNy6oedKVLnYKXvRMJS09aE3y8qYzJAE3tfglgW3VNDpUL5ldv?=
 =?us-ascii?Q?tVgvz72LU9AuwZFtNNbnZ8pGz1h6dCW+Yo90QfsyA4UDh4od1mDtwDvQzNEZ?=
 =?us-ascii?Q?r9pTzpVqRY8zRHUCrnDgyaI2IAmDvjI/hV2mEU+gQQaphteaMvmK74DPvzdp?=
 =?us-ascii?Q?kgUwVmhvO4aMskez49wblv96FArYW544MobgBij8YAYEeXHmEJLrn7IMxYtH?=
 =?us-ascii?Q?oL7fGtzP39rSqaqHXs8ngQZHMARf2F5Y0haRf7B4+el16pioXea4xcG4Tm2E?=
 =?us-ascii?Q?k4JNGMGVy21Nr0QdhOPGZ3b+QRw7RzG9ZPY8+wH/C+IgygU4eEhLHKhp0/+4?=
 =?us-ascii?Q?13f8eWK9KXwj37MCUdb/zZT6zZaQWifFXSnaanSauZZwzpQ43KInH3pIXV3b?=
 =?us-ascii?Q?E4YVQ9Qj6mOBQrBXu+Y10lrGcLtgr7W7J4r200G6pDDrxwINt4nAELa15dhf?=
 =?us-ascii?Q?aYVH12H7VSq6GQ36iyT37yyJ0yp5BOZlzL7gd/tV09ydrEm3cQqr2s+UBwoW?=
 =?us-ascii?Q?Q8KDHW7THFuhDvyx7TZm9M68pNp7IjjC18QAD7MsuqKI3xwTF1ri+6Vmp0rX?=
 =?us-ascii?Q?SMKF3BKdazyLkTgKYRr5XnxQj8IxkS2brR0m4NdqKdIaTJ0/UkUOGcQSa7ll?=
 =?us-ascii?Q?yZluNrqfjRBwLC39pgw16m9L2ZhJU2hyL9yfrMWsTjLbt6A2RhQqzTQnHUxp?=
 =?us-ascii?Q?InMZyUPi73r0NsOxT7ZTRVM73GAeJSMyFVylLkiTo2GmdAVvVc2gX84NVqK3?=
 =?us-ascii?Q?cgXbAybjbzahJdVJp4W+OEm9MYPXj8s6OjFgLGh01ldbPMHmWTkcL3UW6bd4?=
 =?us-ascii?Q?vCp51yIzg3Qvejmsnllyo1XXqe7e9BIB7yswB93r0OqDLhap3kg0WB6ZQ8qJ?=
 =?us-ascii?Q?9BVuurq8deBGA1wTrrB2iWWFBGE6pxzctLJC48du+JuUKxZVdiX7adeBWkpE?=
 =?us-ascii?Q?UZhfpa6WcFgewMlwd/LMqwyuC5l6fHs=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 71ff98bb-5b8f-45d8-f89f-08de4f14249d
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6097.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jan 2026 00:15:07.2892 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Arn37vnd+UGTgtzQ0la9NR5JmU/y+YWtKYXipRF1XudXY5PjUqqjylcRyvyZLRG+6DoqC2JKC7EpcKyk7L5qHSMk6T3DbgeTtEY+IlV9Xrc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6183
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767917712; x=1799453712;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=rugTAgnmcuFj/N4wi8cJHr5RQKzujYj7noqyP8t7R38=;
 b=OhTLoL0y6KKObyNz7oqWUfC1KRRah65n3cYUUl+ig+oD52tZPnH2ehYi
 K2euEwgRzIxS44ejBXOVZZMqTEzf1Yvc+u7tkr0OsXKK1q/Pb8IwegCtx
 3LspP5/zHHrjpjOqALZ6LX9a6GjE+a7BiYWHcEADQMwqukt2a/WRTA0ME
 PKETNs95SKrY8gOz2DrEbi+FUgSWtU7po+wFrXGwL4vg0wEu+PzAejSVA
 +381AJZd0FFETvI5zlCfMdq6CuMvD5cAH72K44Rykwnhjxfe2EQi3kOZD
 FL0HIas0qalshJQrvZonxeCo5XJgdpMcoYwqefhEb0q/Ba1zGvKhBh1dd
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=OhTLoL0y
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v4] igb: Fix trigger of
 incorrect irq in igb_xsk_wakeup
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

On Mon, Dec 22, 2025 at 12:57:47PM +0100, Vivek Behera wrote:
> The current implementation in the igb_xsk_wakeup expects the Rx and Tx queues
> to share the same irq. This would lead to triggering of incorrect irq
> in split irq configuration.
> This patch addresses this issue which could impact environments
> with 2 active cpu cores
> or when the number of queues is reduced to 2 or less
> 
> cat /proc/interrupts | grep eno2
>  167:          0          0          0          0 IR-PCI-MSIX-0000:08:00.0
>  0-edge      eno2
>  168:          0          0          0          0 IR-PCI-MSIX-0000:08:00.0
>  1-edge      eno2-rx-0
>  169:          0          0          0          0 IR-PCI-MSIX-0000:08:00.0
>  2-edge      eno2-rx-1
>  170:          0          0          0          0 IR-PCI-MSIX-0000:08:00.0
>  3-edge      eno2-tx-0
>  171:          0          0          0          0 IR-PCI-MSIX-0000:08:00.0
>  4-edge      eno2-tx-1
> 
> Furthermore it uses the flags input argument to trigger either rx, tx or
> both rx and tx irqs as specified in the ndo_xsk_wakeup api documentation
> 
> Fixes: 80f6ccf9f116 ("igb: Introduce XSK data structures and helpers")
> Signed-off-by: Vivek Behera <vivek.behera@siemens.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> v1: https://lore.kernel.org/intel-wired-lan/20251212131454.124116-1-vivek.behera@siemens.com/
> v2: https://lore.kernel.org/intel-wired-lan/20251215115416.410619-1-vivek.behera@siemens.com/
> v3: https://lore.kernel.org/intel-wired-lan/20251220114936.140473-1-vivek.behera@siemens.com/
> 
> changelog:
> v1
> - Inital description of the Bug and fixes made in the patch
> 
> v1 -> v2
> - Handling of RX and TX Wakeup in igc_xsk_wakeup for a split IRQ configuration
> - Review suggestions by Aleksander: Modified sequence to complete all
>   error checks for rx and tx before updating napi states and triggering irqs
> - Corrected trigger of TX and RX interrupts over E1000_ICS (non msix use case)
> - Added define for Tx interrupt trigger bit mask for E1000_ICS
> 
> v2 -> v3
> - Included applicable feedback and suggestions from igc patch
> - Fixed logic in updating eics value when  both TX and RX need wakeup
> 
> v3 -> v4
> - Added comments to explain trigerring of both TX and RX with active queue pairs
> - Fixed check of xsk pools in if statement
> ---
>  .../net/ethernet/intel/igb/e1000_defines.h    |  1 +
>  drivers/net/ethernet/intel/igb/igb_xsk.c      | 90 +++++++++++++++++--
>  2 files changed, 83 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igb/e1000_defines.h b/drivers/net/ethernet/intel/igb/e1000_defines.h
> index fa028928482f..9357564a2d58 100644
> --- a/drivers/net/ethernet/intel/igb/e1000_defines.h
> +++ b/drivers/net/ethernet/intel/igb/e1000_defines.h
> @@ -443,6 +443,7 @@
>  #define E1000_ICS_LSC       E1000_ICR_LSC       /* Link Status Change */
>  #define E1000_ICS_RXDMT0    E1000_ICR_RXDMT0    /* rx desc min. threshold */
>  #define E1000_ICS_DRSTA     E1000_ICR_DRSTA     /* Device Reset Aserted */
> +#define E1000_ICS_TXDW      E1000_ICR_TXDW	/* Transmit desc written back */
>  
>  /* Extended Interrupt Cause Set */
>  /* E1000_EITR_CNT_IGNR is only for 82576 and newer */
> diff --git a/drivers/net/ethernet/intel/igb/igb_xsk.c b/drivers/net/ethernet/intel/igb/igb_xsk.c
> index 30ce5fbb5b77..1d21674c0f33 100644
> --- a/drivers/net/ethernet/intel/igb/igb_xsk.c
> +++ b/drivers/net/ethernet/intel/igb/igb_xsk.c
> @@ -529,6 +529,7 @@ int igb_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags)
>  	struct igb_adapter *adapter = netdev_priv(dev);
>  	struct e1000_hw *hw = &adapter->hw;
>  	struct igb_ring *ring;
> +	struct igb_q_vector *q_vector;
>  	u32 eics = 0;
>  
>  	if (test_bit(__IGB_DOWN, &adapter->state))
> @@ -536,14 +537,82 @@ int igb_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags)
>  
>  	if (!igb_xdp_is_enabled(adapter))
>  		return -EINVAL;
> -
> -	if (qid >= adapter->num_tx_queues)
> +	/* Check if queue_id is valid. Tx and Rx queue numbers are always same */
> +	if (qid >= adapter->num_rx_queues)
>  		return -EINVAL;
>  
> -	ring = adapter->tx_ring[qid];
> -
> -	if (test_bit(IGB_RING_FLAG_TX_DISABLED, &ring->flags))
> -		return -ENETDOWN;
> +	if ((flags & XDP_WAKEUP_RX) && (flags & XDP_WAKEUP_TX)) {
> +		/* If both TX and RX need to be woken up check if queue pairs are active */
> +		if (adapter->flags & IGB_FLAG_QUEUE_PAIRS) {
> +			/* In queue-pair mode, rx_ring and tx_ring share the same q_vector,
> +			 * so a single IRQ trigger will wake both RX and TX processing
> +			 */
> +			ring = adapter->rx_ring[qid];
> +		} else {
> +			/* Two irqs for Rx AND Tx need to be triggered */
> +			struct napi_struct *rx_napi;
> +			struct napi_struct *tx_napi;
> +			bool trigger_irq_tx = false;
> +			bool trigger_irq_rx = false;
> +			u32 eics_tx = 0;
> +			u32 eics_rx = 0;
> +			/* IRQ trigger preparation for Rx */
> +			ring = adapter->rx_ring[qid];
> +			if (!READ_ONCE(ring->xsk_pool))
> +				return -ENXIO;
> +			q_vector = ring->q_vector;
> +			rx_napi  = &q_vector->napi;
> +			/* Extend the BIT mask for eics */
> +			eics_rx = ring->q_vector->eims_value;
> +
> +			/* IRQ trigger preparation for Tx */
> +			ring = adapter->tx_ring[qid];
> +			if (test_bit(IGB_RING_FLAG_TX_DISABLED, &ring->flags))
> +				return -ENETDOWN;
> +
> +			if (!READ_ONCE(ring->xsk_pool))
> +				return -ENXIO;
> +			q_vector = ring->q_vector;
> +			tx_napi  = &q_vector->napi;
> +			/* Extend the BIT mask for eics */
> +			eics_tx = ring->q_vector->eims_value;
> +
> +			/* Check and update napi states for rx and tx */
> +			if (!napi_if_scheduled_mark_missed(rx_napi)) {
> +				trigger_irq_rx = true;
> +				eics |= eics_rx;
> +			}
> +			if (!napi_if_scheduled_mark_missed(tx_napi)) {
> +				trigger_irq_tx = true;
> +				eics |= eics_tx;
> +			}
> +			/* Now we trigger the required irqs for Rx and Tx */
> +			if ((trigger_irq_rx) || (trigger_irq_tx)) {
> +				if (adapter->flags & IGB_FLAG_HAS_MSIX) {
> +					wr32(E1000_EICS, eics);
> +				} else {
> +					if ((trigger_irq_rx) && (trigger_irq_tx))
> +						wr32(E1000_ICS, E1000_ICS_RXDMT0 | E1000_ICS_TXDW);
> +					else if (trigger_irq_rx)
> +						wr32(E1000_ICS, E1000_ICS_RXDMT0);
> +					else
> +						wr32(E1000_ICS, E1000_ICS_TXDW);
> +				}
> +			}
> +			return 0;
> +		}
> +	} else if (flags & XDP_WAKEUP_TX) {
> +		/* Get the ring params from Tx */
> +		ring = adapter->tx_ring[qid];
> +		if (test_bit(IGB_RING_FLAG_TX_DISABLED, &ring->flags))
> +			return -ENETDOWN;
> +	} else if (flags & XDP_WAKEUP_RX) {
> +		/* Get the ring params from Rx */
> +		ring = adapter->rx_ring[qid];
> +	} else {
> +		/* Invalid Flags */
> +		return -EINVAL;
> +	}

This is too complicated IMHO. Wouldn't something like this work:
- if wakeup rx, pick napi from rx ring's q_vector
  * napi_if_scheduled_mark_missed() logic that exists in igc_xsk_wakeup()

repeat for tx; if IGB_FLAG_QUEUE_PAIRS then the branch of second
napi_if_scheduled_mark_missed() call would not be executed as we had
previously marked the missed bit in napi state;

>  
>  	if (!READ_ONCE(ring->xsk_pool))
>  		return -EINVAL;
> @@ -551,10 +620,15 @@ int igb_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags)
>  	if (!napi_if_scheduled_mark_missed(&ring->q_vector->napi)) {
>  		/* Cause software interrupt */
>  		if (adapter->flags & IGB_FLAG_HAS_MSIX) {
> -			eics |= ring->q_vector->eims_value;
> +			eics = ring->q_vector->eims_value;
>  			wr32(E1000_EICS, eics);
>  		} else {
> -			wr32(E1000_ICS, E1000_ICS_RXDMT0);
> +			if ((flags & XDP_WAKEUP_RX) && (flags & XDP_WAKEUP_TX))
> +				wr32(E1000_ICS, E1000_ICS_RXDMT0 | E1000_ICS_TXDW);
> +			else if (flags & XDP_WAKEUP_RX)
> +				wr32(E1000_ICS, E1000_ICS_RXDMT0);
> +			else
> +				wr32(E1000_ICS, E1000_ICS_TXDW);
>  		}
>  	}
>  
> -- 
> 2.34.1
> 
