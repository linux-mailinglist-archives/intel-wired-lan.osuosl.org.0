Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0IDPKkJuhGmk2wMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 05 Feb 2026 11:17:38 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D6D4F140B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 05 Feb 2026 11:17:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A570560909;
	Thu,  5 Feb 2026 10:17:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dbJuv81v45uQ; Thu,  5 Feb 2026 10:17:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B2D7960AB6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770286655;
	bh=1AAMZJuYW/HAMItEjy5daa4LNlWLQ5qTp/oZw2NdzG4=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=66pW6ClsDhgXjfzbamHa9KJWj7vj028cEvugrLL3eZ8AsCr+1Bj8nFfwynPOLQrfD
	 reoG/uxwn1wsXCyAkLyk1p0fIEVdYpU1l1Me1RN/YH+IifREo4zkqmOGQo5aPzuVvi
	 d4DkxOr38oJwUtfDoJ/HiZN8Bfnp/ABXD/y/V2qBni0CYpQ/52Rx31Yd/oMNJ0vZHU
	 f8xVBsS45R8WsGnTs03lUBZGRefAqv2XO2ujcUtZmU0M1O+4h2kUyTftIkYJrSYcqF
	 +gyunrXxWuiJuRyOAT2CBUmbPLRojZbjzYpakwrbrOaW4tT41Jb6y2EEMjqDL08i1h
	 CEhN6BgrnhC9A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B2D7960AB6;
	Thu,  5 Feb 2026 10:17:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 6014517A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Feb 2026 10:17:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4BFE8608D9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Feb 2026 10:17:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id brpMuk7nKLwU for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Feb 2026 10:17:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 15FF56085F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 15FF56085F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 15FF56085F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Feb 2026 10:17:28 +0000 (UTC)
X-CSE-ConnectionGUID: UvmmubLmQZ2jVPx0z87y+w==
X-CSE-MsgGUID: SnRqu08BSDqqqMIN0/psTQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11691"; a="94132326"
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="94132326"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 02:17:28 -0800
X-CSE-ConnectionGUID: SO5PuvqET1ml0Tl2gXyP3A==
X-CSE-MsgGUID: R0Mpuh/0QgCHDvIZtr9Ysg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="210551803"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 02:17:28 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 5 Feb 2026 02:17:27 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 5 Feb 2026 02:17:27 -0800
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.47)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 5 Feb 2026 02:17:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ttB3efDSuETOLlERg6sHz+kMWs3CVL68aGXNzvMECdPpamqhN7/fdLg0wijzhcn3sxOslXLX858/r1oOHl5Qod9FwjjNgujKgnJ0XB0ErtTUTy3vequE4obtDPo2FMhbL9D6rbQTKBZdv/zhsFuxH6gy6vzRuCHBV7o57HYNbz36djprdoOUw2bGTfP1huEEdcusQrQ9rySYC/R5yRsH1TYJceMaNKZSgTXU/WLCU8zLKGE/2w7xzPW5q/inp/7uN/h9Qt3FQ/XWAR9hU1/h2afIUMQxw4M2AO4qzZz/WieGq2Q3N4kFCVnQrNGl4+3t8EpXaCh0QS7AO7bKAsnhmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1AAMZJuYW/HAMItEjy5daa4LNlWLQ5qTp/oZw2NdzG4=;
 b=UTPt3DNJpKsJw7jyJpBj93Hw6oFYv/HSOQ5b8JLgkVrD7R2xHjOOJOre7mON3P8Opo5T/JoIq5wjSgosQqEM4JB9yYlB/u4lZTb4GwSOCygWjONegSPR7gbeX70EmBZGw+kZYQOCPZV27yEvbHDxU2lR68c07UXhYDB3wEEY99ZXzfRvgy9+bfHvr73wwi4HRVRDuz9BHNtU8tkky6IR7TAHsM28wpL1lAFcLq6Ed8cMMGTymBpvw7wzDOHJwQwgFTXjtWt9Zl8kY7l+Wlz4M3i/i1tpC2WY+tX8y4K9gSMQ9xXodL0rCa2C/3eNf7w/1nz0stxhDQFDr20YcShomA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SA1PR11MB8860.namprd11.prod.outlook.com (2603:10b6:806:468::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.13; Thu, 5 Feb
 2026 10:17:24 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9587.010; Thu, 5 Feb 2026
 10:17:24 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Vecera, Ivan" <ivecera@redhat.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: Eric Dumazet <edumazet@google.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, Leon Romanovsky <leon@kernel.org>, "Lobakin,
 Aleksander" <aleksander.lobakin@intel.com>, "linux-rdma@vger.kernel.org"
 <linux-rdma@vger.kernel.org>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Kubalewski, Arkadiusz"
 <arkadiusz.kubalewski@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, Jakub Kicinski <kuba@kernel.org>, "Paolo
 Abeni" <pabeni@redhat.com>, Jiri Pirko <jiri@resnulli.us>, Richard Cochran
 <richardcochran@gmail.com>, Prathosh Satish <Prathosh.Satish@microchip.com>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>, Mark Bloch <mbloch@nvidia.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Tariq Toukan
 <tariqt@nvidia.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Jonathan Lemon
 <jonathan.lemon@gmail.com>, Saeed Mahameed <saeedm@nvidia.com>, "David S.
 Miller" <davem@davemloft.net>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v5 3/9] dpll: Add notifier
 chain for dpll events
Thread-Index: AQHclTRJh6svpCCul06kk2qfCP+ypLVz5rKQ
Date: Thu, 5 Feb 2026 10:17:23 +0000
Message-ID: <IA3PR11MB898637A313684AB8D381363CE599A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260203174002.705176-1-ivecera@redhat.com>
 <20260203174002.705176-4-ivecera@redhat.com>
In-Reply-To: <20260203174002.705176-4-ivecera@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SA1PR11MB8860:EE_
x-ms-office365-filtering-correlation-id: 927a0d32-e909-4c16-9538-08de649fc15b
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7416014|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?WNG49ieCDxQ/mJ2tswc8NMp/Z1piHI+vCyRaguEfCgmOhi0SZ8Nha/g+PbgD?=
 =?us-ascii?Q?e8i/BEHFWwba2+pDv1K9b/FK5uhBmFGRdmLC64bxVi10PzRIHVnRNBUglwyy?=
 =?us-ascii?Q?39cZbvhEIpEp+4kPsId2QkX+ALeBC7ZP/JfXqpRB/+RSlYCUCxnxJVeOBArf?=
 =?us-ascii?Q?Hs08Okqvi9RDLvD43VkICEupv/4zflEQx3rALram3Uh9bbiuAROMp6l9ywVh?=
 =?us-ascii?Q?deA+0CbENkD2IyrdI6tMqQDBWBup23mDu/hNjby3XnYAbal7xZVn0mp9nhX6?=
 =?us-ascii?Q?tQ5HCj2ovBk+J6xgyIPI+KOBnlI+P23kFjySR9lQR1IEfemGbtkCbNhoPRHs?=
 =?us-ascii?Q?YJNqgRTb/QN16z6C3L7zp3/oQ59LIl55z2xamn7dWwJ7FiYRJQ4laoeH8ZPk?=
 =?us-ascii?Q?x/Cfv3Vf6IFHnYBi7I8dzvBozODfOqwEHD3gdxNmbll5rbnvqxsOmaPI7tI6?=
 =?us-ascii?Q?ZjqAmMgMNRRm6aSNG1uKDqko3fdN4SuetMWZv2vA5/xZPJXZ5u3hPX2G01Gw?=
 =?us-ascii?Q?pOl9Gl8IGE+MbVL37jFFZlgZ1I70qNPLOJ91YhHiVSJiGJj2DBKJEpVOhGB/?=
 =?us-ascii?Q?h9Zn1GiHJOx84zkwTOPlS+jVf+Qt1HA6QR+bZBG2xdhzFgcNRKCtOwBBzhQ8?=
 =?us-ascii?Q?SAyYba+Ep27tvYtOqgx0muWwnTjVVlgZG7pMGkEpw8p51KXFCsH6eDBgjQUU?=
 =?us-ascii?Q?v+EMj74G9RcI8JXL8iYzNNsZwP5ogFMc1Ux1EsfI5VZsxthwHUIN/Ru7FBjg?=
 =?us-ascii?Q?vS0eyeLM/Xw3mcXoyoiVWNbH2WdnSf27h8ODoO95cPg3m4yrLfwrFh6WfpfD?=
 =?us-ascii?Q?Nv9T3BNNF7ILazHEz9mc1aHQsrUJVV2L2HVD0usShrcbQ7hiwsasni3sZfHJ?=
 =?us-ascii?Q?xTDbcZj95wK68fKaGSnDTA9aeTdePbI7ipI6hLVM/EPTxJ3XKS7iwol4HepI?=
 =?us-ascii?Q?cLM1+R0k2JLgt3CNBotGo2NMqcPXw60wKhG87n5SI65JX/H4NPShBNL2KXlA?=
 =?us-ascii?Q?/DpMW9nXZA8xzavEDfIJjxtL3z0RQ4jkYvYCL9DJR2aISRZO0/FuIHGOgArW?=
 =?us-ascii?Q?IbgHJVVI623IlMKFRZP0dbDRms3wVtHGzv0CBEBQQVcVa5+qnl8ErB7FJaL3?=
 =?us-ascii?Q?k/8BLPBQu9Csw0cj2L/yLtUl4kf9ne/RsVyb1rUC6SxJKlSq9wjBoKocQs0T?=
 =?us-ascii?Q?CIEHIY71D5ooKLQIO7x+LDIFnA9773PGAUP6EI63VhxsMIoKtOTVy9NQibDN?=
 =?us-ascii?Q?BeBPtMs6wEP3eeBe+BGH24lidddQlucE0OoIKwI6GpK3LcAfO0uqYfU1BxAo?=
 =?us-ascii?Q?bluflFcDUhWU1LUVxaHc2D/4xf0+IF43TgOgqbGS8yxeiW24oKXmoN4yx8wW?=
 =?us-ascii?Q?mvT12t/M3rS5zjd7ZUU5FRkTLUKUuUq/u3kiRNNzJX9NZzyY7+/acJTJSY9q?=
 =?us-ascii?Q?YSjOh8NG2FD6ox7q1g4lM8Qe6IQF11AQbJL2HwlywoB+LF8VO3Fv6bXYB1he?=
 =?us-ascii?Q?RnwBUgTZFCCaN88fvJw5SnHy5X78DhsUmBWNbKaS0cPHN6QeUrtWwvxoJH3t?=
 =?us-ascii?Q?TmQLLdORKSIkoKZBwlMDNfpzK3t+Yeo4mbLxFTUwV8mb5r+0UTkUI8B5Lfrm?=
 =?us-ascii?Q?4IaivekSnqbo0yYqsUFXUW8=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7416014)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?1FeyovsK4wN3/sDMoyDZJJSU36sx4uP0zLUQSKEHUM5/QcTAvQecMbDYrpys?=
 =?us-ascii?Q?TUImnfuimaUqPR+v1Da+6GdkeLL5ocU/fo2fexPneJBCHcZ1oKJnWPVr8obL?=
 =?us-ascii?Q?exURYj/H7ihtPqfrVy+J+pvXvimCdY0zhk6ryfVS2vqViIl+v7pT3FrVhDP3?=
 =?us-ascii?Q?7s/BpXyheZY2sJMCM8C8oTceYGFiJIwQqpsvyfE/0qg7vvQX1Tzx2mpqKM/E?=
 =?us-ascii?Q?ONsNdZ/g1iGKAo6Dab4ffNZBPqyeEFUhq/Ir1JdId4VFYXe6/xrE5EfWpgjj?=
 =?us-ascii?Q?IVE1Hl7DUiJcu7UcNITrjeZMHPqJ6BrcKb319WPgD2wVAvRXfFRlcnIlPGWv?=
 =?us-ascii?Q?YZOc8U9I+9mTsWVeKgGIZftW0s2dQyikhRj+UQksLuyeuPuscU/ldVPESIG0?=
 =?us-ascii?Q?i6wfHNcBgCc7BtcdGHo4JgICSUwtYtL7WnuuhhiH1Yo0AyKYysYatUl6SDen?=
 =?us-ascii?Q?v5FjD/aCZ+tWELB6rY6IWByVZhMFAfBQe3kupqVIFhqn7elwSqkQ6Q0VprJq?=
 =?us-ascii?Q?p0qX47kdtVBZPa06y68Iv6X9mFz7EiRaNHk0zp/QWLIN8BctTRIBRXHaiFTk?=
 =?us-ascii?Q?JitdIxarho+6+10xuoX+8F+aqveZpFChyy+rwwm1Bq4C08bl0OzMavZx8Cmu?=
 =?us-ascii?Q?yxoUeHTTh7lyKTWbuXADIghJltMhxrBRYzW49Erq6a2WqDBA1GJxoK6ZTakA?=
 =?us-ascii?Q?4QPrc4icTDz7qDeI91CY6kqXS7lsOVP/tcl2tFEyzLQKQKpwFl8FcXBUmZOa?=
 =?us-ascii?Q?0exzId7gNPiIAsyAaNjEO6leyE4Ve2PRtGTYPye94740DLY0d6wWH+XKWDYG?=
 =?us-ascii?Q?FZFkmsW1fcjiI9YVlWBSuUcH2WYJRpe+SH2akiBfdGldcKVq0MkGfU1w3l7D?=
 =?us-ascii?Q?pJn4Xv/r/G0RBSHXsE6pPuKpRvBScuudcSWzvImAm7tWCOTx/HYaMdg9281E?=
 =?us-ascii?Q?7P/39biHnSoLqTxWAkARP4KdPEV/iNS4RrB573GiW2W+lGO9BPe9XxrQ34L8?=
 =?us-ascii?Q?6ILo9KLR52v6y0v5kY9uTR4uxV1x0GQRnlZs/9G2dGlm6BLVdKV6oY4jV/x0?=
 =?us-ascii?Q?JxXEGz887c6vVnqQtXUAORk3cQIHyjgY6B0MF1IhJgz6C52saHusvLYbLXH4?=
 =?us-ascii?Q?yR5IjFmBtncYsgbaY7SthgXLYa7wEDbK+9pGL0iapmYZtW1xnAdiBEk1uVhw?=
 =?us-ascii?Q?QTeqt3lQkzZJQL+G773E040yn68akSP6Evus/zG0irW01CpvcBPJfXav66xi?=
 =?us-ascii?Q?Gr1IiLxoCRcnA3zVI6MhxeuV9enWL9emDe8DcaQmbPpDOs6KO+CH1ts8B+96?=
 =?us-ascii?Q?LnSeUahQOv589Fbm5zV39CuyEIVQpE/UVsDXOAG4rdsa2ZwstI6pGH2fkblB?=
 =?us-ascii?Q?Kp3ybV1TdfsV1R7Jvzsc4qk1+dkXdfA2EZ9GH2+vceCe3bQiyqd+6rLt1uiR?=
 =?us-ascii?Q?Zu2L1EuarB56U5kopx0Smf9bPHgZIpVigcsXTFVGPPS5bnz4W18WEHwHPARO?=
 =?us-ascii?Q?JxJdsjPjmdAO2ltritpD4MjLkOjV/eOSSEV2cncFHLcSdrTpkFlm4eO5ZVPg?=
 =?us-ascii?Q?6/zNx1csi8EfPDMTPuFtSmoYnxvjb6k8ucN/PhEWwT72k0jJ0lxT0LJEytjT?=
 =?us-ascii?Q?o3VJMCZw/tV7Vfu3yfFF2w94iUmKSE6JfeJyNpovYW+pelEWNgTUZI5BSIYy?=
 =?us-ascii?Q?G6WPYghwnJ5n7lGhFKgMbd1Rx+rmlP0hmSfb+dOd8pn/I4E3Bd79l7J6oDb3?=
 =?us-ascii?Q?axZ8Xte1TU5aLX/ivavLPATkH/hRVeQ=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 927a0d32-e909-4c16-9538-08de649fc15b
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Feb 2026 10:17:23.9472 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ygHg+9dWSySfXsuR4obK9s9kr0geVET4dw5qDdcRaT9K76Je6ThT7SJsGHM9RbxFPTWns6igy8O9vajpYcRdoqU0SlWfNMRC/oAgGD+yuOw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8860
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770286649; x=1801822649;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+FemPGjqB5MS03e/ga0/KbM9mBVZwH71+riUph+7aPs=;
 b=eLEtHvD+axYYfqgltaPseN/aIkB7bochwQq+9OJxDxrDfRL/ZXX6qYb3
 zILGIssVi26rTyv6hwCWoLedYwwSyqSCjhKCRscv/WtmKGpIHqrk/7/70
 0ze3lXOgbR+qJLFq1xZmxLmvbv5pJ3g/WRTvZcuRNosu6j0Q0gFXufJ3n
 RrjMwPXthacMl1eszHgH0pcKkPd81rMmcs0Yt56Ed49BNZnbnEx8hpt58
 j2RLww+lvEahtCZ7GpV327EKeVzBHIH0zsa4Pp1BzrBR8awXowDg90Xds
 P4gn9SLa2m7UKwIlWkfNH0/Ex6RJ1dk7GwrGW7Dyu5ZzHAum/x/k6h+aD
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=eLEtHvD+
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 3/9] dpll: Add notifier
 chain for dpll events
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
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:ivecera@redhat.com,m:netdev@vger.kernel.org,m:edumazet@google.com,m:anthony.l.nguyen@intel.com,m:leon@kernel.org,m:aleksander.lobakin@intel.com,m:linux-rdma@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:arkadiusz.kubalewski@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:jiri@resnulli.us,m:richardcochran@gmail.com,m:Prathosh.Satish@microchip.com,m:vadim.fedorenko@linux.dev,m:mbloch@nvidia.com,m:linux-kernel@vger.kernel.org,m:tariqt@nvidia.com,m:andrew+netdev@lunn.ch,m:jonathan.lemon@gmail.com,m:saeedm@nvidia.com,m:davem@davemloft.net,m:andrew@lunn.ch,m:jonathanlemon@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[google.com,intel.com,kernel.org,vger.kernel.org,lists.osuosl.org,redhat.com,resnulli.us,gmail.com,microchip.com,linux.dev,nvidia.com,lunn.ch,davemloft.net];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,lunn.ch:email,linux.dev:email,IA3PR11MB8986.namprd11.prod.outlook.com:mid,nvidia.com:email,intel.com:email]
X-Rspamd-Queue-Id: 0D6D4F140B
X-Rspamd-Action: no action



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Ivan Vecera
> Sent: Tuesday, February 3, 2026 6:40 PM
> To: netdev@vger.kernel.org
> Cc: Eric Dumazet <edumazet@google.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Leon Romanovsky <leon@kernel.org>;
> Lobakin, Aleksander <aleksander.lobakin@intel.com>; linux-
> rdma@vger.kernel.org; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Kubalewski, Arkadiusz
> <arkadiusz.kubalewski@intel.com>; intel-wired-lan@lists.osuosl.org;
> Jakub Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>;
> Jiri Pirko <jiri@resnulli.us>; Richard Cochran
> <richardcochran@gmail.com>; Prathosh Satish
> <Prathosh.Satish@microchip.com>; Vadim Fedorenko
> <vadim.fedorenko@linux.dev>; Mark Bloch <mbloch@nvidia.com>; linux-
> kernel@vger.kernel.org; Tariq Toukan <tariqt@nvidia.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>; Jonathan Lemon <jonathan.lemon@gmail.com>;
> Saeed Mahameed <saeedm@nvidia.com>; David S. Miller
> <davem@davemloft.net>
> Subject: [Intel-wired-lan] [PATCH net-next v5 3/9] dpll: Add notifier
> chain for dpll events
>=20
> From: Petr Oros <poros@redhat.com>
>=20
> Currently, the DPLL subsystem reports events (creation, deletion,
> changes) to userspace via Netlink. However, there is no mechanism for
> other kernel components to be notified of these events directly.
>=20
> Add a raw notifier chain to the DPLL core protected by dpll_lock. This
> allows other kernel subsystems or drivers to register callbacks and
> receive notifications when DPLL devices or pins are created, deleted,
> or modified.
>=20
> Define the following:
> - Registration helpers: {,un}register_dpll_notifier()
> - Event types: DPLL_DEVICE_CREATED, DPLL_PIN_CREATED, etc.
> - Context structures: dpll_{device,pin}_notifier_info  to pass
> relevant
>   data to the listeners.
>=20
> The notification chain is invoked alongside the existing Netlink event
> generation to ensure in-kernel listeners are kept in sync with the
> subsystem state.
>=20
> Reviewed-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>
> Co-developed-by: Ivan Vecera <ivecera@redhat.com>
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> Signed-off-by: Petr Oros <poros@redhat.com>
> ---
>  drivers/dpll/dpll_core.c    | 57
> +++++++++++++++++++++++++++++++++++++
>  drivers/dpll/dpll_core.h    |  4 +++
>  drivers/dpll/dpll_netlink.c |  6 ++++
>  include/linux/dpll.h        | 29 +++++++++++++++++++
>  4 files changed, 96 insertions(+)
>=20
> diff --git a/drivers/dpll/dpll_core.c b/drivers/dpll/dpll_core.c index
> f04ed7195cadd..b05fe2ba46d91 100644
> --- a/drivers/dpll/dpll_core.c
> +++ b/drivers/dpll/dpll_core.c
> @@ -23,6 +23,8 @@ DEFINE_MUTEX(dpll_lock);
> DEFINE_XARRAY_FLAGS(dpll_device_xa, XA_FLAGS_ALLOC);
> DEFINE_XARRAY_FLAGS(dpll_pin_xa, XA_FLAGS_ALLOC);
>=20
> +static RAW_NOTIFIER_HEAD(dpll_notifier_chain);
> +

...

> --
> 2.52.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

