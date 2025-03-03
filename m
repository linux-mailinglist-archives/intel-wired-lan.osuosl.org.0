Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A9E7EA4B8FB
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 Mar 2025 09:18:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 304F882BFD;
	Mon,  3 Mar 2025 08:18:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zDVf17QkWgdh; Mon,  3 Mar 2025 08:18:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1BDC582B2F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740989890;
	bh=5fOygqvYiu21vn08rccqKNYckibmbygzJFSCZ+s/URo=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=VpKjfk06r9pTe7rbLWd4UcQ9fguvVqIzIT96xEjngbtnYaXB9/zwWWks+I8WPKtdP
	 fu0m9gU/jar1JIe2PDg//JiFfOrGO6ed+YWeBWi4f2Aw9T0l0hcYRw1hv7IvF1sJ3B
	 +7Pbf3Og6V+7ORePiOak1MKEivY7u4r7+EI3tFwf8eA1Yq+0QL1iC3VE494dh97t3N
	 qDyOo14dbsoWpMuXIdfNTVquUOeGc3wqRHof0clyoOJhZe8mcy0VTA48lmaNw1x+NW
	 RNQvYyTMdJ681QGpB1PDcB9Y4+3hT+rc4AAqIcfEVVGJuvm/MiFyv1kFkimqWsFt3v
	 e0ucCgXwabraA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1BDC582B2F;
	Mon,  3 Mar 2025 08:18:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 25F70182
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Mar 2025 08:18:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D7092607B3
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Mar 2025 08:18:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HHMtYuZXX0iR for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Mar 2025 08:18:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=bharath.r@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6DE8D607CA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6DE8D607CA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6DE8D607CA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Mar 2025 08:18:05 +0000 (UTC)
X-CSE-ConnectionGUID: SZQYNK66RsGEuT/UTcH0OA==
X-CSE-MsgGUID: +Cu0Mi4wQGKx1QnmYhmt4g==
X-IronPort-AV: E=McAfee;i="6700,10204,11361"; a="45783002"
X-IronPort-AV: E=Sophos;i="6.13,329,1732608000"; d="scan'208";a="45783002"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2025 00:18:05 -0800
X-CSE-ConnectionGUID: RgSRhz2JSf6gnf3S6g1fiQ==
X-CSE-MsgGUID: m0n70bAtRNiWlLyYt+G/EA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,329,1732608000"; d="scan'208";a="117682209"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Mar 2025 00:18:04 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 3 Mar 2025 00:18:04 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 3 Mar 2025 00:18:04 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 3 Mar 2025 00:18:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nl00NUy/sU5DZup5sjeYDu35QhID0TEnmFSIObbYOlIGQru2SoVYk8Vg3sgKaSoELo00rsSK5p7xlso7LB3o9x0KQIqBl+y+FUVERtBhVpjOa/w6dtwjblwyGKYH9JRumhKT9kjfaviYvZJJUuFRkhXLqVydycBZq2kfGDk0UE3JC/35TYlz4KXlyI8e3x3atB5vSVWYMZqtSVKl+fscGPFsSLsJfyzIVqu87z9Wjlp0xA6AxkuM+FGymYB8n5Bm9ENUwL84iikKnMJ+n5DM/ulca/Q84NB2VrmRPJJ9pGTbt8JWnDTDfVcKNjiDFN1QZf0/vRDAg48C0BlhO9/VkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5fOygqvYiu21vn08rccqKNYckibmbygzJFSCZ+s/URo=;
 b=jsYFLOcWInmxfHMY1x60O0d64ErQ+r4NGFZKjCp0cE1A8ClJr+TSuW0PnU/pusCiN/ziORyT8FBx+Qf8PkaJfgT0f3IVZtT88Y8bJWOPEuhZcbKdpJeufhDpxEDhnHvb0Q5Fhe8aPcOguLcaZNocFeoyRu3oyiXAbz5MRJq+Nx+QdDAe0z7uEU4++FW5H5f7d+Y/GaeVuaKfzDqkX3eb9cFLluG985lM2TNgwLvIsVloMpoQSzsbbHlhOBYjUqWNa2r3Kbi2xibjEqbj9PzCcMPOrKtnqLT7U+GFr5h62qsC0nfrCnKTPH81b5lFZVS7Yi0XjHyEwZY9nkNn304Maw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB7965.namprd11.prod.outlook.com (2603:10b6:510:25c::13)
 by SJ0PR11MB8295.namprd11.prod.outlook.com (2603:10b6:a03:479::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.25; Mon, 3 Mar
 2025 08:17:59 +0000
Received: from PH8PR11MB7965.namprd11.prod.outlook.com
 ([fe80::ad6c:cf56:3c3d:4739]) by PH8PR11MB7965.namprd11.prod.outlook.com
 ([fe80::ad6c:cf56:3c3d:4739%4]) with mapi id 15.20.8489.025; Mon, 3 Mar 2025
 08:17:59 +0000
From: "R, Bharath" <bharath.r@intel.com>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "horms@kernel.org" <horms@kernel.org>,
 "jiri@nvidia.com" <jiri@nvidia.com>, "Jagielski, Jedrzej"
 <jedrzej.jagielski@intel.com>, "Polchlopek, Mateusz"
 <mateusz.polchlopek@intel.com>, "Mrozowicz, SlawomirX"
 <slawomirx.mrozowicz@intel.com>, "Kwapulinski, Piotr"
 <piotr.kwapulinski@intel.com>, "Wegrzyn, Stefan" <stefan.wegrzyn@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v5 12/15] ixgbe: add support
 for devlink reload
Thread-Index: AQHbhFkUZVFfkzEfVU+kZXbP4Qd6AbNhIFGQ
Date: Mon, 3 Mar 2025 08:17:59 +0000
Message-ID: <PH8PR11MB7965BB85815FAFBFADE1C076F7C92@PH8PR11MB7965.namprd11.prod.outlook.com>
References: <20250221115116.169158-1-jedrzej.jagielski@intel.com>
 <20250221115116.169158-13-jedrzej.jagielski@intel.com>
In-Reply-To: <20250221115116.169158-13-jedrzej.jagielski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH8PR11MB7965:EE_|SJ0PR11MB8295:EE_
x-ms-office365-filtering-correlation-id: c6d0d4a0-3ad5-4067-ceb7-08dd5a2be8c2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?+q3SG5Zt3g5aGi/1vQQ10BcoGBoCv9BrtFI7rXQlzjKBKshNOEp1UGidyhfb?=
 =?us-ascii?Q?TBPLNlBrfF1b/FvZ+OYs+iJAFqE5SlHpwGne+X5HK2D38NMlaVWpl59JpC4v?=
 =?us-ascii?Q?Zf6I0P0WRZlB6Z10VkxFayQirgx3B/sEiNzbdv4dgo0Y0LjCxSb003Os3ywI?=
 =?us-ascii?Q?Njyp1qlHCEGLpKejnrN38wvgZS7IcvxIQ3fexV40ciDJE4k4auTLNAIwoDhO?=
 =?us-ascii?Q?38cdEbvQmPcrz/8tliPj0kCLHTyBzXGjRvw5A8E182BZZACO0QaAhVnARXxK?=
 =?us-ascii?Q?4NhT+IOdWMVVi/2CFiyPlt4Y70jOMGFdJl/ok8h1TR3Yb8aL72IT5f6fzODB?=
 =?us-ascii?Q?HaRgDX0faJ1IwJm42tWBPQQO4O4J5sI65/j4SBScmDIHMAgrkou5xjB+2QUP?=
 =?us-ascii?Q?lY/S/s8OImDQH8j6rBN+Bp8AchOGEEVBUtQnOrlhOgIF2ewgtzHN6cGgVnp8?=
 =?us-ascii?Q?Q9NM2Ah5Fl/kNt0D262JhMfAa2TrvGtMWvq9EZv6Ikzy81xt6dLaIftDKWf6?=
 =?us-ascii?Q?wbUA78MnTgoE7wsHmO1DM/N/19e9hnCQhdrwkXdoW6k4TsHXg89ZlqADYgtk?=
 =?us-ascii?Q?ARUEZcQckl3dOiaBW22R53K/my8BW2EuzTK3CSahziTvx4A13sScMg6kfv++?=
 =?us-ascii?Q?iVIhthDq0kYf/7dDIlOQd1nXIDkXI99iYZCoGGaLvZw37HeLl+MZy/mL/7/D?=
 =?us-ascii?Q?xUP/ycHLU/v4yCy64of+R9wuPN3OOcKwEPN6dZL0Kv74V+3+3iTbpnHborjV?=
 =?us-ascii?Q?cY4vwA4w3x+tCwWKwMhk5Pb1WSEFkw/j/I4m9paVl8YZLYqhqwpfLnRk8zYU?=
 =?us-ascii?Q?hZxaLxZ/E4SfH4PoUsWyWIsLUu2Sy2yKAr9ypL+76kYRggLsWtPUJoITrVzd?=
 =?us-ascii?Q?+S8px3fa2bPWd5FR06F65yHlhWUq3sB2RCuCcS4+o5pw1JIyNEOCox9Uo3BF?=
 =?us-ascii?Q?NkSiLqP2X8DfKYa0ij6B/A7nYNvZ+vVnEClLmmoXoTLlOOKaco0+1cBH7Hk9?=
 =?us-ascii?Q?x7VZlTlK2qJQ+3yTCwBHPY+6we85ufig5fK7lj56ttbMy8KyX+7HjLBSb/Wc?=
 =?us-ascii?Q?GAewRn0I5qImHNxdr4lmVL1Mqn29VcH9vXroGJ2iYBjBCKmGJk23WDy4vRI+?=
 =?us-ascii?Q?YfH18MxFINFZ3qNztMKe/4MiTxcyIwz89sRJoUt5sgAwVmt8Qq6UNykQ7Jdp?=
 =?us-ascii?Q?JC0LAH/jLeq3JISxj9No97OmIcXsmj1dBCWmpsVKO7c44fkOeknEzHIrtZMH?=
 =?us-ascii?Q?9iAm6vK7h6PKA3Wwo3m69YlSFtDLYF3/Rt7UlfHAoZpGnGIXxZeIDxk65F2n?=
 =?us-ascii?Q?xY70intLi/hvrNCcR7Thnn6prOU1xMXWdDgPeOiPL4JktGBaVuKoZznHBsbo?=
 =?us-ascii?Q?W2YGi6LlmKgwCLDv/1A05ERBXzMFs8Q/Sp8kauKNzqeBsdPTqbxqu0IotcTN?=
 =?us-ascii?Q?V7JZ70r7x9InU2CyfPnr3app84yIdOM5?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB7965.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?nDVhb9mRlHETJBx/jOvVCccGziFZ4f2xoXGLKn/mdREIpNIlreSCnItDCpRR?=
 =?us-ascii?Q?HZXcs4sPB66uPRIO2hiibxjTi2HrUlRk+u9bCIPFhO6Vkam0eM1Xq+8P3O+V?=
 =?us-ascii?Q?oHzgfjsCJrik9PLVOZdkiZG0Acpa6aUWNzi3sSKtajHeeZCBhSdkxJUqos6k?=
 =?us-ascii?Q?p86LeiJLD1s5v5VVrK0TmmRXbXA3+fexR0DQgcCuzIBCmm5HdsuA3UUZVxH4?=
 =?us-ascii?Q?98XIntxo5ZkJ4YUQodMC5SpoB/+m6NlFqJX541mToq6nyE9wD9fP7xFSVlAi?=
 =?us-ascii?Q?9uYEgC3NSQQhLSf+EpW+jvcFN7BJVRUyAglTeZj+YyoZ/TTl8mZ4yivJlUf8?=
 =?us-ascii?Q?etOWGHLpWwYe//cLKUoqWMEpaCiGc1aa1DWKeWJtnW9xyTewYIxHtiQ76KO9?=
 =?us-ascii?Q?oj3eZkRBcTHJ1eufyHyzE4ZwAV+8o6KZrWOqNm9tzo86ptboVgFuvDIm2AP2?=
 =?us-ascii?Q?p0ClZfUlGQ9vJFlBgWrEXoCTqg7M1TCjSY7V7intBKqQUssO7si23gCvrstp?=
 =?us-ascii?Q?cQdpvP7Xqbf2FoyzfzBaY+DCJlSailBtvF9PWg7maSL5Rxt2+Lu/cUdlSy3a?=
 =?us-ascii?Q?gu6sFaBu7bLJ3cCt7gBzKyQsG2lcTLNK2965aU8yGHhN30XUgSDWRBddLcLU?=
 =?us-ascii?Q?UJ31ZglcDIPjD2jAN04vWrvLxlO7JSwlw7Pc6sSvuR9yUSGhC3sE3175i9GG?=
 =?us-ascii?Q?6ej0AAiTSE4Ic5AfVbhututGsh+lZOuOLYGd6x26H288dBZDGwJajJjJEISZ?=
 =?us-ascii?Q?H2rreNGvE/5bj9cPP9AjxtwmwaK6Gs6MTOmrlNzZ+EEb3EvOpGlk/NjrUTkJ?=
 =?us-ascii?Q?q5/sv76PgcVMML3Jk4E7Jg3Bw2MdIxT4erJAYBahllLFx9s2oP71EyXheXO5?=
 =?us-ascii?Q?uJwQwznjOqVAGonYhtR9jPtq0j3HRe9d9adT0Nz2xh70bbKFNEImno5JxMRZ?=
 =?us-ascii?Q?z1LCis+0lbZ+NecIlBtnJI+UqWYDZzy6rXBG7P31J2rn0KTBIdpoatKyhZ4T?=
 =?us-ascii?Q?JybbBfqZoTP8Hb4g1r2aZSXx8j7j8eUrXnPG/MURI6mFaWPFIbo9wG/CbINT?=
 =?us-ascii?Q?tkRQYamfq7Ds9EozAz5SjTUPnDLW4v2o21I0YWX5OgSgbvk/g4QiurU8yKX8?=
 =?us-ascii?Q?5ShGsR8+69isEcUoz9T703uVjvdPuQA4UoPEEQbBv7pKh/tqM0fnjy8o9Th2?=
 =?us-ascii?Q?TvMjX+NxMIEeOLFrxN93Axupde9BV6Q185P+nozLZiDq9CeBDtTw95UNZamO?=
 =?us-ascii?Q?dPYfV7P9cPBPX9srBq4vRkJp7ypFIBhBVpC/6UpZd3TnXrhDfHZjtlZ5kPsf?=
 =?us-ascii?Q?usIZoYUDixDm4TtqmHYR2FOwcOvkPE5AMReF5churjIEL/AKueHahFh7MXiS?=
 =?us-ascii?Q?Xs5wKGbe+kbDSPPuHXaspbqrMr16dUS9cb8Z04rq0UNYVFbVlHdp903nw4p6?=
 =?us-ascii?Q?YpkaSSA7cRceVXZ9lj8QavCCzkn1cg2iHDBqpm8g87ivOtv+4561h6RsnEZY?=
 =?us-ascii?Q?/r7bHbHNxkxAm9HJ/fgwkJMqUanErhrI5aZB5e4QtS1D7ns8nBBoO89qKHDV?=
 =?us-ascii?Q?xB17SPwJI0QNwIw+vus27vIKnKnAJQe2UbAmxJff?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB7965.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c6d0d4a0-3ad5-4067-ceb7-08dd5a2be8c2
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Mar 2025 08:17:59.1273 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Di3DotgQ9qvxZbWvteB4WAT4v4FK1mBGdJ07nOktaUbR9I6g9RBkkMB/C0ZzAc4sjG32eF6rbjG6YQ0T8PggGQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB8295
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740989886; x=1772525886;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zXxe6wsE1Yjl9kw+xQWK0v4NdX7mV2+sAPVD8PqCZxo=;
 b=lsV4/Nm6cEiLqYHqDBuuXyY14qqybT4CTglSXFpFj9ZjRiSim1iDd1Rn
 7dBMicO8WNyWRWwEVbrOxuFxlXh9sFieG8chaPkGrnFmYV/ZZhlfSy37m
 SfZ9gNwgOsW2biTE1bY2jdUyw/Z5CNGAX9b84/AfqjoKq4YwesLA7CpFO
 HzpEOza8rGgSwSvUijPNfdwfci78P6OBdyS2ziCmJ55FHJxjzRCDKSU2z
 bcp1fK+wBhS5rNLgsbxCHhuRDyAMEKRwusALA7ELMltpSwlGtdLiulcbv
 UTCsngtrgHxwykvFFe6xXe/c4Tmp3sRTL0Z2WlkFz9ap4qA0Xkh/Iojug
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=lsV4/Nm6
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 12/15] ixgbe: add support
 for devlink reload
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
> Jedrzej Jagielski
> Sent: Friday, February 21, 2025 5:21 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>;
> netdev@vger.kernel.org; horms@kernel.org; jiri@nvidia.com; Jagielski, Jed=
rzej
> <jedrzej.jagielski@intel.com>; Polchlopek, Mateusz
> <mateusz.polchlopek@intel.com>; Mrozowicz, SlawomirX
> <slawomirx.mrozowicz@intel.com>; Kwapulinski, Piotr
> <piotr.kwapulinski@intel.com>; Wegrzyn, Stefan <stefan.wegrzyn@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v5 12/15] ixgbe: add support f=
or
> devlink reload
>=20
> The E610 adapters contain an embedded chip with firmware which can be
> updated using devlink flash. The firmware which runs on this chip is refe=
rred
> to as the Embedded Management Processor firmware (EMP firmware).
>=20
> Activating the new firmware image currently requires that the system be
> rebooted. This is not ideal as rebooting the system can cause unwanted
> downtime.
>=20
> The EMP firmware itself can be reloaded by issuing a special update to th=
e
> device called an Embedded Management Processor reset (EMP reset). This
> reset causes the device to reset and reload the EMP firmware.
>=20
> Implement support for devlink reload with the "fw_activate" flag. This al=
lows
> user space to request the firmware be activated immediately.
>=20
> Reviewed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> Co-developed-by: Slawomir Mrozowicz <slawomirx.mrozowicz@intel.com>
> Signed-off-by: Slawomir Mrozowicz <slawomirx.mrozowicz@intel.com>
> Co-developed-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
> Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
> Co-developed-by: Stefan Wegrzyn <stefan.wegrzyn@intel.com>
> Signed-off-by: Stefan Wegrzyn <stefan.wegrzyn@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
>  Documentation/networking/devlink/ixgbe.rst    |  15 +++
>  .../ethernet/intel/ixgbe/devlink/devlink.c    | 112 ++++++++++++++++++
>  drivers/net/ethernet/intel/ixgbe/ixgbe.h      |   4 +
>  drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c |  18 +++
>  drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h |   1 +
>  .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  |  12 ++
>  .../ethernet/intel/ixgbe/ixgbe_fw_update.c    |  37 +++++-
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |   5 +-
>  8 files changed, 197 insertions(+), 7 deletions(-)
>=20

Tested-by: Bharath R <bharath.r@intel.com>
