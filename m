Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DE0B8CFF47
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 May 2024 13:49:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A170E6087A;
	Mon, 27 May 2024 11:49:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VP9ih-CQWtPj; Mon, 27 May 2024 11:49:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B35F560890
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716810545;
	bh=TGAbVLtiV4MA4imP85PWNDLxyoBUIf7750F4rwxDBGg=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DU0GBHKbUg72h98BqOLCDj3V5Qmm6Smv7PGTTOt/feEiJQPlqyPM6oLZJ3OMbzqKi
	 sq8C7fEuDh6F9SmQp7vBMs04Auy4O7igC/HLOyR94Xq20A9AHCgeVlWHQSTEwQpDIG
	 6FE9HJ4UzNoMNzBq+u3VFxORqtGKOETzO9fLQfxPcvP7fsCm32uXp5nAlddp7N4HEX
	 52MwmzgDQxgclO7o7XKtOU377NzE6OAFNqGtSgAWH7GFtzij8v+RXAv5X0BfKMC0SK
	 IHvknNMAKFP6XbC54ZE7dAuRN/jPai2NuMzwfNSJOxCaPGvAdn6CWHM1RSZDMBJvCq
	 BMJvGv/6cQSmQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B35F560890;
	Mon, 27 May 2024 11:49:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 95B531D1B99
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 May 2024 11:49:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7AAFE80E38
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 May 2024 11:49:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WeR9ekEmG6Gm for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 May 2024 11:49:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=lakshmi.sowjanya.d@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org DD7E280E35
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DD7E280E35
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DD7E280E35
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 May 2024 11:49:01 +0000 (UTC)
X-CSE-ConnectionGUID: 3oqg+PyzSFW9aVy4U9ilog==
X-CSE-MsgGUID: 84V6ftMMTAC/4pTflvmjtg==
X-IronPort-AV: E=McAfee;i="6600,9927,11084"; a="16072618"
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="16072618"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 04:49:01 -0700
X-CSE-ConnectionGUID: tioTmhUjQG2VYumr2+NIEQ==
X-CSE-MsgGUID: ueyZYOB+Tiuy2wh4Mt+eIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="39521069"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 May 2024 04:49:00 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 27 May 2024 04:48:59 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 27 May 2024 04:48:59 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 27 May 2024 04:48:59 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 27 May 2024 04:48:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K7zA83bSRC1OTC9qWfZtXWHxKq4EwR6KApICaFTv2OoPdGpWpmsA01NE63sGxbxgArrkfSMLeMzh/pdhCizEhaqzlXz5hFcnQ7jEr+b9amdkAPVxdcfQWAaAi7AlZ2mUP90RgxRMMG06sIbCrF42rEQA0MycUQbCtZGLJXfWbaNPEZ56sxFi/2Bib31EH5bmek3aNwwbdfAmzUPdW6a8jb33TM1W/67l3J3vbxgBNNDgan5Wut7FrQ6dqNzMVvpue7wbaecA/44Lf4fttWtNWtr7151rJI2HUkI6caG1f76+yD5iBbCyPoajGSI4DxLGpBSl+v71inYZArJJlnXt9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TGAbVLtiV4MA4imP85PWNDLxyoBUIf7750F4rwxDBGg=;
 b=cigvNP50jS2p86bMtnxDDS+aCVN1TuOSMH8o0li7lpqCw7ALx7jziGFX5scqQo+Ta03P3MTugX0Z9mvSc8a0N6M3kZiGCDATn/jr5jsbK5z+oZZZhDhMUD6T0JX3Q+6QEiryhnf/Hv0kHhjB7bSPzyRD6hq9cwzaCD7p3SuNAygeUU3+ggkfQFLekSBgai9Ifwrv4ybSkW13+CbVdm8u4FuFf47XVHUTscBw7xIXcaqTPvDb0uuI4z5fTL2rjAJJAzg20Wlf8+qFNBpjP6JBDvcQNrD5Nd1TKTJoczrkG6NK1MO/UQPSZ+MbPjC8ZZcXEqw5HcoBPXg3ApGWevb+pQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7364.namprd11.prod.outlook.com (2603:10b6:930:87::14)
 by CY8PR11MB7798.namprd11.prod.outlook.com (2603:10b6:930:77::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.29; Mon, 27 May
 2024 11:48:54 +0000
Received: from CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::1fe:535e:7c0e:1d67]) by CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::1fe:535e:7c0e:1d67%3]) with mapi id 15.20.7587.035; Mon, 27 May 2024
 11:48:54 +0000
From: "D, Lakshmi Sowjanya" <lakshmi.sowjanya.d@intel.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Thread-Topic: [PATCH v8 10/12] pps: generators: Add PPS Generator TIO Driver
Thread-Index: AQHapSHXUIkwGaeDCkGimvlL+UU2cbGVBGIAgBXrFfA=
Date: Mon, 27 May 2024 11:48:54 +0000
Message-ID: <CY8PR11MB7364D1C85099E4337408EBAFC4F02@CY8PR11MB7364.namprd11.prod.outlook.com>
References: <20240513103813.5666-1-lakshmi.sowjanya.d@intel.com>
 <20240513103813.5666-11-lakshmi.sowjanya.d@intel.com>
 <ZkH3GP2b9WTz9W3W@smile.fi.intel.com>
In-Reply-To: <ZkH3GP2b9WTz9W3W@smile.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7364:EE_|CY8PR11MB7798:EE_
x-ms-office365-filtering-correlation-id: 7c090394-6c0c-47bc-091c-08dc7e42fc61
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230031|7416005|1800799015|376005|366007|38070700009; 
x-microsoft-antispam-message-info: =?us-ascii?Q?ebx3msG2kyO4XNrbESakasfmF7F7MMYeYaWjrdNU51DbW3cFp8cJ0uGBjbCu?=
 =?us-ascii?Q?0H6pwSVIK0Yhco+lUAj4331JmmqUUOlYsAzYazsaeeRdyTnK0LPAQx5d4c9r?=
 =?us-ascii?Q?i2OlIFpNhDzhKdJ3ooCaE370skA14C3dcCX2VTJzW6t0GorG/NqsF3Iqk+qD?=
 =?us-ascii?Q?fLoj+Aq9f9eyuzijsbOecsfKHm8+xdM3s6YZWjGbXHcXRWICVlrP2tNv0nl0?=
 =?us-ascii?Q?BJElRkEU+JfQoc07/SfUDPgxms0y5YjMC6Osv6A1Lu0N9uAbZ7YLB1wi8T62?=
 =?us-ascii?Q?juJGGsJoFh5F8Ko1LkLffESlOnbPKPgFy9USL7SRT9bLhGFC5PKTQ087uih3?=
 =?us-ascii?Q?hl6os8AwzOiMdXXPQP41ddQuWEhfWxK4QGYIcbh1YtC5WVHseYQDWve/E93Y?=
 =?us-ascii?Q?iWlSCNMuWi0ic68OrOOnYXeCdaO3cfcWteuvdshfMjrmk8CDg8aiOnN6VcK8?=
 =?us-ascii?Q?8AyRUjFH5hBy7ym8F8nd9IRH2WwGVlPadbzK7Xxg7T28hmlz7zpG8+ZlH8d1?=
 =?us-ascii?Q?k3V6236QPBjyskfAFFzqaZDr/1fLjenxwXRIzBrMTZ1Y3U3L3s5HfpnSrnM5?=
 =?us-ascii?Q?HOISseMc3Cuczk29h736+QSGOIOSRouJI/vFPmw+B2m1/9YIU7QL2DZY6OJ5?=
 =?us-ascii?Q?7ofME3Zw4pgAxX2GzOpkSKgZhxUgAvJeoQsO7TA8kpN11kF5kr+VPff+m/8j?=
 =?us-ascii?Q?/8xMVUEl76kyo6vsvrOcpFNz7Q3QtSltlhFYnGjyL9aTbj5haJK+HHD24xmd?=
 =?us-ascii?Q?dKv6MLNLDP318RoZH5OuTH6xT1eiso7z2yuC+xBAKQtDxiMu+vc8h5APifCT?=
 =?us-ascii?Q?t7WdGzo5IaSK6BMaOm4DqU+ZN/H45SgQoZpHGUQaURvvoSPXRv7bwlauMZ4l?=
 =?us-ascii?Q?6tTuybnCGiHIBGgu410wm+8+P3CKf9cVe2z9uzTNSguxPEdYQhlDNgQdqCrA?=
 =?us-ascii?Q?XrdKfn3vcVtZzZmjzU7jTzb9oRH6zNN3Z2O8G4zPOcVPG8W3o7re9uhnXYqQ?=
 =?us-ascii?Q?iKFBjo9FSEagFyMvz3XSy8NeCEbUAYT7qx8cx8vuM2B78Hjr3bl8Rf4ziMyy?=
 =?us-ascii?Q?IiV+N1+Kn2gcukW3zLNRJmZ0v1dMr/g1Bwf9IN/ygDDOHBCKPw6H2vCEJwhi?=
 =?us-ascii?Q?EnP1nScS+127T1wzuVN+YynApH0ECgcu/SJr5p7Tg+jX8sCezyZ7FLwhTqWO?=
 =?us-ascii?Q?oF2uMgT8GumrTznieof/YIoNu/0fLTZBYKonF8ny2vpzJrz5CJTGcG8jWVMd?=
 =?us-ascii?Q?R6jYXEVZN4Ljq15tWgwR7GDihETjQWsTwB7VcB0WxOhZ2Lx6CrcMEfgEl6Xx?=
 =?us-ascii?Q?dnHXhGuDlvmMGCLefnmAEXHXpYtddJpNCKolroM/6UiwSw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7364.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7416005)(1800799015)(376005)(366007)(38070700009); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?bjjOO8wz9xxq1DFgGMoWH5tb6Tne1BpDXMOz7G6ZS9c2SYuQEPN4Jtk7Byxv?=
 =?us-ascii?Q?fH3cYK0haIU1EOgaSwrCrEVprI/+em1QTq+8GA442jbj0ouH48V/r6Sl9DGI?=
 =?us-ascii?Q?8fzcJYC5rUbRjnlEAe2MMS9T+Kc0IIBBfr8skyiRLfaatbNsnBRat3lpKOSs?=
 =?us-ascii?Q?oq1ZcGDjtwO6sfTLRsRFnV4arfWY3HMMHcYJIAKXVgFX8D/99ZuUGC/bzsaf?=
 =?us-ascii?Q?ivcDhpviELjwDVhrjpwJnQ5n50k+8ISxA2PUfMiSs7SJBkZ1L0/Xq/90u6C2?=
 =?us-ascii?Q?BHb07CG6ILrOgsbs7i308ft9hhQHOvTP8XvjeCn1ZHZiO93zOsTfYOb1QXp2?=
 =?us-ascii?Q?qTvSze9Nb2PlBFHk+HBCy6iuZXJPRU1yRMCltp9/1RjvdEt27iFum9CnmpXH?=
 =?us-ascii?Q?lMkPiODDGmU/8jKZxYN1/M6ylRD5+MdMcB3XbMhbWCfnwb7bKsRoPDb7tRLS?=
 =?us-ascii?Q?PMIGWe0+WCQdTiLo36YVK6zjdA30OVoWlttNH9jbu2Uh1wlejlAYxdbs6GX+?=
 =?us-ascii?Q?BNwt7emC6ocuPuyVnyoHxAmMYiwDp+nqBozIIFe9XAE+qYo4Df3w1Rmi4jk6?=
 =?us-ascii?Q?FX1FZQHpJ8s8RDZVpGu4yZ+u5MfX0mAiUPw8354aPXLBpvtoBYOkZamuq3gL?=
 =?us-ascii?Q?CxxAndg65s6nGKH1Y2c4ACUm8OB0Rv5iRc7R5Ztt8MkEZbYps/QdQdi5nuhp?=
 =?us-ascii?Q?gItFhqs4MSVMHuA3z5viC+MgHattLLuXiJXJ8FPaUgAgneZeow/RteG+CJJd?=
 =?us-ascii?Q?7/Z1JiLDvWrChcO5o+5pVi0fJk3YgaKQJZaXJRn3N9cAvkdZVcUuQMdFtuFv?=
 =?us-ascii?Q?cP3C1GUvadeex0m1NQSS8NQwWXT7b4KJK+zPv5aUGJmzFMSh2skjlAofKDAd?=
 =?us-ascii?Q?XxeLJ33r71z+PbclExWu79/+M0YZiHR5s3FvK7uG60OI77PC8sYqdYj0QSvv?=
 =?us-ascii?Q?wA6n3woko8oU0useM+/QOFWt7/MhlwS3C1zNYOjFQ7vqL1/KNjuUN13c+wsa?=
 =?us-ascii?Q?dkah/OfihRhhcwBXGfmwsX4dhiD0yuQX+Ug0TrUcHH03pB0OMCSNZcXau/pW?=
 =?us-ascii?Q?d6jQI2O6jS5KiO0Ech0b6kberid2FalxxT/DgYNZMqLM0gt+7acLhoYjAbTc?=
 =?us-ascii?Q?9ZZwQrYaTFeLNVrQ2YVnYzUrTvbHpXE3ojV2fO++LXBpsbAp/IA/Zg6x6hzP?=
 =?us-ascii?Q?OY0oMpDyBgBcT5GH9hG95Vv2Ryu0ZH1VoujzDgAOfRfAPtbOHmIYb3Fwfxkb?=
 =?us-ascii?Q?EFO/SNmz4IDrEEQeG+g2uKJelMLLWr8W4i2BiwmrRha4AzIizenzn5MU+awL?=
 =?us-ascii?Q?+D5EWzy396irxIg9PML70bZ4a5izEB6kCwMqvZu51Q/YQvABrOq2fGD+58gJ?=
 =?us-ascii?Q?6CzRKFpJfMThXWpalnioMCmUQVIyfdo8MsNtrBa/ESqOi0yb+X9K7IGY9HC2?=
 =?us-ascii?Q?7fTVQZQs1cRZ0aihKyFdvnIxbDT8avYFrXWo7L/um4H+8XuuYSmpOjotA/Lg?=
 =?us-ascii?Q?1xIGbLMrOkM+5dIaoOVlwM6xWJmPROq3KnlpysFBbyqsakCekJN17ubkB7w7?=
 =?us-ascii?Q?ypqTDWmCKOtyAWe/ghi2wIwrr0AKLBgLQVHiDtVu3GdK4YhQHQBe4GVsrbwL?=
 =?us-ascii?Q?fA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7364.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c090394-6c0c-47bc-091c-08dc7e42fc61
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 May 2024 11:48:54.6334 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: o1B3QJYS3NSBASYtWpStprIt9cvT9vioPRtaDKH9UjaOqh1PZBPw7qIwvIQGsMascAGjf1d296hx55vE9z3gc9HHo67fik48FQdF3F3sitA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7798
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716810542; x=1748346542;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Ml2hz5nMoNW0Uzw5N+S4/PwZN7R65gzD4+OoVB5d28w=;
 b=bRgGz1RI7RQBoRsOQmpsKgJe1ma6kUZjSrwzxtmNo+jvCd3pKMvqa9KY
 Dst2luvO1rX7Xz8IBW3BAY0YaQPkcv7wwxnwTFtdJ1Hn4oyXaCz5Hshrd
 c49gXoOtCg7wf2RVjYRAbyT3CU5apaE5+XxL4jJRmQFZHoghJ5ZxNvwN0
 FqrCRxQ9qQA43ToZjOU1CmYNIS0S9eJHPfFNkyk3Ojvujwd8uMvVli7aU
 CpBvGGbixbJAy8LhQZVmbHEEblykZ3o/953MqmWJhcd/fh0a2d0wuhryU
 2EuEvTF5KFx+2HaMTXG/IcPlhEIBC9WRqyvpVJaypc2XgTCweR1BxdX+2
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=bRgGz1RI
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v8 10/12] pps: generators: Add PPS
 Generator TIO Driver
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
Cc: "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "alexandre.torgue@foss.st.com" <alexandre.torgue@foss.st.com>,
 "perex@perex.cz" <perex@perex.cz>, "Nguyen, Anthony
 L" <anthony.l.nguyen@intel.com>, "T R,
 Thejesh Reddy" <thejesh.reddy.t.r@intel.com>, "Hall,
 Christopher S" <christopher.s.hall@intel.com>,
 "corbet@lwn.net" <corbet@lwn.net>, "x86@kernel.org" <x86@kernel.org>,
 "joabreu@synopsys.com" <joabreu@synopsys.com>,
 "peter.hilber@opensynergy.com" <peter.hilber@opensynergy.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Mohan,
 Subramanian" <subramanian.mohan@intel.com>,
 "linux-sound@vger.kernel.org" <linux-sound@vger.kernel.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "giometti@enneenne.com" <giometti@enneenne.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "N,
 Pandith" <pandith.n@intel.com>, "Dong, Eddie" <eddie.dong@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 "jstultz@google.com" <jstultz@google.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> Sent: Monday, May 13, 2024 4:49 PM
> To: D, Lakshmi Sowjanya <lakshmi.sowjanya.d@intel.com>
> Cc: tglx@linutronix.de; jstultz@google.com; giometti@enneenne.com;
> corbet@lwn.net; linux-kernel@vger.kernel.org; x86@kernel.org;
> netdev@vger.kernel.org; linux-doc@vger.kernel.org; intel-wired-
> lan@lists.osuosl.org; Dong, Eddie <eddie.dong@intel.com>; Hall, Christoph=
er
> S <christopher.s.hall@intel.com>; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>; davem@davemloft.net;
> alexandre.torgue@foss.st.com; joabreu@synopsys.com;
> mcoquelin.stm32@gmail.com; perex@perex.cz; linux-
> sound@vger.kernel.org; Nguyen, Anthony L <anthony.l.nguyen@intel.com>;
> peter.hilber@opensynergy.com; N, Pandith <pandith.n@intel.com>; Mohan,
> Subramanian <subramanian.mohan@intel.com>; T R, Thejesh Reddy
> <thejesh.reddy.t.r@intel.com>
> Subject: Re: [PATCH v8 10/12] pps: generators: Add PPS Generator TIO Driv=
er
>=20
> On Mon, May 13, 2024 at 04:08:11PM +0530, lakshmi.sowjanya.d@intel.com
> wrote:
> > From: Lakshmi Sowjanya D <lakshmi.sowjanya.d@intel.com>
> >
> > The Intel Timed IO PPS generator driver outputs a PPS signal using
> > dedicated hardware that is more accurate than software actuated PPS.
> > The Timed IO hardware generates output events using the ART timer.
> > The ART timer period varies based on platform type, but is less than
> > 100 nanoseconds for all current platforms. Timed IO output accuracy is
> > within 1 ART period.
> >
> > PPS output is enabled by writing '1' the 'enable' sysfs attribute. The
> > driver uses hrtimers to schedule a wake-up 10 ms before each event
> > (edge) target time. At wakeup, the driver converts the target time in
> > terms of CLOCK_REALTIME to ART trigger time and writes this to the
> > Timed IO hardware. The Timed IO hardware generates an event precisely
> > at the requested system time without software involvement.
>=20
> ...
>=20
> > +static ssize_t enable_store(struct device *dev, struct device_attribut=
e
> *attr, const char *buf,
> > +			    size_t count)
> > +{
> > +	struct pps_tio *tio =3D dev_get_drvdata(dev);
> > +	bool enable;
> > +	int err;
>=20
> (1)
>=20
> > +	err =3D kstrtobool(buf, &enable);
> > +	if (err)
> > +		return err;
> > +
> > +	guard(spinlock_irqsave)(&tio->lock);
> > +	if (enable && !tio->enabled) {
>=20
> > +		if (!timekeeping_clocksource_has_base(CSID_X86_ART)) {
> > +			dev_err(tio->dev, "PPS cannot be started as clock is
> not related
> > +to ART");
>=20
> Why not simply dev_err(dev, ...)?
>=20
> > +			return -EPERM;
> > +		}
>=20
> I'm wondering if we can move this check to (1) above.
> Because currently it's a good question if we are able to stop PPS which w=
as
> run by somebody else without this check done.

Do you mean can someone stop the signal without this check?=20
Yes, this check is not required to stop.  So, I feel it need not be moved t=
o (1).

Please, correct me if my understanding is wrong.

>=20
> I.o.w. this sounds too weird to me and reading the code doesn't give any =
hint
> if it's even possible. And if it is, are we supposed to touch that since =
it was
> definitely *not* us who ran it.

Yes, we are not restricting on who can stop/start the signal.=20

>=20
> > +		pps_tio_direction_output(tio);
> > +		hrtimer_start(&tio->timer, first_event(tio),
> HRTIMER_MODE_ABS);
> > +		tio->enabled =3D true;
> > +	} else if (!enable && tio->enabled) {
> > +		hrtimer_cancel(&tio->timer);
> > +		pps_tio_disable(tio);
> > +		tio->enabled =3D false;
> > +	}
> > +	return count;
> > +}
>=20
> ...
>=20
> > +static int pps_tio_probe(struct platform_device *pdev) {
>=20
> 	struct device *dev =3D &pdev->dev;
>=20
> > +	struct pps_tio *tio;
> > +
> > +	if (!(cpu_feature_enabled(X86_FEATURE_TSC_KNOWN_FREQ) &&
> > +	      cpu_feature_enabled(X86_FEATURE_ART))) {
> > +		dev_warn(&pdev->dev, "TSC/ART is not enabled");
>=20
> 		dev_warn(dev, "TSC/ART is not enabled");
>=20
> > +		return -ENODEV;
> > +	}
> > +
> > +	tio =3D devm_kzalloc(&pdev->dev, sizeof(*tio), GFP_KERNEL);
>=20
> 	tio =3D devm_kzalloc(dev, sizeof(*tio), GFP_KERNEL);
>=20
>=20
> > +	if (!tio)
> > +		return -ENOMEM;
> > +
> > +	tio->dev =3D &pdev->dev;
>=20
> 	tio->dev =3D dev;
>=20
> > +	tio->base =3D devm_platform_ioremap_resource(pdev, 0);
> > +	if (IS_ERR(tio->base))
> > +		return PTR_ERR(tio->base);
>=20
> > +	pps_tio_disable(tio);
>=20
> This...
>=20
> > +	hrtimer_init(&tio->timer, CLOCK_REALTIME, HRTIMER_MODE_ABS);
> > +	tio->timer.function =3D hrtimer_callback;
> > +	spin_lock_init(&tio->lock);
>=20
> > +	tio->enabled =3D false;
>=20
> ...and this should go together, which makes me look at the enabled flag o=
ver
> the code and it seems there are a few places where you missed to sync it
> with the reality.
>=20
> I would think of something like this:
>=20
> 	pps_tio_direction_output() =3D=3D> true
> 	pps_tio_disable(tio) =3D=3D> false
>=20
> where "=3D=3D> X" means assignment of enabled flag.
>=20
> And perhaps this:
>=20
> 	tio->enabled =3D pps_generate_next_pulse(tio, expires +
> SAFE_TIME_NS);
> 	if (!tio->enabled)
> 		...
>=20
> But the above is just thinking out loudly, you may find the better
> approach(es).

Yeah, makes sense.

Will add enable counterpart.
Will update tio->enabled in disable and enable functions.

>=20
> > +	platform_set_drvdata(pdev, tio);
> > +
> > +	return 0;
> > +}
>=20
> --
> With Best Regards,
> Andy Shevchenko
>=20

Regards,
Lakshmi Sowjanya

