Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SHduLMDADWr32wUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 May 2026 16:10:08 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7128658F583
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 May 2026 16:10:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E234B610C8;
	Wed, 20 May 2026 14:10:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bfCsSYzwZ3ZK; Wed, 20 May 2026 14:10:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 40C95610C1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779286204;
	bh=f6NMuqSKd3phwp2VfEXdDULy3/ec8PHJT9KsLGP+cAc=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=e+JSfTuT21xcs3mCNRVJxYm4Es3sB2g9vZ6PHRAIUFnBOq//+iPnnZC9KEV9dVYlq
	 7TjHWLKozwM9Wq4YZtbkFaA8dKL2iOgH08ofhaO/wkUkm3LtRczNlwrRX1mGqnN+zD
	 3MOyyeRI3q8YKvJ1fBGEFOkgj6V4OuqI/CZYJ/MSD8vnIuweFi42nM8BKuFdo0DKEI
	 X5cOog0T4PHFvreyTyvUYI66vpgYhfSN4cxretQPgg8kzGcZX2irdtHMslpA2WKChO
	 hHdMf3MbHW1+824t2vl63u+X6T5XGKOUFWxiJdM7tAGdUvVGnU733b/bENzb6syhGL
	 yjSjb2knPSCog==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 40C95610C1;
	Wed, 20 May 2026 14:10:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 663E3282
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 May 2026 14:10:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5779C610BE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 May 2026 14:10:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nttgI4g6HP-x for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 May 2026 14:10:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 77757610BD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 77757610BD
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 77757610BD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 May 2026 14:10:01 +0000 (UTC)
X-CSE-ConnectionGUID: k0M01Z+xTbSyRYygbkpx0w==
X-CSE-MsgGUID: 5g6IqgLbSW+S1D34kYp/tQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11792"; a="80240771"
X-IronPort-AV: E=Sophos;i="6.23,244,1770624000"; d="scan'208";a="80240771"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2026 07:10:00 -0700
X-CSE-ConnectionGUID: /8NJI4+kToGWI4ldthpnzA==
X-CSE-MsgGUID: y1QSN482QjSBniIq8Hp21g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,244,1770624000"; d="scan'208";a="245197129"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2026 07:09:58 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 20 May 2026 07:09:57 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 20 May 2026 07:09:57 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.66) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 20 May 2026 07:09:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cKYbiaF/IfuTd3DTpjZ0zog7LKR0F9AxBnMYiLbYxyfyIlBgnDtdXZkZOuOgoJsnkmzt57ziZtWixumUFjj7vqUfgT6TiLVa0Jn6Zzf5xeEKmIWuizFzY1INERG0WvF1yv9e4qEdp5Ehgv46hwqo9qE5xB5AKVchKQTbog+LTlWUTGh8ywxn0P3T5tXwfnYxT322rmoK+yWkMpFdH7dY3RMwhw/wsNO7WuNjxAOGJDZoJ8IgbzomO4L2UDUhLEYkjARiJqvqyRSj2aGe1eSmjZp00IwvYSmrZXMgGnpekPhTcprkUu16DMMB99ToVjZkuJxQTazJT0UACwOPPMAxJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=f6NMuqSKd3phwp2VfEXdDULy3/ec8PHJT9KsLGP+cAc=;
 b=ZsMhC4R5wQzpZml8/W3oyJ6SwQSrWCW4bjf0icyNKXijNZp81R3L08NlEs064/093ckie0sfCYXsoBqXPK/aM/9rMjsCNdXn0vSc84ZFK7osHWvDrz4wtUTjNSLetCUct6nOWrSicMaB/wDYo4QI4OsqqJNw1mRNwbBEA8RQZPojurdxrkwTjQeyNw6gxNUMikhQGpUzXXe7HIxmfYsKQ2Oxq6S2syiHlAxmXbrSbRyppMDRGj/nKS4FpS5h/hnBYre1vYI4UYpcu0RMyo3X/L/qBqMgrwqjzoUbzXKkISYLoZBNNwbYW+OmN6kdrXmwwsycFyjgSXYKdRKghYLg0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DM4PR11MB7350.namprd11.prod.outlook.com (2603:10b6:8:105::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.48.14; Wed, 20 May
 2026 14:09:48 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.21.0048.013; Wed, 20 May 2026
 14:09:48 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Vecera, Ivan" <ivecera@redhat.com>, "vadim.fedorenko@linux.dev"
 <vadim.fedorenko@linux.dev>, "kuba@kernel.org" <kuba@kernel.org>,
 "jiri@resnulli.us" <jiri@resnulli.us>, "edumazet@google.com"
 <edumazet@google.com>, "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "donald.hunter@gmail.com" <donald.hunter@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "horms@kernel.org" <horms@kernel.org>,
 "Prathosh.Satish@microchip.com" <Prathosh.Satish@microchip.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "pabeni@redhat.com"
 <pabeni@redhat.com>, "davem@davemloft.net" <davem@davemloft.net>
Thread-Topic: [Intel-wired-lan] [PATCH v10 net-next 4/8] dpll: allow fwnode
 pins to attempt state change without capability bit
Thread-Index: AQHc6DzgrqJmjNAhyU6e10M3KudPy7YW9BVw
Date: Wed, 20 May 2026 14:09:48 +0000
Message-ID: <IA3PR11MB898685F63F6177F7070D8C94E5012@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260520093628.3930705-1-grzegorz.nitka@intel.com>
 <20260520093628.3930705-5-grzegorz.nitka@intel.com>
In-Reply-To: <20260520093628.3930705-5-grzegorz.nitka@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DM4PR11MB7350:EE_
x-ms-office365-filtering-correlation-id: f296912c-a359-4941-581f-08deb67973df
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|7416014|366016|3023799007|11063799006|38070700021|56012099003|22082099003|18002099003|4143699003;
x-microsoft-antispam-message-info: YZ61BXM12q8kD29tdOpEyTd2LZbQZm6nsezQB4lWzctrjQp/lsR1DpGbZZq9EA30O7UJN98BXq6UnoWTgUuPTSPfJM9x9XD8S5MNixfD0Mm1pXRZUXHZs7MnwYtp2tT/T1jAnthT0RdY9rHQ80Dytmrz2N7Ejn+zA4MF1bHyStg7ptqcW97u+xFoSENmPIi51PsiH3rC3uB2mpV5RT9/vjyOOFGGOSleTglYF/x0rRqXbqtIOIrWAksMX5YFsrM0tDIVZAkDRz6X7jNsOfj0CJtXd2kFh3MN0nZJl1PTz/C0qRfZntOQgx2RvLadVDkY1ljgz+uGJIsKE7nb5D4rwQgMYFn9Ec0Dmgmt8uTX4kXYoJeZK/1/gbrirtp2wxWj9jjyk0wbLF05oYASj8MpnesZ0JNbmJ0mbn3rN0Dbo3gjp3llAatexCeCeMULLhskn3KwbOv5s6M67NO6cGMJr9JNoiyt3OjbFpSlSSFXDEyXvf9XGIXApzMgQ6kxZWwAMUncdmXEET4c+Xc2Zt4PVPfninrNddioinjCYktGaR+pMcXJNTMokLc0uijdM/xXTxTRie+LauU4mad4Sd8PhqatqYBdn/Nxums5cFhAciVu9f6q9t6i3C9bWExTOc2bNLfMFKUmcloMkPanSO8pawTdld0g2D9TsMpVvtMzllE22YzT8hHtFTUjuoYXGcWoW5JAj0ge+VybrSnjhtNrf3PjkQY5x5tIZ2AsNVwvPu684VO8l+MDS6FEHaXTBCWU
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(7416014)(366016)(3023799007)(11063799006)(38070700021)(56012099003)(22082099003)(18002099003)(4143699003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?dBlS4VqtSIQYO5jhn1Yc+RT2negOEVJkhhYXj8PAT3Kaz+aKAOmeFSOpdt3S?=
 =?us-ascii?Q?Prhni1TW7nOdN0vOJDAVAaKnwLjxag5eEEmJt0GWAoWXHTl+wQcvQMCYw0RP?=
 =?us-ascii?Q?f/oeGrIiD19DUTVOLHHAGbQUHAGej9TUxJzsxvaALwrPCUDnDgxJxP/3ZAiB?=
 =?us-ascii?Q?g7PFxoEv/9Y6VhsTCVze4u+B9zQpK+hZ2NauN/orFsj+Hr+25lCcYDPDP56l?=
 =?us-ascii?Q?lhbFO1TeDD0vNMKl+1dLEchCvQuGHvuG9Ctekk5KJXEHlsvRFIARp4fxbmbg?=
 =?us-ascii?Q?Lp0LpeO89ReAfhfKUDX0OHou4Cy5oBa3PDhxAPaXXP0JIQNXmzMxJUbQia6f?=
 =?us-ascii?Q?NBsJiBBdTZzpT5LjzjQwSuo2NA/7B5WHpIHk5KUfSSLAlgKPb7uJFn6ddqr2?=
 =?us-ascii?Q?G2fK93j14dgq6KY8psl0QarxFbobRcEwFtn/ea0WW11gxXoekgCGLm0Jn85P?=
 =?us-ascii?Q?Yy2Vi2ntPFBicqwfFQkFvGxy+rof0PvjWwSrZwzCVGKFuqD1T5xQti9GDSwd?=
 =?us-ascii?Q?8lw5u0tU0RAOtG7Lq9Mf2aYug/Hzlu4K0iPNqUi9S1BYKjj5ERHBHom2LdwD?=
 =?us-ascii?Q?LQfuR2cyWm7kiRCi9CqNZkkrDN8IyI7NVg71NX9gFNazr2b3sO93q2iuxjQd?=
 =?us-ascii?Q?lBzC7Uz0J6hDkvMkjShivM1kr8Ln1bDzzl9Hk8J5Ynyc4fwRQ9iwWtR45cN9?=
 =?us-ascii?Q?+emxC0pdKC0p8UMfFNKs7ZepcbQbW6TDpYNGyB6CPdqWqydxGipFgPsA+j1J?=
 =?us-ascii?Q?a6v9t1wbvj+x0TuQJrgP0HLXcdNfYgurWfbZ2WYhWSrzC62Aesr/Jpv5utVd?=
 =?us-ascii?Q?YqIftwPL18IRTlUXSlErKt/lN/uGzCSUOGICjRIJQSm6r6dusEoIgvrHz2s9?=
 =?us-ascii?Q?2qigZvPVe/iS/aPlmA2yAH5b2CK4cjXmtBVgntEfcFWIgequQ1Hlyscr+3AN?=
 =?us-ascii?Q?0+uI2on+52akL67HQY0DYidG2cB9PZL6KytgaqRcadL1hjgxWxHTAGBWPrBU?=
 =?us-ascii?Q?vmfzx2hI6fqJEAKEbYTtW3R1Uj5OXB1uQgnYmkvkA41wjyDJ7rIRCk6HjrLp?=
 =?us-ascii?Q?97cOrSi9SlVtwHl5grwarV8TlnwPiYaMptezB1Acvj5YuCwEAjfMigIH7ha0?=
 =?us-ascii?Q?gPJNblu+H1YHK/u75FBvuAAzp2hZolU04BynNMckYRTdGYOHRX7vWR+rejKQ?=
 =?us-ascii?Q?9I0i1a9P8CLghy+Pi+o5J9t4TZUoltxn0lLBYxtsWOdyMTx6ETlxl3mZigAn?=
 =?us-ascii?Q?w/t7JANUQcjVgqyzm2MwpaISRSj989bU05NJAHniVqKGiOMxGJ5rG7/yISkq?=
 =?us-ascii?Q?fNM8uBj5V0x9d223QlAI3LdSaVC4s9x31aflePoNZDYSgwghD/UE7ND101J7?=
 =?us-ascii?Q?DCl324JnHzemKGeg6NehRpkHCu8h8XqTCeb9cjbS5/ndQCp+HNKOW2kUXGnp?=
 =?us-ascii?Q?W+53WhWDUqDgfsgr7NhfmsSuW1GlOX5iSpBqXcYrKQpEyJYQPTstQgC673JM?=
 =?us-ascii?Q?7Q69nWU2rqEm+iou7GHsz02k7MasIiNui9R1K3Hb1jIW7b3u8kgGbdKu0VmW?=
 =?us-ascii?Q?5zuMcYe+zGvXnPpPa2ffUz5Tu9YdYsMhKD3x+htr895hXcr++sMcKlBgBBcM?=
 =?us-ascii?Q?Itdg7DGl4eIBJnCgkT2QuB8xE7nOZl3/4OTnwnxftqMTrXvjooizl5RK+8Pj?=
 =?us-ascii?Q?ttm72kUf4L9QmRNTUaJOG+2Zims6XSj6Rt5HklEXYAYH9NF4A87kPZXWDh7w?=
 =?us-ascii?Q?MrVpxh6eYsvgm9wggzXwdf7tohGYmWY=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Tq3Vvcz0m03r4vuUmQbiFlr9zUiODafsLrXVsLfEJDvWRujL1wZhK0ynel3R3k7aobJyHrj3k37Vomv0ycemvGtm2wGJm8ZwjnC2SrQdZ0cNSVYVEeOU25lMqkeoEzrsPbEPthUEODbVV+JvG6FvMfE8nuelVCsSCSWiKka+JwPfqrd2GeljmzqvaDGnITfEYkPp1/IdM4BVzf47XHKUWU0wAQPkEPXi+3PCIO294taIZbrT+LE8B0dF1qdopy843VtrrQ7irHeeKT5QHTXHVgJXElVRVyaflnsvQjY0bOyysOthzwjr6IcNeyMFCy7Yw+bVuzklDZQidQR+qnWX9w==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f296912c-a359-4941-581f-08deb67973df
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2026 14:09:48.2055 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Y+s8Q2OLn8tXsP3maeJAbhRO81OE1H5/i+zAMeCvZ0vaUW5dJ2hTit4U+xsBYpliXBW1gUjevlvZaBSnKaCloBg2y0LUYBR/VcW0zIsIld4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7350
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779286202; x=1810822202;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MCFfUjV1yBuU48bZ2G5h7oaLP0m2KSaUJoZh0dSvsTI=;
 b=Jy36KICQJlIUoGe5ju+8dMqdlFGK3hvPkMV6ZnvBvAn3iKCpKqWhz2Oc
 LzL2D3arenHMKRC7ofX2p7rbWFPJgpJl8mRrBRpQSzknqtiOUXWgPGR+t
 jrH5RmxkQMYfVvWM8NO9Y8g5n5IXtjEBpbM3EeLailwYht5nRlh4iiXTC
 gjTXpxaR7AWHJn6oIwAMjwc8lme9pmcEkubrYhH5OAiWztRS16ElIoYlG
 zZT2riFR3BJchCDMsAYO0l3jH90rvV4UL6rBLqH/QdwTxOFX9kZafuDU9
 ats06EPtNAlhlLKYnmQqIEc9wwm/OWoX6EyW7f4f9xSUIydmj0zh/lzn9
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Jy36KICQ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v10 net-next 4/8] dpll: allow fwnode
 pins to attempt state change without capability bit
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
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:grzegorz.nitka@intel.com,m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:kuba@kernel.org,m:jiri@resnulli.us,m:edumazet@google.com,m:przemyslaw.kitszel@intel.com,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:Prathosh.Satish@microchip.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FREEMAIL_CC(0.00)[redhat.com,linux.dev,kernel.org,resnulli.us,google.com,intel.com,gmail.com,vger.kernel.org,lunn.ch,lists.osuosl.org,microchip.com,davemloft.net];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 7128658F583
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Grzegorz Nitka
> Sent: Wednesday, May 20, 2026 11:36 AM
> To: netdev@vger.kernel.org
> Cc: Vecera, Ivan <ivecera@redhat.com>; vadim.fedorenko@linux.dev;
> kuba@kernel.org; jiri@resnulli.us; edumazet@google.com; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; richardcochran@gmail.com;
> donald.hunter@gmail.com; linux-kernel@vger.kernel.org; Kubalewski,
> Arkadiusz <arkadiusz.kubalewski@intel.com>; andrew+netdev@lunn.ch;
> intel-wired-lan@lists.osuosl.org; horms@kernel.org;
> Prathosh.Satish@microchip.com; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; pabeni@redhat.com; davem@davemloft.net
> Subject: [Intel-wired-lan] [PATCH v10 net-next 4/8] dpll: allow fwnode
> pins to attempt state change without capability bit
>=20
> Pins registered with an fwnode may have .state_on_dpll_set implemented
> without advertising DPLL_PIN_CAPABILITIES_STATE_CAN_CHANGE upfront.
> Requiring the bit for fwnode pins ties firmware description to driver
> implementation details unnecessarily.
>=20
> Relax the capability check in dpll_pin_state_set() and
> dpll_pin_on_pin_state_set(): when a pin has an associated fwnode,
> bypass the capability gate and let the ops layer decide, returning -
> EOPNOTSUPP if .state_on_dpll_set is absent. Non-fwnode pins retain the
> original strict behavior.
>=20
> This is used later in the series by the SyncE_Ref output pin, which
> relies on the fwnode path for state control.
>=20
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> ---
>  drivers/dpll/dpll_netlink.c | 10 ++++++++--
>  1 file changed, 8 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/dpll/dpll_netlink.c b/drivers/dpll/dpll_netlink.c
> index f709e3dcd58e..025b9df4f934 100644
> --- a/drivers/dpll/dpll_netlink.c
> +++ b/drivers/dpll/dpll_netlink.c
> @@ -1327,8 +1327,11 @@ dpll_pin_on_pin_state_set(struct dpll_pin *pin,
> u32 parent_idx,
>  	unsigned long i;
>  	int ret;
>=20
> +	/* fwnode pins may not set the capability bit upfront; let the
> ops
> +	 * layer return -EOPNOTSUPP if the operation is unsupported.
> +	 */
>  	if (!(DPLL_PIN_CAPABILITIES_STATE_CAN_CHANGE &
> -	      pin->prop.capabilities)) {
> +	      pin->prop.capabilities) && !pin->fwnode) {
>  		NL_SET_ERR_MSG(extack, "state changing is not allowed");
>  		return -EOPNOTSUPP;
>  	}
> @@ -1363,8 +1366,11 @@ dpll_pin_state_set(struct dpll_device *dpll,
> struct dpll_pin *pin,
>  	struct dpll_pin_ref *ref;
>  	int ret;
>=20
> +	/* fwnode pins may not set the capability bit upfront; let the
> ops
> +	 * layer return -EOPNOTSUPP if the operation is unsupported.
> +	 */
>  	if (!(DPLL_PIN_CAPABILITIES_STATE_CAN_CHANGE &
> -	      pin->prop.capabilities)) {
> +	      pin->prop.capabilities) && !pin->fwnode) {
>  		NL_SET_ERR_MSG(extack, "state changing is not allowed");
>  		return -EOPNOTSUPP;
>  	}
> --
> 2.39.3

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
