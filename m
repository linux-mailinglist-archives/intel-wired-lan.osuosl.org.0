Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aA0VOXosBGodFAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 May 2026 09:47:06 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A3A052EEC5
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 May 2026 09:47:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6CD37413FD;
	Wed, 13 May 2026 07:47:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ujuDdRsJmDzO; Wed, 13 May 2026 07:47:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A5282413FF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778658422;
	bh=I+I6EKse4lkPKQd8MLzAQHK4R2iDFTwH0Gs1XN9IbBM=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LluFlJoCx6WiF/eDYpmsHztDcwbxId4xPfbDu+tsOsUsZBhc2DKstMNYrOzKUtxA5
	 1oxSs/iohj3ZkiD+PaE3LaOkKvfxcNX7hNj4vjkp1TPvy6ubLzALexmPmlLdoriy/m
	 hfaxdKYD1ruD/sxfk8OrFslOT50E38Yu/qWN7vqPEQ33Wyid+ade1SokQZG6E+NsbZ
	 XhJ8o10H2jaI/4bsFv6ZBNja1u2Gb6JQuMfZXWVPMS1zjLNV/Yujk/7qgAZeMU45Ui
	 ploDx9lmKWKtfUkvE8xJs5HDfKjt5L7Ns3QJeUI+lRuPj6RqPNl9wiyztTPQuaCffF
	 5yZoEXRlMJ9aA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A5282413FF;
	Wed, 13 May 2026 07:47:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 54DC115F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 May 2026 07:47:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3EEB1413FD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 May 2026 07:47:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7g_SqFkJzDl8 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 May 2026 07:47:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8F741413FC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8F741413FC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8F741413FC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 May 2026 07:46:59 +0000 (UTC)
X-CSE-ConnectionGUID: 26y08BNwTBKV18BrBcsoKg==
X-CSE-MsgGUID: hYUVOjePQqS6pPBnXSN8nQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11784"; a="78722217"
X-IronPort-AV: E=Sophos;i="6.23,232,1770624000"; d="scan'208";a="78722217"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2026 00:46:58 -0700
X-CSE-ConnectionGUID: wDgAFEhZSOusjDUQolzZDw==
X-CSE-MsgGUID: ff0LylKHQ6m/aV222x9TRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,232,1770624000"; d="scan'208";a="233547033"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2026 00:46:58 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 13 May 2026 00:46:57 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 13 May 2026 00:46:57 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.32) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 13 May 2026 00:46:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=E4L9ljoPiej8sd92o4X4ZeCu2LpcwzsKM1QnqxP2ALx4TK4TnFh0kTIURMsuhxWPhm6p2KHVuPQV0FULkKULXjrtFTpszngW55uTTrb26Jqa7ZBt6qgsLfH1smRHMr39zilTD84v/tnJwndeNbVBHihIT7rCfpxn4QR/n+R2j28gHEOM76j6IoLC8L3mFL/g38SU25e7j5jxzL+cdrwkITPMxjJuuxwGTcF5isDEnZDtx/0ssWaxUgZaajOYPWdsSA8PjIY0SgpItDMy1rGWJdm9DlserlWvVEpSfYdJgBpWTydzS7fGXy92JdlCTKHJWuqENfw8nsNQla7GFZTnpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=I+I6EKse4lkPKQd8MLzAQHK4R2iDFTwH0Gs1XN9IbBM=;
 b=lQXECF/+Z7pc0KIxsRBq3v05Rs4RBOTaYSKsume/wPJq1eMdxLzuvxL/f6UZtyVv3OcJHvz3fZUCvFDFxaEvySqAeEJeKCaX1HDNFZvLUmLdveoAXlGSrLKf4vnLL9+LtD7s7OhccFR1U3NI6i5g4JM4TH3XOEawTGlB9+RBYLxaRMX6rjJIwZZCUswYRMxqhYnOpWbT2vV1FhAg8HbF/v9jxP7GHYYNGj/QZ7pjFTk01XCHWtLMjr+7s4hy/ICD3pt/QV2ud2IYRW1ntMWG3nC5As9ma6b1DoStF+tZ2IjYqct2hH8wMVEniRRMf7Fy1LlgnogKu45Okgeg5GZ55w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7540.namprd11.prod.outlook.com (2603:10b6:806:340::7)
 by PH3PPFCF54B2894.namprd11.prod.outlook.com (2603:10b6:518:1::d4e)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9913.11; Wed, 13 May
 2026 07:46:50 +0000
Received: from SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::2edd:5c6d:169c:389b]) by SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::2edd:5c6d:169c:389b%6]) with mapi id 15.20.9891.021; Wed, 13 May 2026
 07:46:50 +0000
Date: Wed, 13 May 2026 09:46:40 +0200
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 <anthony.l.nguyen@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, <anthony.l.nguyen@intel.com>,
 <netdev@vger.kernel.org>, Paul Greenwalt <paul.greenwalt@intel.com>, "Simon
 Horman" <horms@kernel.org>
Message-ID: <agQsYBo3JqyTiEIx@soc-5CG4396X81.clients.intel.com>
References: <20260415142841.3222399-1-aleksandr.loktionov@intel.com>
 <20260415142841.3222399-3-aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260415142841.3222399-3-aleksandr.loktionov@intel.com>
X-ClientProxiedBy: VI1PR02CA0044.eurprd02.prod.outlook.com
 (2603:10a6:802:14::15) To SN7PR11MB7540.namprd11.prod.outlook.com
 (2603:10b6:806:340::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7540:EE_|PH3PPFCF54B2894:EE_
X-MS-Office365-Filtering-Correlation-Id: 12b00e14-9537-4e91-b965-08deb0c3cad6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|10070799003|376014|1800799024|366016|18002099003|22082099003|56012099003|11063799003;
X-Microsoft-Antispam-Message-Info: lcEopaV/kmnAC8ZmIwSjwP+4FUKhmNRbX/0M+YhaspnBLGUeH1fwy8LkJSFRGe5FeDxxhKts1MOBBdbRhwXDd9vTExivJi2du7dHCyFsXOWzZ4Ue4UfeP8mwSY398/1YGEIU9sU7eZsV6N2EWNKSmEOhx6EjSVuOwbBedp/seuDn1Nhs8s/MNaDJIl2v+E2jnuBbBS8JXWchq/wWEwo7Beh+FgdxOsNr9dgB/c3DQItfBLTULtJlHBblUUCC82rRbAKMlGlTWo0ziaF0IIEn/CEL0Qzvzoi3ml1T/iP2zK/vB4HttGrIXLZ/7xdOOdq4fFrt+3gbCHtDpO+nv2LLC9jlVnUW7Gsji5xOQLaEcrJlGahJF7L0CRfu5B3SnjlF0+EcE1YD5AHGE4SgvhGkqbzqP8gL8KQI0bGm8iiRq6mX5G1ieaUEQbT+ffs5EPZ4xWFWA7bwAVGXPVYrIUzk9jG18tmz6ZGwDSYKx5ONP47Z0loN8ZuPrvM8Jr7oZh3mj2/WOnUy8AZsuZo/+2SeosAnliXWSkHDRjqVrb1WAYAHHH7J2zQC6eRG+LO5xea1eR9hn5VGt6CZxPWXv96y4mAutFRHnc4re3Ae53SgQDVvw+bUaiPxRJ2/Qe2OHL3BE+R1Mt4Tmf7iYRcJ+MT/Cv+OUgT58kP4qtCp21YQqiaoznBrvyPTodWS3DeZXShA
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7540.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(376014)(1800799024)(366016)(18002099003)(22082099003)(56012099003)(11063799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?L52ghGKSfiNBLczkpUJuUk9QrPPeiDB3tDWN45K59DAWcS6Gf+TF0PnrPyen?=
 =?us-ascii?Q?OrY3zp2nTIYyY5UJliZOqz4zi2yqOazfetj559+fVC9Yaoa3+bkX+dKZ5fN+?=
 =?us-ascii?Q?AbsuER+SMUixqREVe/VwhZMRvIVHsOgvi3CaWSJhiLBLOQtYKeHi8o2F7wF3?=
 =?us-ascii?Q?hYYmsb/58xKJllH4K5dkUUjAl6R9KXOwXNuU/SF98waMkvKDQq8f5qlah2Rs?=
 =?us-ascii?Q?prKRbaID0Sm64TI4xzjrl4c/VunU5EUeQTj5xGQt9BH2f118u1HNrlckGofV?=
 =?us-ascii?Q?ok9IW2S30tC9O/Zf1u/W4kGPpfXppe7gLd8v3BVl2wqufPBPijHK4tnGJQGv?=
 =?us-ascii?Q?uPfRzdDxU8dqoQDpd/rDim5Ss3uak+My9gX4yMA9zbH699ITMeX6Hhi2hbHd?=
 =?us-ascii?Q?3LvKjV6F1EIcKdyfkGchOorIErhYPYehq8X8IZ1arClj5E/BhgZbtzvYHYSq?=
 =?us-ascii?Q?QygtSn5WgZIXC1nBNTwo6DVkDje5AyMK/Qm+IC4x4hlhk0TGzw2rK85BybUO?=
 =?us-ascii?Q?/SUaaxgKVuO6Nk7kE4RcztcJUHOIRyK7bXLOvXrOiMYdIA//4BmgdOXZeYmV?=
 =?us-ascii?Q?I3QYNZSipzkggaUrSWNbVzewX2QvUpz0JrKn9Bh1IYxVbI+Xcgo1pXHTVe7y?=
 =?us-ascii?Q?OeGz+sOxQkQWHlE0butoIn+1xMdefn3gtxdESu53eCnAd7Q65QCLKJ8zLb8m?=
 =?us-ascii?Q?ps+GBIKRKfI7J9kXsqbEO4oABhAoEzdawfvyACmF5h3rgZCoy7qVk0wncY1s?=
 =?us-ascii?Q?MMEN8flxN9Yx4dBVOfbOQu88e8+dbg3MhHRa3cmreMF4rlBAbSHuZf6iarlu?=
 =?us-ascii?Q?lzT084Cuk52POP1xFbCkEjBOjUXYBtEWloixxCyT8dYb8cxr5zJ4+/JKWzmL?=
 =?us-ascii?Q?lguoGcaLiufJdxsNjiB253QpOgwQOib1xz6LaIRqKjpj1U0Cqq5DNDEwUjXc?=
 =?us-ascii?Q?0ESkfMj+4/R7KJcmBgCcsbUHlPgt6sHLRcRItKuTE2WOHGMX4fsIeo4fn9o5?=
 =?us-ascii?Q?3cDyNnp/859Tjr9lxKx7EI/KYQ7xy+wDfdNCZiQbIhfqo5t3HfJzIeukgGAo?=
 =?us-ascii?Q?5W1Vge4U7T9zXBwzp7H+KBV3kRmyV8A9pXCzWOwLHv8LhS8qyLuNDD3o7ocs?=
 =?us-ascii?Q?6OczvRhA01bGh+KdtKfMuhym9B8H73k/inkmPGfAz8tEYA2ayp6/TCmv5IwN?=
 =?us-ascii?Q?xnhApomQc63Pg3sJkQ4z6bQB5JzLssJr+vkBHcyZKTisN98zVQIQjE3AUIZ0?=
 =?us-ascii?Q?B7F85dBkm/m6eW705m+hkO/EHYB8AIwKE5KhbatI5uGyC4HdNLXGiOLdyrJh?=
 =?us-ascii?Q?Ltyblr3kkGKphKrV6nhNTpu9V37zOXsghNDN4e7CRKw9BfRpLi/e8UpGovis?=
 =?us-ascii?Q?TJRBzfQBjJXtkDbcHi3fwqFoLpYvnRX5o4r1zghj43W4MbN2ZHRDh8tPaqf1?=
 =?us-ascii?Q?ju6unECTV97a0uKMUTH2K/aW/qteKTZOJtpyCVm3odnTs1UWYrGc4HjhcRuJ?=
 =?us-ascii?Q?En/ThdTwk2wB60bNlPeo03L22vaisnBlHBKzokvRCnyyynhemJ74X9EFrBSa?=
 =?us-ascii?Q?hjjoj7GWtR+SXqj8IhanC2VNKAs+bAHK5wjm1rTTrbAN0T2Cq6UMHsMiosOX?=
 =?us-ascii?Q?EAKoiVy9MmJ0tQftt9KKyInjKGI80TVp8K+57BwZjaszpE8PViZusROI2ocm?=
 =?us-ascii?Q?G+4/k5x27nHrZVp7ZDfDLroZC+iawmllyyqvZwa08BkafQYyBz53qu68v5Al?=
 =?us-ascii?Q?XDZ6lJRFX6dwGh/wruSyJX78DqGmWpkqc/+QkXhQS20FhbXIv4jHKfQPfxOr?=
X-MS-Exchange-AntiSpam-MessageData-1: 5YZgW93R07Odv38Q6sBBbplpNy/Mpi+FkI4=
X-Exchange-RoutingPolicyChecked: p7hZZQKl+fxPbQIsLMrNAZoIPxb7QPAcOyQClg/ByOXMVGuKkyfP1mcDMUR/7jGChAVJTl4YjSOPbH6TXmbnOEi3SICMx3P7LRnBmhYU8qSjSqHdqtp3p+CQux9xbULNz/5KaIlY4Q9/PfABJ9Vaw1ncNPdUbRWOG3hZnfqYc4okZu+8yfFMQrXi0DTRO36bReRMT8tMnzRedGFLDUi1NYfW9n/oWppkuBZSPDZ0EKvOJM1QTiErVrCnHwjHvs6yw/2C0UjJQ8z5R2aAgKM/JucC7RSDmnJZbt4mzOUOd/yEmgNTShuNNGlOy+yimBrofU6OxaxH9OCEyIChAeW2wQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 12b00e14-9537-4e91-b965-08deb0c3cad6
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7540.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 May 2026 07:46:50.3966 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lTJXXiqxd4AEo1Oa+GiFx5CZg72xTjYzQ7VyC7pfa0WYRsPH5q+xV+pNY34Sdh46qD5Ce8xv74iIDktEplHlaHK+iF76I25ve+h81S2SJ9I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPFCF54B2894
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778658419; x=1810194419;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=JyYgv/hguyXNcEXWJlHSB1Xv7v97QLl/dcNld/xO2Bc=;
 b=PBpOeY9ENcmC+qbIyKGeZgGLfHgNn+8l8FGoNkajNfyaY9TW1tVgxJHK
 i8dQzCwgQU5WbmYl9buwGLhqDfcC6yeW18hOMH3XkXMpUXnj9r8bW2Drx
 bCavQZR/KmDQBqAStsSJJha7xYsXPAQKkqTqeaNMilol5pteAtF3C4/w5
 iJY8L4Tf9BHKrz5OgHtIWE8Nn73kzmFdbrqO94B2Mrgf/0VeVdPXzTpyH
 3o5yrFLVA12SQ86jAJZSGMrWTlPIO7HCVCQ9zm/ooFPirj4VAqezWXnTH
 C+IBCSeYw+VQ+M3P22x7ZLIHIxeeudV61Ct3AbWwIW3V9y3QrvneUcSuH
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=PBpOeY9E
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3 2/6] ixgbe: add bounds
 check for debugfs register access
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
X-Rspamd-Queue-Id: 8A3A052EEC5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:paul.greenwalt@intel.com,m:horms@kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[larysa.zaremba@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[larysa.zaremba@intel.com,intel-wired-lan-bounces@osuosl.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:dkim]
X-Rspamd-Action: no action

Tony, please take this patch off the dev-queue, it is conceptually wrong and 
prevents probe on E610 and other adapters most probably, details below.

On Wed, Apr 15, 2026 at 04:28:37PM +0200, Aleksandr Loktionov wrote:
> From: Paul Greenwalt <paul.greenwalt@intel.com>
> 
> Prevent out-of-bounds MMIO accesses triggered through user-controlled
> register offsets.  IXGBE_HFDR (0x15FE8) is the highest valid MMIO
> register in the ixgbe register map; any offset beyond it would address
> unmapped memory.
> 
> Add a defense-in-depth check at two levels:
> 
> 1. ixgbe_read_reg() -- the noinline register read accessor.  A
>    WARN_ON_ONCE() guard here catches any future code path (including
>    ioctl extensions) that might inadvertently pass an out-of-range
>    offset without relying on higher layers to catch it first.
>    ixgbe_write_reg() is a static inline called from the TX/RX hot path;
>    adding WARN_ON_ONCE there would inline the check at every call site,
>    so only the read path gets this guard.
> 
> 2. ixgbe_dbg_reg_ops_write() -- the debugfs 'reg_ops' interface is the
>    only current path where a raw, user-supplied offset enters the driver.
>    Gating it before invoking the register accessors provides a clean,
>    user-visible failure (silent ignore with no kernel splat) for
>    deliberately malformed debugfs writes.
> 
> Add a reg <= IXGBE_HFDR guard to both the read and write paths in
> ixgbe_dbg_reg_ops_write(), and a WARN_ON_ONCE + early-return guard to
> ixgbe_read_reg().

Here is IXGBE_HFDR definition:

#define IXGBE_HFDR      0x15FE8

Meanwhile e.g. E610 uses this register:

#define IXGBE_EEC_X550EM_a      0x15FF8

This leads to the following call trace on probe of E610:

[    4.828801] ------------[ cut here ]------------
[    4.829566] WARNING: drivers/net/ethernet/intel/ixgbe/ixgbe_main.c:356 at ixgbe_read_reg+0x4d/0x140 [ixgbe], CPU#5: (udev-worker)/709
[    4.831135] Modules linked in: intel_uncore(-) ixgbe(+) pcspkr libie_fwlog i2c_i801 i2c_smbus mdio virtio_net(+) dca lpc_ich virtio_balloon net_failover failover joydev 9p fuse loop zram lz4hc_compress lz4_compress 9pnet_virtio 9pnet netfs serio_raw qemu_fw_cfg
[    4.833733] CPU: 5 UID: 0 PID: 709 Comm: (udev-worker) Not tainted 7.1.0-rc2+ #4 PREEMPT(lazy)
[    4.834782] Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 1.17.0-8.fc42 06/10/2025
[    4.835798] RIP: 0010:ixgbe_read_reg+0x4d/0x140 [ixgbe]
[    4.836474] Code: 48 83 ec 28 f6 87 4b 06 00 00 02 75 29 89 c6 41 8b 04 30 83 f8 ff 0f 84 92 00 00 00 48 83 c4 28 5b 41 5e 41 5f c3 cc cc cc cc <0f> 0b b8 ff ff ff ff e9 d7 22 35 fc 49 8d b0 98 42 00 00 41 b9 c8
[    4.838714] RSP: 0018:ffffcd2980ea39a8 EFLAGS: 00010202
[    4.839401] RAX: ffffffffc02e29d0 RBX: ffff8aa2442001c0 RCX: 0000000000000000
[    4.840296] RDX: ffffffffc069cd80 RSI: 0000000000015ff8 RDI: ffff8aa244201480
[    4.841176] RBP: ffff8aa241d1f000 R08: ffffcd2983000000 R09: 0000000000180000
[    4.842025] R10: 0000000000180fff R11: ffffcd2983ffffff R12: ffffffffc069e3e0
[    4.842886] R13: ffff8aa241d1f0d0 R14: 000000000000003f R15: ffff8aa2487e3000
[    4.843794] FS:  00007f1cbd6f5980(0000) GS:ffff8aa2fd25b000(0000) knlGS:0000000000000000
[    4.844799] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[    4.845521] CR2: 00005634f0c7e018 CR3: 0000000110ff6005 CR4: 0000000000770ef0
[    4.846485] PKRU: 55555554
[    4.847138] Call Trace:
[    4.847743]  <TASK>
[    4.848144]  ixgbe_probe+0x2af/0xea0 [ixgbe]
[    4.848809]  local_pci_probe+0x3e/0x90
[    4.849471]  pci_call_probe+0x59/0x190
[    4.850021]  ? pci_match_device+0x15f/0x180
[    4.850687]  ? pci_assign_irq+0x2d/0x160
[    4.851382]  pci_device_probe+0x95/0x170
[    4.852029]  call_driver_probe+0x26/0x100
[    4.852791]  ? driver_sysfs_add+0x59/0xd0
[    4.853454]  really_probe+0xcc/0x2c0
[    4.854362]  __driver_probe_device+0x84/0x170
[    4.854443] iTCO_wdt iTCO_wdt.1.auto: Found a ICH9 TCO device (Version=2, TCOBASE=0x0660)
[    4.854971]  driver_probe_device+0x1f/0xa0
[    4.856274] iTCO_wdt iTCO_wdt.1.auto: initialized. heartbeat=30 sec (nowayout=0)
[    4.856467]  ? __pfx___driver_attach+0x10/0x10
[    4.858133]  __driver_attach+0xcb/0x210
[    4.858138]  bus_for_each_dev+0x85/0xd0
[    4.858141]  bus_add_driver+0x13c/0x220
[    4.858144]  ? __pfx_ixgbe_init_module+0x10/0x10 [ixgbe]
[    4.860394]  driver_register+0x75/0xe0
[    4.860881]  ixgbe_init_module+0x92/0xff0 [ixgbe]
[    4.861509]  do_one_initcall+0x5d/0x320
[    4.862019]  do_init_module+0x84/0x290
[    4.862521]  init_module_from_file+0xd8/0x140
[    4.863084]  idempotent_init_module+0x114/0x310
[    4.863665]  __x64_sys_finit_module+0x71/0xe0
[    4.864237]  do_syscall_64+0xe2/0x660
[    4.864726]  ? __seccomp_filter+0x52/0x380
[    4.865265]  ? do_syscall_64+0x99/0x660
[    4.865767]  entry_SYSCALL_64_after_hwframe+0x76/0x7e
[    4.866472] RIP: 0033:0x7f1cbe0d15ed
[    4.866994] Code: ff c3 66 2e 0f 1f 84 00 00 00 00 00 90 f3 0f 1e fa 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d 13 48 0c 00 f7 d8 64 89 01 48
[    4.869093] RSP: 002b:00007ffc1e56d968 EFLAGS: 00000246 ORIG_RAX: 0000000000000139
[    4.870005] RAX: ffffffffffffffda RBX: 00005634f131bf00 RCX: 00007f1cbe0d15ed
[    4.870865] RDX: 0000000000000000 RSI: 00007f1cbe5f907d RDI: 0000000000000010
[    4.871732] RBP: 00007ffc1e56da20 R08: 0000000000000000 R09: 00007ffc1e56d9b0
[    4.872592] R10: 0000000000000010 R11: 0000000000000246 R12: 00007f1cbe5f907d
[    4.873451] R13: 0000000000020000 R14: 00005634f0ce8ae0 R15: 00005634f131d640
[    4.874318]  </TASK>
[    4.874635] ---[ end trace 0000000000000000 ]---

Here are the warning locations:

(gdb) l *ixgbe_probe+0x2af
0x1480f is in ixgbe_probe (drivers/net/ethernet/intel/ixgbe/ixgbe_main.c:11696).
11691                   hw->link.ops  = *ii->link_ops;
11692
11693           /* EEPROM */
11694           hw->eeprom.ops = *ii->eeprom_ops;
11695           eec = IXGBE_READ_REG(hw, IXGBE_EEC(hw));
11696           if (ixgbe_removed(hw->hw_addr)) {
11697                   err = -EIO;
11698                   goto err_ioremap;
11699           }
11700           /* If EEPROM is valid (bit 8 = 1), use default otherwise use bit bang */

(gdb) l *ixgbe_read_reg+0x4d
0x703d is in ixgbe_read_reg (drivers/net/ethernet/intel/ixgbe/ixgbe_main.c:356).
351             u8 __iomem *reg_addr = READ_ONCE(hw->hw_addr);
352             u32 value;
353
354             if (ixgbe_removed(reg_addr))
355                     return IXGBE_FAILED_READ_REG;
356             if (WARN_ON_ONCE(reg > IXGBE_HFDR))
357                     return IXGBE_FAILED_READ_REG;
358             if (unlikely(hw->phy.nw_mng_if_sel &
359                          IXGBE_NW_MNG_IF_SEL_SGMII_ENABLE)) {
360                     struct ixgbe_adapter *adapter;


> 
> Fixes: 91fbd8f081e2 ("ixgbe: added reg_ops file to debugfs")
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> Cc: stable@vger.kernel.org
> Reviewed-by: Simon Horman <horms@kernel.org>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> v2 -> v3:
>  - Add Reviewed-by: Simon Horman; no code change.
> 
> v1 -> v2:
>  - Add Fixes: tag; reroute from iwl-next to iwl-net (security-relevant
>    hardening for user-controllable out-of-bounds MMIO).
> 
>  drivers/net/ethernet/intel/ixgbe/ixgbe_debugfs.c | 6 ++++--
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c    | 2 ++
>  2 files changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_debugfs.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_debugfs.c
> index 5b1cf49d..a6a19c0 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_debugfs.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_debugfs.c
> @@ -86,7 +86,8 @@ static ssize_t ixgbe_dbg_reg_ops_write(struct file *filp,
>  		u32 reg, value;
>  		int cnt;
>  		cnt = sscanf(&ixgbe_dbg_reg_ops_buf[5], "%x %x", &reg, &value);
> -		if (cnt == 2) {
> +		/* bounds-check register offset */
> +		if (cnt == 2 && reg <= IXGBE_HFDR) {
>  			IXGBE_WRITE_REG(&adapter->hw, reg, value);
>  			value = IXGBE_READ_REG(&adapter->hw, reg);
>  			e_dev_info("write: 0x%08x = 0x%08x\n", reg, value);
> @@ -97,7 +98,8 @@ static ssize_t ixgbe_dbg_reg_ops_write(struct file *filp,
>  		u32 reg, value;
>  		int cnt;
>  		cnt = sscanf(&ixgbe_dbg_reg_ops_buf[4], "%x", &reg);
> -		if (cnt == 1) {
> +		/* bounds-check register offset */
> +		if (cnt == 1 && reg <= IXGBE_HFDR) {
>  			value = IXGBE_READ_REG(&adapter->hw, reg);
>  			e_dev_info("read 0x%08x = 0x%08x\n", reg, value);
>  		} else {
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> index 210c7b9..4a1f3c2 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> @@ -354,4 +354,6 @@ u32 ixgbe_read_reg(struct ixgbe_hw *hw, u32 reg)
>  	if (ixgbe_removed(reg_addr))
>  		return IXGBE_FAILED_READ_REG;
> +	if (WARN_ON_ONCE(reg > IXGBE_HFDR))
> +		return IXGBE_FAILED_READ_REG;
>  	if (unlikely(hw->phy.nw_mng_if_sel &
>  		     IXGBE_NW_MNG_IF_SEL_SGMII_ENABLE)) {
> -- 
> 2.52.0
> 
