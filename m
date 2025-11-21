Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F700C78017
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Nov 2025 09:54:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DB34F83CF4;
	Fri, 21 Nov 2025 08:54:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id X0oXUscDwZNy; Fri, 21 Nov 2025 08:54:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 32D1883BE8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763715280;
	bh=iOBu0Pg1mhTZN77+krbDXN4OBgw1IT1G2ceKIoKt9vk=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ThoDnKwxaTUqru1plIcrzMQzj5SJ8YlteCokNUE5czYGnnIE6WiEWrc+qHsOhfomW
	 d4AQ6m0sDOQRzUeX1z6kGyGrjsYi33Fn3bGy7ZCmW55aTzjzfNt9VsWXcKAFyOh6lG
	 I0WKtbxn6pyhOK2JdmyghFGfPArQxYNFZvw19ia3dIQv1pAH1XBtSho7FcjGRUq/z0
	 uHhxjeXjOHQWPk/yMlmpeQwcdZc6c87IBXpeYQlAxeN5Gw+1DlcqUGpRSkEClg1Rhg
	 WKyhqvDMHHp+W8Jlewhdx31Ba6RyaJe+QsdbFCWYG1Bq4HZk9h4RA4HbCS3Dk+YVS0
	 u6U4Giuq0apCg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 32D1883BE8;
	Fri, 21 Nov 2025 08:54:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id D6255117
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Nov 2025 08:54:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B37C940569
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Nov 2025 08:54:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BysqDSLScPyp for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Nov 2025 08:54:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D506A400C7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D506A400C7
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D506A400C7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Nov 2025 08:54:36 +0000 (UTC)
X-CSE-ConnectionGUID: 19M6q0n0QmWzy5Rk5jdbYA==
X-CSE-MsgGUID: x7eAxzJnQjOLBAsHd3OVWA==
X-IronPort-AV: E=McAfee;i="6800,10657,11619"; a="91285606"
X-IronPort-AV: E=Sophos;i="6.20,215,1758610800"; d="scan'208";a="91285606"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2025 00:54:36 -0800
X-CSE-ConnectionGUID: +OQkV4pGR7uyg318aprBAA==
X-CSE-MsgGUID: e6oY+WVlTmuYWMXQBqIzqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,215,1758610800"; d="scan'208";a="195805959"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2025 00:54:36 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 21 Nov 2025 00:54:34 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 21 Nov 2025 00:54:34 -0800
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.57)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 21 Nov 2025 00:54:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ydWivyGuvKu42bMhf3Dn6rXEjUKEeaOPoGed8XCzjSHx5X+d5QV9HKophL817FhCGlEHHEV0mASh86Bm9n+5l+o79OQDRiUCG608SvKHzWkOsLqyT4JJqc860TOAiJb/qTKOVg25tw9CU+E4y+ZxTROVUoduE8WoVmhtxXYgy0UNRcTmO6zZKT7r4rami5yH7eZqhCQ6Plqm1PAql40qC9xhnXy+QzippWTjBzZmGiVly8338saL5dStPLdwXHBt4OBf/Heo64VYdNDn1b/fRe5FGtpdArf/FOBoxzTjCTPlJHmK+apBh6WrGW5Hz37igvE0YjtG6IHrZ3KRHwHkHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iOBu0Pg1mhTZN77+krbDXN4OBgw1IT1G2ceKIoKt9vk=;
 b=zQE9dVATbgZnB7j+sZbpBND+gx4K8KZ0u0bZRTikleNt2r8H2uNq8TLAWXPCaP0Qdo9+IkHsUKsgRUvcr0dtnTzDeA/6i5cgCB8ASYnZ93t4838/9P2DulTFIsh2AaFarQjkSIwSOidHdcM/nGzdCFLIimlOVkKYK+XjqRl0C2gdhMbL7lZ9S5DprZM0/c2RaEAzG9xJSrebzO6c3+F9UZ31QQHGspH/imdqcCHjE0wDyykK/DQcrENZNiehlmnPaw01UHEzq4/jIuinI7qvmeqABJmqWFgNggm7Nvsjc0VWA/QXOg1q+KZj5tt3BV362tvbTmUOFwI6LiWxO3xRMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SN7PR11MB7974.namprd11.prod.outlook.com (2603:10b6:806:2e7::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.10; Fri, 21 Nov
 2025 08:54:32 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9343.009; Fri, 21 Nov 2025
 08:54:32 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Slepecki, Jakub" <jakub.slepecki@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "michal.swiatkowski@linux.intel.com"
 <michal.swiatkowski@linux.intel.com>, "Slepecki, Jakub"
 <jakub.slepecki@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 5/8] ice: update mac, vlan
 rules when toggling between VEB and VEPA
Thread-Index: AQHcWj7dphYaYDcl2UGv6A55cG1gbLT80U2A
Date: Fri, 21 Nov 2025 08:54:32 +0000
Message-ID: <IA3PR11MB89862D16B3E71FCB8DF2113EE5D5A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251120162813.37942-1-jakub.slepecki@intel.com>
 <20251120162813.37942-6-jakub.slepecki@intel.com>
In-Reply-To: <20251120162813.37942-6-jakub.slepecki@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SN7PR11MB7974:EE_
x-ms-office365-filtering-correlation-id: 79a63dd9-d94c-48cc-be3e-08de28db96c0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?x2GLQHdMeWU8rgFSGE60zz3nstfgM8qzDBWENN6qoR1EYb4PwDGWB4P+l9fy?=
 =?us-ascii?Q?8S/fZ8KuY7nd2xDnJqGkWpgDmbHhSqElY4z24iXq8EgidsU6sOD9J/M2Gdyg?=
 =?us-ascii?Q?MyDmD0embY6LFmA13+TWK674Chizw87TBoJE5RHsZbCLKLT7pFoOSwbHvKuj?=
 =?us-ascii?Q?ctpUGFukZUKi/SZJoY5M51i6N2IMeoIED0ul5kwS8J50gYupySI7Miht0S5h?=
 =?us-ascii?Q?0E0IwsAmVZPXzPEI0Lj46Huo7P83iPLu0TmoQ1ns9EnCCD98fUrLbLoQv+Pd?=
 =?us-ascii?Q?2rs2WQMJAz+IYYZLyTqNyHEA7ZCGgxXiHlHFuFoSnkEBakvP18VozlitzAC1?=
 =?us-ascii?Q?sA3XptZxWS+njwGYdo75rKdQ1eMVpbyRNWEFvXAW53Xg5bWj1XIWekHJZmWO?=
 =?us-ascii?Q?XMdl/5D/etj2KkFigrKl24DUklfLFgirRbjzPtGoHztCUj0baai/4+KMrpsB?=
 =?us-ascii?Q?nv+4+daJ/sdWouPHWLDSd1wwGcCp7b+09nnV8/Q9OxfMLdeox3RYvsN3iC4z?=
 =?us-ascii?Q?DWDQ1kcHTe3Fnn+Qy0S5libZ2OtnTl/BgMSlwLK+U7iTwGmGPZoUWZnl2Y0W?=
 =?us-ascii?Q?w3Vi0o/hq0HZCCCjVmy9nRKY2rOIbdgJ+K0xhoEq5xbwRk3Pt77LWXqvUvY5?=
 =?us-ascii?Q?p4cVyW5iBmHJr40rwCo6Oji/aUZvrnH85TOhoUiFMRkLwxk8Hlw0KGt9RqHF?=
 =?us-ascii?Q?PBGGSkJTXxjalahS0kDeNxvZ8UnTG6za5Fd2GI/c8FiBMnjGCt6M6SgFr6EG?=
 =?us-ascii?Q?/SjWAiHjWbXJr6LbLVYJf95iEkXSKkMoNimPDfO61/v6Q43xwxqh0cpzCpNF?=
 =?us-ascii?Q?brM1j2Fpu2tEXDFE2LvZT/dTjD3dPmV+kbqlv3cNx6SXG4ZvrIqnK+yDPSOe?=
 =?us-ascii?Q?XxfnGOs8BzXPMFzIOCs7FkJliXAbf7pybBz+R7c9I1R4uU6X8IAb7hdUmsL/?=
 =?us-ascii?Q?U0vw6vEvOgJua4LP2PsqQAN67XLJdr+sgryNKFXDY8rRb7elziTksC2Xie5D?=
 =?us-ascii?Q?b/Xqbsi+kscGtjdTEqX/3F/yFgUJtFo3yRlFZISiCnR4fEmSo58KHnvcKT/G?=
 =?us-ascii?Q?5FZZurORtTLYDbZl1+rAFbZUOyMqDSWyqiFl/ZQcTasQWsoUrKBVl9TigSKv?=
 =?us-ascii?Q?MOgmpXaL2LnHA/EZYPX/ii2vRyH13CGqvwQU108+QqSF3QQrcs+Jw4bu1jh9?=
 =?us-ascii?Q?YVp4RFbjCk3b5lShJ60eSh+HHdPWkuRvNbdsJBnI+GKGUMlto/xJ35QpLC2t?=
 =?us-ascii?Q?vQW3WCaTFb24iXvUDofaX3tQkGFH/8lbm2+U4h836n3au6d9HYV7V2vvWZMn?=
 =?us-ascii?Q?4eZ0sQ4rX/7rAAk78GwwnCLb+Fs8yeLuM0u/bv+D1afFmc1G/m1UcwIl4GxL?=
 =?us-ascii?Q?ZVLDXfTJQsKdmuJ3eZPEG0r+R6vgBszCCw4JQEiHZcfr7QpcW4/WC5gUzAVH?=
 =?us-ascii?Q?ZpGfuG7t15dmPWgp+jBQLP5coQbnv+WiSFoWtoSgZt44msFrDmqKoUbbdgij?=
 =?us-ascii?Q?AGPG0xGkbqQmJfHnkXLyKmdWCkOz7vrrwYyj?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?gKJmQ22k5NQ80CbfAkdo+T/uQBFl5jD5uwfjVCtYPlglP6niVSuR5wjjLIkd?=
 =?us-ascii?Q?6n1mb2fOi3j333Japzn1THbDLmF1l46MOT6oQporDo7R1/sr0CmgrUax51LI?=
 =?us-ascii?Q?MSR7Su9b2h4V0a1iVshVD8fz1iL3LwSztaVoO/uhdjMAxl93fo2zXNhZ9B1a?=
 =?us-ascii?Q?EWe9LM9gVZIAhMOqR/Ii+Jb+H/vvVzrUkg1NhAqtnYDOHkIwBH+MF61fTWOh?=
 =?us-ascii?Q?H4y2RZhHGaPjVZiN02cd1zdUivGJfCQpl1S1UU4nEek2x8vAuxZ64Ex/Lxzi?=
 =?us-ascii?Q?6VvMoJlU+u6p/yAPC895cNCK02VRsOfef9hHH1N0I4RnksBY4OSkgnE5UpNb?=
 =?us-ascii?Q?Nn9LmcQ6YUMY4P4vtNKZOrf5S6AP1u6tZ9pk4/kA9fZrNvLKcgAhzgPAkwSn?=
 =?us-ascii?Q?HDeqC2+8LpP7GzhIi9VoeQ+qDyVf5Pbc9qr1E8OUN2vtknH0ZaZdxHfRz5wm?=
 =?us-ascii?Q?TPhhjjfWvV1dijYNndy3K21ndXPTakptFMS/gpT4o0TbKII2sdJqsymmU1Tj?=
 =?us-ascii?Q?dOw8AsZwa4kEZz/k9YzejS9LAsid8D8FFr4+sU1t1ttCAB+kVXbk5+Y8xnh8?=
 =?us-ascii?Q?IvY6JZV///7nD4YUwk1IrXXsI0ESNzIVzMpzqsDOZiE8wHPuW70oXoLE1Nvs?=
 =?us-ascii?Q?guZnTh5UBsIHklLV/xSoaGf+Y+LNnQfaLf31rKlAKwCNO7NmcL+T3EwgvC9Y?=
 =?us-ascii?Q?f4zS7YMGkf4HSCDenjghskl+UtUcDKxAcxnsHhUYrH1Dfy7jomeAaJ5YwF/J?=
 =?us-ascii?Q?y/MfJmeYXbyXdY0XRhF8+fOVN0xuxYyx0MLM/9aFP5HfwSIbmns0NW+Tg9U5?=
 =?us-ascii?Q?WpuKHmqpiaO4nTV6efPpH8MnHAL6FvnMT7ssNXY1bR0eWPhRNrghK+BtCfNm?=
 =?us-ascii?Q?lfSmsM/84gmrutEAOXvr+vV0Y2Fj4k9lG9vbYCd9xH5nnzrE+5sRVgurKmVH?=
 =?us-ascii?Q?yFivxXiR93nYDk4HypuP2tr2Yvu6x2btp7osdKaz/sOquAXfJ5TfLJ9BRrYC?=
 =?us-ascii?Q?3dk3j3nJjiEOs5kkRkhyfx3M0RTXiCHmdgbYtLs9ogC6BYJZN5uDGQZEIfxj?=
 =?us-ascii?Q?FFjOkwB6Vh7h+xm593580/C2yjNdDM2PZhJxTraa61EpGOwJtHHlReY6c7Nf?=
 =?us-ascii?Q?3VEMLnn7HUSyNWMxzKfsqO7Ng4qej5p+DwGgkV/YsV09u2KDGUTSOMdnV4YL?=
 =?us-ascii?Q?SUHHlzeahoZXKDr6t3BikqB4ExUkciV2mgHNd76PAyaUG7VnH89kwOcb/okJ?=
 =?us-ascii?Q?lqBCI3MK3GRedgjMj7zfB2spMY947hFF3F6xRlKBTYql2t3TrXG19jcVwk8d?=
 =?us-ascii?Q?fMRl55K9jq/FDNcN7E6XqXxhU41OTZEWv+ZaezlljxpV3c1PkRVG+eWGCH/a?=
 =?us-ascii?Q?5EYwHxH5KL3LAJPJe0s3d5yRWD1Ta1jM3h+cY1YlMx+S7oIE7Qlwtm/8I/Zv?=
 =?us-ascii?Q?YxHaZmTgLZPHfiRcXBfcQPtfSr4o4zFbVrWSIf/sqtXlky6HJL5ljZpqzk2x?=
 =?us-ascii?Q?SmtY+XcbJwCa4RoVEO8MyTLyxg8QPBeLKP7UmZFhlEZ1L7XW06o9yMBefe2U?=
 =?us-ascii?Q?JfUdptw2n6NdJJ3fdSvuFPAoMXK5lZF7AnvDp/4f8xiW9P1x06QBI22oJY6j?=
 =?us-ascii?Q?hg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 79a63dd9-d94c-48cc-be3e-08de28db96c0
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Nov 2025 08:54:32.5102 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: R/hp/X8YhkbHNlqOCKTtEpsitmzQZgPXGolVYjZHREXWSr6SKajfI0fn7l8Ywvx4wpNQWwm8gLfT6Nfta0GHQNeHfHenlTBUPxxBA/xMIiU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7974
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763715277; x=1795251277;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=o25XVQbq71cRnws5d5OVPeEzPhQOf61cJSE+NP6eydo=;
 b=TF8K05PpDLCXrA9ETeYJvWKy7XOmd8L6os8m6wBYAm2xiZVwMtEzDx46
 spk7nzYEsVGRGbNyoocvN7P13CmGN7iUd/jwOwBzWhn3YWgHeHZH9Zn/z
 XGppn6pF9abdco8O7EQf5y9eeFe6WQcaRi2bL0qDI2QNdJVME5SvWxcfS
 DbL4vcjPWh31LPo5PB79xSY/9kYERp5G7DO9SNOJdZkvcaAzrIaXhhD5N
 DeFOeczMZWc+uby4+NcJOOZf4LQ3Tlk28iuuwhVTzhslKF98NssQLe4mq
 pNKCLlRZUt7/3J/jLAMc/ZeoOxZMr858C3qf0xoLmo+wbfjZtl4II/MXh
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=TF8K05Pp
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 5/8] ice: update mac,
 vlan rules when toggling between VEB and VEPA
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
> Of Jakub Slepecki
> Sent: Thursday, November 20, 2025 5:28 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: linux-kernel@vger.kernel.org; netdev@vger.kernel.org; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; michal.swiatkowski@linux.intel.com;
> Slepecki, Jakub <jakub.slepecki@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next 5/8] ice: update mac, vlan
> rules when toggling between VEB and VEPA
>=20
> When changing into VEPA mode MAC rules are modified to forward all
> traffic to the wire instead of allowing some packets to go into the
> loopback.
> MAC,VLAN rules may and will also be used to forward loopback traffic
> in VEB, so when we switch to VEPA, we want them to behave similarly to
> MAC-only rules.
Is it possible to verify from shell? Could be nice to add exact steps to re=
produce/verify.=20


>=20
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Signed-off-by: Jakub Slepecki <jakub.slepecki@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c   | 38 ++++++++++++++++----
> -
>  drivers/net/ethernet/intel/ice/ice_switch.c |  8 +++--
> drivers/net/ethernet/intel/ice/ice_switch.h |  3 +-
>  3 files changed, 37 insertions(+), 12 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c
> b/drivers/net/ethernet/intel/ice/ice_main.c
> index 0b6175ade40d..661af039bf4f 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -8115,8 +8115,8 @@ ice_bridge_setlink(struct net_device *dev,
> struct nlmsghdr *nlh,
>  	struct ice_pf *pf =3D ice_netdev_to_pf(dev);
>  	struct nlattr *attr, *br_spec;
>  	struct ice_hw *hw =3D &pf->hw;
> +	int rem, v, rb_err, err =3D 0;
>  	struct ice_sw *pf_sw;
> -	int rem, v, err =3D 0;
>=20
>  	pf_sw =3D pf->first_sw;
>  	/* find the attribute in the netlink message */ @@ -8126,6
> +8126,7 @@ ice_bridge_setlink(struct net_device *dev, struct nlmsghdr
> *nlh,
>=20
>  	nla_for_each_nested_type(attr, IFLA_BRIDGE_MODE, br_spec, rem)
> {
>  		__u16 mode =3D nla_get_u16(attr);
> +		u8 old_evb_veb =3D hw->evb_veb;
>=20
>  		if (mode !=3D BRIDGE_MODE_VEPA && mode !=3D BRIDGE_MODE_VEB)
>  			return -EINVAL;
> @@ -8147,17 +8148,38 @@ ice_bridge_setlink(struct net_device *dev,
> struct nlmsghdr *nlh,
>  		/* Update the unicast switch filter rules for the
> corresponding
>  		 * switch of the netdev
>  		 */
> -		err =3D ice_update_sw_rule_bridge_mode(hw);
> +		err =3D ice_update_sw_rule_bridge_mode(hw,
> ICE_SW_LKUP_MAC);
>  		if (err) {
> -			netdev_err(dev, "switch rule update failed, mode
> =3D %d err %d aq_err %s\n",
> -				   mode, err,
> +			/* evb_veb is expected to be already reverted in
> error
> +			 * path because of the potential rollback.
> +			 */
> +			hw->evb_veb =3D old_evb_veb;
> +			goto err_without_rollback;
> +		}
> +		err =3D ice_update_sw_rule_bridge_mode(hw,
> ICE_SW_LKUP_MAC_VLAN);
> +		if (err) {
> +			/* ice_update_sw_rule_bridge_mode looks this up,
> so we
> +			 * must revert it before attempting a rollback.
> +			 */
> +			hw->evb_veb =3D old_evb_veb;
> +			goto err_rollback_mac;
> +		}
> +		pf_sw->bridge_mode =3D mode;
> +		continue;
> +
> +err_rollback_mac:
> +		rb_err =3D ice_update_sw_rule_bridge_mode(hw,
> ICE_SW_LKUP_MAC);
> +		if (rb_err) {
> +			netdev_err(dev, "switch rule update failed, mode
> =3D %d err %d; rollback failed, err %d aq_err %s\n",
> +				   mode, err, rb_err,
>  				   libie_aq_str(hw-
> >adminq.sq_last_status));
> -			/* revert hw->evb_veb */
> -			hw->evb_veb =3D (pf_sw->bridge_mode =3D=3D
> BRIDGE_MODE_VEB);
> -			return err;
> +			return rb_err;
On rollback failure you now return `rb_err` instead of the original `err`.
This is a visible semantic change.
Please justify it in the commit message (and confirm callers expect rollbac=
k status rather than the original failure).

>  		}
>=20
> -		pf_sw->bridge_mode =3D mode;
> +err_without_rollback:
> +		netdev_err(dev, "switch rule update failed, mode =3D %d
> err %d aq_err %s\n",
> +			   mode, err, libie_aq_str(hw-
> >adminq.sq_last_status));
> +		return err;
>  	}
>=20
>  	return 0;
> diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c
> b/drivers/net/ethernet/intel/ice/ice_switch.c
> index 7b63588948fd..b1445dfb1b64 100644
> --- a/drivers/net/ethernet/intel/ice/ice_switch.c
> +++ b/drivers/net/ethernet/intel/ice/ice_switch.c
> @@ -3065,10 +3065,12 @@ ice_update_pkt_fwd_rule(struct ice_hw *hw,
> struct ice_fltr_info *f_info)
>  /**
>   * ice_update_sw_rule_bridge_mode
>   * @hw: pointer to the HW struct
> + * @lkup: recipe/lookup type to update
>   *
>   * Updates unicast switch filter rules based on VEB/VEPA mode
>   */
> -int ice_update_sw_rule_bridge_mode(struct ice_hw *hw)
> +int ice_update_sw_rule_bridge_mode(struct ice_hw *hw,
> +				   enum ice_sw_lkup_type lkup)
>  {
>  	struct ice_switch_info *sw =3D hw->switch_info;
>  	struct ice_fltr_mgmt_list_entry *fm_entry; @@ -3076,8 +3078,8
> @@ int ice_update_sw_rule_bridge_mode(struct ice_hw *hw)
>  	struct mutex *rule_lock; /* Lock to protect filter rule list */
>  	int status =3D 0;
>=20
> -	rule_lock =3D &sw->recp_list[ICE_SW_LKUP_MAC].filt_rule_lock;
> -	rule_head =3D &sw->recp_list[ICE_SW_LKUP_MAC].filt_rules;
> +	rule_lock =3D &sw->recp_list[lkup].filt_rule_lock;
> +	rule_head =3D &sw->recp_list[lkup].filt_rules;
>=20
>  	mutex_lock(rule_lock);
>  	list_for_each_entry(fm_entry, rule_head, list_entry) { diff --
> git a/drivers/net/ethernet/intel/ice/ice_switch.h
> b/drivers/net/ethernet/intel/ice/ice_switch.h
> index a7dc4bfec3a0..60527475959b 100644
> --- a/drivers/net/ethernet/intel/ice/ice_switch.h
> +++ b/drivers/net/ethernet/intel/ice/ice_switch.h
> @@ -360,7 +360,8 @@ int
>  ice_add_adv_rule(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
>  		 u16 lkups_cnt, struct ice_adv_rule_info *rinfo,
>  		 struct ice_rule_query_data *added_entry); -int
> ice_update_sw_rule_bridge_mode(struct ice_hw *hw);
> +int ice_update_sw_rule_bridge_mode(struct ice_hw *hw,
> +				   enum ice_sw_lkup_type lkup);
>  int ice_add_vlan(struct ice_hw *hw, struct list_head *m_list);  int
> ice_remove_vlan(struct ice_hw *hw, struct list_head *v_list);  int
> ice_add_mac(struct ice_hw *hw, struct list_head *m_lst);
> --
> 2.43.0

