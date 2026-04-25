Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oDs4LcUP7GktUAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 Apr 2026 02:50:13 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id F1941464518
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 Apr 2026 02:50:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7B2C640642;
	Sat, 25 Apr 2026 00:50:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uHjXDOzS60Lm; Sat, 25 Apr 2026 00:50:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DEFE540544
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777078210;
	bh=atgv2XlrhJk8LiDi9U63eFA7HEs2tcj2CzC2EpFVY7c=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=afSgheyZwySdRH3fBx2/FQViOwVxNC/zfDHU8hrX7DJEtHjXPsa+YhJhv/lIsqNAw
	 evQjKvHhp99ZQPIJzHjbWoqDUqnd8973W0Biv+Tr0xowohzO49X6w3NYijnWv2VQzo
	 rEU/GpRcO4q+ZZybiu3Ijw/AII7+4rEO7NFU5IKGtPnr9wTx/JMSt/e7qgoXzgLnVF
	 acNOuiEH9G5G1QwXoWJcTabX/gUwTAO3X42zDkfZZitgknLPna2meajXT/ikMf+goM
	 JcX4PlBB7rotTP9E35iphM29j9DWMyh7SgZGdDiEgY7MvaK93JIx4dsw1lLE3MkaJ0
	 Sr4Y4f5MosHPA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id DEFE540544;
	Sat, 25 Apr 2026 00:50:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 1DFC5231
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Apr 2026 00:50:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1001B40535
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Apr 2026 00:50:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XutbyJN3EPiD for <intel-wired-lan@lists.osuosl.org>;
 Sat, 25 Apr 2026 00:50:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=alexander.nowlin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5B15A4052A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5B15A4052A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5B15A4052A
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Apr 2026 00:50:08 +0000 (UTC)
X-CSE-ConnectionGUID: m2mlzSQcQC2YNNV7Kcqpyw==
X-CSE-MsgGUID: 1MfHm/0vSZ6UVfjQf12cUg==
X-IronPort-AV: E=McAfee;i="6800,10657,11766"; a="78048286"
X-IronPort-AV: E=Sophos;i="6.23,197,1770624000"; d="scan'208";a="78048286"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2026 17:50:07 -0700
X-CSE-ConnectionGUID: FYbQn7+ySVeTcrnKCPvaIQ==
X-CSE-MsgGUID: xKcs5MMTTneqHRQiERMwug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,197,1770624000"; d="scan'208";a="233390144"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2026 17:50:06 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 24 Apr 2026 17:50:06 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 24 Apr 2026 17:50:06 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.0) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 24 Apr 2026 17:50:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hdzfIt+vX8+yL8fqrKT9tlaMMT8uUB3YLGNHNjWFsAy33S+Wc6uk/sh3wm/gNjpWtW8lQ9kKQBHDuFfPMmi1xYdCOviEF0Td9HoC7X4BRjskUYLnlXYcHi14GG4rfdSbTGPYAIDTPGVSsKoqPagxUfONGmaRFYTOPJC28xvGJsBFRkmJpaPpNg+R1A5IzLXLdEfBYq0+SDNpj6n99e3Mq9rMeD+7ZBvgU4BqIm5jck403hQ8PH17Qv56j+tTJBnArCuDyjyoPcY/2HLOmqBoekyzIwbyzVgRFfJUeqQnEyMTP3tSAIbYr8Hcm/v/yyb/JIpzAKCnQ3n993AE4SPewA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=atgv2XlrhJk8LiDi9U63eFA7HEs2tcj2CzC2EpFVY7c=;
 b=nr0XxsnYU9PCgfwiJldGd+X4z/6wNtTXz9sKMeTEzP0OB/otD4NPPusgMQ7j9ZoKLqFd/PkjfutU4VQlU1lXy3493DnYrgCkjqIOYeiRqGaBcXpdHG036dObctomNiD6g4SThjH1mUfNfriGjbxMr7Cw1dMDt3Y1FZjPCkv67Q8L6B1e9h28PtLSPg38L0LMEkzjhiJIp2O1vFzLt/SQeTHoj7MaEd3wjr+OJTzuevMVY8heeHxWsRcnTCnHz40cM8ergvDBrJJzAdCw4XwWZtgG7iqA5/aY4UvyACC7nW7/IhH2zfXLd23NH/n7b3GnYLMxJWVCPs1Q1dmld9O8Jw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV1PR11MB8790.namprd11.prod.outlook.com (2603:10b6:408:2b1::16)
 by CH3PR11MB8415.namprd11.prod.outlook.com (2603:10b6:610:17b::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.18; Sat, 25 Apr
 2026 00:50:01 +0000
Received: from LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::27cb:7a60:19bb:584a]) by LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::27cb:7a60:19bb:584a%5]) with mapi id 15.20.9846.011; Sat, 25 Apr 2026
 00:50:01 +0000
From: "Nowlin, Alexander" <alexander.nowlin@intel.com>
To: "Oros, Petr" <poros@redhat.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Vecera, Ivan" <ivecera@redhat.com>, Vadim Fedorenko
 <vadim.fedorenko@linux.dev>, Jiri Pirko <jiri@resnulli.us>, "Rinitha, SX"
 <sx.rinitha@intel.com>, "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, 
 Eric Dumazet <edumazet@google.com>, "Kubalewski, Arkadiusz"
 <arkadiusz.kubalewski@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, Simon Horman
 <horms@kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v7 2/3] ice: fix missing dpll
 notifications for SW pins
Thread-Index: AQHcznrbAvj3HGBQCUqezlZsd7z7arXu/anA
Date: Sat, 25 Apr 2026 00:50:01 +0000
Message-ID: <LV1PR11MB8790A08EBCDE6F598F4A893C90282@LV1PR11MB8790.namprd11.prod.outlook.com>
References: <20260417145907.696307-1-poros@redhat.com>
 <20260417145907.696307-3-poros@redhat.com>
In-Reply-To: <20260417145907.696307-3-poros@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV1PR11MB8790:EE_|CH3PR11MB8415:EE_
x-ms-office365-filtering-correlation-id: 0dadd0e7-fcd5-48b4-0b72-08dea26494ec
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|366016|376014|1800799024|18002099003|56012099003|22082099003|38070700021;
x-microsoft-antispam-message-info: ZUH7DaPugVOlOuKibjzlrZWh4FIMSGvYCAbJeJgibG03smKb14MdnN5fOw787c3PemmeiQPLu8mIeoGxzfP6jF+ilyTlf+W9aeXwuGN6sItF5uvCmECWo8lkWAiGHBNwk5YzESSV/Te01+NNWEwSNdWHjs1wxYf6PyZy+VupYRdvxWd73rO2s0WML8N7p7rNKw6fclt4cy7W/L7roVoit6WwiW58Ke9ZjUUL9hdDaTA2yQi415qIR+yX2QVZ9492et/oG1isT76nDejnz8NvaRrs0ngMIKk4c0nsCLIJSBlvM5GYN7skDn7x/c7nvpo0pGQ6+sjQnSEBfu16ymW8fqG0syydLsPMm97L/w+N6MDOXNUrnnd4DY30tXLltBCidrHufjsYk1hn5ACRdV6aFd2snL3yyafgEkSsqjM/XqHJpu/yL96f3TfW+cXKGKj/dBjSANI3379OYyExZZM+ogd4oOgxSvGTWH/DSrcIpmaVxCLO29+YGp4Mqvs92wSpTIogf4O42GEhmHvlxlsc2oMbq1VAg423PtaD/Sq2B4w76if9hSgUFFnvWsgFz0TbL9oDKESuGLUVE017hKxqnxt+Lg2nBofk5tRnDLUQII8eqKmdPb7tQPnt+3bkwFrEuIp4BfH+ojw3k50WATqcHVJlxtqvbJ4JJdCbuwsHX4pbnApGkiiGwA1bBjuestbwSd7laJ4L2qixD1bGsq9pDYqzO9T2hmOvLYiFicunNr6eqcvIn1S5zaexVsQlRtMcTkeI1WC68UROhLBLkuNFqKmNR+/DlOc4xPORLaKTWrw=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV1PR11MB8790.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(366016)(376014)(1800799024)(18002099003)(56012099003)(22082099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?yskusvQvHuHYWcrjXEirV9EY6PtYgSw+18FTyOJ1qVDq5K5RKWBuiblkY+GX?=
 =?us-ascii?Q?ps192Wjw2s/SWhE02uJx3jRunyl3b4xWgd0fYnNaRAjHzvM0sw49yYwgZFjW?=
 =?us-ascii?Q?fFxzVBxCx7xNepLFUFcFPYWDDZxPg/OTwoCSWfZgydL82SP7+qwhAO5v2tIw?=
 =?us-ascii?Q?6YYi92awrYwiO1sYnydkuzqHnd+8jhemzsUI4KnbBDAXV8GYqWO0fD98tg8a?=
 =?us-ascii?Q?qstGMg97k36BLlqZy2VDfsJ79nth1f5eMTivjln39bIp6y+q9E8jg5YgmEkw?=
 =?us-ascii?Q?6VnTn72cZmw5vTqJlsd3s0Hk71KKtNiskJugTgeVSC58j8NtEWJOY7BTPDiz?=
 =?us-ascii?Q?GTeykv+dS86uCCiKvTyX9VVicEOqlRXP83qg1UeQkzm9WN3cKZIvGB/ewMTX?=
 =?us-ascii?Q?ae+QB2eiNED7puv8BahqlTZ22a8X/MCB+YMISaJR3FZe1myc/oU9EO910+wi?=
 =?us-ascii?Q?kz6+mt44vFOqQDMWywFLNPC2WU8496Pp5pEcz8OcdcXGMGqNx1LFyAlzaRPj?=
 =?us-ascii?Q?5rPJx7aT8S+HDS8rlONM2ac0Jbxwy9mvX4DeJMZDd4loX3HTLreIWDKX0fXo?=
 =?us-ascii?Q?+6708Jqy2YTMyoripbFu0CLLKITd6J7PWahqFf51nt8CT5F7s0lgz7uceIcO?=
 =?us-ascii?Q?Etev2rGg7v8bEvO9SK7DaaxntvlO29abC5Ukqf5RAYqKynoLa1TER0C7z5xO?=
 =?us-ascii?Q?Trnj+A++FBlR/BD4aquUzxZYE7imNZHuVDB4xQXAyunIvSTI8W88RzLvstfS?=
 =?us-ascii?Q?xW81OnNhcSo/8fDvPescc+Dbb1vlb8qJZibe3wjVZQPHHyAQOecDsI4c6YwX?=
 =?us-ascii?Q?hXIs2T8odXgEouFGuJsMxlGkwCOLmevDZ7rphuf/GFfXjody8kb6rXQgHRuc?=
 =?us-ascii?Q?BmpG9WIIGXgXRHbkzqlItIXe6wMuFqb3lzD6gjk7LABIg7++aZXVTXWk4fSl?=
 =?us-ascii?Q?NQgBvfJHMmVVz5ItfT3haOCs91LprgXpCMkCxL43+LYiSI5eN76fz2ZC0j0Q?=
 =?us-ascii?Q?hmZmUQi9QRTADbOIMhaiVmHEPsC5dcZSP+x8gPtZ9eV6iyJXGJFNrdU4wxGN?=
 =?us-ascii?Q?g748HEszTSX8ZpIEQWGOmPacqarw6mW6Q0cN0/VkmoRxrHCxiuzqTlEplMIq?=
 =?us-ascii?Q?9gxjUSsWcD50HEFSArMV8pLybVctuGiKe425ptgFoXuEyILogPz1VNNii20U?=
 =?us-ascii?Q?BOaKzcgspQm7dp7RjVUVyM+K0dqgYk0F8awFvhqa/GsDYCsxATHwcBAwhc3m?=
 =?us-ascii?Q?+y64b+R/ttB3ILjR2nNdMpYUeCQS0fAR/jE4coRSu1jg/+kFZKHoZ0N2lfqE?=
 =?us-ascii?Q?1MusGtGf4mxHGrN7jZUQDFdGaSnGHKEM0QLOWnmgaPcaBDYdfSBipVPhWKex?=
 =?us-ascii?Q?vbQiDCHVcnAPue0po8cvtgZU5+N/keUUfl6XfYLujCeW7qwvavOGDmUbd8ue?=
 =?us-ascii?Q?y4EOUT7SM9JgvwIjHkFIoe3UGOUJuQ78ZttJODAlWpXyl0x+H0BRKfjy3h4T?=
 =?us-ascii?Q?KOMnvuNZH8hDgE1dkoC5vjirCQ35iQA2sleIaapeaKxNRmIYCAaU4NY/4wGC?=
 =?us-ascii?Q?VM27l/AaBsnF0ZZW5cE3vDPPMUciRbWJF5wlkJHJPnFmx22zRPIjlcxZ1JtJ?=
 =?us-ascii?Q?dQyBcJYkGGrvnxx8+x0fvcvfUmMeRurAlJ6FndICko7p5SyPAM9HoY9m5bXn?=
 =?us-ascii?Q?8sTgL0Wp2KBvODnYEpyrmSq6uJro1mggpRw0ti4/fow6jhPX6da62g+44VR7?=
 =?us-ascii?Q?mcp33TRELw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: kRLGIsz5E3WlBbnaK8eEkkyoR/U30cqHofWVwMjrw0Lh+zRSWtN0pZEhvu0Cg0pX9TAk/uwOC3UiEPPAsoVHknD898VGJTJwEMs/gxJmPwY/PZaMCYxjQKHXFWmIX6ImDLNIjhOexOS+vj2xPiFP2ncXiN/dKiGOlZ6KD/FNEmFPOcBx9IvWbMS/Gw00pESuE5ND4mWlEoqQ3msd8Ffzeuiw2RjVD0h0fc4XtBce1Bu4hdeDh3wh+DdbLG5AVbtojeg/KOHV1SuCKMgv36LFeJrZ4eFlsrGlNR06aTEzJDBDkXRJVz45Q7E3EdAhMv0Rq9XRSFGIpJUUr7+qrzMRHQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV1PR11MB8790.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0dadd0e7-fcd5-48b4-0b72-08dea26494ec
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Apr 2026 00:50:01.1512 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Y+cowQym8xpqiKKeGHP/Mp4xbDLIj3KKx1m8edVqmW6aaMzFnYx9dcLsMCTAWOe7gXTkic9T1n14Hz7H+1u3AyqHgGBUAh7UUPpTLAOWr2E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8415
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777078208; x=1808614208;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4YweFM4L4M7pHJjWk8flYm5/oQTZJcA9e9s4u9Yd/Vs=;
 b=DQAqbk4bG/g+wcTzbVn+4rvzuL3xb0uviNmWhsfaVdntbvatdrirrlX3
 ABN0/XNOuO/MouEU/LgnSJAnHDYO7EVrrGQ2XoLi8Yi11U+bUbo7PG7AH
 PzVxWTrge8d3QffbqF+hYN0H47RrTfp6Nsww5VlBlZts3eOEvyw+ysafn
 aMqdJyPVpTg5PcbiETYYukOS5c2c/jeO8i64XJtSBiffRrLVNMRq0snzQ
 OD3mk5T9/ZL8vjjSKCRWbfj/84lSogyVZdv9cxshZS/HgJEMcME4hfInh
 H0AISpOjfnpRpgy8YYfxrLqezfPURsNnetfMmDg5tp3qgjEzRehHPVmQ5
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=DQAqbk4b
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v7 2/3] ice: fix missing dpll
 notifications for SW pins
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
X-Rspamd-Queue-Id: F1941464518
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:poros@redhat.com,m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:jiri@resnulli.us,m:sx.rinitha@intel.com,m:przemyslaw.kitszel@intel.com,m:edumazet@google.com,m:arkadiusz.kubalewski@intel.com,m:aleksandr.loktionov@intel.com,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:horms@kernel.org,m:jacob.e.keller@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[alexander.nowlin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[alexander.nowlin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of P=
etr Oros
> Sent: Friday, April 17, 2026 7:59 AM
> To: netdev@vger.kernel.org
> Cc: Vecera, Ivan <ivecera@redhat.com>; Vadim Fedorenko <vadim.fedorenko@l=
inux.dev>; Jiri Pirko <jiri@resnulli.us>; Rinitha, SX <sx.rinitha@intel.com=
>; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>;=20
> Eric Dumazet <edumazet@google.com>; Kubalewski, Arkadiusz <arkadiusz.kuba=
lewski@intel.com>; Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; An=
drew Lunn <andrew+netdev@lunn.ch>; Nguyen,=20
> Anthony L <anthony.l.nguyen@intel.com>; Simon Horman <horms@kernel.org>; =
intel-wired-lan@lists.osuosl.org; Keller, Jacob E <jacob.e.keller@intel.com=
>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni=20
> <pabeni@redhat.com>; David S. Miller <davem@davemloft.net>; linux-kernel@=
vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-net v7 2/3] ice: fix missing dpll n=
otifications for SW pins
>=20
> The SMA/U.FL pin redesign (commit 2dd5d03c77e2 ("ice: redesign dpll sma/u=
.fl pins control")) introduced software-controlled pins that wrap backing C=
GU input/output pins, but never updated the notification > and data paths t=
o propagate pin events to these SW wrappers.
>=20
> The periodic work sends dpll_pin_change_ntf() only for direct CGU input p=
ins.  SW pins that wrap these inputs never receive change or phase offset n=
otifications, so userspace consumers such as synce4l=20
> monitoring SMA pins via dpll netlink never learn about state transitions =
or phase offset updates.  Similarly, ice_dpll_phase_offset_get() reads the =
SW pin's own phase_offset field which is never updated; the PPS=20
> monitor writes to the backing CGU input's field instead.
>=20
> Fix by introducing ice_dpll_pin_ntf(), a wrapper around
> dpll_pin_change_ntf() that also notifies any registered SMA/U.FL pin whos=
e backing CGU input matches.  Replace all direct
> dpll_pin_change_ntf() calls in the periodic notification paths with this =
wrapper.  Fix ice_dpll_phase_offset_get() to return the backing CGU input's=
 phase_offset for input-direction SW pins.
>=20
> Fixes: 2dd5d03c77e2 ("ice: redesign dpll sma/u.fl pins control")
> Signed-off-by: Petr Oros <poros@redhat.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_dpll.c | 47 +++++++++++++++++------
>  1 file changed, 36 insertions(+), 11 deletions(-)

Tested-by: Alexander Nowlin <alexander.nowlin@intel.com>
