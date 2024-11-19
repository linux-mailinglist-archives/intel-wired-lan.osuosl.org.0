Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CD119D2CEA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Nov 2024 18:47:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 457EF4EC25;
	Tue, 19 Nov 2024 17:47:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2SL5aTGogUFe; Tue, 19 Nov 2024 17:47:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 535AF4EC28
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1732038466;
	bh=q+YxILbNFfY6/Mf5EFK1qWVrdFxqzW5hEmCnrK7iXl0=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=3q9S9TBnRkJ22TVZid9xT2ZU/TnPeISMcFlxnu3qhQwK7AD8dfXCBsKq6ZuNn8y6w
	 CHxI3/1OyFpuu+wQ9SDJz8H07H9Im/Xjfx5wDn9JTRwGWqPu1MlWNyvBosX+BQ96r8
	 AcaTgr7RftvMwJ6JcLOCSKFFy67cGd0g3ZB37U5UA/1kK3zf7wo+e4T7UQZxGOs8U1
	 K+lN7lQ2os7stlnmGGq2NJYFvnu9Wj2XMy5fShbggoBejViCLh1dKA7WA1v463zCFN
	 lmWItgiuyaGh0vFFR6nwb9ZyOiv83fI8H68yA5ixfoSJJczPc1ox1mvvDvW/US76Pp
	 Cj6JgczqKZZjw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 535AF4EC28;
	Tue, 19 Nov 2024 17:47:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 98C7ADB2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Nov 2024 17:47:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 86D9E6FA13
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Nov 2024 17:47:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nXd3yKYMLb5c for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Nov 2024 17:47:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 69E396F751
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 69E396F751
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 69E396F751
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Nov 2024 17:47:42 +0000 (UTC)
X-CSE-ConnectionGUID: fU78VzbDSXWl/ZRSWc2MGw==
X-CSE-MsgGUID: +2FgBwYKSJyXMlP0WB3lwQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11261"; a="31994878"
X-IronPort-AV: E=Sophos;i="6.12,166,1728975600"; d="scan'208";a="31994878"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2024 09:47:41 -0800
X-CSE-ConnectionGUID: vwRit+ljQLC/1nB1oISCcQ==
X-CSE-MsgGUID: K47lagfPSuCG10UCRcMlsw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,166,1728975600"; d="scan'208";a="120504886"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Nov 2024 09:47:41 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 19 Nov 2024 09:47:40 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 19 Nov 2024 09:47:40 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.49) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 19 Nov 2024 09:47:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RxsGIsmNQCo9BMkVtg4rLDOtcI/CUImMswAqSU367Tf1GfOl/463QZmXeVaLay8dAtYxCuLpouKrjcpDTveMXbfONYQ9RGMOTM51D2baE0tBci62pYdBfP98v7pKQDKwhqVY2N0IDPjk/gbXh9oWTe7asqt9G6ThD3sva2HJoU4MJeRN26uCsrv7GY05dQOmblUfrCwDHSA2uoR+aUc8iGt0LtZvJEwFdjTz1wOMz9ls9+CPtFzlAu6PIE3MKCihAOh2JaW2rORw4xgwqqmCFuDMwCMswNZ4D7gD7PTbYEdWw1wPjThtoxm7yGDIndyN81utHWDTZeHhnEBKSfAqEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q+YxILbNFfY6/Mf5EFK1qWVrdFxqzW5hEmCnrK7iXl0=;
 b=gyUUwq8WJl11dd05aQQocX6JNnlKw87VvS/4yV2fvg4kFNPgMsT8wNdOrHS9pd7qV6khDQ2fUOmP9wMIfY9xsXW0BrN76KUJ2rDmXy/qzEw25iOLcOLMRXeSU5hhWVKwVSGlNBqU1fRxH6U/BLanjt6m4gT8WBoh0tcG59n2b03iRlk//eU1Cs58Omfb6c9egzPv3/L4944dLoLyG3ZE05ze5hdW+V+Mf6HHW9hw01Whk964kwh8aTl1G+sHdlSaOyq0B2P0Q9RgLrDwajDyb6YDzLimbZYldZR4NJbnTow2wthySModio1haQNcP4g/+Dcz7MmIY0L1iPWlo0aBMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by CH3PR11MB7771.namprd11.prod.outlook.com (2603:10b6:610:125::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.23; Tue, 19 Nov
 2024 17:47:34 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%6]) with mapi id 15.20.8158.023; Tue, 19 Nov 2024
 17:47:34 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: Yuan Can <yuancan@huawei.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "alexander.h.duyck@intel.com" <alexander.h.duyck@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] igb: Fix potential invalid
 memory access in igb_init_module()
Thread-Index: AQHbJUSYuVJ1mVBeokqAaN0OHQSMrLK/C2FA
Date: Tue, 19 Nov 2024 17:47:34 +0000
Message-ID: <CYYPR11MB84296892DE03F1E61C55252DBD202@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20241023121048.26905-1-yuancan@huawei.com>
In-Reply-To: <20241023121048.26905-1-yuancan@huawei.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|CH3PR11MB7771:EE_
x-ms-office365-filtering-correlation-id: 36c297de-72e6-40c2-17de-08dd08c23fa6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|921020|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?ePYAVNAQX+mj91ZsZZEjox9ZBbLXwazqmJNLy6q+ADqX4J+pRN9+CQbg8X9q?=
 =?us-ascii?Q?68+wgVJM0mGdr7QfC/Q5lKbb17z102I6S2sZti8b1hUuJuOyXRRajYggp996?=
 =?us-ascii?Q?yWNPVlkK5Qu/fMYolHEplo5Ixbkb7/oBBzh49xd5HtXCtGgexDR93wpOMlLi?=
 =?us-ascii?Q?5YvyF0BXLS7H2yp/brGmS6t89iHfIKrbuvjsl8ev3zCY+baLr0hCs7BJl1l7?=
 =?us-ascii?Q?y7bh0GCYp3pDoObW38zBCCUY2cnd+8xZNaNa8jdEAOJScJwLSfEoi9kR7LuA?=
 =?us-ascii?Q?mkrCwNl5V/T7dqn6Ee9aFDV7ZgLG2h33J7JNuiyS/Bx1NYhoO9l3SDJvc5jH?=
 =?us-ascii?Q?AEnad5IaITcAL22Y0/YTIEjTew9ddkfzP8ZgNSDFCoXTTuErLyH7aq30/Olq?=
 =?us-ascii?Q?02w7NY+BfzjnvpRs269i9AWOk5DLMFCKHryCnGhlCjZp4IYykUCpmSYsjTJL?=
 =?us-ascii?Q?zr98BYCkPnKyWmQpGc9ZlHwcrAV7n37FRS90VUXTB9QIjtL74S3dxN0oJURy?=
 =?us-ascii?Q?3Wqc0Kn2tfEHrCOw0j3jyp/ZC84cxUWfG1sYHWBiaxQvPEY4Kxaap2vUBQZT?=
 =?us-ascii?Q?NK70y2wJ+xmubXdrqYsY2wJd31KDyNc+wUky92Czf6MoKeu57uK/gPeUodIc?=
 =?us-ascii?Q?nkzrViLxQkigYhTv1Ai8MCJ6Y12lUbd6HcMjzucJ+7bu26RloYEy1ownvTDm?=
 =?us-ascii?Q?aSHdAS+P5f4u/ieQ1MqZjb1EoHZV+Nosne7woQ/CNJP6mp4P2zkb2yHcCaY4?=
 =?us-ascii?Q?c3cA+WsgVf0UlyeScORzQD/8aYExQ+IU/d4HFNV2ldRb6R2rYQn/Hir80wVM?=
 =?us-ascii?Q?wah8LfXRhvlk0kpXp2y80eZJB07VK/p066BGPaubgD4dYZ2Qb9wb2U28hKa0?=
 =?us-ascii?Q?XGQ576OK1KrGoBRDTKYeXAiSjR9cUwCQQ1SeZhS5ZKWpUM3x7qUNnG2D5YLK?=
 =?us-ascii?Q?n+GqwaLEiw19P0vOJpQrwOYcu5sVMiqwYMaHDVDcATfUIgZD670gkHcmzo9x?=
 =?us-ascii?Q?a17Achj8wPW7rbdiSad9N8NSqpgPe929pq4xIV+P5wj4t6F+ywZnxfIVbLOU?=
 =?us-ascii?Q?x7oCuO+iXkG8H6NoUM9x6wXMyWfCTG9LJ6EI6ymt5mICWaOFbbF29ZNb0AgE?=
 =?us-ascii?Q?2dOhjGO6SwR2UgkLf3m/5huFB4kg+/TOF/dUF4+KPE3STeE4oH4zO5Hzlh9a?=
 =?us-ascii?Q?lPmMgVR2vgjmU8KgtQUMDP5gxylIbWZo4lwCVq0FbRpAQldwRWw/6JR5KZ2J?=
 =?us-ascii?Q?AhS4MJd+Hg2kspA6RoCeNQcG6Y7t6I7zXShGa/xI00VE3TQ+mgAr+/BXeqLH?=
 =?us-ascii?Q?KXlUDPAR8mJvhrLcfZOsozfNYjveS8uIRi3TQBm94tYRR+jyycAFdxCD3WJb?=
 =?us-ascii?Q?FP35yNmPDGi7UQvGQ0XGUQ48fAOv?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(921020)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ZSNqTkaFAKNZZbuDA8quf4dIG5DTN5SjrgW1P8rBlrrtWpZ2RjXLxZmY/oAu?=
 =?us-ascii?Q?0h45GfhAclvsa20Xx1YMGBk5k4UU12nt0/7pqnhtAJBQ6nfDKIWeALB9Vo+o?=
 =?us-ascii?Q?seArL1P1a3d9D2NAX8QpnnlwS+nwOOD9qUH9Rw33qoBSbsg+VsdRXgyj9PPE?=
 =?us-ascii?Q?djA8toHVOyxEpR+2YXh871wboPxemTPgbt8tF6sRHCEJUEEIAcwlOvLAmy0p?=
 =?us-ascii?Q?JieQKwbCGwgVqJJcG/cfo7K5PaPPKDFeJ5DSr0TOB3Bxj4lTl/J6h1Rzeo+r?=
 =?us-ascii?Q?pACLKaZWC41pzvaA76UpfoRXGdOvQg8OO9NYGDU4B7u6hfolcUqgHwpnXTOE?=
 =?us-ascii?Q?CsRxhk2/XdTvSJJ0/vEASt6GclCvicCmcA9OlhS8vPLjvxaYrc8JQ9tFBOfd?=
 =?us-ascii?Q?ZmrwkJOq9yp5mI8+RdvOPyVoIqEOGry90m81esW5F60q88tM1iL3lqsKZvGV?=
 =?us-ascii?Q?ZelhupoanyEtpAmaVGgZhtrIFuv7bVshh3cQscgnqnVexslnDL/1NEYXpQp1?=
 =?us-ascii?Q?VH1+0ROA57+Mh4YFTsQ5eNrmfUHCOodt6GxwXCZSWGn68sL+EsG8zjuu0A6W?=
 =?us-ascii?Q?HMxzScLTrwTpqrYauac/b1z928YcJUvahmumAh4eUuhKIszyLWAPAFzL1QBJ?=
 =?us-ascii?Q?E3Qj9CkhhKJ5MR1VChrMw4LckXTRL0g8q5+SkaeXA6SWlN9eU77DzYrS4s3K?=
 =?us-ascii?Q?JJnfQXbSBvZEygcj+N1bUdbrLiKm5hr22YkebaNjWJMPSf0nFzom1ZM4cniS?=
 =?us-ascii?Q?LhVklUqePyvLJ1k0tydyHT5vr9gThOfqUSg1eL3AcJKXLj+v9xQgmXXl5eGE?=
 =?us-ascii?Q?i6eJzVZ0+xjAvp56nDlXzlvo4CGBIiC45Dqd221aONs1z8lBKv86QHkZeywy?=
 =?us-ascii?Q?ajjHNXIiKlViMNuYEcUdsD9hSkfoAgw76fOhAgVk4b3esz5cFFonqgJ0vuCp?=
 =?us-ascii?Q?+qV6DQ6zvsuQeJdqSbdsGj1Mqlgyneb2sQvwMm50Jweog0ClJJkN2UKObFNn?=
 =?us-ascii?Q?n1k7aF6ZaRkpLWjZyPJjKsnFpX0KplIBHPXj9R8WdBLNlIh8y52Fh64e83AZ?=
 =?us-ascii?Q?VsBOdKmL0d8YltL6cIAOaaL0myTk1S0IcqE/3gTS+v5tBihK2kQb6J19yJP0?=
 =?us-ascii?Q?/wVl0fIctdBAbnWRXMVmFjjp2Y/INXFFDAHZnDVHvIcmRfVQUgzwsKRil9Zh?=
 =?us-ascii?Q?dIN/d26M8XQ60X7JJHPJYk8NrE0RHnocnZ1ZtLJG4V9NT2REKEBi5OSUApE+?=
 =?us-ascii?Q?QNiESYDjESjCK4jphFnsmHogi5+pGW3WGa0Ae9xzxmzfz8gDtdpNDmO0ujNl?=
 =?us-ascii?Q?V2hvUgmcs0lRBHwqcDTGF4z/d08+TcYxFKGWnbtvLo5V58L2wjGiXj/AZnct?=
 =?us-ascii?Q?zderi3BktVHekPW+p1CkGzp0IEUmRHuG1gAVh4CxM6KkCV6WKGSNM8Dm1U4X?=
 =?us-ascii?Q?3D3AfCZ5s3ERyk5fK3L2DslmJvx4p3v30uTL3xUFmD5l/hF2wEocPfW4kqcY?=
 =?us-ascii?Q?Zp06JHBrEoreuKT7ZVHfN4oZ6gMufhGBN6vuYW5eq/xwB3WuOeKULGks/xa5?=
 =?us-ascii?Q?QsSfA4XavhuOx6w7HXWHYRFufoUbokG22oFZ2AX91BULDvSGZR48rMYKFwkL?=
 =?us-ascii?Q?yQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 36c297de-72e6-40c2-17de-08dd08c23fa6
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Nov 2024 17:47:34.0827 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1ulBOqHAvblSqrGEVwfNsX7Cv1myZSNI+/th+0wxD2D4BVGh6sKzUjv07J7LSXcZwVmUHs6oz034M2A+YLZ/QjuyweRt4VYVyb67kIDDn261dZpYpYidluT7dhKYIvr3
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7771
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732038463; x=1763574463;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=n0ZoAc1B3LrJE04HYaypcD4IFNJHyX5PvPbqPsEZurY=;
 b=Aapgydw6ilhKuIiIo7HzdHzL7fB4/rybp49aoycRWoDYMb6yicRBm9NU
 eVGMA9YbCnKYb//nwJXg0+KHY66SlP5aq0TQceYSkfabJAgojw0OhGkYY
 fMHsNbNoVoC+rvbjhoTLDyWVLyB0KJYMyef+gfD9I0RWZ2wSI6m5Qv0Qp
 FlmGCkICrXF1PyEBCVRH7Uc89/M1vy5TdkoiT8mTVljX7nHYo/NEsh7eD
 hwfzF5x6oHAMb8nTwPY/HnH36Fh8mYFk9ePzsXSBI7oCUqI5/gKEmdWpD
 7dxO0aTL+5UbNnwpHAmnhAvDCUCTi1kBEi/47Pp273m2pWbXAUO8qu0BG
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Aapgydw6
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] igb: Fix potential invalid
 memory access in igb_init_module()
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Y=
uan Can
> Sent: 23 October 2024 17:41
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw <=
przemyslaw.kitszel@intel.com>; andrew+netdev@lunn.ch; davem@davemloft.net; =
edumazet@google.com; kuba@kernel.org; pabeni@redhat.com; alexander.h.duyck@=
intel.com; intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org
> Cc: yuancan@huawei.com
> Subject: [Intel-wired-lan] [PATCH net v2] igb: Fix potential invalid memo=
ry access in igb_init_module()
>
> The pci_register_driver() can fail and when this happened, the dca_notifi=
er needs to be unregistered, otherwise the dca_notifier can be called when =
igb fails to install, resulting to invalid memory access.
>
> Fixes: bbd98fe48a43 ("igb: Fix DCA errors and do not use context index fo=
r 82576")
> Signed-off-by: Yuan Can <yuancan@huawei.com>
> ---
> Changes since v1:
> - Change fix tag to bbd98fe48a43.
> - Change target branch to net.
> ---
>  drivers/net/ethernet/intel/igb/igb_main.c | 4 ++++
>  1 file changed, 4 insertions(+)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

