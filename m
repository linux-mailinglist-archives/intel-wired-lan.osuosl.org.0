Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1574FAE6FFE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Jun 2025 21:45:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2D23140B99;
	Tue, 24 Jun 2025 19:45:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4ci7Zk2Up91z; Tue, 24 Jun 2025 19:45:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 99F8F40A28
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750794324;
	bh=RRd70WWIzUqaIsoqU+LbKZj54ZKlkhfWFm0wX8tAnwA=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6lYeyCBTPhbAMPpEQf/xHk1UVqD/DmU5il/DshSC8kHMc/dlerRhGORMDht0Bh+id
	 TE8AmSaNvA5hK1G5i5zfX/zbIQncnrOdwG2p5r2rToOfK4IsFKbdwxS2jnvw0fO1k/
	 9o7//pLY+reVbti6p4AjRMtsqlNfREemR3Z0APqybaUAbk9Q2zUFaWHFvCIgqNFXlx
	 ZLT9e7UmvE9nQL4SkYOW160yELeIIVoxO86yKzlfOzwoJzYOcMmRMEJKRtg1MBDWkw
	 kospGJU6saQT1VeuS7UgJwRaCpgSe5cvO6Z4amp/6o6T98UTIYL0ClTv1qmRSrycTz
	 2xg71pOAdVtzA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 99F8F40A28;
	Tue, 24 Jun 2025 19:45:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 5DD50154
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 19:45:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 426094072B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 19:45:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VS8Cmrf6lBjT for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Jun 2025 19:45:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9F08940707
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9F08940707
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9F08940707
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 19:45:21 +0000 (UTC)
X-CSE-ConnectionGUID: 339WGVuUS4ieIjsMoUlwag==
X-CSE-MsgGUID: FSBfbRGjT56uB0CHd/KIgw==
X-IronPort-AV: E=McAfee;i="6800,10657,11474"; a="64482944"
X-IronPort-AV: E=Sophos;i="6.16,263,1744095600"; d="scan'208";a="64482944"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2025 12:45:21 -0700
X-CSE-ConnectionGUID: 7JWhz/tmTgasIoU3LmELMQ==
X-CSE-MsgGUID: XJFzhnmdRPWRhc0DoJbtRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,263,1744095600"; d="scan'208";a="152179009"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2025 12:45:20 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 24 Jun 2025 12:45:19 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 24 Jun 2025 12:45:19 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.44) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 24 Jun 2025 12:45:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VOen9K9120NuVohQtdfEbFSJFo3rxcAe7I6Z6CfDbBn9teNfsAldT46i4HMBlMMPHg0HDBlQQIXXhik9sdxC/Y8qhgzDntX6Ut5qsF1FhKelRvJoAAnxWdmKwg4kQRYGLftF4bG0FOjKyi11f2cS9s7igftxM92mdV1ybsDo9riMoffiA6gd18mcJcL8dxT+7wTcdodUKrFVXql5NcQjFhAy44IvXzEC/jPmt7EF1hjXapOR3Q4mQf4EvTpDzmC3cg8GxOhbMwwCoIizoKaw3q7ugTMHGT5ZxphjRcOVNytbDbJK8RX/t2EweneiejB+993o0BFBP4Bh3spolHzM+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RRd70WWIzUqaIsoqU+LbKZj54ZKlkhfWFm0wX8tAnwA=;
 b=GcBQk8HCP6zPWsJamTtblLf6ZP9ZCLEcjdgaOEybnckicaMzdOG0zZGMOllXwFS5u2txNintXCRFK+HLVXWntwEK53JwDAIiqrHbyq/9Nm5dKcQT5ycevJLb7mjGyWUI1FOOkLz8B/X/eA1gYtt3nhxqf5pK0Ly3VK+RcVtdtiUkNMX+woMoCVs8ggksOZ00cFk1jrdqZ71yokjHy8CQ+6d74+en7hztUaMxH3eo4QcRpGmdDuzO2w/ZOqrvK56epsOyyaTWMmSZLr+P2XSjI74pjUUnxNaR5aOGABDGrQ1H6jKsc0+JfTsu9mh8uCHWvEb47qiSz+Wp7w0oFzpzlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6219.namprd11.prod.outlook.com (2603:10b6:208:3e9::15)
 by DS0PR11MB7357.namprd11.prod.outlook.com (2603:10b6:8:136::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8857.29; Tue, 24 Jun
 2025 19:44:48 +0000
Received: from IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::f302:c534:2d71:822b]) by IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::f302:c534:2d71:822b%4]) with mapi id 15.20.8857.026; Tue, 24 Jun 2025
 19:44:48 +0000
From: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Olech, Milena" <milena.olech@intel.com>,
 "Korba, Przemyslaw" <przemyslaw.korba@intel.com>
Thread-Topic: [PATCH v2 iwl-net] ice: add recovery clock and clock 1588
 control for E825c
Thread-Index: AQHb5T1xOO6+IT+Ef0qMnLx9wxO/C7QStehg
Date: Tue, 24 Jun 2025 19:44:48 +0000
Message-ID: <IA1PR11MB62195A68F29383B92CDC150A9278A@IA1PR11MB6219.namprd11.prod.outlook.com>
References: <20250624192211.3043049-1-grzegorz.nitka@intel.com>
In-Reply-To: <20250624192211.3043049-1-grzegorz.nitka@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6219:EE_|DS0PR11MB7357:EE_
x-ms-office365-filtering-correlation-id: 254c17c1-945c-4434-5bd7-08ddb357940e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?xZLFaokU76vS3gt2tbC7tgGHLWKhIWaEA/XW95t2Pj6Hk4AVHWazITaNatRE?=
 =?us-ascii?Q?fCAoLknWyeQHFkP4E+vSWkG2Xf6NmhLNHCCkLd/SrEOi6kordSmx0NG+JWXX?=
 =?us-ascii?Q?s5a/HagKpo3SciI0rohaadpgxEZVzuzZYJXfyuvKTlrwLPYHBj1Kpewwbvw+?=
 =?us-ascii?Q?j4jZnJdu4BDPkWF1jEFZSJRb6nY+1RLrMlQLi3HDptvg62KOdda1SHKaaEY2?=
 =?us-ascii?Q?ijbN1r74dTGmpvqI+xS1tomGYBIvRX/cdS8NyLzx5EygeRsowhlGD7q9HJpd?=
 =?us-ascii?Q?yPGRuKHN6eReDNpZtLyPn1JK98BaOVkzosv4huhRnYdrEWM7zfgUEgcvh8Qw?=
 =?us-ascii?Q?SmBQlTuNejNcQtOU+LWY6wcVw64P5cBs0zszFsBSc7HXlbXapc2OKDgAExQt?=
 =?us-ascii?Q?fB/cl8fUfkfEhqiNy19MMqxvcJix4SvheEHyLIe23vqag2RUirQamwFWqPQS?=
 =?us-ascii?Q?n00BJdLpn9itGAz8slUr2O2DnWq5AgR/IzEOQCx4mfLvVqJoGa5qx3s1ICQT?=
 =?us-ascii?Q?PYR8GzS9fFHcZqvYKb+gG6wIBgg0kCegTgyvthKhcnYnl2Awq+f4MTimSnLl?=
 =?us-ascii?Q?ziCvhY11fYCDMqVG9G2zrElOdD/8mJDSM13hHZlRF71eqpFjwZjdPAD9x1JQ?=
 =?us-ascii?Q?Eg8u3vgvnY6C+OGZ3EBe1H6QCypmPA7luhWxH40qJ8WnGWUdXP2dM4Lp8kfS?=
 =?us-ascii?Q?yFRXSgs881M/G7XV9RIgtm8mUnGeicQZJI+7LTePP9rLpCe5GCcBFAWiEJTJ?=
 =?us-ascii?Q?3U+C19FaM8nw2vQ0uTV7wBFK2zfqD2v/YtFlTgaIjqsaKqibHRKWvhcKyQjn?=
 =?us-ascii?Q?/N/Hf7mYqgM3FKXvi+VgKIXvTYM8Dz3GrYDN03E76NU8ls7o5fR3Je4/1NFx?=
 =?us-ascii?Q?L1Y1GZqSi+oVegOy6k4eA/t17VyUt1+IgO9h92YiWLaLN+I5WzWl9h6PYeHb?=
 =?us-ascii?Q?f+BlnBuotSPBYHaa5t3vFBPSjKwIfEDrbaR+OxzwFEaHoaKXXiv/BYMqIuOX?=
 =?us-ascii?Q?3/9FqU/XJQzBrUnvez4XODwk6V6D8nLRRxFRZ21/4BQXWXzfP6mlqKm2OL29?=
 =?us-ascii?Q?xMqbdngpzyIHbnK6HjebBOUvXdnBeQel4PyCP3rDRYAKBWWhv054g5RtUdUZ?=
 =?us-ascii?Q?8Z39ifrmQfq01/AlOWMnVVm8K0InxDB1K1CPM7DmsuTBH1p36qcnXLxxT4Xg?=
 =?us-ascii?Q?MZktFPEXViUbTX/LWkaTGr24IRDT0tT6z2m/jhnB++z3FahK/M7VCtC3lPeD?=
 =?us-ascii?Q?AntLW4tkQW0yx11wW2UMGeF0UIV03NvkIhUR6Hd8uy9z5rVER4V5Z5HlHLW5?=
 =?us-ascii?Q?j+4TH7cjTuR6t6RJkoz2iV3Ald3T5AcoeBjJDtbcAzu68MuW1Xe3WVI09nUX?=
 =?us-ascii?Q?SQ4ZvndFdyMYoPBwJvTalbDKC2V1gqb0Wa2OOR7GIh+xJD991DAbZ0EPpRzK?=
 =?us-ascii?Q?HYcSvnPoZO95QqN+2Oflvzcako3eXYHwheRyVlJwLtTETyLmgUaRnhE/eRyO?=
 =?us-ascii?Q?52ew6suojNUZ0CU=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6219.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?GjdDrW5vf8ln0SOPU3kXpkppiEhM9K2fGWAiPeTuhZNIThoovZKpby3uqL0y?=
 =?us-ascii?Q?OLuLQq5X98yG/cSY2cyy0eAIVGM1vu4xsYMOIjQxU5MBhEylb+FLAOfnQCOg?=
 =?us-ascii?Q?45MlqoPKWTdeQr41zICNw/eNN0M5My+PiYAKEFf+1QOlpJj9YdBfS+xWIS53?=
 =?us-ascii?Q?5ru/WmTy87g+bnjrRf8vG4mtx9MGwVIfpjiNIhFdR8ugZji7ey7f97XzUzne?=
 =?us-ascii?Q?6hrseKHKCrqmAf3XNlvNQHvTL3hQ3vYsYh9dv5mzVO+hgzvvVQuj++owmGGW?=
 =?us-ascii?Q?V3gAmH4ptqFoEoqSyWB9zLQCCoZB54yPlmYDhOED21BvYU80ro76vT5OrUtu?=
 =?us-ascii?Q?eil+0tBlGf1RpR1iugAuMS5YGcdFgOeiftnLo5diMZqCeM4piJGXz1MHlrlZ?=
 =?us-ascii?Q?gl+6fs630QQ4Y/wzrQETBnfgFUBJoqGeSMN6FewXRnO0TPKiM8PPdrwrf8Jn?=
 =?us-ascii?Q?H3VekdZEKZYCgoPCNb2Mr5RuH0GxMeEmWFQKVjZ8lMJBy1E8u5G3FE5DWnQb?=
 =?us-ascii?Q?Qo3FNooY402Y9ig+ojiDWnEJ3kqQBSsRQFpNYS56URQef6Os50Mdq5kuDxY/?=
 =?us-ascii?Q?58Q7i1bByEiytwCqKY4hUHrUHEvjgvdOzlz5CSjQIAPKC/pSZL3ahaJ+OW26?=
 =?us-ascii?Q?flyjLLdBs8b2PJJ56m5Rk44CtV9swZClTjjhRKvJeWeMhjfj/BZOqNvi7X2H?=
 =?us-ascii?Q?82hBs3axrqzKA9GEBbC7INAASrUz8p7C4/gNKRI0wcm4NGjr4zLgmOuoJ57k?=
 =?us-ascii?Q?iDoUsz7B7YCaC5oG0v/4PvgHgVZKYUzPNbROVOzLNMKFNIGKpidhWo0Jv5fn?=
 =?us-ascii?Q?T/rfGG3B5/FrAbr4n3n7m2S5x7TIwgp+ga4NBgsVfIo+/1lrJKPXG7VFTaNK?=
 =?us-ascii?Q?F6OlBW3PLxBBXQRx8Kn4vAUnWafBK40Ki5JbhhzPWMmqXwhC1zRkO6dlrAxK?=
 =?us-ascii?Q?Qd0zp1p4Lua7ijOWO/yb4ja7X2OqzoMj7osPQquLjJnWRUAAz3wUgdjCPeEk?=
 =?us-ascii?Q?hVqG7gnmg4nNOPUqBmpFJ1yovWuMBq+8ld3XNQDlgL2+kHq6EKXbpJWfHD+7?=
 =?us-ascii?Q?SqTlFF3tT5mhmMBmoG+I/F0n6paV/Cn2Bc9M4zJd9CsoyIvTTpnSuQZLmutC?=
 =?us-ascii?Q?ePMRF50IK0+4wpIZolG54vnbbA6Y6rsjOiGdDtBYVboeGLxWr9HqH9p9LrPw?=
 =?us-ascii?Q?kliaz501EXIYruWTnKiWORfXBO8Zo5kWUJNjaEhPKwolLwEUR4ei5ccCNUHW?=
 =?us-ascii?Q?zVkQGYjrBI+l2JhAH6m2xuYcJ+zYSUYs793gtG5+5MdpRrlOlMhRZOiiS0d/?=
 =?us-ascii?Q?tmhKHZfewlbOA88FiG+tZCLB4Uv9pSf3rUOiOP1oypWjZtERLkZghhU/XAFQ?=
 =?us-ascii?Q?GPztFw63YHhS6y837/vGrX4Hnhz5A0+ttvzsNcubnBdxVRrGnereVEv0cHBa?=
 =?us-ascii?Q?G5mif11o6vHIVwoCDGkCHffSzaxXcDURsIxM1yV4hvHEDx1o6OEfNzgYTYsC?=
 =?us-ascii?Q?6Bt7yXQJXh/ZLDUPRnDNlc4GzksnmxL4MnKEYJC30RtiY/7e6HBZs6nGLgeh?=
 =?us-ascii?Q?ZKOfJs0zK6ovNNWfmrKuPLAyW3bbX0vf5U3gWC88?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6219.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 254c17c1-945c-4434-5bd7-08ddb357940e
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jun 2025 19:44:48.3431 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FWFHmWDtCAwX9NGoLclNRFmE6rZvCGaQsnQNkzHWmficI2d6czO8A8c29VSDbDavAHDn20wp3OQAgbLU2NzWDB4Hu1Wey6ZsXbvX2YLKPOU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7357
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750794322; x=1782330322;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=RRd70WWIzUqaIsoqU+LbKZj54ZKlkhfWFm0wX8tAnwA=;
 b=Sho/mwZzHu+3jQMScGan4GjQ9ex5/ot0IGCwvszznEy++QeISL901WI8
 yfgN+txW73tKDbwlRjYRvBB1VlkD8mPQFa+81AS5LVkoj4BEbKI2rfReN
 GTUa7GxkYxJftow0ItvdZ/gMmijbb5ATZiTkdjQKp8e9jz2LQowRp3TCu
 4zqCzdgULA/9JllRoY2KJSCGhd5nxA/hPLE7fh6AX5KnyeHhuINBi5ZnK
 6YbfbCTM2Mviwt5/1JKJvt5UmiaFwkEfqYghhRFfvs1czp2iNCMbrEGOe
 3Hpr7rV63CrFU5BkP6Tz+IORG2Aw7oYda9Mg4ExbeRbmftIUN3FtP9aW8
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Sho/mwZz
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-net] ice: add recovery clock
 and clock 1588 control for E825c
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
> From: Nitka, Grzegorz <grzegorz.nitka@intel.com>
> Sent: Tuesday, June 24, 2025 9:22 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Olech, Milena <milena.olech@intel.com>;
> Korba, Przemyslaw <przemyslaw.korba@intel.com>; Nitka, Grzegorz
> <grzegorz.nitka@intel.com>
> Subject: [PATCH v2 iwl-net] ice: add recovery clock and clock 1588 contro=
l for
> E825c
>=20
> From: Przemyslaw Korba <przemyslaw.korba@intel.com>
>=20
> Add control for E825 input pins: phy clock recovery and clock 1588.
> E825 does not provide control over platform level DPLL but it
> provides control over PHY clock recovery, and PTP/timestamp driven
> inputs for platform level DPLL.
>=20
> Introduce a software controlled layer of abstraction to:
> - create a DPLL of type EEC for E825c,
> - create recovered clock pin for each PF, and control them through
> writing to registers,
> - create pin to control clock 1588 for PF0, and control it through
> writing to registers.
>=20
> Reviewed-by: Milena Olech <milena.olech@intel.com>
> Co-developed-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> Signed-off-by: Przemyslaw Korba <przemyslaw.korba@intel.com>

I put wrong list in the title. It should go to 'net-next', not 'net'.
Will fix it in another patch.
