Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2344BB0C07C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Jul 2025 11:43:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6125181EAD;
	Mon, 21 Jul 2025 09:43:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EIPWf1DEIC4c; Mon, 21 Jul 2025 09:43:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8E63E82033
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753091003;
	bh=FRqC1+PbFnKrCaFsDPvEDt+5mdDFlEIXRdoOZDU6MiU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=TfSutNsJkE6DepqByWalvT2sn9LALOgfCos36Y+78TIsCmozNxH+6sqME8S0uz82K
	 2yXadJgqcpXSUgomEuCq/uM7VgwzSoBGVz2l9RrobV0upRZlsRv2tCVM6hh/YcFYaj
	 mBpMjYVWNQN5hKbjXe9HVWIXb4R1nrjQuTCSqieauW8FEjq/88W3uSgC4vWdAQHn1p
	 GKL98FG8BaJK1J/C2plWpE2FBaXc1o54EEaBrcICL22KUhZrAa1eqqHs9paeot76Dd
	 7ZPVRtepb+cOH75nr8bPbtxyYNgnDAToSL1LTO07mxVvzTcCuPm05JGZswav3SXlnE
	 ejhg119IxwBSw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8E63E82033;
	Mon, 21 Jul 2025 09:43:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id C7BA8127
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jul 2025 09:43:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id ACC7981E8B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jul 2025 09:43:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0JwD00DV09xj for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Jul 2025 09:43:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C4B9D81D73
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C4B9D81D73
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C4B9D81D73
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jul 2025 09:43:20 +0000 (UTC)
X-CSE-ConnectionGUID: 20vnlYe9R7C0kbk5fEmKuA==
X-CSE-MsgGUID: 5mX0OE9iQ8+tVIOs00VlBA==
X-IronPort-AV: E=McAfee;i="6800,10657,11498"; a="55243247"
X-IronPort-AV: E=Sophos;i="6.16,328,1744095600"; d="scan'208";a="55243247"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2025 02:43:13 -0700
X-CSE-ConnectionGUID: CgxTXmecSzuJCbZsRP4Ucg==
X-CSE-MsgGUID: IIs/XncETgSPTSbdY5GUnA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,328,1744095600"; d="scan'208";a="158846229"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2025 02:43:13 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 21 Jul 2025 02:43:12 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Mon, 21 Jul 2025 02:43:12 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (40.107.100.70)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 21 Jul 2025 02:43:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hZ+MHKFIYHg9T6YIpdJ8MgYtFqCGNX8rcyn6mbcrlfNWumSc8rX4sBlSZq17kM3XSarMAtkgvD97ni38jnIcM0/VQ1TUP9B6kMmH5tVPS7HMjAzfw00PevBmxOiimrkACBvLp1Zm5EFnFyVqNYrOBDTMuQRhCSzWtAKPdqc90hPMrwlPkUxJVdhb1mM1zSGop4nHJMYknrieRu32KkeqMKKADzsAP6W7+l3VTaLqPxMOKhBCRoZ6fPbX79+NkksU1WAMQnHv5eM1u1AtxTgnOO4mJ0F7+LVngdHdxheR2D/FBi4D541+6UF8lhTFYaPPRAlS+G67dE2sYtiYVXrpwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FRqC1+PbFnKrCaFsDPvEDt+5mdDFlEIXRdoOZDU6MiU=;
 b=eYikfH0EcakbjLgRK2vZxOTz60Tkzi5KG27SvF2p3kzPLen/JMvc1pFmfvD2LCMbaZOlJnfmg4qVDRt03mK2O9GWhsvYX566jpZ7vW6xQVcT8CgmwKU+JaVKgdWYJTsBp+CtOXmv011OhnoKAkFhDv53IosKRaU8W4yIye5Hm1pOIV8D8vL4VeX/v9UidhoAJBNzOIqWRppuDa9S/q3fKZC7h91c3w51ETwBPv37G2/IjPv5ShzwlDWqQ1vTXj5DdttiwTekL2VfsGWipNUXVeWuz6/BE1OgTWOo4aaG1OgmifFibn0zNGTz5Dbe9KO5RN/vcJ1gkpP7IXCignTKSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8985.namprd11.prod.outlook.com (2603:10b6:208:575::17)
 by IA1PR11MB6244.namprd11.prod.outlook.com (2603:10b6:208:3e6::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8943.29; Mon, 21 Jul
 2025 09:42:38 +0000
Received: from IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::4955:174:d3ce:10e6]) by IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::4955:174:d3ce:10e6%6]) with mapi id 15.20.8922.037; Mon, 21 Jul 2025
 09:42:38 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: Simon Horman <horms@kernel.org>, Jamie Bainbridge
 <jamie.bainbridge@gmail.com>
CC: "Vecera, Ivan" <ivecera@redhat.com>, Brett Creeley
 <brett.creeley@amd.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>, "Eric
 Dumazet" <edumazet@google.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "David S.
 Miller" <davem@davemloft.net>
Thread-Topic: [Intel-wired-lan] [PATCH v2 net] i40e: When removing VF MAC
 filters, only check PF-set MAC
Thread-Index: AQHb5V/m810HUfESBkWZLWqUFgRkg7QTlm0AgCjmWXA=
Date: Mon, 21 Jul 2025 09:42:37 +0000
Message-ID: <IA3PR11MB898544F2B6A499A11B1CAE638F5DA@IA3PR11MB8985.namprd11.prod.outlook.com>
References: <c856f16e6ab37286733174c0fcf12bc72b677096.1750807588.git.jamie.bainbridge@gmail.com>
 <20250625090734.GJ1562@horms.kernel.org>
In-Reply-To: <20250625090734.GJ1562@horms.kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8985:EE_|IA1PR11MB6244:EE_
x-ms-office365-filtering-correlation-id: 0a82e67e-79a9-40cc-4495-08ddc83aedd6
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7416014|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?b7/j3MrksDuJpWM4H3FdyqsFMPmdq1brXku6vdcr66DdJ+rjsSvlrLFKD0QG?=
 =?us-ascii?Q?VQS2mFTOkUJDRhpKJhXfYFiI6kMR+qlbUo6Yx6ml9m9H+BiJ14+LdeJYZ/zt?=
 =?us-ascii?Q?PuuALaMuyO1muIVhZmKiEWjlWYtmwI89dIfD4kJKUkcX+C6qVrh8A3LReDNI?=
 =?us-ascii?Q?2kJ/9I0CgdKXozkxXRMGWqa1rtWOjI5n8PjZIp/rALk6aBGYP09+9Ps9zWj1?=
 =?us-ascii?Q?wj9rA0C8AB85o/6pgOYkE8JawOAa/b4d2YdwYKaxE7HMTOjx1M9E0SoHXNH4?=
 =?us-ascii?Q?yVITh9nTORTm3ucnyRDGlPfia11URavupadtl7vwfqNnR7CxRYbbnVe5B98u?=
 =?us-ascii?Q?zCjPJb0H3Egat2cSPZWNHePo6GUO1BYutIhblW+QWdqGc0DxBKqgMvlM8lWb?=
 =?us-ascii?Q?NRvskAWohsE9cRRcstRYsckTHAKjmAb/mo8N396HW0wsyWKn18JWiGit5+3h?=
 =?us-ascii?Q?pC9Y8LVhSfkW2ke1ogYm5zmWBiRVDGrXjh+5DdbwP1ocFGk0twsr0l2C+ybM?=
 =?us-ascii?Q?ysePVvu2v3WmU/I5x+slCEo/mwRKBTgb7KY7upy/tg8U9+/hQmx4k7QvTv07?=
 =?us-ascii?Q?vLN0t91HlTsaeeNBL8atSfINIlq8rgFKxy/YKk1+dw7fFxMwiwwhA48KjuWS?=
 =?us-ascii?Q?xiF96+rQDQNLVogRbBLeL9u8wUQk4HOHN4tR/8Upp7Vv/c8JEvlf8RNK0Rbd?=
 =?us-ascii?Q?peAWKpDWXjjoBVLKtTRqd3IIxDbhfKaGfKtoyoIim4EN5YC2ZmwxAI611Mf5?=
 =?us-ascii?Q?CePryTX1Bjw0DC4yewBVUz4dnfgLxm60b7t0MEZLvR9+4I/oqKAqbz1wpcCi?=
 =?us-ascii?Q?QmAOaNURQhk2rgUsVnHpANfBApoaUceYYNQNW7d/mqWtJCagFQTwVkJwXyrN?=
 =?us-ascii?Q?EzAGTLVJRhFlQr3kEuCsWJy+wZzmd/sIXY6QtbQbqcfev9G6yRDzc17rKzIU?=
 =?us-ascii?Q?4Vk+1latORHepYrXT94U7hpZYYT55HwxJgQnaw2XLAIHvU+jN+/gFiUOcbaG?=
 =?us-ascii?Q?CJ69Hfc+G5jb9zOUUBFMNiBRKoKzR2FiIQwP2D8Y9/Umy7NDUEvhwhKGNP4n?=
 =?us-ascii?Q?sipGgecUcAIjCXGV2K0zaKbH+ayIXoTKDmppRyDMNh13kCBmY3urqbehyOEc?=
 =?us-ascii?Q?l7wqMKTcyXQ3sTH0DVwUXYoC9u+oo2BawxJeFpEwpz7bQ07Xrpq1dzIFf600?=
 =?us-ascii?Q?MO+0+PpONvh0dOqmv8DFpEAN2oMvj7BoYimuIaouOZv3pkle+4wxfjeccO70?=
 =?us-ascii?Q?HKnHkb+N3NGoT94c4yI8D/HCxpDve1+psHpjFCPuIA++HWfXhmtzAoPBK7B8?=
 =?us-ascii?Q?egH0nI/bH3oGUVB1NzfenRocBSd6zC3nGNjXxJEeaQxWmW98GVRBjeiOhUWg?=
 =?us-ascii?Q?YxQSNOPNco3pziVXLvmFGQDZ7maaITLlFyLOpZ07dUbSXZXeHcEmgI3brj7S?=
 =?us-ascii?Q?sxg44SxPKeZYUN4I8TrJBy4WgiHx/eJKVwSCE9wWSJnZ6ebau4T+lg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8985.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7416014)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?DPM66JjSTwu9LhsvbAgU+XrPXOC8m/CBgxW/dSEQNxN3yZva70VvObUfZXNl?=
 =?us-ascii?Q?34ZrXOfQOkmMv7ifasHqM0h6wu+w0MCuFIJ+UqOLFrd8Rgsq9sjx9XC1jloi?=
 =?us-ascii?Q?OI1jjXO/Jc/P2hqxC+mz3mLYcqVMws1GAqFUADqAjNT8SXBECyLGZ18Ws41d?=
 =?us-ascii?Q?iHnfn+lkYF0hnE+2qAYGbvNAOhvMg0nG9yKosOj1hhaQ3PcfZnw9YoSqlim0?=
 =?us-ascii?Q?+N2KNKBF5w8BP7qWGnsK5oOOrOugONoM8Y7TWffVUpV+F7LX4f1YCaW4dzNR?=
 =?us-ascii?Q?tFQGBL3CdzafjYH2l5fZBIRlFs1PSDh9UfXGrne0Fu80cKxzA6jhBk2a6ZEK?=
 =?us-ascii?Q?LZkt5RvG9VzQXNfBNEA6Htk9S4V9snK4EO5OEpx808O/MlaOtYsCgFs4OR8/?=
 =?us-ascii?Q?5LGmmkkuiV4Z/yDHLpslcVWHu2IhZPNEiMl2L9KPXfLbaX+VS90FNyw1zYLK?=
 =?us-ascii?Q?9fWAwMOjFK1KGI+ona7vKT5jsr6/lbUseV4oeEKCq3BSjl3XCVGr8n8x7FdB?=
 =?us-ascii?Q?f+13au5vI2SkfQQXg2CtukvkQ3VrXO1V5qvdkVDp+KVrJuNrso1zNXTg1+Wq?=
 =?us-ascii?Q?+XNemiwzdpkTL3SYUrK0JFE+r0/v3DeQfnsaZJYNFaox9YKzOzfJzXohCGy7?=
 =?us-ascii?Q?uGOoiJMwXb1BofAkk9g3Cw/wMGg/8k5eQoI0y6ztdl20ICBUbVQAtFz5rWcx?=
 =?us-ascii?Q?sGDoBaDExnn4TS8MC4MO9PiOJVLAHky1rnDW9A4kuWCIqyOAeek2IXGVkniL?=
 =?us-ascii?Q?EwRXJgwDWj6TQSe7fqvNtbwDivcN2AAUmp3GWwgKq7y5q0RIoS9mCOMswdzf?=
 =?us-ascii?Q?fHJVDrrKgDclwsjxzSaMppiwgXhjuQNeE0VMHxeePBDozMylGeeu9kN/d9qJ?=
 =?us-ascii?Q?AN5LSXxZq6xr77kImucyJqBGwb6Q/T4WD/L4nJdVpgHwEx53bTQXcILxXcaQ?=
 =?us-ascii?Q?aZJb3bwEil62aqvRQRs3XqVG2ihUCYA9FrBR4ga3GeBOTURZVmN9T+IXzfoU?=
 =?us-ascii?Q?83STR9rqb8Es8kaIdzWVc9WZxMKJNHwAStah2gUnzZ57PiNNZXF42AqRYHrC?=
 =?us-ascii?Q?fXf9BKBbesqvmbtakjnKkS7V9h9houlKx1y/BvUY8BtmNSWiL571Ovw/+iTo?=
 =?us-ascii?Q?FkyNF2al7itRk8tnS8ZEQdY8TtpW6tW/F1+FNbxnWJCD6elN5MQN+0vD5v5u?=
 =?us-ascii?Q?j0YS9GJkBtUo7ogfHCVXjhiAvKzCzBFe4RFKVFpYkP80Gx6ssmGJ2u9FKF04?=
 =?us-ascii?Q?QEqyBxPFswuOSEf3n7cdDQcw40GlPJFYweuOJEuRP2CoYyVDiHWgIEDvecI/?=
 =?us-ascii?Q?w5PEqwRyT3HNN42HHUACRhcgncLOOUUkQaNT2Jw5xeyOxVHleEvbMSuCc7Ma?=
 =?us-ascii?Q?uIWzVNXPpm7mE6gdS7nilzedyshLCuPYhW19qlj12O/2by9DJBTwU0iFKk57?=
 =?us-ascii?Q?aRL3Boga3p9jcKZNyHqKDBdTQly98Kj8vz4exroaBWfMIY0BpbqMnnzucFGP?=
 =?us-ascii?Q?NuQW6EKFWJ8ZpyusdC2l9pppc6Kyt4QpqtSwvf9qxN9/Pkq8jI0y16QlJfOc?=
 =?us-ascii?Q?9YKXN5dptOA4G6KLgygTFdkN3qe2CftInG8OUGRD81omRxil7r/2plTVryWw?=
 =?us-ascii?Q?Dg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8985.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a82e67e-79a9-40cc-4495-08ddc83aedd6
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jul 2025 09:42:37.9858 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9bJbDYMyLns7LP7VZW7WLSM2IMnqFxP6W9sOSZCNjEgoaa8Lzr+P3hMS2dtbi/utiFkIPP7FQHNFY7FiDS69ZmK1aFkS13eY4y7o+I0j2hI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6244
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753091001; x=1784627001;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FRqC1+PbFnKrCaFsDPvEDt+5mdDFlEIXRdoOZDU6MiU=;
 b=iWGVFscAFhviV6RA4+CKx+NFJ9Fpt2+VMl9Y32+xRVpGzs505k9YQ9gq
 f2dMmNbRoC9QtjG7ODI74chi4TCf2bBfUktTNU10obVNUzpRlNenk0SP2
 sdn1IApfLf6/o+NE3z2mEAjxwKcEq+dvoKECkmS7mf9oEezZKwwOaPLgJ
 4+BHla0VN/C7KfdWRX97Nw+YIfGSDdVnr8FCHutIiyL3tlIjtw08qNcDz
 VMtbzmayNC0WJq3Awv68XtZv8qBesQVrHtKEV0bAuWNRlv4l/WyfdUlP0
 64z2CZCppLaTDHwJiQAXzX+tvJgm4+gEym5empBIuq7cfxAnwOjKW/VPz
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=iWGVFscA
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 net] i40e: When removing VF MAC
 filters, only check PF-set MAC
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of S=
imon
> Horman
> Sent: Wednesday, June 25, 2025 11:08 AM
> To: Jamie Bainbridge <jamie.bainbridge@gmail.com>
> Cc: Vecera, Ivan <ivecera@redhat.com>; Brett Creeley
> <brett.creeley@amd.com>; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.co=
m>;
> linux-kernel@vger.kernel.org; Andrew Lunn <andrew+netdev@lunn.ch>; Eric
> Dumazet <edumazet@google.com>; netdev@vger.kernel.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; intel-wired-lan@lists.osuosl.org; Jakub Kic=
inski
> <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; David S. Miller
> <davem@davemloft.net>
> Subject: Re: [Intel-wired-lan] [PATCH v2 net] i40e: When removing VF MAC
> filters, only check PF-set MAC
>=20
> On Wed, Jun 25, 2025 at 09:29:18AM +1000, Jamie Bainbridge wrote:
> > When the PF is processing an Admin Queue message to delete a VF's MACs
> > from the MAC filter, we currently check if the PF set the MAC and if
> > the VF is trusted.
> >
> > This results in undesirable behaviour, where if a trusted VF with a
> > PF-set MAC sets itself down (which sends an AQ message to delete the
> > VF's MAC filters) then the VF MAC is erased from the interface.
> >
> > This results in the VF losing its PF-set MAC which should not happen.
> >
> > There is no need to check for trust at all, because an untrusted VF
> > cannot change its own MAC. The only check needed is whether the PF set
> > the MAC. If the PF set the MAC, then don't erase the MAC on link-down.
> >
> > Resolve this by changing the deletion check only for PF-set MAC.
> >
> > (the out-of-tree driver has also intentionally removed the check for
> > VF trust here with OOT driver version 2.26.8, this changes the Linux
> > kernel driver behaviour and comment to match the OOT driver behaviour)
> >
> > Fixes: ea2a1cfc3b201 ("i40e: Fix VF MAC filter removal")
> > Signed-off-by: Jamie Bainbridge <jamie.bainbridge@gmail.com>
> > ---
> > v2: Reword commit message as suggested by Simon Horman.
>=20
> Thanks for the update.
>=20
> Reviewed-by: Simon Horman <horms@kernel.org>


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


