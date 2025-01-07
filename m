Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 587D5A03BD9
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Jan 2025 11:08:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 10D13812A0;
	Tue,  7 Jan 2025 10:08:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nUW7T7X0kTuR; Tue,  7 Jan 2025 10:08:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 34433811CD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736244516;
	bh=+39ISqpoAMFb64CT8NawE2zl9Yyh2vY/OBuxxocvwtw=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=fKt+eMlBhOho/h6qcgKK+9N7kIoSkcG2UjTPOAS9wCDyMXxVn7JwphjRjWVlOsyKw
	 Vr+SXoZe3CnztjxQTKFZNlqB+g+bILqgqPtvFlkAA5N/t22ELI7qabKnSGZ3a/kfYT
	 m2aAR2SU8O5dp5jc+ixEXjsUgQVrRcCwleUWUl+7ueUfVS9yuiaGDE1m1Y5EoeDmWq
	 ZPyxuGryTs7DkpQEsSFWcdOdTFPUodjJ3jr7j5/6dlW+Ol9eCJ2QkYOiduiaE+RzdF
	 C2dGApIDc4AnzY2nUFFkQ2uAmBVec8nvsPvzXYvq4CFL57SRC+nbYfBg/qv+ZeAhc/
	 fIO3wpncjIoow==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 34433811CD;
	Tue,  7 Jan 2025 10:08:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 0E4997AA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jan 2025 10:08:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DF36F40236
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jan 2025 10:08:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PLESouTrTtiF for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Jan 2025 10:08:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 89EB940165
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 89EB940165
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 89EB940165
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jan 2025 10:08:29 +0000 (UTC)
X-CSE-ConnectionGUID: tlAq2vryQhqQhvF5taR/FA==
X-CSE-MsgGUID: pfobSar/S5eV4vgtGmnLqw==
X-IronPort-AV: E=McAfee;i="6700,10204,11307"; a="36297890"
X-IronPort-AV: E=Sophos;i="6.12,295,1728975600"; d="scan'208";a="36297890"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2025 02:08:29 -0800
X-CSE-ConnectionGUID: w6d5Sp6XSuyihRP3Ih5YYg==
X-CSE-MsgGUID: 6P7FbsN+SxmezO1HXLurUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,295,1728975600"; d="scan'208";a="102538518"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Jan 2025 02:08:29 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 7 Jan 2025 02:08:28 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 7 Jan 2025 02:08:28 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.42) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 7 Jan 2025 02:08:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=miaKo/0tTbMHKx2cCxp+qWDRevxnm2W7WC5IVKAoPU5EI22vF4RAtpZdqbzPxNoe8G4c8/CUk9jE1UrRoPADmJsiwmNZXHQUVbmpHgfz/ilHF/DRwA65teH/3u4oohd9XYJorPxnG4t1X4HpspGqFSPvGhjhOq1baood8Hyt3l19gTteaI1XAL/OKiNbv+lD043rAgaC6K9aEgXjJqgjyxFHaEe68PgxFqNlqE+olb6m5Ow9j+XtxI43n/eyNOo4XBJ166brCgZhvk9pxezf2J7UaRwmber1sHW6wnmPbpcEpJa/B5cQUvHlXJHQUMu5WhMYZSDylleFWTOPo2M/Iw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+39ISqpoAMFb64CT8NawE2zl9Yyh2vY/OBuxxocvwtw=;
 b=GDEBzeRrupJZae9455RLrFbGja/6ROJILsYaN4eZ+sfDwvnBvYcWaAzrrgw66JWT/UmeeQa0scdYO5N/eesHtYOS/qm3/XfKq5hXbmEhvR4E/GK66nNg3HSIbZUHhz6DMiFoPvvMxmY0A8yYOF2cAc6bS/FEHVgFeuyODgrb9n68mQQ6hkbqRvv/V5Q/dB75aya7mOAN7IzFflrOS6DoVWfl0UahFjx613rxPAy9hiRgqM214Q1VXeqfFytFJa47vNFx2amgsibWzlE3txF7oRgUxE58on/iHqg213bPMEZkf/dWL6bXT/gUXAvrLz/Ldu5G2hiQ3fUyxNstn1KuoQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by SA1PR11MB6824.namprd11.prod.outlook.com (2603:10b6:806:29e::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.10; Tue, 7 Jan
 2025 10:08:26 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5%4]) with mapi id 15.20.8314.015; Tue, 7 Jan 2025
 10:08:25 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: Wander Lairson Costa <wander@redhat.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Sebastian
 Andrzej Siewior" <bigeasy@linutronix.de>, Clark Williams
 <clrkwllms@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, Jeff Garzik
 <jgarzik@redhat.com>, Auke Kok <auke-jan.h.kok@intel.com>, "moderated
 list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>, "open
 list:NETWORKING DRIVERS" <netdev@vger.kernel.org>, open list
 <linux-kernel@vger.kernel.org>, "open list:Real-time Linux
 (PREEMPT_RT):Keyword:PREEMPT_RT" <linux-rt-devel@lists.linux.dev>
CC: Clark Williams <williams@redhat.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net 2/4] igb: introduce raw
 vfs_lock to igb_adapter
Thread-Index: AQHbRkHUAov0ei88nEG7V1ANseyQP7MLS0mg
Date: Tue, 7 Jan 2025 10:08:25 +0000
Message-ID: <SJ0PR11MB58652A9179F79F7A7BCCA9C88F112@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <20241204114229.21452-1-wander@redhat.com>
 <20241204114229.21452-3-wander@redhat.com>
In-Reply-To: <20241204114229.21452-3-wander@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|SA1PR11MB6824:EE_
x-ms-office365-filtering-correlation-id: 167c8d42-4d63-4663-f1a9-08dd2f0339b1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|7416014|376014|1800799024|38070700018|921020; 
x-microsoft-antispam-message-info: =?us-ascii?Q?7OevEo4nq+UNtkOY+RYvZ+N4OBRbAr891F4vHyWTXvZX9K+XTuIbsyaC0+Ay?=
 =?us-ascii?Q?UmHB5TJKnTlg0GDFgu+Nfg4yE3N5BMzD1G7E4zl8U6qPybFQKuKxJEFxtRL6?=
 =?us-ascii?Q?81ktzqnJQND47QMquB1+abnA4AYjoMSbgulp/EN1/gQf6/RiW3/1cpSBxAQE?=
 =?us-ascii?Q?qM6A9GlXWmfqfe6NMI91rkwz2zAnUPNAmvDB9gNES8zYxcMzHVPcITg/1SAU?=
 =?us-ascii?Q?O51rSmNH5CZ0F8RGylZfBOBtSp/BHaGFp4uYNS7bz2vnuKg/pxbV+LiB38/x?=
 =?us-ascii?Q?Y8gvQx5MYzQUmo5Gb/5LGyunPLs4S42BW6qyDc7MkECpFq8KQYUrAPIWhQJJ?=
 =?us-ascii?Q?l5jea6aPAOLnIBtLY7bG1ClKG/keW6Weowq/k/3BqvbCcZOFr4mreJRETQKM?=
 =?us-ascii?Q?RjhGIAshYxIx1UKxQ58bkvS9AfcIqplSu4yV2myGOsHVe0EQUD2Jw9SljOO6?=
 =?us-ascii?Q?w7L2nxliW6nOeeW712VdsvWaWjryV4hOER4zd/e4KupZgW3IoZ2SG2b5GFvf?=
 =?us-ascii?Q?ZjMcANCWV2qvKQOu6fWJYyI+kZAbqUgxoBjczRIlxldhmXbitEu1KJ5NqRQn?=
 =?us-ascii?Q?6czVSTzEAaA6FGAfwB3xQnMN5Vm1DU8SxWpnec7V2YoZNM6+6kTj0OHkkyzH?=
 =?us-ascii?Q?RQNob1qeJ8qEBVtHPtql2gr3WOI1wPgDTg9CR8Cb0tRbKLVR544xtr4X9Wfy?=
 =?us-ascii?Q?zk8HC1urjLXODQA0TPX71WtRVuySw+uk7mS3xJrkBaW/WFsDXUxX24ug7tgG?=
 =?us-ascii?Q?4l+WAx9UvLDjRUhV3HxCnFUsaA+OMsuBR8NABHOfzRZfcUWcxwfAGVQAofo1?=
 =?us-ascii?Q?CizK2MEMIfoTzgVWtzlcDnNPw8qO3Ib/HvjI1Qmx7L3s/btLZn/vRyjQTFL5?=
 =?us-ascii?Q?1KmD+CErzNYN4yZoCT38y/MlTmpjRCKKU6tnWia/53qCB4Zvw+IfN/NSwznc?=
 =?us-ascii?Q?CegMyOUHVDwyVH4OHJppONHDds1WkkePDhe3Vw9CdSgv/PCufs/aVUeuBMSk?=
 =?us-ascii?Q?ZvM/TjaseSr4tOHoalfxAQbmNPrC0+xwlRdn/CD04R/SqeU5twL+pUa5dG4g?=
 =?us-ascii?Q?XHISK7AtdRJuK+sUDtSIDsQ4RdnLnLmLIVqbnUR4Jnwzsm8h0Yc3Ph1xQjPq?=
 =?us-ascii?Q?aoTPRrcGimmd7LNt0qIIyCO1MqfiKWlHseU+FZGJi1v7mfNJ2n67H2MgNLW3?=
 =?us-ascii?Q?BUKYSi4fnbgBazoDnZCDUTc4vEtf6FW8SUHyARUyoy+jH8j+my5owMrvQekp?=
 =?us-ascii?Q?ouBXpkj0OVDGL6ERjniw+9KDAS9wm/ad7FguyNNhRGRlIN1qiD2X9h1ryHd5?=
 =?us-ascii?Q?4gm7NoYfqs3MpOTFkyqzCgKHAJ0+RmJItG/EZI8WEsxlzsnQ9ZxywjXGxe7p?=
 =?us-ascii?Q?boQ1sMu5jAD7Cqo9iJvkzqtdpI5cEtx6lP8gshDG7JtB1TD22C7hyR1dXABC?=
 =?us-ascii?Q?iA6082cyh1m5UVqVem4V7jaeqoebn+6PXJp9g6+9zYSCy1shBOYi1A=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(376014)(1800799024)(38070700018)(921020);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?dPCtjojFPz1D44t0raeioOaPIrw4nhJq5dEChY7N0ULeOpg6rE8+V2vgM7bl?=
 =?us-ascii?Q?RXcioDgDzNfoi+uzVZjwC6vJsVsa5R/wV44XEF13hT6VcuDz8tC2QHOfoEpY?=
 =?us-ascii?Q?JRzVsNOQGsoZCizelJ64YbAx/sSwqvL+OSSec8yNTL8lILeEWDzLkpUg/6Oo?=
 =?us-ascii?Q?8Bwidg+D608Pm1jepOfOmMNS6o59+vpX8IAIOju7AlugaLT47e70BUF6nXw5?=
 =?us-ascii?Q?3UqDjudEQCwGE0pF9vAI8keet6QhoNwVMQONjqOvR2ydkLuIeJCjENPPRzN1?=
 =?us-ascii?Q?PKQDT2Psg/ab6Dw0iFrWwR1iQno4cKHKzm30ZdmuA9Xswe7jO23m6bYZwbwE?=
 =?us-ascii?Q?cQezYkOYdvWwS2cjjAxDk3WJ1TudKxWOM2wi8/vWRPx3wP+OlccffeI2k7o+?=
 =?us-ascii?Q?IvyVCHrKElL5fkvmsTwCuBNBO0dCNN2xXsw9u3DR3wI5jbI3I/fpo/iXRodY?=
 =?us-ascii?Q?aFsJyumce7UkbJUv7AxVxnCFdeWbqw7i1j+bBHk8RknAF0BwV8zAJ79B0WUd?=
 =?us-ascii?Q?de2usXQjsFVgpbZpfyxhAQaM/ClDZLHnBIiTCGuxx0ALcmADSRKo7r1Ys+Et?=
 =?us-ascii?Q?NffXJ5vfTNu5BxdAGci/lEEt1XD2W3vCX+hrbJzZOsAJx4+39j2IRE9g/NNO?=
 =?us-ascii?Q?nNR5gWRVofpmIjjl8FJ5ZUVYgo6ZCLsgLSbR8m5pl5hPhM51n+v/qT1+4S4V?=
 =?us-ascii?Q?QZkDjj2Di/JZu49TFz3Gvrp6Q8wneeuXlhB3Gmc/4Spj7YpPGPduhmxNKqV/?=
 =?us-ascii?Q?JlHbb3gLHlJCjr6Pua26LmSTxYBtr+LZROp2UEvvpLl6Fn0KN6TWwrgFe/Ze?=
 =?us-ascii?Q?4nY8sUigHaXFRhOKzudBxm+mufl90LJ8+HHmHT61SfIQgPwg/aRFrvX3wQ06?=
 =?us-ascii?Q?7Io7dZjKBUuAyvX8DJUx73Wi96varBAaA90dmY6Fext4qqprgRu/XOu28cIE?=
 =?us-ascii?Q?TZSkwH48DOmGOsQVyaJh4pp9WZ0DNuYW9Qb/ZbMZG+3GAjOfvYT4wTRp/cs9?=
 =?us-ascii?Q?vloqm/WyqY4pmuWxg6REVMH5+dodkoSfoWv6kYVqGdid+z3Kq6nID2axrjW+?=
 =?us-ascii?Q?n8Tw5cb25iSvbuePVF39ea/Rnir8Hd9ikhiA96FwkwUKhBwggiafXmjV86S2?=
 =?us-ascii?Q?uIvGO/Dwf0U1CExjoq3oKbAq9DC6G/SbHwz/CenmaRksVRdMAWdgdIOlDvgZ?=
 =?us-ascii?Q?dSgLJJ1Exa1OYWZjdxYeonLJ40tLJ9DjHnC6rwhAqaYqF/FVGBM1ECMaT0Il?=
 =?us-ascii?Q?z2cFBLOBQjqv/RNA8b4VBcx5klBeK4U5nkQ/JZKKYSwJY+1GO848ULLYDvLS?=
 =?us-ascii?Q?psX+x3T/HQrP4pxrS5lwo5trNJFrRWiQ8OvQLCRmTEfGmvb/znqlnllkF43l?=
 =?us-ascii?Q?UBuPCwXvgvQnyQrLiIVRcWTx+PK2tqdqWNpgPYyZx0DY3H9U7w4ouuRjbYG6?=
 =?us-ascii?Q?ua9mpmtNYw5S9sfBvdCDjf3cCj2UPDrZFGw4jGryscXAhpGe79lC+Ta5ZBkE?=
 =?us-ascii?Q?8i9BWWRBQgSbXDhus/rqbgYLh3raAzu1B/dmPFtukBJ9eq7Bb1WCkA8rrAw3?=
 =?us-ascii?Q?W4pxAd5nqoV79fiOWAyUqKTq5L8eeN8/x8JrN1fLhW9i3IrNKfn0d/r2BKZj?=
 =?us-ascii?Q?Uw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 167c8d42-4d63-4663-f1a9-08dd2f0339b1
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jan 2025 10:08:25.5249 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DGFGdZURpaOtYS2rbhwpA5P+AA0MzPXkX7Fmo9AZRUUueP4sTJNkHmxR6ooaRoJIUyJQHJUxFCVvfYHUXgQV4Jd4jYvG2nW4xyTsAyYJMS4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6824
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736244510; x=1767780510;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Nxk3Q/zRYFna2wy+y+gwfxXkuqgMKxuJTjkoML6WFMc=;
 b=QXlLQsFgASYr3Iauzqb7SBd6YF4Bp6vF0UgNp4pzdAffnBpIJ64SObK/
 3rte9kldwi+UoOLCuSHhOtg2Udtt8ixQ1GBYJUDoqmqc9GRnQAeQJzLP1
 Vl7Nh8GDXRE/+gXWNVfb4pQYB+3uIRQTFXPpsJhY1jes9H4KwpGOGpQVX
 dfzh4hYryZg8X6T0UWcjBPoeEISenJYeFQJiUB1sfQrFo5iIyKAjN+oDZ
 zKcu8EPizYxV5PQtzFsH/SWIItFkAlfZ3+h2+YJpN231zlWXr+CcldaXg
 ocaNQ9ahI4E1fubcjzlldA3Xat/cT4Ak7KSOs9tKK5zd+vUTIow2uVBG4
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=QXlLQsFg
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 2/4] igb: introduce raw
 vfs_lock to igb_adapter
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Wander Lairson Costa
> Sent: Wednesday, December 4, 2024 12:42 PM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>;
> David S. Miller <davem@davemloft.net>; Eric Dumazet
> <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> <pabeni@redhat.com>; Sebastian Andrzej Siewior <bigeasy@linutronix.de>; C=
lark
> Williams <clrkwllms@kernel.org>; Steven Rostedt <rostedt@goodmis.org>; Je=
ff
> Garzik <jgarzik@redhat.com>; Auke Kok <auke-jan.h.kok@intel.com>; moderat=
ed
> list:INTEL ETHERNET DRIVERS <intel-wired-lan@lists.osuosl.org>; open
> list:NETWORKING DRIVERS <netdev@vger.kernel.org>; open list <linux-
> kernel@vger.kernel.org>; open list:Real-time Linux
> (PREEMPT_RT):Keyword:PREEMPT_RT <linux-rt-devel@lists.linux.dev>
> Cc: Wander Lairson Costa <wander@redhat.com>; Clark Williams
> <williams@redhat.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net 2/4] igb: introduce raw vfs_loc=
k to
> igb_adapter
>=20
> This change adds a raw_spinlock for the vfs_lock to the igb_adapter struc=
ture,
> enabling its use in both interrupt and preemptible contexts. This is esse=
ntial for
> upcoming modifications to split igb_msg_task() into interrupt-safe and
> preemptible-safe parts.
>=20
> The motivation for this change stems from the need to modify
> igb_msix_other() to run in interrupt context under PREEMPT_RT.
> Currently, igb_msg_task() contains a code path that invokes
> kcalloc() with the GFP_ATOMIC flag. However, on PREEMPT_RT, GFP_ATOMIC is
> not honored, making it unsafe to call allocation functions in interrupt c=
ontext. By
> introducing this raw spinlock, we can safely acquire the lock in both con=
texts,
> paving the way for the necessary restructuring of igb_msg_task().
>=20
> Signed-off-by: Wander Lairson Costa <wander@redhat.com>
> Suggested-by: Clark Williams <williams@redhat.com>
> ---
>  drivers/net/ethernet/intel/igb/igb.h      |  4 ++
>  drivers/net/ethernet/intel/igb/igb_main.c | 51 ++++++++++++++++++++---
>  2 files changed, 50 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/igb/igb.h
> b/drivers/net/ethernet/intel/igb/igb.h
> index 3c2dc7bdebb50..d50c22f09d0f8 100644
> --- a/drivers/net/ethernet/intel/igb/igb.h
> +++ b/drivers/net/ethernet/intel/igb/igb.h
> @@ -666,6 +666,10 @@ struct igb_adapter {


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


