Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gKeFG+DpemkV/gEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jan 2026 06:02:24 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 66233ABC8A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jan 2026 06:02:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1A3EF6071C;
	Thu, 29 Jan 2026 05:02:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id M6SZNV_jnA6Y; Thu, 29 Jan 2026 05:02:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7BC9F6082A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769662941;
	bh=9ObkEr5tajTxupII4mDSmLxaLQIJDnYIpIGL9+c52pk=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qdLhja8N3yRZ2uFaOdTCXNa1+lDwuVwHYiHFsbmV46oVEPS1evid5tbE+zPKR2Au7
	 K+nQ9tzNncNzNdGDywjpGj5O0bb5dniJBtUIJj/MaUt7DZiNY0A5bd7yJD1nLZ2wtO
	 dl9FfDYt2ox4WsgLlcSRB6In/bs/SoCU1sB6Q75i12+1LkCBvlLBTrbQYDu9Hh3hmr
	 l1wbOAYW4ydGWcC8BamFlIV3SW/QvwuPGpkSQU6SVJCRBQgve+2NzdfNPQFGtiS+Yl
	 tDo9CqhlZ2X1J/I1iYo2lEjZYRUkNtt1vHcf7Y2lkErZb5slMb1eGhuFGzwbjCN58Z
	 xSe+q8KzP7Gtg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7BC9F6082A;
	Thu, 29 Jan 2026 05:02:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 499AC1AD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 05:02:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 383A183B86
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 05:02:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vfSzIBCgYtX6 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Jan 2026 05:02:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6F9EF8345D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6F9EF8345D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6F9EF8345D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 05:02:17 +0000 (UTC)
X-CSE-ConnectionGUID: 2UKT8BuQTbKibJsUiAyqXw==
X-CSE-MsgGUID: fjeffnjDQ9WZShVCN/TMyA==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="93550792"
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="93550792"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 21:02:17 -0800
X-CSE-ConnectionGUID: F0EXYQhLSKinQg5mY3S2cg==
X-CSE-MsgGUID: 6itBM2euRHuaZz0GjJjSQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="208478842"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 21:02:18 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 21:02:16 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 28 Jan 2026 21:02:16 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.12) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 21:02:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rPgRQbjj3CfHNE8ai9RsUvy5QTQUH4bJPm/1skVV8WmWdgXIMyZRCDLqmlJzWSzAFTIPO5wjq5k6OMDlw5SJe+4IF+3cvRzzfJtu/HIdcSVCK0tDP04qc1K2LiVXfiQO6sEuZGazvkVioptgSRKseWoJW1/2BZjNkDF3QEA7em4EbH4Zv58ktfSXBawTWYgeZQgs6fhnjgH/8DbRwiKlPGJKbNKF7JCA4/jHmviqIk1m0LTti/1OKKxtgdb8+MtMjpHynGkS7fgm6GiPFqubojhwCjf+xnbP5I5BilFYdN9SBnyGIYxWviASGcTyBhwNMJvqjlmxJvGvkCXQdrwW4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9ObkEr5tajTxupII4mDSmLxaLQIJDnYIpIGL9+c52pk=;
 b=c4j/XDErs6r5ycPG87HAP8Z+i10CJFE/332gFXQ7M3cpwYWMzjaVvRLp1wTxL6gzLRq2c13SxdCWxn2z7qoalo5M+S5xXAuE85SEH52DWgvbMTjooygL42kxqbH0rhBUVHfbE5ZaNuZMRV1XMHbx5Ov0+3PmNd49e+m9HxXVhoYIdD4kbhrwryKPWvwhJ8uxwR4SpmaCmCxujox+COQGnuxKYLUB1zJ6BowL0eBlcIh+dRRrE6U/Od99TCnZyDmPlgLftF/fLTRKMXpRz9Ku+aKjY1LTldQoiS0zFH7E33MZdiPZh8lhvA9Dd+HLLhKwRn1zAqeWyCkxTUsHy0NftA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by IA4PR11MB8942.namprd11.prod.outlook.com (2603:10b6:208:56b::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.11; Thu, 29 Jan
 2026 05:02:12 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9564.007; Thu, 29 Jan 2026
 05:02:12 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: Marcin Szycik <marcin.szycik@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "pmenzel@molgen.mpg.de"
 <pmenzel@molgen.mpg.de>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH linux-firmware v3] ice: update DDP LAG
 package to 1.3.2.0
Thread-Index: AQHcXT2ztTw07288+kesAr/clF82UrVo/W+w
Date: Thu, 29 Jan 2026 05:02:12 +0000
Message-ID: <IA1PR11MB6241624C4825F787557169058B9EA@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20251124122609.3087-1-marcin.szycik@linux.intel.com>
In-Reply-To: <20251124122609.3087-1-marcin.szycik@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|IA4PR11MB8942:EE_
x-ms-office365-filtering-correlation-id: ddf53914-851e-4747-d80e-08de5ef39065
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?JAGAJtlAWI/C/NvWDIq1lBIPUZfBNWeBugF5Jptqr5C6pumSd5oOADzkFLPX?=
 =?us-ascii?Q?U6c8BBgVvnUEaIzxtPppVTMXN0foXuXcjk67SohQ0oq3Z7IAweA98D0KOY0C?=
 =?us-ascii?Q?U6MgV7iXXR1SRxZXHgWSNBeAt37sZ8QuMhqT07kytKvxIQRWrPiMxXx09itm?=
 =?us-ascii?Q?QhbKnpWh4zs7jPTiz4ODNBsj5Sz5c0Z5fdgYuXzSXNNKwZ1pAf7U5n1zupJV?=
 =?us-ascii?Q?zig+76rvBaqcf/VcQeZZQBHbQNneEh9tZ8rTJsaRj1cAcXZ5mXFi1s/eoYDp?=
 =?us-ascii?Q?ddgdxWkMR4/leKbVQdDr54gbPHg7igBoxVCoy0ezJk5QsOT0JY3J6cWTY/lZ?=
 =?us-ascii?Q?qMx+LWt1DckRF65exRNMWJM1iIr1la9LLW4uRvptP61hFR/MZjxAv3Ziq3W6?=
 =?us-ascii?Q?qzxQXX9YiZTRAkhUydX07YpECBpsezwhEJhwfMAJy4NMsyj6Xq7l6/a251S4?=
 =?us-ascii?Q?YMR+Rfgb9Q9ek3TvuWkoho2I4vhthnRUfV+xjZkVWv2vE/RiGZB8u/sXIhh3?=
 =?us-ascii?Q?+yCVVLs6svcFi0kmQiabW5jhs1at09EmK8M8ZfmPOIfPuHEzHrp29o4DwPFr?=
 =?us-ascii?Q?mdvA8wE4SQXS7Xi7khe+vcjImnIHPDj0Ns2LtUcTydKjiQd+ASyWAkRiPytB?=
 =?us-ascii?Q?LBwrSk0m40BgHtW1y4mxxA7WTd9yfyKlxGBVBIHr/hmaC8cGG3hhH5IVXFp5?=
 =?us-ascii?Q?IbHdxua4HD+Yz70CQMrXhrADr7BksrCiL1GePocjRufwtmeSW79mKvd5vX3j?=
 =?us-ascii?Q?FTU7lsNTqEPSrPWuo3+LL9odMExZ9If9dpeTGntQ/6FfzJTlD0ywQYhi7Z1a?=
 =?us-ascii?Q?8kdhd/z9EbKpgGEr1f/eigDvjh9uv9FS0b6956y35OcNN14VJDPSSR5hda+b?=
 =?us-ascii?Q?tRYJLEWjV5LAh/YkNL4Ijs+TTJiIWGZNQ6YdpDIdqoMbtLvRm+ON+TmwCbAo?=
 =?us-ascii?Q?dH1gsvAWvrkBVZrcmlhiK3tlSQnXdnDd523b9145M/uJteX17U8ON32/H0Mo?=
 =?us-ascii?Q?TYQnZH60l8y2mmufNEfsmdlR0RNZZaXi1w4MXAtewzjuGo2iY70tvXxaT9Hc?=
 =?us-ascii?Q?KlsU7++H1M9jH0JEbnDKSh4hjkvBm5sC6VUUQd+2xYdx6Qd0c9tCAo69WAyd?=
 =?us-ascii?Q?HBuGIV8jcpx0UC8FGRd68rYoQB6Z4MmQmFqbCogazYzrhwSy4BUA7SlqJilB?=
 =?us-ascii?Q?QMAf6tG+PEIR9BFbdUF4uZ/VvHj2qP5uXRgk1fsm1L7/mZpA9KB5OQ7x6sDm?=
 =?us-ascii?Q?9VFQnBnrOnV7kkCzALA2mcp/LOhbI+57Ic+YWfanV02t0Tf9KIigSQ0UJmzy?=
 =?us-ascii?Q?Emm1vPaLOsnV80WJkjnVF74n44EQtQcJkQILq4oZPjEET44VxcxzPRRnzO18?=
 =?us-ascii?Q?7kk2QpBVLZCcYzILUGlcDIUJiwmg4fuE5DuvqsveWRr3r4fyzQudmXKpIeom?=
 =?us-ascii?Q?ZVkrtQhTRJGwAGyGslL26iPKy2E4GJXUrvg8ptvBdinNcHp25F2E84RA5e2S?=
 =?us-ascii?Q?5v1z3J1xxWYm1VTgKD1gCU0MDwpxetdp/PJESv+PGb1rXDRuMoTfVv4dW42Y?=
 =?us-ascii?Q?XXHWSoP5A2X1moP6MLcWoTGyfOY3d28rTqqZBdiSYQbRxzGxqy9QeaM+N1AE?=
 =?us-ascii?Q?+nBFHm67dkUbOa2haFx6CnA=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?yeqCVcToH4MsrJQWVTIkT3R0WamMlcM3eYQz3PR3NnsdFAAeK7Dbmgeqo53r?=
 =?us-ascii?Q?7RmzMeCcUtt5TzH4DMp/r42NSpcgqHO0daahyEiaWXyMm5Tjuk/1euxSnEIU?=
 =?us-ascii?Q?F/L4V4xEKNVudPs6uiyw8VKo93URXs4DJD29EeH9KEBDWNb80EVxPJ27YFDh?=
 =?us-ascii?Q?F565ksjkr+6B4I491t4DA2/Cb7D3Jl6LhFywNNnNznLPkjTMXC5Jw8/8oBWa?=
 =?us-ascii?Q?CGptnZ4CEHIrc/rAnkAWFsa8ZBSjLPsKZh/TxXqxTZl+HPcl9mxVyxcB3aHe?=
 =?us-ascii?Q?2Gss83hMslvFDgnPdJU7eNM4TxhM3cUFnmP/fYEYvdcmEaQIc6M0OUHxmMc9?=
 =?us-ascii?Q?P7VhBNbB/utQ2s4hSW1PZ4WB1JKmheNv07hFkRrSLPZTJYyqErVxKGnAWZVQ?=
 =?us-ascii?Q?gnbaVtWeOUhhNDhqEVVpQoNi5tnbcj2nSCuB4veShgQjxFRy+MrfAKsJai5f?=
 =?us-ascii?Q?a6R9iZAFVS1mSMZV00M0SDpR6oeyyX2fDSTDrVkSePlZmf/eZgIwYiWyTB/O?=
 =?us-ascii?Q?3sTA2ezJAP7FfaJqHVnbfZRMhwnlGArjRLlmILoskwtkg8gOb2HamFATdPjY?=
 =?us-ascii?Q?4AJMPJl43J2w5q/0ziuGhI9Jt+HwqQavf7lbNwzzT9+NG+nqNjJZqAuQjYax?=
 =?us-ascii?Q?AzoYsJp5zBWy6IgGDRy3G+7nPF/YS9+5LGl7ZCoEwxvnTkHf55AmvgRg6KDn?=
 =?us-ascii?Q?9EBdbSdZsR/9VL3l5qGPKgwnfxNP5EJseJ7l7M+4DrdNu2bhN8DBf15GC6Xr?=
 =?us-ascii?Q?Ts84W8fAtUWZ+vdlQsc9sq/DWEi9uor7LPJAYBRsBOjslQNtzpOkR4tRydvs?=
 =?us-ascii?Q?oKo2YwDe1T+q5f5Jf5RASHly5JY9qoIzP1fXD9Ahd9iDhxFL/Tvaggm1+Cwj?=
 =?us-ascii?Q?5syqrQ0yl3u8piF4T83grNLzud9FcmxuhhlR0N7K4mtZvUarI3/GVYiyxrzd?=
 =?us-ascii?Q?8lkAvlZ6xUwfIExqyPR54pewJYQ5gargIG799GcDCAcreITnI94M4UDXeeui?=
 =?us-ascii?Q?MJAutCVmmH2ErV9cIdjVL5Msb+Dgy40gJTELzcfhJ1H9C1xrgx912yE+ZTWA?=
 =?us-ascii?Q?ftiQbU/yfKCS6TEoSKY0N2ZI09yHHSm9psDLcbdKcVnNB6ew6zEcwZYQO8HS?=
 =?us-ascii?Q?Zx4+zntX1ra9mNDlRw23665uA54kt3txtRCrYpiDNuVOlHmmQOOzk25sNFjl?=
 =?us-ascii?Q?qyTaEex5iJTfNpHaJJiSry/7qoJ9CTt1PdFyavdVnA0yGXeLBBaVHGK+pRhS?=
 =?us-ascii?Q?Smt7JM+nMP0gGQ7PY5tKIT0XGEdbUR3MAvAosS2s5Z9W0BFOVvWJnudDCV4z?=
 =?us-ascii?Q?kmjfN6zo1eQIL0qGvvlgT9jW3g3Moog+S3cUQwZbHg/NX7d31SXIaVebA6Ra?=
 =?us-ascii?Q?7zdwAEF6hhkF5axKYY4yg18/tD9VHj1Efn8Op8mrQaT98426FT/+R50XK52k?=
 =?us-ascii?Q?Tm8htgTVYpmLqXS8eC6HKVdBijTdQsfNClnygffTavXcPYQetYxcci5IpB7T?=
 =?us-ascii?Q?w2h3+fiNkq0OExFbVRUw4m0AfV8UgN8CIB59RUb83VspQnXQR+mp74AnqCJd?=
 =?us-ascii?Q?JYZt/TWPBjW/H0S93+mwLlYwhThkOHM2wLY+0n5QzRXh2wm3NjtHsNVYhexa?=
 =?us-ascii?Q?edVOmJfpzpJzMfBjiOveEF4dM7YGlMDt3ySgSIGeWpg8PB/0xo1jDZHV/46Y?=
 =?us-ascii?Q?dTtWusEEFHr6dT+FQOVzg/JHCMUK6bWkgFKQ0ezMFIZqwqs8?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ddf53914-851e-4747-d80e-08de5ef39065
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jan 2026 05:02:12.5210 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4y8vVR+rlP2u3bYjAd5dkCy7bD/WkKBdeG1Fpn+roW+vHoHO/S4Jows3i7gz//XO/XbgUYLtTGW69E+tPMEcNg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB8942
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769662938; x=1801198938;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=C5GPDCbYG2aA+3pouGUrLVapnhhu17j9BSM1nX6sYVQ=;
 b=oIakAc0GTkBdrSGHz56ZSCtrhzWYdOMhcG4ItGjB2SSdSE7Po0rYv8uw
 mJXSTZ/OXN4hULxjsUJbd+ESb758dSa1OqCAZBzhg6+pu0RiGuL4ba7N4
 GY3RoGNnCbag2BHGtUMZPjIPz/FaD1SIlisWjMeCDWxsDEd3y3Bs6XFar
 oMaxlTWOxz7rZOVSMQi8usBa0teYJHA7Ps0boR5SSIYQbsqsiwe4eqxGe
 1av1WSMWbW2ar8VLO3sOEZZx25w9nGfhwa681ZzmOY/hRze7eQH7sO4Xy
 SpgJVb/kxJ1LOUDQUebbA8kE/SRG0ll/xdijrJv4rKBmatShKAnEYcWBx
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=oIakAc0G
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH linux-firmware v3] ice: update DDP LAG
 package to 1.3.2.0
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
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:marcin.szycik@linux.intel.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:pmenzel@molgen.mpg.de,m:aleksandr.loktionov@intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mpg.de:email,osuosl.org:email,osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns]
X-Rspamd-Queue-Id: 66233ABC8A
X-Rspamd-Action: no action

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of M=
arcin Szycik
> Sent: 24 November 2025 17:56
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Nguyen, Anthony L <anthony.l.nguyen@intel.com=
>; pmenzel@molgen.mpg.de; Marcin Szycik <marcin.szycik@linux.intel.com>; Lo=
ktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Subject: [Intel-wired-lan] [PATCH linux-firmware v3] ice: update DDP LAG =
package to 1.3.2.0
>
> Highlights of changes since 1.3.1.0:
>
> - Add support for Intel E830 series SR-IOV Link Aggregation (LAG) in
> active-active mode. This uses a dual-segment package with one segment
> for E810 and one for E830, which increases package size.
>
> Testing hints:
> # Install ice_lag package - refer to Dynamic Device Personalization
> # section in:
> # Documentation/networking/device_drivers/ethernet/intel/ice.rst
> # in kernel tree.
> modprobe ice
> devlink dev eswitch set $PF1_PCI mode switchdev
> ip link add $BR type bridge
> echo 1 > /sys/class/net/$PF1/device/sriov_numvfs
> ip link add $BOND type bond miimon 100 mode 802.3ad
> ip link set $PF1 down
> ip link set $PF1 master $BOND
> ip link set $PF2 down
> ip link set $PF2 master $BOND
> ip link set $BOND master $BR
> ip link set $VF1_PR master $BR
> # Configure link partner in 802.3ad bond mode - e.g. for Linux partner
> # the same commands as above, but without VF, bridge and switchdev.
> # Verify both links in bond are transmitting/receiving VF traffic.
> # Verify connectivity still works after pulling one of the cables -
> # e.g. physically, or (if using ice on link partner):
> ethtool --set-priv-flags $PF1 link-down-on-close on
> ip link set $PF1 down
>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> ---
> v3:
> * Extend testing hints
> * Don't use bullet points for testing hints
> v2: Update WHENCE
> ---
> WHENCE                                        |   2 +-
> ...ce_lag-1.3.1.0.pkg =3D> ice_lag-1.3.2.0.pkg} | Bin 692776 -> 1360772 b=
ytes
> 2 files changed, 1 insertion(+), 1 deletion(-)  rename intel/ice/ddp-lag/=
{ice_lag-1.3.1.0.pkg =3D> ice_lag-1.3.2.0.pkg} (49%)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
