Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DF587A100FD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Jan 2025 07:53:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6B31C4023E;
	Tue, 14 Jan 2025 06:53:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 55MngR8zMOJa; Tue, 14 Jan 2025 06:53:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9F1A0401FD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736837586;
	bh=zEgJBxi94hvwjJh8O5JVxljdc25gY+KZJlP2sthBjdw=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=YP4naJ5IQowkQUSMc39WBQtmMBbpOxeGMaRUCPjr9p5Fuu/ZuFmXPmtIKBnwamy5I
	 huJJjlLoJ7IS59CzNv4TUHe8JMbJLjgfDPtfViVVJysOtSprBuof6n3unidWauwO1P
	 wpQ+UWKjpLcWDPaxX7NsFr5HPv3OeTc9SotxQ5EuD+ThlW/aXlYqt6tFKA2Yxfdi+m
	 9JUAxl+ZFO43MYTGkXoYuuKX/1HZopBkneYdeIPx9Yjj4BvVMUIYlbVSQZXy+9XO7x
	 l6sOKc+jxCMsumhReeCGI5MH/+uZ4aouyMFeF9nchH6ZanvP9GxgYXvJWMrXnufjmZ
	 sQR25MjO4fcBw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9F1A0401FD;
	Tue, 14 Jan 2025 06:53:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id D6005B89
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jan 2025 06:53:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C3197607EF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jan 2025 06:53:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id g0tORzdyMDKo for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Jan 2025 06:53:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=krishneil.k.singh@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1E440607B9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1E440607B9
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1E440607B9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jan 2025 06:53:04 +0000 (UTC)
X-CSE-ConnectionGUID: JIoY1SmhRHWxGOo5h+Gv5g==
X-CSE-MsgGUID: BflUFv9sSLKskqLZs0VXYQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="47786642"
X-IronPort-AV: E=Sophos;i="6.12,313,1728975600"; d="scan'208";a="47786642"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2025 22:53:03 -0800
X-CSE-ConnectionGUID: g/ef8wBcQuWcN3hyM/8qSQ==
X-CSE-MsgGUID: 2KuHCScbSz63GVSkU/dWew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="109344910"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Jan 2025 22:53:03 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 13 Jan 2025 22:53:02 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 13 Jan 2025 22:53:02 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 13 Jan 2025 22:53:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Zug/HLfgt4xWwCGJvOhRNq66bBFKMiLoq0ca0t6khYVyNJEkiasN14hRiAE4/Kqht/rVwJZyez8N/l0sjizmLvUV7cUTdbYdeOHERaZV0VL+t1v/kY5MPPLAjXk+em+G44azs1ClUP73J4tjDZtPI91OperHLD4O5zsmuRZvCYRNLPCh4/fRF3AeNssksTB8PvEnaNt6zOx2PcWD9pCI2V0dOytm7QhJf4BUz2WpylZBGxnm177+brxwLzNESWJHNiBhfmhuOiN1u+3rK/PDU+nXyBEaisPHMlwNWnkoImVwWHCQUUkC58NsvC6X6NfgxcNpVZDiq6z9zLOYIR7VPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zEgJBxi94hvwjJh8O5JVxljdc25gY+KZJlP2sthBjdw=;
 b=W/rFIq6PCk/RmJutgFJsj0LUBEYZplXCWz1NxLLZEN1QwNyQWXudfKOmHpcgOj1IiYHcxzGkc82E7FHpbZ5StsOXKa6JHXAJ9gUrbjvSBZMCjUtC1lLVU1PeaIO5NuQAnKkb0rOUqSC6pGDyjglcqqqxV7QAbYmi+1aGuWIGK5J0bsUc0L76cKdontrOJtKldI+FiVK1jonOPI1fTKc5ZZKlMOvAE1pFsE4lYfIW3nlXuRiRM3teMVFpqQrF74ZUYcBtKWd405m7gKgUa/ZtJoKvSQYjd/YFPGgWwOYHujhyxs/IruB6k4eyFhP9TtQowe2lVK48KRnMb8KlMKMU6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5911.namprd11.prod.outlook.com (2603:10b6:303:16b::16)
 by SA1PR11MB7062.namprd11.prod.outlook.com (2603:10b6:806:2b3::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.18; Tue, 14 Jan
 2025 06:52:47 +0000
Received: from MW4PR11MB5911.namprd11.prod.outlook.com
 ([fe80::1d00:286c:1800:c2f2]) by MW4PR11MB5911.namprd11.prod.outlook.com
 ([fe80::1d00:286c:1800:c2f2%6]) with mapi id 15.20.8335.017; Tue, 14 Jan 2025
 06:52:46 +0000
From: "Singh, Krishneil K" <krishneil.k.singh@intel.com>
To: Tarun K Singh <tarun.k.singh@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [PATCH iwl-net v1 2/4] idpf: rename vport_ctrl_lock
Thread-Index: AQHbL8yjTvFEKuCxR0yydQudvL12IbMWQfsA
Date: Tue, 14 Jan 2025 06:52:46 +0000
Message-ID: <MW4PR11MB59117363B886E94AECDBDC41BA182@MW4PR11MB5911.namprd11.prod.outlook.com>
References: <20241105184859.741473-1-tarun.k.singh@intel.com>
 <20241105184859.741473-3-tarun.k.singh@intel.com>
In-Reply-To: <20241105184859.741473-3-tarun.k.singh@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5911:EE_|SA1PR11MB7062:EE_
x-ms-office365-filtering-correlation-id: ff2b2eb3-e0b4-4d4b-1bcf-08dd34680dc2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?1A7v1Z3sNATJg0g8YMh48zUu34SDwRkbXi92pYLk6i0mgxIUTCzzCVZiVdHr?=
 =?us-ascii?Q?2ihToeJJWbBXEvDxk5pzls/KFxXUyvoAoh+pwRVtSV9UHQ4RGubTVR58ip4j?=
 =?us-ascii?Q?4+sJcKYc7t9WDMOryMi4kLaRrLAw8gak7cXIpMvHRYAXiveWe51H6MbUW+U5?=
 =?us-ascii?Q?A3HZozvKbzJPf1PFgafMP77+y3xU7PGzPQtaeAS3pBGytNF1yS4b9XTVhIGG?=
 =?us-ascii?Q?eSvz0oWRcdpH53trMNzF/AD4ld8/xrQWiK/5J8j+oG254vI3kIj1n5FpYmqE?=
 =?us-ascii?Q?4oFKdZhDrM5tkq2lFvLj54MtTA+BJjkaq1n92kXLiluo7XjbPsBBTH0zEUtR?=
 =?us-ascii?Q?qRSczeen/+WML1Ay8SAwuNGDZvE6fKkV8tbKmA7CDS/JtKa05491xnpZCTP2?=
 =?us-ascii?Q?wR9dFk01mYa6qr9A5+pu0xgIWQL6LTlf0hn9OngMnbrWvoxNGUe+Iv+9WLB1?=
 =?us-ascii?Q?t7YJILF5RO5BN+u+ub654yELTeg4IYZDyeny0Rcg/vffdCrYvU/8zWvEX8S/?=
 =?us-ascii?Q?nWgkiuQd4goz0boz0Nm2HpqaVAkPJP8mZcoo0vaq56e8DlRzKVeYP4ot4XAt?=
 =?us-ascii?Q?By/nidzeKXgv+wlfJp+BD/ptD924mxBdeAzUYa8yxYpkx0F2Va9MOh5GlEQL?=
 =?us-ascii?Q?wRCqazsbaTHFqwgtZoOAIEM5Ot1TiSaN0i0Wx0my80clXQ6qmEVk3gM3o++T?=
 =?us-ascii?Q?ttZZiXwuxuLOHk2pmqZf0z8DS2vVBZmJqctDZWI/UGNIwv8+m8hlKer6gLuI?=
 =?us-ascii?Q?ZFxXkONRGwbIaLJ49sisx8/i9qWnXhjoltr/VjJlHcQB1BseCmzSjjTXT1ps?=
 =?us-ascii?Q?3eFyuAwH6CCyLMeMQgMkiQDcYhOMpWNGwyBI5cm+oh9fsBoMP4Rim0UohqdB?=
 =?us-ascii?Q?uUQaL+qJxn7LyiXl2nTUkEb7N7+DOwFa+P3WiyTKjVSVOzX8BSz8DZF15BB0?=
 =?us-ascii?Q?L0eOmAgCdTHsQifS1nVueE47O6VDZFwGB4gKtOH3IdKJbf6rENdHZIPaccBW?=
 =?us-ascii?Q?GKlJERQphaLZQxPRko/aW28WuP5wLNqCZT1r9cbIV+bUCMPg/2u36lFDCkjP?=
 =?us-ascii?Q?1jDW23R/G3jQ9BYNsQhxW/9xy6v/svT8oa0pOVkNWz0KzXeLEKQ/A/ALmpM5?=
 =?us-ascii?Q?nO6eu6R8skVIF+F82S/qsvpA0cz+a6SUXbI4gAZf1QOOx2t3Tz8m4qGIlC5w?=
 =?us-ascii?Q?rxvPD3sCb04a5GJ0sluyLR8nbch85nazbrbJHGwrYFjtwFrS2Zu3XYNAYODp?=
 =?us-ascii?Q?zt/GNCmpUe9Pvj2Vdc/zEmZoM9bGXk7iou6bpO2tjLBf8NPeIk0LwXng0YNh?=
 =?us-ascii?Q?dCzSbu93lhhAQsZtz9D+Lki2kFKcONBW0TASed+wclODdWI8XsIiNlq6KK8S?=
 =?us-ascii?Q?GVkq7CB+CiqnGkXF+TbfvuSJQl8jMdEeBHBYAw/TF0HQ5PNe63EyEYxZCqdF?=
 =?us-ascii?Q?NyPQS4uIrMXIk9dzw2jsSh6WTBlbWhiL?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?57IJz2Jtl5XdvYwE1uRPgXsBD5xrmeONzyfCMCEUemdu3CfJXzp4wYu7w8Hf?=
 =?us-ascii?Q?ocAmr773rvo/LOZiwhmEzFDs8+9/+gHphj8xgIuT29XufSunfKjuERZblCqy?=
 =?us-ascii?Q?rgHFk6zOKn1Mx8MV0f90qQt97lJOTMOPfal/gGE0Vw3FeGh4shJd2nkYTCB6?=
 =?us-ascii?Q?ChzfX0Zx8BdEs6vwLuqO3HZt/kR7/YeNs33iGeMe/rF+ki7sJEU1yiZlE36U?=
 =?us-ascii?Q?0oTfIWTsHGLDd1bwBAjdYdNaEP4MNV6JdrK+ANUapOZB1jXaGXBFjxIIkEak?=
 =?us-ascii?Q?7p6ziX0L/y6KC+lBAWGuUkVzJBxKGk0ln4hgmydbms/5RwcR+/DM3AUNJ39B?=
 =?us-ascii?Q?pK9RRYxoa1PB1zl2s2cpQDyyO7/uwzk6X7rujvy0vZ21AztRvuwwLEjp1scw?=
 =?us-ascii?Q?poJtb6Jh7tdfE0j49KuGuBiAeM4SYtIZvU8D683FOJhTFS9Muzf6uKfJOfaw?=
 =?us-ascii?Q?RhdHbe20/5s15NBG1/SK2fXgSywrYG5jdFWsGuPzeFRArtCwaCagHETb5itC?=
 =?us-ascii?Q?lUGqnGvEcoB+KQ5kQw917/JJ3tust7SNPQkHibeYrWV/T1lywac0eLCdYoYF?=
 =?us-ascii?Q?tNY+XuHQWGpfPyIwV2rrdCvMyHBXoNuWgObNnrJMvIJ4ZQ56Y1oDqz98dK4U?=
 =?us-ascii?Q?EbeQG833OiHsBpOQLI2nAuRMy4hUDPVh8BRDSxrx178xpEXJonM9HduSJuAp?=
 =?us-ascii?Q?4LytbfJG07zziyKtUcw7He6jO/6COzdOyyXRXsdr2ls4tAAHaNa7F0UhGcnl?=
 =?us-ascii?Q?mNqXuEOr7vmLQZkkixDpCOJaHpoNrqB3S2wKXNYIGIYP3lyOgnxOt5lX/cVh?=
 =?us-ascii?Q?uLjRiS/zDGrqbwU6x0IL3h8Fd3BebIgfGtbQSFuGpjD96TvOVTJaoMU0fnQI?=
 =?us-ascii?Q?BiXLA6DXqeIfjJNhEgr8FmJU7bwLlBhZ9aysFCD5J4QDfpzLqJGxo+/wRgo5?=
 =?us-ascii?Q?XoMe9RQyEyPE8/MVFFNhEKfbPJlgCfemLu2zL1Z3qd0u2P81Eq/2ED9LVvOU?=
 =?us-ascii?Q?d1ukHAqBuOuzkeGXdNlPbxi+0hEctO+sc43HfA+wHve/roWykcLIBr4QigKr?=
 =?us-ascii?Q?m9vw7JgU0hBZP9NDZJeIi1risRQq/Vtmt8TdR0IpEj1XVxC6MwOoomDYmguE?=
 =?us-ascii?Q?6rws6eUUZ9514e6OHwDdj7g6UOpQ040nf7dIIk8sOMhXOZ7OsuxxthF3K5sZ?=
 =?us-ascii?Q?xEZh8psgC/NWO3QDmBiw1kHhUj5P/Wjv28nGf033gtAWA8Qyic1ohwl/iJ6j?=
 =?us-ascii?Q?B2kFOXm+9mT+Rvl9JTErLRSUTWH7msN+9igaXKeVM6ywlNUcNa/nRQ5SOIxO?=
 =?us-ascii?Q?/oF94CsEvot6amKPmSuScZVZA2numHnqoKK8OHsm/23YXtU2L8R186+QZpVd?=
 =?us-ascii?Q?jUflQrUkunCzpQW5zMG3XZfyXMIX2oErcxLWwquuYQO48+H8sd3IclS1SfGU?=
 =?us-ascii?Q?DVa+2pE2WsV0Z4gfCCQD4AIlSsfS1mrimzc/FTomxgKEBmUuSLapV5T03WhX?=
 =?us-ascii?Q?ftdIJqNPgjmf5z+az5xfgJ6p1cdPb2dXbjzQMSptPYgAB8QLEnVxh1h/dfNH?=
 =?us-ascii?Q?MyjoJaXNn6urHE9NWSGDGbegOE6mP0W6ZCJcC1pL?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ff2b2eb3-e0b4-4d4b-1bcf-08dd34680dc2
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jan 2025 06:52:46.8263 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: m59MlVjvLuuYJhjOhISiv+/YZcCZb2ey/2y/tUOWI+DIP80Fyq85jOaU4zFpqqXfNHNi/9QQOb/YUgvZ1RMF2LKgcJwNeMMBojYlxSFCBwM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7062
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736837584; x=1768373584;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3psYsO98ipkMU8QdlJqwZ7NKOAWDPjiPmGl5vgfLvrU=;
 b=kA0P6pUFBAvSLCoO17m2HythNSKe2z97lN8BXMB58u1LOt63064CPGx4
 q2lZr3Be0c7yq8/kWEspr/1IwFsGDvmD3qLb+LqkRi+02KuZpPmll9nrf
 7FVMqdb71uMAR/eMnqsBhgT4s3J7/3lTVi+GDEAVYzx/lMmGr02X/Qu9b
 XuRdgS2XY18rxZR3kErHqMOMCXlLb6hClE2/NwUIYI0+aJ27XzuORBjN6
 qBFNAED5PU16MuNpt8FlIl3Qnb0rROkPjxo9DhFhBwsXyfUZ2lDc5tRdf
 /aoyqxrRlwTplcLgKU4kR/pWOcHtsG8ZzPNXq4nzVn9T5nHLhqqEYyIlW
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kA0P6pUF
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 2/4] idpf: rename
 vport_ctrl_lock
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
> From: Tarun K Singh <tarun.k.singh@intel.com>
> Sent: Tuesday, November 5, 2024 10:49 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org
> Subject: [PATCH iwl-net v1 2/4] idpf: rename vport_ctrl_lock
>=20
> Rename 'vport_ctrl_lock' to 'vport_cfg_lock'. Rename related
> functions name for lock and unlock.
>=20
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Tarun K Singh <tarun.k.singh@intel.com>
> ---
>  drivers/net/ethernet/intel/idpf/idpf.h        | 16 +++----
>  .../net/ethernet/intel/idpf/idpf_ethtool.c    | 46 +++++++++----------
>  drivers/net/ethernet/intel/idpf/idpf_lib.c    | 24 +++++-----
>  drivers/net/ethernet/intel/idpf/idpf_main.c   |  4 +-
>  4 files changed, 45 insertions(+), 45 deletions(-)
>=20

Tested-by: Krishneil Singh <krishneil.k.singh@intel.com>


