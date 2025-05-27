Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 09715AC510D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 May 2025 16:38:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8454B60B31;
	Tue, 27 May 2025 14:38:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EsGhDfOjoH-4; Tue, 27 May 2025 14:38:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E7EFC60B34
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1748356726;
	bh=hy9QO5WC5zYy/gA1Gnjx1uJQRWfX1JS0z+H0aBJwOZE=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=gzGmJZtIeB00WP5S+k7e5R3OjrWF0icGsWwqrBTcYASNjKxgOlTpTqMAqxIHpR9sV
	 2Siu+fk2QXHqOCg15baT3HkadpG8yr2xyYGXDMOZtvRqdrq3RvGy9jiKvhDc6DPura
	 K+FCEfUYMvbHe5PNDpZB5etH+5mANgNE5DOnpxtdYC3lolu7ppMxtUsHiyF+FQAwNK
	 cdYNYF4Z7sSZdY9CTbM0OVo7XyxZZL74Q1KK+qZGMwDrz5y1ITCU0nGtx8fDsQf6ky
	 TGmSuaDthhJ0Z987RHB63lRW1iV6klJcr4v9x5IuwAKmnC7tdFbgYD4L2K07m8HtyL
	 jRgKi3OGUAt6A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E7EFC60B34;
	Tue, 27 May 2025 14:38:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id C4EBB19D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 May 2025 14:38:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B66A760B13
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 May 2025 14:38:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bU32o6y8crec for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 May 2025 14:38:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1E13D6067C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1E13D6067C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1E13D6067C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 May 2025 14:38:43 +0000 (UTC)
X-CSE-ConnectionGUID: rDKR5TPoQha8EeMDJdTZsQ==
X-CSE-MsgGUID: FZQguiJ7TqSyCBLxMKy3Sw==
X-IronPort-AV: E=McAfee;i="6700,10204,11446"; a="54155345"
X-IronPort-AV: E=Sophos;i="6.15,318,1739865600"; d="scan'208";a="54155345"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2025 07:38:42 -0700
X-CSE-ConnectionGUID: bsDvcegjTfSRW3iEW3QqYA==
X-CSE-MsgGUID: HBqxv7B3S5GedIvsf0AT0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,318,1739865600"; d="scan'208";a="143290259"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2025 07:38:42 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 27 May 2025 07:38:41 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 27 May 2025 07:38:41 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Tue, 27 May 2025 07:38:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LUu6KpnOsQQqmtIpcZCuJFFn4jFkVmY38xR5zAQOx4xM7nEtZvW9nLO3dpOqiyulDEnGSNo016rs11rzc7ncB/Hsy0Qq14CztwVapQR0CvSMxnVDjeFh7puRaZb0I32UOR/YU9gvFmmBv3maLMrCf+9sEA3D9jGBMAPDK4KjKMLbWj4rIQSeazUqRO8OIbMbR5Nzs7dIEBP4h0PRq+iNzVKR00tB4YCxchJtjzU4fb/L5u+/SNkiavrsoixnqSfVfGHjNCswXCtMsFFPnJCa50w5FO+YZ3i9BGMFhIVE4PdLtlbPGw98dLRuBNZCn8uQUspopfopPlY2lqjC0Q27ZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hy9QO5WC5zYy/gA1Gnjx1uJQRWfX1JS0z+H0aBJwOZE=;
 b=UL8WP2SfpDVICa49pvFss1bQAA3EmL5XYvq7i4J0V6FQJriPdarWfh+0jaSJMIwqCYhG6ECrvwi0m76OTSpalhZpLil56Og3l7k3Wqus4fw/US8FXmt3BWbUoFTACaHy8XqfZdXw3P2etgrrC9xMRuCYvBfbHVv6Oj13Y76CysFVkYvNbwcMS3enk45q9q42NomBE5QMET6eMGzSMrZQUiSTyjOaMIj+bRQbiy0S7uO2SvXTZLNrXoftRKYl+mfN+RKlFfvSn5nk+YWcbwKXKEtL9dEf73PKecxQyXijv7budtUi0slxt9G6Iwe+TbxnzRVdkqtSbHJspebgpmaMbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com (2603:10b6:a03:429::10)
 by DM4PR11MB5264.namprd11.prod.outlook.com (2603:10b6:5:38b::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.29; Tue, 27 May
 2025 14:37:58 +0000
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b]) by SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b%3]) with mapi id 15.20.8769.019; Tue, 27 May 2025
 14:37:58 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Mikael Wessel <post@mikaelkw.online>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "torvalds@linuxfoundation.org" <torvalds@linuxfoundation.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "andrew@lunn.ch" <andrew@lunn.ch>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>, 
 "security@kernel.org" <security@kernel.org>, "stable@vger.kernel.org"
 <stable@vger.kernel.org>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH v2 1/1] e1000e: fix heap overflow in
 e1000_set_eeprom()
Thread-Index: AQHbzxAWdI/v5bsLJ0elxZ3arHnvGrPmi7BQ
Date: Tue, 27 May 2025 14:37:58 +0000
Message-ID: <SJ0PR11MB5866A289E030C3305C80CE11E564A@SJ0PR11MB5866.namprd11.prod.outlook.com>
References: <20250527085612.11354-1-post@mikaelkw.online>
 <20250527085612.11354-2-post@mikaelkw.online>
In-Reply-To: <20250527085612.11354-2-post@mikaelkw.online>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5866:EE_|DM4PR11MB5264:EE_
x-ms-office365-filtering-correlation-id: dc336f8a-0861-4508-c4c2-08dd9d2c1320
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|7416014|376014|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?OJ3jwQBQ696O2+D9ufbbQdFGQxLGcJuWuC0D2b/FXLE3Z1D8S920OjgWT8xR?=
 =?us-ascii?Q?0Y/e2D2lYXVkOvZVT3nETiIWDitsC9/n1xXCKaTqaUPjKAHGVsspMeT3THPk?=
 =?us-ascii?Q?1y/hA+BA9bSbjLGO/aU4blsvMxsAv08XWnIZtfLvOKAWWQ5XoBRrI8c9CTjg?=
 =?us-ascii?Q?/ds1RbnPdIcIicnZSoroGP3TIqLg0IVYCMcta/wfVHqWX6ckkz6jlUvJ4LHI?=
 =?us-ascii?Q?vpiovcC4SoBfIRl81Jx6IcTLe+d2zAZiu9zd/7mQhZa6NooBaZroDHTF67tN?=
 =?us-ascii?Q?QrsCeIPOLPD7pHW4mzjnRWLUvOj5A9wGkD+2Ir8CLqng1eLmi6jLYoXdXfZv?=
 =?us-ascii?Q?2ITW5BE1h/yzalKqdWH2dptrN5IwLI/sDAIQRCPCgfurGboCGRiKgkkk9Lcq?=
 =?us-ascii?Q?+hrhPzq719sdJCd6tfgFyOawopSov/jRZnUJvggbZQjRhKkViA4Bae+2HTPA?=
 =?us-ascii?Q?Q8r/UD9c07ZaBUsjr6erXeqEAG7nDvBCYHLL723R7XwXEoPA20YSkSAM9JLM?=
 =?us-ascii?Q?+xbcvPiXrzPBg31dpJNqoJ+jlJOcqE1ePjMxdUECRF8Jq89uIXZCJQ6DyERa?=
 =?us-ascii?Q?wYCNDp9AfE/EfiX9o2ME1ofQpZVzfFfWjtec/33JlFgz6tJZCx1sRoWM5WFf?=
 =?us-ascii?Q?eKcLUhgjRrtpKUlI8295faFlm2qdk0aLhk1WkW9j5FSLGPaTmyt3ROByBvaM?=
 =?us-ascii?Q?c0P6CrJXcFPe0a1I2ZkaKXfdkOKIHL5yUZiePEUnMdZqnH6YX757gQ3CkEI/?=
 =?us-ascii?Q?axEPB7lzDd7XgXD/P8SkvoAoMn2Ddl2mblmJroCkps5jtTc4MEjJ9dR22Bly?=
 =?us-ascii?Q?0sxcdEceQI09TSPXPAzklqFSlh1QsPxoY/WKAgbq9n/dWh3pSf3CUaydzRil?=
 =?us-ascii?Q?DgRBulKjuSibsLAvz4R3B/5nUqYNqF3uW8ikp2rbhBqQAxXT3GswBUf9RvYf?=
 =?us-ascii?Q?FnKeKBhZsQs9ljMxJv7yaCHmc2i4ErovwQTNZhLi0hFCGFJTc3p8UyszVVM5?=
 =?us-ascii?Q?PVPe9gOJyv5A9GW5GGyuPGm2MzfRgrNRgwekLEFGk/BJ228OUQX8PZbXj9SS?=
 =?us-ascii?Q?5GOALCZxh0+pRFlrwEjYcedVNtNX4IzueiFa/nuvYn1bASEoLxLIbK3VLmLK?=
 =?us-ascii?Q?X65wUAhg5x4X3FDpQUHAPWaQ1GWasJ7IfyrlRMbnDPmoHYG2ZEucKjc+9PY+?=
 =?us-ascii?Q?YpoMG9VdtYJ02epC1YTzqhwsXC+OCaXzXsvkvJ8Bm24wfJYpQ7hBIyHtw7oy?=
 =?us-ascii?Q?PpZ5NRvOJAj1ezfyOejfh4sk89+qiPWDVQfbXaofMeRJ3yGooz7JITVni6/v?=
 =?us-ascii?Q?Ll+uZB011X6johoXAbrpwix8mTUGNckqeWlGzB0ilS3RdopubN47Umgn6+46?=
 =?us-ascii?Q?0v6xMPRUmmIQTmtyvqwVpUEeJ6usrj/dnhcfHxAeqrskuRVQqDBNSXt1W6Vn?=
 =?us-ascii?Q?CsOZOogwPlFUQEli1qsMS51TDJwR/aZXVaGfSBhUSG9ppkMOosjtLGQVtWs2?=
 =?us-ascii?Q?vXAbanM3RvCxgNM=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5866.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?LW1QCYRvaShJu6yg2hajKCyk2UYztojBxFlROza6ktbT+pf9LUpH9s/93Qzk?=
 =?us-ascii?Q?qTRIsGKuuPmt2CaFIUsTlZCEas5w9psnUBm4/PEpfuLepilch91lz7Vfe7PT?=
 =?us-ascii?Q?y7ObhmwemouY+Od8/6C6j3Ey0wBdj4fLX+DVJa42VZkfrzCnlFlEimirnJjM?=
 =?us-ascii?Q?6lzCQvtN41rHIbbyxuT5L95Gs1EOs3yYDYw6n1AblRN93HOeO51+iCXAdro5?=
 =?us-ascii?Q?d39YBHc5mWCbhspU2Q0a6iNpuzvL/2CkHOzMfUInK0taPHNiMUI2xjnmyKDc?=
 =?us-ascii?Q?Sus+tQ2xlh5mPZbBDtWyywE/PZUM5uO/OyNErj/Qi0QZbTxElOIIyCTJxAHM?=
 =?us-ascii?Q?TQo7bIudKJVY4kyp8wI0xi1yIa+7q8gYyh5iuglTI2SDXGOiNTIm5Y4TbyWZ?=
 =?us-ascii?Q?3VogqwNzZyqjH/o55y5xGyHBMO1hnz3p0rgIZM6iq+cUu3pLEZEjihC7KuCR?=
 =?us-ascii?Q?U1mTYbV4wFdqkX9lI6SLZbdyZXqXpWM+vybMYUx0vBD93gwCWo/2I5uay9jq?=
 =?us-ascii?Q?XyQULdGxINKTK3pM3F3STaajEMYOY02ALVu+26prPbEQRo3ycOK3cCHavcLH?=
 =?us-ascii?Q?7aGpPRypClLwxr4ExSfiGW7pWYUlVG019YZ6KAPFy+/LRdtRof9RJE5hEL3N?=
 =?us-ascii?Q?9e7fU/lWnxobnercNJPBYyo+hubUq8yb4bepRhwQ0hyTlIJA1x3uNJK7Zlem?=
 =?us-ascii?Q?kReIhWgIbjTExUEzx4kA1brpMJuqxtr9r6eQcW8h5rCOSqoqfLKNNebmQcaw?=
 =?us-ascii?Q?9qiVPM4bL1mPguBU7dqDBUj+n8NOF+N5NmvkkQXzEoF8xyndXVOCdCQ8LKIb?=
 =?us-ascii?Q?MiDe4sh/DFAMbY/XYYqVlriWdlYC72IKE/h7BTnm+Gu89/wONBjkshO8vguV?=
 =?us-ascii?Q?oL0v6ptOHFCa67oFRqFBOw3P4NDZaKiSZHum/yxvyGVGmApY3naJMJnSdDEO?=
 =?us-ascii?Q?FQiLqvqqicjv1dTabZt57jg0miZFbOa3JZO+GLoAEPsSpciSEOc99Zj65zQQ?=
 =?us-ascii?Q?W8kiYTjnZY1XBaEGggS+uaQiJQz55MXdOQJDHZWWyUzZ3I6LitvV7crg9fe1?=
 =?us-ascii?Q?uRTC8ueA2ZOcxY3BtcJoJvSjf5lyp5KXV4DhnQ70feWxlr2rpjsbGUQ8wXLM?=
 =?us-ascii?Q?bU8J4ujVelhxgqU9hoB95bt+v1VJdDXuWzPr+M8fDv1tF9OnBvO/XSbNaUr6?=
 =?us-ascii?Q?iuMYqGwQKJFC7fsFvCOGaLjVUiX8NySJOdAWGwX3DP/4ygBg3XsPD6kRDuio?=
 =?us-ascii?Q?24xrVRkuvkZj6nKh/UmEg48Ks35oTkcBVx8H9dYrMGB/tDsnXAuLotKaA0S9?=
 =?us-ascii?Q?eueInB8TyF4DuTkXbFOh0KLHNn6PiPFaeEpS1zDpAUdZmoOGkxf/E0IY/x10?=
 =?us-ascii?Q?G63F21Iw19ozCrDCCjAHUYGgBBizh+nrAAug8K8Zi00iYJ7/DlPfIR98Cvae?=
 =?us-ascii?Q?Y9CKWaRRpa/54+jtYT8nJzamNYtJqnf7Wctru2FRCtzsz/iYzcTw+sSkCGnD?=
 =?us-ascii?Q?FO5elSR95qnTKhpdMZcQrbkZuuOmb60mVJ9REUG9B/zComcqHhcLod6bIZnS?=
 =?us-ascii?Q?71s7Yu0gNxY6tJIlM1rLWLb8lLHw+2hM+cFwiC6hHxk7O3Cbg9CwRU14AQ4H?=
 =?us-ascii?Q?Ag=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5866.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dc336f8a-0861-4508-c4c2-08dd9d2c1320
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 May 2025 14:37:58.1249 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZWR/MZ35WOdzcgRAvPf/XYChR5ItaUjwGdbhSWNYqYCODXvVlb3Vn1a/5l3vDcf0NMkTphdPKY417dTxBnR+d84Ga+VeShyL8RTeiLYBH/I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5264
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748356723; x=1779892723;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8b8nm9ta1BNk6PrHv0lK9o4xdWxcx4wWXN/RlaVzcFs=;
 b=kiHr+3Kr6Pt3pgwNXrzFkQ2IrR1AVsQJscOcOettyeMAJO/Ue0PF6WV9
 Nj2KniZwRyoB0R7aPwmkTVOCyk7H5FNfD7Y7PvCu2PVAIPgAS8bcP9IFm
 rlverKl8T2sh8/2Juk7plVqCa3REWENb/Wvs4cjSt9JrJJXtOebRqE716
 GtyFQkTU1vHqFb/ITKzdoP/V7gtRe5YzS/HuPN3XhgQQ/Oz1wil0iiKJS
 fDQD3Do79i6nfzWE7p2+Lyl55yyFAb6ydNAH23JUbKj61rIRB4G6qDMvi
 pAcpj56KvGGcBLRuaafoHW8qCB+2YMCGRvdJNLd6E2F5ZJ2QiG1kdP0ow
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kiHr+3Kr
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 1/1] e1000e: fix heap overflow in
 e1000_set_eeprom()
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



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Mikael Wessel
> Sent: Tuesday, May 27, 2025 10:56 AM
> To: netdev@vger.kernel.org
> Cc: intel-wired-lan@lists.osuosl.org; torvalds@linuxfoundation.org;
> Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; andrew@lunn.ch; kuba@kernel.org;
> pabeni@redhat.com; security@kernel.org; stable@vger.kernel.org;
> davem@davemloft.net; edumazet@google.com; linux-
> kernel@vger.kernel.org; Mikael Wessel <post@mikaelkw.online>
> Subject: [Intel-wired-lan] [PATCH v2 1/1] e1000e: fix heap overflow in
> e1000_set_eeprom()
>=20
> The ETHTOOL_SETEEPROM ioctl copies user data into a kmalloc'ed buffer
> without validating eeprom->len and eeprom->offset.  A CAP_NET_ADMIN
> user can overflow the heap and crash the kernel or gain code
> execution.
>=20
> Validate length and offset before memcpy().
>=20
> Fixes: bc7f75fa9788 ("[E1000E]: New pci-express e1000 driver
> (currently for ICH9 devices only)")
> Reported-by: Mikael Wessel <post@mikaelkw.online>
> Signed-off-by: Mikael Wessel <post@mikaelkw.online>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Cc: stable@vger.kernel.org
> ---
>  drivers/net/ethernet/intel/e1000e/ethtool.c | 3 +++
>  1 file changed, 3 insertions(+)
>=20
> diff --git a/drivers/net/ethernet/intel/e1000e/ethtool.c
> b/drivers/net/ethernet/intel/e1000e/ethtool.c
> index 9364bc2b4eb1..98e541e39730 100644
> --- a/drivers/net/ethernet/intel/e1000e/ethtool.c
> +++ b/drivers/net/ethernet/intel/e1000e/ethtool.c
> @@ -596,6 +596,9 @@ static int e1000_set_eeprom(struct net_device
> *netdev,
>  	for (i =3D 0; i < last_word - first_word + 1; i++)
>  		le16_to_cpus(&eeprom_buff[i]);
>=20
> +        if (eeprom->len > max_len ||
> +            eeprom->offset > max_len - eeprom->len)
> +                return -EINVAL;
>  	memcpy(ptr, bytes, eeprom->len);
>=20
>  	for (i =3D 0; i < last_word - first_word + 1; i++)
> --
> 2.48.1

