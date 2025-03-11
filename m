Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F2464A5BA0D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Mar 2025 08:39:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C8508812BA;
	Tue, 11 Mar 2025 07:39:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Eq7tNbLK9ki5; Tue, 11 Mar 2025 07:39:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F285C812BC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741678782;
	bh=Jq9GNLbu9RtN6+xyFgy9n8ihmv7U94YQLiSdbzcbe+I=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=eSIrOWlqW7Ck4LHZ9NzAvL0s/6OtzG5FidIzxc1h6O9p0WUSJ0q6nIcwD2DTIYpw2
	 yXxB4ct9hm0wryHYSSBKpdMIT3gun/aCTdD8nqU1+GV/BUUOQszWeSZ2QtdxLbY/e1
	 wpM0j0no25W6Gs+nmkr69CoelK1m5i4mIgka/Qf/XHgxq6c+gJRYvw85eJ8HSWUf9T
	 OlD3c6SLIsYEMVSwSex5vj/DSI3Ylwt4pCa6/5jBektfOT4wSLVr289nuLkFn8MkO9
	 LFZFJFb504Mk1hR9uZI9OyW4uqIUd+pzjcKnTTEouNb7IVUgcoCOOxKhf9k4J5eZG7
	 Uv71+iGMko+Ug==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id F285C812BC;
	Tue, 11 Mar 2025 07:39:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id D8F211DB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Mar 2025 07:39:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BCA6660AAF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Mar 2025 07:39:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WUog2J28CarN for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Mar 2025 07:39:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=bharath.r@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C9B0A60A74
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C9B0A60A74
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C9B0A60A74
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Mar 2025 07:39:36 +0000 (UTC)
X-CSE-ConnectionGUID: 3Ul84FZkSGeoISlaBvnD3Q==
X-CSE-MsgGUID: RzyORXz9Rqm4+XwZ100vUQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11369"; a="45488957"
X-IronPort-AV: E=Sophos;i="6.14,238,1736841600"; d="scan'208";a="45488957"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 00:39:36 -0700
X-CSE-ConnectionGUID: 70NlzV1ESXmadv0UmjOB4w==
X-CSE-MsgGUID: wgd7r7wzTJaYE1yWQresQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,238,1736841600"; d="scan'208";a="125436425"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 00:39:36 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 11 Mar 2025 00:39:35 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 11 Mar 2025 00:39:35 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 11 Mar 2025 00:39:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NPFObK7ZOvMKrD3JVTvTDFqfSQRYqthi2DaGHONwPH9maQWk9+JN/Q2xFRKYveTxdhtzciZ9qHb8BfRm5M0v2RFwmz/sVUchseCX8BjdY4Lh/ac5niJ/URXOwanJvANaybD1F3W8LOgCHu/O6QY9gBC0gNhlbJW1ONe2bQfXesEH31KpQ7FD9GTiXcQuGswEJ2y2B9f0Tc2jJszqcPcRYSpinZkeUNsTST3fDyU6U8ZF/7+b9oN+LukJduD99Cy5uFqyIhghuuebzKxtFNRQIL52USIpGHDurRu9istGiHIC4+UyG/QIXJKR4USgSW1mCXE4LJLyC5JF7WQa6TquTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Jq9GNLbu9RtN6+xyFgy9n8ihmv7U94YQLiSdbzcbe+I=;
 b=f+P9I/S/ZU11RC8doBms1ZWlBpSAXNjMj3vXdiMe6KSrjo61ydgBR9EDXoDNeU0QvmjeemV411x8JtBLlZRGf5LIkX0B3wf+5SgJScjmNoGEZZQsfsZMy1ZUHingjzMLMmFhdf0OzxAk/Y03YvWMfkLOCadGBmT6c1ZPhAet1VpF7ZbDHMaeqEsjS77OSyMoRYCCqCWFn6El5UCS5idOTiihSrrjaU2DuwMNA2OgxhwYRydm8BBjUtKyvAdS8Wdgc3B7+zWaKxT8S+V3dZrBYnay6ltgqjxLHlmRl02qiZp3bpzAjsqnoqZ3thC23T6fXrtDsodGwhWIn3Vh8dlBrQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB7965.namprd11.prod.outlook.com (2603:10b6:510:25c::13)
 by IA1PR11MB8098.namprd11.prod.outlook.com (2603:10b6:208:44b::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.27; Tue, 11 Mar
 2025 07:39:28 +0000
Received: from PH8PR11MB7965.namprd11.prod.outlook.com
 ([fe80::ad6c:cf56:3c3d:4739]) by PH8PR11MB7965.namprd11.prod.outlook.com
 ([fe80::ad6c:cf56:3c3d:4739%6]) with mapi id 15.20.8511.026; Tue, 11 Mar 2025
 07:39:28 +0000
From: "R, Bharath" <bharath.r@intel.com>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "andrew@lunn.ch" <andrew@lunn.ch>,
 "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>, "Jagielski, Jedrzej"
 <jedrzej.jagielski@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v3 4/4] ixgbe: add E610
 .set_phys_id() callback implementation
Thread-Index: AQHbjDa1OgvGdHK26kuRW72aHBbUJ7NtmM9w
Date: Tue, 11 Mar 2025 07:39:28 +0000
Message-ID: <PH8PR11MB796540293289014CE6B0871BF7D12@PH8PR11MB7965.namprd11.prod.outlook.com>
References: <20250303120630.226353-1-jedrzej.jagielski@intel.com>
 <20250303120630.226353-5-jedrzej.jagielski@intel.com>
In-Reply-To: <20250303120630.226353-5-jedrzej.jagielski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH8PR11MB7965:EE_|IA1PR11MB8098:EE_
x-ms-office365-filtering-correlation-id: 64278bd0-05b4-4665-5be1-08dd606fdad8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?0tnlvbH4+qLkA1mzOMBvY3bbZ97GjZfMStXwZKh8c0VwS/GKrpq9tfBqVsrw?=
 =?us-ascii?Q?/plwyJut1pdkyDywTgnFkz3gqTOpCm8ZjZUZey0ul8jZ2upEItqXavGgS0xi?=
 =?us-ascii?Q?aJjZN2a9Gzzd9BVTN+I+AUnta3EQvcniFws1ZmTRBH8vMv2zHLX16H0r1M4H?=
 =?us-ascii?Q?LXG4/yq8WYZAETCZuiR9IMBSne2JhHoCkBmz4RL3uwVCPfP/YxbPHzqTCAUx?=
 =?us-ascii?Q?4pnX8FeAgFE5gqALu/rb1pS8KV5mNrVnD82V6X65uSHSoRZHs3iUGMRbAbOu?=
 =?us-ascii?Q?bOPnfeAQzNYE3HWlbNdM0Oa53GElzcODYUWn84I1t3Ujxx0s1hvDkBp5a4HO?=
 =?us-ascii?Q?FtBk69jPAwGdUOV0a8Z4kRh9XUG76AdqKnVcEYh4zAiEqt8tAVFO13UeCmb6?=
 =?us-ascii?Q?mzaPIcK0/4bG4cwnu0nndNK4wm7AIaQmAULq2MyAFPEr9gdikv++OX6bxEqZ?=
 =?us-ascii?Q?EtlJnwUHGfvYFx6joIdaa7fS7PT6fOZDPFISlEURyosS+Qpj2XTzj4ByHxLi?=
 =?us-ascii?Q?NkJhw4Br4RVka9yCyTXSpHXeOqUGkatbodCYpnuHOU/6mn0y4kXfl36uiYSP?=
 =?us-ascii?Q?GucoMQLV0EslVOqJ6U/ZPIkJDCESOFD97kfLJOHNcDcNawmPCeBvdA5sliHi?=
 =?us-ascii?Q?DhFayz4XpbAL5yGZr8OY/cGPGWwlrhfYk+Up58er/y9PgmjEBX/ltc0jmrT8?=
 =?us-ascii?Q?RV0BVuXoc58UyguFK1J89YLG3GznuM0xtLfraCU6R0q9AsdoBSD7RdTmmqoo?=
 =?us-ascii?Q?fsOZ1Ei+Jgz24r81HXBNawQYBTq2cY+mSOll8wBWUQwiOuo+cQvecN/Zo/+i?=
 =?us-ascii?Q?jlw53e4uG+kSH+CJKq6gIjnuBX5te5oHdeAHODW8jn2+gaBAZEu6wGHwimQ2?=
 =?us-ascii?Q?4mKwUyqqm68t2Z8Edb1Z5FkUiL75LV3XCJHQgwQuxeF3pKIZLdRhLIZNXl9s?=
 =?us-ascii?Q?j+/hsOQxpqUYHaIv10BBm/aCb6IuKxu9B3DQSqy717Stz2oVnOaKuM+AYn/h?=
 =?us-ascii?Q?z5BmO1Lclr0caIXOsVfm7yL9UTCa49jLndnqK0YYvmTzEsAFHWAm6PIqb8Td?=
 =?us-ascii?Q?ZIqjm49vRJlvnrWlOeT5G5qLA1F+VWJqq5hsbaa6SGvdvIS8X4AzICKWvOB+?=
 =?us-ascii?Q?Ohu+y06EHla9I3v73zmxBRqdFDbLGnbbuSuvswGqGfDLr/H5vBQlckz3EdBl?=
 =?us-ascii?Q?GAIpdUdSGQXAwlyKic4gORJRzvkqrPkg04oVWGESQYGThLzQHAfobjWENeLx?=
 =?us-ascii?Q?ztxwb7I81ptHTznxeCv2FnjPUV1evMKRcOtZ2S0/wfDOroV+fBBpV4OBImyM?=
 =?us-ascii?Q?synWJ3nLUCeMxywWzkKyY34apUWqbx9+NnNqz7gU2eME8fEjVEW1HXZBCWGQ?=
 =?us-ascii?Q?XXag6aZgLvfWkiD+jqWELnuR+Lh+F+fcGtePDLeUp8Mrxsc5Qs985DVbG78X?=
 =?us-ascii?Q?+iA3F3yElBY=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB7965.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?fAvPDcUuAM6uF07ge81wZCcUqesLREDMAml3pb3XZc9qJSTcY1QVQFF+E9lN?=
 =?us-ascii?Q?fn5paEmMmY7dTT7TepAJplCut0Dhhju/jdTWn4LqMykTx4GkYwJMLJLwcLh/?=
 =?us-ascii?Q?m0DktDnlJTTp43CMTk/nuNhVlamTCjNQbwNv/r+0AenYEcSh1YjTgk5ZnPn9?=
 =?us-ascii?Q?O4hPbheQ1QAt2RsR+QxNtabRTE+/bmtOxjOIkWJYDBNgN0XeC8eawAl3FuyF?=
 =?us-ascii?Q?YQiBC3z6IH4pdgXsx4fhJQXa75nSEaiQuBJZAeUOxhss8wn7BR3tvfKqUX6I?=
 =?us-ascii?Q?N+ACLhCCM65sBhVWSO2/Yjo97vxZG0gtdyEUMlywQ5SlGOl3kPopt5B8d8GB?=
 =?us-ascii?Q?9UlXF9c+YsDyqQ9EZeM4CeAGAyMUoVpTgxV6+e2br7aC2Na4/7VjRloX2Ltp?=
 =?us-ascii?Q?YFrLAhrfd/kp2WYX9C+BPyfxK3zwOmvt/v6eX7aow0XebXEXuQAue59pPvUU?=
 =?us-ascii?Q?tabNNtyp40HQ6/x5i+F8rAHYT/IBmEjTbgOqvm5X1B0uyOVjPjLSjhCn4rpJ?=
 =?us-ascii?Q?VDmOsKpS7JaaIRFLhua/ZfFE74CTjM7PDaNMyWtnz9zL2YtajV7tBHJNd/sE?=
 =?us-ascii?Q?bK1/oLwem+5RVBPTM+Fd4n15jYHNRkrimV6kc93AKCdW3drKBCpOinNKCcE7?=
 =?us-ascii?Q?YuIl+LTkJ8wG/+Zwxqi7mwE38xzrskdOb4VX2prAhuRpH+ZLwqBE140+ZvQd?=
 =?us-ascii?Q?86o/VoUFuLyln/Y0TwENC8a3Y5tlf0WCwYS96+KUZUq6zHMxrH6k9HDhBo1x?=
 =?us-ascii?Q?4g3hRKabICuHjM3s1OgYjVS2LpzBnizx/qBKXKqDs7RgVShCt7+XFXn62w4C?=
 =?us-ascii?Q?dQpYkH7pICee1/UmW21zuFz4lMHdbLlijWwPMWwMVegRCkDieLgFw1AtPd8l?=
 =?us-ascii?Q?BX/W4JGOk3nPUTgyKeXC6gqifXdBwejSOWHebOwOCIwH4psOmHz6IPj0XIIY?=
 =?us-ascii?Q?taV8hmt3ugTSxpkp7C062ZcaZQ0/qBoW5M5EkTrH5JRHo0RFa3F2PZvbESp7?=
 =?us-ascii?Q?hsRJzw00ADpt3d1I/kxmX5TJCiFHrbxpGMzEAeiI+BjD7cNv6eWlfIadKkST?=
 =?us-ascii?Q?hkOLU0IGm2m4Miqayvf2PZcyQL/HUkXI2mhJ35X3v16VgoZEzApUWOIeD64Y?=
 =?us-ascii?Q?FIb/qKolBAd+KV5CeLE54H1Kj+84VDDNHJe0V5DAkFSygPFdaH4jzo0OWXlX?=
 =?us-ascii?Q?0TM12Gg7FSchs53J19YV0DhYDDdKqQwMRvhABUEqaK+cDkjjJH7f3I+P1i+q?=
 =?us-ascii?Q?iF4wEPEG/0aAqkoJa9TvNF4J2oVgbxmu6b/YvJMZfIBwpJ33/jsrBTm/iixf?=
 =?us-ascii?Q?AhfVJuez5P2TrXWjfg12oRP/COApfnJoi/sfRyQ+M9ocPYHlLmGssIf15iCO?=
 =?us-ascii?Q?oyP2syGYbSx0rw7y1DAdLZ4sQFDfKDeKQYuQKLjiZia3HlSHtGsxzWVF5jVT?=
 =?us-ascii?Q?/gmtrKvjydSqoiaukU7e0NgJiaY7qIHOsQcbWcq5lYoG/+5g9RMJS56R2QwF?=
 =?us-ascii?Q?UE0xp33pXSWXj4hhregx5N2/LCBwwWvtBP2ScJ+Dtjp686h1uctTPZtRmvUc?=
 =?us-ascii?Q?Q2J33zXO89BC1atJuDQ=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB7965.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 64278bd0-05b4-4665-5be1-08dd606fdad8
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Mar 2025 07:39:28.5601 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ow0tKFDN1KwNyPqnQgD/HK/svPQCmZ0RhP9p6DzZmsu7uSgugq3YlXBNSK4D+0rSa2MjEWj0mhcl7CSoMgGPUw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8098
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741678778; x=1773214778;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Y0gGojvXviKySj0Gstn+dtBnCtSGpEcE1sKOU38FQQs=;
 b=FwqLaexHSTK21QI7Dam2jxYPOJL1bApJCvfl4MwHbgURdpnJi4MA+WL1
 2XZBLqst0n6Hnt2CNsAZ7dhURIP8E/ScpY3zbolb9eNbaYfh+tzr0NMLv
 LgDwEXevB2uPNOwSaXVXkufKJ3AbKUmwi0jQ3Cc1M2yzCWHwg2wVVOEtW
 NV88EnRMJS9KJEwZ1KpeEnR+Ff7JCdlD7OLg/oLLs13TxDZz2/VnMArZY
 Yxy6JaHVGGTPcZN65FppZU6CncD9zQZJSK25lwLwTmVry/5hU50LzrcIT
 9NHoz2mFVwx5uIbaN1WTfbK+LYXC67Er9g3reBrj+4LcOpBC/pO9e1MvT
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=FwqLaexH
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 4/4] ixgbe: add E610
 .set_phys_id() callback implementation
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
> Sent: Monday, March 3, 2025 5:37 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>;
> netdev@vger.kernel.org; andrew@lunn.ch; pmenzel@molgen.mpg.de;
> Jagielski, Jedrzej <jedrzej.jagielski@intel.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>; Michal Swiatkowski
> <michal.swiatkowski@linux.intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v3 4/4] ixgbe: add E610
> .set_phys_id() callback implementation
>=20
> Legacy implementation of .set_phys_id() ethtool callback is not applicabl=
e for
> E610 device.
>=20
> Add new implementation which uses 0x06E9 command by calling
> ixgbe_aci_set_port_id_led().
>=20
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
> v3: move the #defines related to ixgbe_aci_cmd_set_port_id_led out of the
> struct definition
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 29 +++++++++++++++++++
> drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h |  1 +
> .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  | 22 +++++++++++++-
>  .../ethernet/intel/ixgbe/ixgbe_type_e610.h    | 14 +++++++++
>  4 files changed, 65 insertions(+), 1 deletion(-)
>=20

Tested-by: Bharath R <bharath.r@intel.com>
