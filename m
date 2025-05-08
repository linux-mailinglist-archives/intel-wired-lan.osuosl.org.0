Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 76350AAFF37
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 May 2025 17:30:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E388F40844;
	Thu,  8 May 2025 15:30:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZhDB6w5t6_fV; Thu,  8 May 2025 15:30:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 36D5D410F6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746718201;
	bh=s/hsODIRsygPSwGMfeNn91omJtqD3afSmI/SaL6+p/w=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xB3lNHrpCTOJt22fvAFiW9STU84xKI+GKFK6qp/dYZP0HE5y8002yX1hRcLSzylN5
	 Xe6gZZEr1t+qwrLjhpYQ4hLYNHhONqsVKM/MOEPfAlmOO4JIg2qH24G32y4aeRaAg4
	 oemXcD870NNi/e6z1okqZtmm2imFpVjevRjbkqRpKpnvHcDjtCpZfnOgj0JiaRC6lW
	 rmVKOoBO/OWJoSOAUPu61yz3r9nrGA0g6Z6+qzPDAkNyn/04MxRwnn1qTbhQdYr8xo
	 TkqS0rJNDT8cgO6bjRkz54TVTvR5uVjIRczeKcW8aBNNR1XLZLFIxWfxxQ8JtLOxoO
	 JlDK3A/U3+qrA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 36D5D410F6;
	Thu,  8 May 2025 15:30:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 1BFC7439
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 May 2025 15:29:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0C12E410F6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 May 2025 15:29:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Prc-9bNZBJuP for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 May 2025 15:29:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2F1CC40844
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2F1CC40844
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2F1CC40844
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 May 2025 15:29:58 +0000 (UTC)
X-CSE-ConnectionGUID: yXyNrpuIQE6cciDoBfSnWQ==
X-CSE-MsgGUID: K1c3bRb/Q8C3m2Be5zTWzw==
X-IronPort-AV: E=McAfee;i="6700,10204,11427"; a="65927755"
X-IronPort-AV: E=Sophos;i="6.15,272,1739865600"; d="scan'208";a="65927755"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2025 08:29:57 -0700
X-CSE-ConnectionGUID: xrwKPXW/QjCykDLNu9NIFw==
X-CSE-MsgGUID: 0gLk1XCmSIyq9WedMiZs2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,272,1739865600"; d="scan'208";a="136730797"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2025 08:29:57 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 8 May 2025 08:29:56 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 8 May 2025 08:29:56 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 8 May 2025 08:29:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kOOS4wPrKFE5eEzQGGzY+P4MmQq3cS4XE8qOGtrHq5DBlwB9gkhQTEwQPLd/5mov8YgvZ4RvjF5gKehfKMx9ndtRGAAK11KjPXNXWf+IoHP3aey/Ej272cUP+F+Uea/+sXxl2n2zHc4n9rY3dtl4aueZMAZWhZM9qX8izYsOld4uANTwBYsMB4N7x4b1hZaLURpBDVx4LxaKQ8i6ilWOJuO9uv45BeHVUryJMsI/cOW4I4DY7IgxR9NOmIlsJEljz6akVFX66+Hrz9rkpfISBZlPoCsqdy/YL6i6ry6b8dWlx3zWqtM0ov1S1tf0E8i3Pc3eQ2MrAcGMVIhK2p3M5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s/hsODIRsygPSwGMfeNn91omJtqD3afSmI/SaL6+p/w=;
 b=u4WtM1+sEvB0P849aN9dOk5XRQB49RUjRHsCRk9AIZCVP2QM4+z8bszNJqgmTWg3Yq5cHP8s82SwXskWcTPaUPiPJYgnNcM1lS1zF7NJ1TobLNIntapf73uMFYYmODLQz7r+sBnAWUsZuDqP1xzkqu0wLQwuYCliJ637oeMd2ifIAmMO19MZ0GKlIQAAGHhMqstvcW/ekrJMq0cHMlWdtcINfewNo8j9KI5ynR+Sy3sQZOpCR+EdNyyNq9fj8CkVnevsbypUVRgkK131nkB0cVs5z+xXBtinjgnZHBeHjTF2SM+w81xqqT2U1O6f+BmAVM97wJWlbO/IBw0PusQ2dw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ2PR11MB8452.namprd11.prod.outlook.com (2603:10b6:a03:574::22)
 by SN7PR11MB6996.namprd11.prod.outlook.com (2603:10b6:806:2af::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.20; Thu, 8 May
 2025 15:29:07 +0000
Received: from SJ2PR11MB8452.namprd11.prod.outlook.com
 ([fe80::d200:bfac:918a:1a38]) by SJ2PR11MB8452.namprd11.prod.outlook.com
 ([fe80::d200:bfac:918a:1a38%5]) with mapi id 15.20.8722.020; Thu, 8 May 2025
 15:29:07 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: Jiri Pirko <jiri@resnulli.us>
CC: "donald.hunter@gmail.com" <donald.hunter@gmail.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "pabeni@redhat.com"
 <pabeni@redhat.com>, "horms@kernel.org" <horms@kernel.org>,
 "vadim.fedorenko@linux.dev" <vadim.fedorenko@linux.dev>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "saeedm@nvidia.com" <saeedm@nvidia.com>,
 "leon@kernel.org" <leon@kernel.org>, "tariqt@nvidia.com" <tariqt@nvidia.com>, 
 "jonathan.lemon@gmail.com" <jonathan.lemon@gmail.com>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Olech, Milena" <milena.olech@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>
Thread-Topic: [PATCH net-next v3 1/3] dpll: add phase-offset-monitor feature
 to netlink spec
Thread-Index: AQHbwBSjMzKpNUSJhkWLUDmzG4sTjLPIyi2AgAAPIYA=
Date: Thu, 8 May 2025 15:29:07 +0000
Message-ID: <SJ2PR11MB845211DED1A8ECD92116E0019B8BA@SJ2PR11MB8452.namprd11.prod.outlook.com>
References: <20250508122128.1216231-1-arkadiusz.kubalewski@intel.com>
 <20250508122128.1216231-2-arkadiusz.kubalewski@intel.com>
 <timzeiuivkgvdzmyafp752acgfkieuqhivcab55x24ow7apovp@4lsq6esrrusg>
In-Reply-To: <timzeiuivkgvdzmyafp752acgfkieuqhivcab55x24ow7apovp@4lsq6esrrusg>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ2PR11MB8452:EE_|SN7PR11MB6996:EE_
x-ms-office365-filtering-correlation-id: f2918e7d-db5e-4710-066b-08dd8e4512a1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|7416014|376014|1800799024|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?U/EMXrN02W4Gak/jltcDcKx5idHlZtalmeQidkuNYMUQ8h++UzoYP2q8obht?=
 =?us-ascii?Q?uVMkAq8nahbDe2FDdru9mz7j20864UTJ7fXFE7xdEAqq7Ca+29Vh4HzeGWF1?=
 =?us-ascii?Q?F6iKX6pXjdkp80jbFGKwP5T2NtGZNFSphNnGY/p5M5iZk52QhZkz3vewlA0F?=
 =?us-ascii?Q?AxKK57O9ijZA3eOSG0iLk7TcwEfFUYDWGPm0MFUkrxSsTGBjc8MU/W/s5gx3?=
 =?us-ascii?Q?a2jS6dDqoLGegT+68CZZJN6yzuyh2zjJE2QS6/60A5E07vQkfkJSijSgaM0D?=
 =?us-ascii?Q?BPjSRsk7Ztiym6Tc/Tgo9npJbecjs8l7ZjcaFln0mSFuN16WNxG7Gs98UyFP?=
 =?us-ascii?Q?T6iP8LPopcVJoZfAjtW6ZNtfMNX3luntazZSgmk7VUsKd6XMuP0KUGg94oWC?=
 =?us-ascii?Q?J6FDWKhE9l9aIwXCkUzqKNs+8iVTAE/rPe4YeEUjabogCKsAFEmbxQTEjt5a?=
 =?us-ascii?Q?jgIUAcM8xaQNikW1EkZjOoaDGVyrgZTHZHdxG9W3Bjsf0zTHM72kTE1FO9VW?=
 =?us-ascii?Q?PSzhI+cFsNovRlbmvRcY0Gf0xZhEhRDsGoeTKHd+7lLbDlwLlMxQTztcE1Gs?=
 =?us-ascii?Q?3ECbW1326DGmj5+2Vx8Iz3a+HayU+jQqQFbhZ8WKHqYGq2b3Uz7tchGOR/bQ?=
 =?us-ascii?Q?wD+ewAv9Uu3j+uLsb0d0FlpQClFCOsg1ZPAgobryJ52svIPriH+KwImtLDJa?=
 =?us-ascii?Q?u7JlZqUvtv5lHP1D6MrDRvqlvPiVQFTMmOLXVlvUJUQwBwFlbq3Sj1FZcM+g?=
 =?us-ascii?Q?jSy6wCJwxAX9ssrOpSywVHfUtXGVj3dW9DRgVWJDnSfjaCulekcWVPkF6PVu?=
 =?us-ascii?Q?0xbiqdaa5j9MJG6Tc2MTSVtKjAPU+vQierGuBAi5Z8cDSz2sAM4K+pjOkQVx?=
 =?us-ascii?Q?+DvSzjxKhCqlXFC2iAWMizvLsLVrOPj1JA7aNKnXHlSpJ5cvBmgEqjJnRFrE?=
 =?us-ascii?Q?Hqhm7F+EjgKsemHaXcE63gtlgTknwm0kffPVq2eNj4U8VKhYGea3eXzXzwwx?=
 =?us-ascii?Q?SNliu8uaBI0Keisc8cQaO0UyA2m++jBRg8qpDhHBlTycqECtbI+2njnaQLP+?=
 =?us-ascii?Q?LDVzMZ+45WdpZusV/Y9K2t8GmHvR3goVEQ7LZnhoTjYDx1geU8okhpwMALkX?=
 =?us-ascii?Q?w3c24wWpE23sRl/wLhOJVK9qV2rG9t1KU76pE5/jZP19rtWSX9bdhtrIDBe/?=
 =?us-ascii?Q?hZLbWCk/VbY8yH/cy/pkkhXThdYd/7mJ97uvmBWPKUF6NUx0pCxrhpFAZR5p?=
 =?us-ascii?Q?jjEhXBc2CkPzL7pMyoXUDza9pwShnE02+3Xt/PAmstozWb9kNBEwpoQA3Qof?=
 =?us-ascii?Q?Idc9BgUVhnHkB3R49q7wCSRJEeNFK3qfQW7oyhHazywEHV18b1zaJ1G5YawD?=
 =?us-ascii?Q?dQze7z40wEpvXs326VMTlz7q+fQOM8fXXXeM4u+wTGamwiz/pFJdN2DmgNl9?=
 =?us-ascii?Q?gO+Pt/CS35CRiKROYrD7x2lntNV/CWjhXrL6FoH2Du6StuDTsa6N+9MwmAZK?=
 =?us-ascii?Q?+fpiQUwHxgmO56Q=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ2PR11MB8452.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(376014)(1800799024)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?/zo7juTUbuqqV8rOT45N7NZ5tnfaHw9kNLr11SlbHAmpAVyphl35zMEOo6bc?=
 =?us-ascii?Q?eWXW8EUyPlIas1UNpaOfcedFU01et8FQmPNKHRIB5m10uA+EOyDAr0GbanIE?=
 =?us-ascii?Q?+DBP+335lPNfXpx/Lo5qBRkVFuVzTCqY/jpBuhU7aLqJRF9kWC0po3pZs4JQ?=
 =?us-ascii?Q?lSHv4AQmWI4VghBWuS9H2dolmGOomOVpBPBldpYMoLerITtxj7Dq+78ez2MM?=
 =?us-ascii?Q?wNT6QKT315iHwHCDE5dkWRJyTv4ST4hgpTF78wxy8KhAv/CIQOk0XWeg7O6y?=
 =?us-ascii?Q?cSqLL6BIFTutkmHD814OMh3Xr01cyG1kahCP8Xcf7JR+jxhT/0kJq91aCj8b?=
 =?us-ascii?Q?kou5Gj8Nyg/bIVNxpVSRNrv6UDdMhiqphkCE1uw9E07O9dnzqHugny6JIyXF?=
 =?us-ascii?Q?AIT4lGtTTaEX4xmuaf4YUWWNmP2C6zsEbvTviWro5busGROC9qcgzrz7TVlL?=
 =?us-ascii?Q?4Te9bQab1eVj6GnuF+N8z1CKTEnnPbxRC+IhnNPtFaWD6cTpu5ymaGHNsPJp?=
 =?us-ascii?Q?yLW4+SsFDdj8bgTRZT/HsWl4S09i4npRuz5rck8o3p3Y8p9tEZzjVX/tjsHV?=
 =?us-ascii?Q?wSV5Sw5LqSKP/aySpp6VpuFEY68Bb5S1r3pTXcDj9bAMOVpMNhh4vFhU/IL1?=
 =?us-ascii?Q?Jmj2DPDT1XYkpxKbFHH/FEB/ex7odWgLNp6QLeDulKaysQGXZgcuCkX8zNiT?=
 =?us-ascii?Q?ATST5pF52SVn38KE9hZFArM0bZIhW+767frsWrXnwCLFdCePR1QUrDr+S48o?=
 =?us-ascii?Q?xRBjl/ETGtg1MI1ampOZUyhVKboKFyBc9baI46DOK1FjQhRjExX4onABYObI?=
 =?us-ascii?Q?9fZg7UZb1V54tCrSCWGVOhQKxMdjGEs3TTs2nkdYqX/sa2CeptMu8RbcCXMg?=
 =?us-ascii?Q?v/3kW+GbqGLhSHxt17pytlGodqb48be5VHBApnBpbmbM/EFJKh0B2D8MW4J4?=
 =?us-ascii?Q?5kNlB2+Te+QjG8NO5Mol3YrYGjxJtVb/R4WSY3zlXK55UEEmSYIFG8JPn0m4?=
 =?us-ascii?Q?AYVhRV4eVevyAHEuNJzq3CFYFr99JRuOLR97LwAQmd0l3bVKBTKpJeWehtR1?=
 =?us-ascii?Q?2g/lfPvN6E3YQ+S1H/ve7zCvs89f8UojELAMS6zU/ZYhRNhCJUG1hdY/kbMg?=
 =?us-ascii?Q?3tY2xVmKbXqZVElmLbFw3/RKPJOhU09yWpknxiIuQmsHnX76DEXinDhc+Ssh?=
 =?us-ascii?Q?FP1vGCL5l59995fWFENmq8accqBgar2kysCKaMVUxIfNM6ko160sJzDiPWsP?=
 =?us-ascii?Q?b1Ebb0kbPoEfrhLFUzRB8l+Ncvf2MosA1qCbXsIv3B3pWQEhKHyoPicdrd3+?=
 =?us-ascii?Q?YMKZZgcvgEKHVC22/irVNkve1MWpjhAu088U5bGNZDw5+4BxevPHh7IAsZS3?=
 =?us-ascii?Q?c/REhFl6qwpKNOCAcuT7dpCTT24QRM+7NNcoUztGz9tlX/5zHx2G5LWl80Yv?=
 =?us-ascii?Q?f1SD4TufDuQQvoo59i15Am/GD5kAhIA7STZLfJ8YfHpfgnIT1zJI0eXscagL?=
 =?us-ascii?Q?1Rcx65/frpM0Wpb6In3DztJ55BBLsgowkG3taJ/6tkEIq6XlGzXN/p7ge2A0?=
 =?us-ascii?Q?gVROnPWZMafUOXN8zv1uACRD/FZI6A22xZmEZQm0w/QucXEkIRvEKp//gOLE?=
 =?us-ascii?Q?Ow=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ2PR11MB8452.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f2918e7d-db5e-4710-066b-08dd8e4512a1
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2025 15:29:07.2498 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tfszlWMxKeEBCV1JgrJaIzAAD8totVcQ2tI88H7vaNSVl4d8mTDWados7vlScqbhceBWll3y2K/gKA7bEwWMuiz9SU5Et+G8fuPz6Z4nf0k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6996
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746718198; x=1778254198;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dkRsKs5P+1MFPRg9aDq573qIqiuwReVJiJLMWaXKGOk=;
 b=TO5hEy/xnD8GhNHWf8CmI5e3/8sf79q5QXtulePF261zoSMURodYM6li
 v4eNGua3H5BWnukAocnBtrTs86pxvqD2R/GSO659Zbx5zw08VfZJapofV
 4WeCw1mAQnKVqkEhCrE9LGUpPOa5QZFhCgbIX7nKzi0+vJwmWkz0Wh66k
 Gq53v+xrZCOKh0joH0beosEySgPgFVbW5t8vmEQbS1GiuOZhyUh5gqt3q
 jlyTS2Cv0hicvhOolxG2688I+SuN3RTOgdJjrDRTla5O3Zotw2bGfdrE8
 WsoqPUigjuyTRzyhcmHBL7K2hlBB371d4+7yw+hYm7osng9UoAo/+FBDe
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=TO5hEy/x
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 1/3] dpll: add
 phase-offset-monitor feature to netlink spec
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

>From: Jiri Pirko <jiri@resnulli.us>
>Sent: Thursday, May 8, 2025 4:26 PM
>
>Thu, May 08, 2025 at 02:21:26PM +0200, arkadiusz.kubalewski@intel.com
>wrote:
>>Add enum dpll_feature_state for control over features.
>>
>>Add dpll device level attribute:
>>DPLL_A_PHASE_OFFSET_MONITOR - to allow control over a phase offset monito=
r
>>feature. Attribute is present and shall return current state of a feature
>>(enum dpll_feature_state), if the device driver provides such capability,
>>otherwie attribute shall not be present.
>>
>>Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>>Reviewed-by: Milena Olech <milena.olech@intel.com>
>>Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>>---
>>v3:
>>- replace feature flags and capabilities with per feature attribute
>>  approach,
>>- add dpll documentation for phase-offset-monitor feature.
>>---
>> Documentation/driver-api/dpll.rst     | 16 ++++++++++++++++
>> Documentation/netlink/specs/dpll.yaml | 24 ++++++++++++++++++++++++
>> drivers/dpll/dpll_nl.c                |  5 +++--
>> include/uapi/linux/dpll.h             | 12 ++++++++++++
>> 4 files changed, 55 insertions(+), 2 deletions(-)
>>
>>diff --git a/Documentation/driver-api/dpll.rst b/Documentation/driver-
>>api/dpll.rst
>>index e6855cd37e85..04efb425b411 100644
>>--- a/Documentation/driver-api/dpll.rst
>>+++ b/Documentation/driver-api/dpll.rst
>>@@ -214,6 +214,22 @@ offset values are fractional with 3-digit decimal
>>places and shell be
>> divided with ``DPLL_PIN_PHASE_OFFSET_DIVIDER`` to get integer part and
>> modulo divided to get fractional part.
>>
>>+Phase offset monitor
>>+=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>>+
>>+Phase offset measurement is typically performed against the current
>>active
>>+source. However, some DPLL (Digital Phase-Locked Loop) devices may offer
>>+the capability to monitor phase offsets across all available inputs.
>>+The attribute and current feature state shall be included in the respons=
e
>>+message of the ``DPLL_CMD_DEVICE_GET`` command for supported DPLL
>devices.
>>+In such cases, users can also control the feature using the
>>+``DPLL_CMD_DEVICE_SET`` command by setting the ``enum
>>dpll_feature_state``
>>+values for the attribute.
>>+
>>+  =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D
>>+  ``DPLL_A_PHASE_OFFSET_MONITOR`` attr state of a feature
>>+  =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D
>>+
>> Embedded SYNC
>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>>
>>diff --git a/Documentation/netlink/specs/dpll.yaml
>>b/Documentation/netlink/specs/dpll.yaml
>>index 8feefeae5376..e9774678b3f3 100644
>>--- a/Documentation/netlink/specs/dpll.yaml
>>+++ b/Documentation/netlink/specs/dpll.yaml
>>@@ -240,6 +240,20 @@ definitions:
>>       integer part of a measured phase offset value.
>>       Value of (DPLL_A_PHASE_OFFSET % DPLL_PHASE_OFFSET_DIVIDER) is a
>>       fractional part of a measured phase offset value.
>>+  -
>>+    type: enum
>>+    name: feature-state
>>+    doc: |
>>+      Allow control (enable/disable) and status checking over features.
>>+    entries:
>>+      -
>>+        name: disable
>>+        doc: |
>>+          feature shall be disabled
>>+      -
>>+        name: enable
>>+        doc: |
>>+          feature shall be enabled
>
>Is it necessary to introduce an enum for simple bool?
>I mean, we used to handle this by U8 attr with 0/1 value. Idk what's the
>usual way carry boolean values to do this these days, but enum looks
>like overkill.
>

Well, yeah.. tricky.. There is no bool type in the attribute types?
Input/output pin direction or eec/pps dpll types are also 2-value-enums
we use same way..

Had to use something as it is better then plain 0/1, also those values
could be reused for any other feature.

Thank you!
Arkadiusz
=20
[...]
