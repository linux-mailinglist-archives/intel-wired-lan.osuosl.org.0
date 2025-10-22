Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id EF6AFBFA463
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Oct 2025 08:43:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A695383CD2;
	Wed, 22 Oct 2025 06:43:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8vmIfmPjD3IE; Wed, 22 Oct 2025 06:43:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C85F183CD3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761115396;
	bh=m/GQzRiBWwxlgYqBTj6fCYQTQEThOEZzNYgkWQLLtgM=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7uhS+vfLbs7SErBMMJTt3XIt0G9XwjnpwFpqw/hVB2uBCVkaiaP+PGuMP/7o+aqD7
	 2D17VjEktP6bHWjDqPIWC1RZkj3nsSDlnxE4pR7kveXJH+9ccA9srpE8GiZaUIJyV4
	 pCIx7woo6RCBoIHfjv+pcEPB10AtilYivyDu1+rUMQ9CTDFnM5q7jhCj6Ye/0tshVC
	 lTkEscBTxxXcuQM0btPWQy2t7mjB69fWumo3MDXngPnYHZC0XIDix63kRhU4CJlr3V
	 Jtrd37vhRhiPiAthbB2pOenpB312PCaqTnA1cMCtVo3jqovGGu21EUQSQEyCDH62TN
	 hgREt27SPcbIw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C85F183CD3;
	Wed, 22 Oct 2025 06:43:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 7E8FEDE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 06:43:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7002B405C1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 06:43:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XT9raMP9blQj for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Oct 2025 06:43:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B087440661
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B087440661
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B087440661
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 06:43:14 +0000 (UTC)
X-CSE-ConnectionGUID: 6TmC38dVRemmzxeh0/inYw==
X-CSE-MsgGUID: CkhAAegeTu6bH1aCb07QDw==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="63156922"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="63156922"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2025 23:43:14 -0700
X-CSE-ConnectionGUID: wCG47qXvTPW4PSN85OcFRA==
X-CSE-MsgGUID: 5Fzs6mZQR4WuzOU9WKnKEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="183823942"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2025 23:43:13 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 21 Oct 2025 23:43:11 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 21 Oct 2025 23:43:11 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.29) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 21 Oct 2025 23:43:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GpcZIeJiSlOoAcYYmaGFShsW6BJdoNW6NIM00VAAtcxtZOFIQBMD3MWePHgkJw6X/Q4GDYClbMfXyJbLsgsoyvFYAD3WuYrz4e4MxwWEPYNGZw126UjNslxEImUK5F7dOxOiuX5OLZF0Jx2CK8yl2ssfPrcydo9vCDg2SIThXGz2zvI4Fe6s47f3THmk9ZCI6cUTtO++jzX1qMrSw1xbnHWqWCeEmYHz1WRMrcoHGXES0WRLpTmGwDGOdkV0DTXMNhh1HGX0hpVRJ0QqgOszQtSdFpe4LfAaw4XcVx9n21L3Khdh6NtMM+5F+K+uiDnutn9POFF7OT+3awb4otVxSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m/GQzRiBWwxlgYqBTj6fCYQTQEThOEZzNYgkWQLLtgM=;
 b=unbNGP4zZnu9y3ZqkhpMMl2xfHeU7C/whxPH8SWE9MJx5bsvFhypeuiMItVys2HP6HUaLOXKdtsTZ2wP8mPBQUSF/3Tu9dA3uJgN1/vnpzIOiwPMIZv7KDcuVT4Vi5ZbTKtcHpRcBnTbl2+DXi/GBRE8Hs0B02C6BaCzySvC6XmjM5onoTc0AHPNy5Khc64ysIRYiQtQ20REvXdjPkNeCLHrtpEH8N+nrM+9XGvB9T71u8XcSR572VuCrxNfxQXzmuWRSGYjuQfaKs1HZzOf4gMT3vcoblsPDQsRJ9BK/AkZ/ZNpdFKSlvs57526rOwsLnMyfgYlRIvHgEk+0SBbfQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SJ1PR11MB6155.namprd11.prod.outlook.com (2603:10b6:a03:45e::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.12; Wed, 22 Oct
 2025 06:43:03 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9228.015; Wed, 22 Oct 2025
 06:43:03 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Hay, Joshua A" <joshua.a.hay@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v9 06/10] idpf: add rss_data
 field to RSS function parameters
Thread-Index: AQHcQuFapV/ppGpbRUW0ZO2DvPEMf7TNuFRQ
Date: Wed, 22 Oct 2025 06:43:03 +0000
Message-ID: <IA3PR11MB898639E6E3103A1DE513E155E5F3A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251021233056.1320108-1-joshua.a.hay@intel.com>
 <20251021233056.1320108-7-joshua.a.hay@intel.com>
In-Reply-To: <20251021233056.1320108-7-joshua.a.hay@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SJ1PR11MB6155:EE_
x-ms-office365-filtering-correlation-id: 5bc6ce5c-b6c6-4577-4d94-08de1136402f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?0pHPOvNwS+QfJUcNZBsHA3d6PIiYBBAcqYH2bxznOUnhZOtIegM6ySNxyXbU?=
 =?us-ascii?Q?SOOQEcjs/crPGBHYGg/uxU8RrzpcgetF/863h1AtNK/BoEt4nfMdHtOf6GfL?=
 =?us-ascii?Q?ezkvSJWxxjzDp8R9PWkgldo/F+kL8UlhqcYkRzXbds7w1vfn7FIFr/c+FgPI?=
 =?us-ascii?Q?2W8U04oamgewyrIrVKJSmatvhgeJOF1v9lezw/vjW/he1gXp/veAlvgHplGS?=
 =?us-ascii?Q?z7fdBrR0oCWKYhjYOdNgl+meGU5DjMO4T4iQACfRCZnUtzeObGhEKaX0Jo7o?=
 =?us-ascii?Q?IaZmyJQTV97YbO8upO8txTROqd+qKRIYjFEbOi/BUv/fXkouI/3utl0s9NEW?=
 =?us-ascii?Q?u2GJ2+VaTM2Xoy4c+LRO1q/miA9hPHgKcU7Hlnm3ghNVnbRiuNytzBhXAk6L?=
 =?us-ascii?Q?5qNG+ufYxgpaYoU9MISHjL8dxOKMow1q9B40upwIThFLZxDSh1Ui5xcgVtjI?=
 =?us-ascii?Q?0O3NX2J94Ni2kdWQBZXZvBe2/mcv98fj1gL/l0cutwzJOG6g0ow4I7nxvA60?=
 =?us-ascii?Q?esLm8ww1NmeLYmDV3ERiC+aWqcRCqwDFL+dGfA6QjpRvVOWnSxT38YXGcB7M?=
 =?us-ascii?Q?q01cKEJUACeXruj9HwnVbVVt/rYJnpqtwkVilOqDYNbEc8TBTaj9uB//fdg2?=
 =?us-ascii?Q?QhmOktl0a3fri8BeailxpgbEvFdcbSSpOykyB5TnwZqg9TcIGhFLrberrQpr?=
 =?us-ascii?Q?ksR6P/CgDbPKB8PlvIVKnZpU4RzpIbObPL8xPpY/9Zs05rbnHmOuqmht0eAG?=
 =?us-ascii?Q?M2GGBKchrJguqHcP++pmlI+jpAp+oP22myeZw+9JeW+MvHLTlZlclvsHv/PR?=
 =?us-ascii?Q?0I+EvSUFIjLhq1NF/t997R54T4tv2ve/7+4DTv6QjHdmc7XXdTvSnpOxq/V+?=
 =?us-ascii?Q?xKX/gT58GVIn2Q8WxODjXLbgBs6U67o/pz9+cay/E9fwVsqibLBygm5b659j?=
 =?us-ascii?Q?DBtyygd8PTwAOTYtEBfV05nLMP9ZTmScclTA7B4fa9Tbf+svEcXhtxlAhbKD?=
 =?us-ascii?Q?Mwwyi87eYMAZOsAYBZt525qVhHuPYilp5Taf4HKmxM8L5K2BwxUa7Nk0yLUb?=
 =?us-ascii?Q?ySv5WcvEuMhzLUn4103CHroAhqpPrrWOJ2pAF/Mqm2V+2uFxk5j2G+3GiJ0j?=
 =?us-ascii?Q?Qm8bGHrErxlpEBW1cLBmVBPejEnaEJa2IWiQzeMUX5MCp5xrLeihMddR/uso?=
 =?us-ascii?Q?MiaruL1PGNhY2hAKkVUTxmMniHw1YbBqbr3PK9n/8Cww2C2sdo4RrgLdmU/S?=
 =?us-ascii?Q?hTUzYCWAfOjlGJo1o/UyOUiXdDuRWH6olWK7tMWhaCst5Pl19ZN1Y1qgfkvX?=
 =?us-ascii?Q?JcCyu8lhSgi/uGXCsd12Lc1aaGK0LpvEL2HKh/yN/yDP7ToR+axxhgY0PN3w?=
 =?us-ascii?Q?1QvMZxFKBDJyYfiLQH7MYcczaXVy0fYOMNtLjyQpkuWlT2gRWV/5vRgaoDNh?=
 =?us-ascii?Q?3/z2DAdl+CNK0fbCB/gUlhBdvAXzpYhrQXDOQEUbaCUo74Xe968mRM4DQg/p?=
 =?us-ascii?Q?UaG1zdj2mVezr+6/mUCtjWSAycZPfvrsSQKb?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?NUFYWbEap1kTBwQmAsMHhu9Om5KFprPRx5m7DADOHcph70NhZBctX3kpghqy?=
 =?us-ascii?Q?B3AGFV+9atU8mq+bKjFTaorIYD2KCbppnPQF+QZBwLP4lE3O8T7UeeItacub?=
 =?us-ascii?Q?6U5VJFAaC9UNKZX/LBaAA8MV1CxgmSE3XvKXXWfBTyKX8zqpd2GCVvVVNOdr?=
 =?us-ascii?Q?rGIj0lhk5dByOODCb8Gl4vJnvYNfEwzox4YPjZmtP5UMGox0XIh9ECHZaFZh?=
 =?us-ascii?Q?gm5PXPm2ygqkVFKzPWcHtw0lVjmY0cCRAfIA+l1oGLzqquWsumb+qFSiOTP9?=
 =?us-ascii?Q?Uc92C6GTPAfWyPC8xd1eQKTpuEvnQbOpJMXIqPQgxKwZixQnKqEsii/wVM/+?=
 =?us-ascii?Q?mcx2C4lJgVVmpOWFU/H8x4ZQJY673oULjuUWSdkxSCpBp5L/8HKpCVFuyERx?=
 =?us-ascii?Q?05bxlH4inatLbHKi3YpTbo74l2Z/alYoy1Nb5CitvD/kfaAUb6VptH9YZ+Qm?=
 =?us-ascii?Q?vqRR7RyvopAIHRIW/jQZjTIJRj8pxXeNrNbq31Q6NS5CahGFzeg6G0cgTHbW?=
 =?us-ascii?Q?XH0J+mzwwHiJVvk7ORaqD13lvN/4SCQkpJ+FMbEI76qeIfMii0b9NP1XqrxH?=
 =?us-ascii?Q?YhJwv74Kvm7ISA3Sfw9MGzwhn4Wzn/XCJJlNrEs4wqJ/Kc33s7e14MrO3rGi?=
 =?us-ascii?Q?2swF4yeDaL8YJ312e8NZX5aQgltpN69qKnrdi3xc8DC9dUw0SJVSNeHcCJun?=
 =?us-ascii?Q?ffbqOESFS3HAfu2bB9Q89+3kod7yM9mkx6Iw9aeArz0ED7YS8QHRSSJKFAif?=
 =?us-ascii?Q?4+zFCmmQLSp8PdcE5p9oJ+08n/qGLhHK3xHbzbHIbO9kPaOAQvbeteArT9KM?=
 =?us-ascii?Q?3F3AUvKJHnUHqL3XtQglAM/WPWCufWVTPf3OPoZRHCh4DZFM/NnivWwTf6cH?=
 =?us-ascii?Q?tJVGRmcyOA7bhNlxDOzoHg5iB8mESsSVkjK8WkBfbSBNdb0bDQrtGoG0aurc?=
 =?us-ascii?Q?k61LIXb5lMTvzLrFzPV7KTHeJhk8odZT/7lJ58i4PR5ceeNVJRVAwJoB2E6X?=
 =?us-ascii?Q?9441W2z/opUvQQSLbECHKxecL3jyTTXrclTqSrfBRpB0k7gj4vopsJFH0iNk?=
 =?us-ascii?Q?8rLd1bvJr/tK4ePKhgdvufRxwTSdQFuYmnTF5P8bxf4bUM8nVqJtGerHh2vS?=
 =?us-ascii?Q?uuXm09ZROtWL6qb1tw7nqvyYt32JwT+b1M+XZYXP8Dfrssaf2m/KQSnQ3N0v?=
 =?us-ascii?Q?3sS/SSU2Phjj1HBVFU9x1u3/AypI+mJQxwextHiMwzMeNXfy9wrgTIp3eZpR?=
 =?us-ascii?Q?96eOjNqTkB/8uzVNBdApr+xY2KVdBOCyH/x0ALbqfa5p9FhiAIjy2ff/ge1J?=
 =?us-ascii?Q?kS74HltEFDOya9UAkM811h5es5kpl3UOiYaKSvkfkkTGFP3DMWo0X2dP3QK7?=
 =?us-ascii?Q?X1yj7swdJZvB7sHqMcL4YwQQRiohrZWuUVDMTRzePjBDdXjldnE9fhg9gyrl?=
 =?us-ascii?Q?Q351UzdUfKgZ9s9ntOyAeqP6NADLjoMHQyN+yhxq/9JR8jWQoY+BVTcrj4OM?=
 =?us-ascii?Q?4c53gT9QHckVufnqysHvHuw1Y2vhpvcgCGxm/R5T9Y4cYKbovsDNbParXjax?=
 =?us-ascii?Q?ExnSrKtRAFuDxwz+SMKmWiFpBZbZG5LS+wz8sBqZT0LoSgr3FzOiKjO7kb5K?=
 =?us-ascii?Q?uA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5bc6ce5c-b6c6-4577-4d94-08de1136402f
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Oct 2025 06:43:03.5911 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xUo84FLvLD3KBaHJSbU+f58bcQ9g9vc3EbmmmpXh7VqNu+3EubtenRu0hyNeMCmpffxngmXkl9utvLoOAK84dGEHmaw/iUd9UCEBf0mpjuo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6155
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761115395; x=1792651395;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Zxi64JVxmvYdMBfrykNyAZob3vpvBTvJPxtZQYt5CT0=;
 b=UN8A4xpw6ohDy/s99UeZ6WVeVt48Uo/ke1Hs7MKA4llayrRjv8Ef1LQE
 tvLVTVNmO/iGpbGl6rvsbNuUhUkvPFVAmbeanPrHZRcFk4WA1EXamCDzo
 or2xB6j3i93nSciMJLzGlz9wbMcOENkG6wWm84osPWKEaJ8/C2ryylgg/
 V6Sr8fadIVq0CEVgGCbjN3/JU2eA7RAYuoVk0dG05KwVrz+CWOe8WVF33
 fdgjZ539ATopHbIZoBD6B7xtf2Ycwk5nQd44sVix8gcgmDq6rcSCaXtLd
 aiERYOvAMVXuZE06Luk+wxW0hghhWOlhP1H15Mrx3VIeuHuYzk9hwyPvd
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UN8A4xpw
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v9 06/10] idpf: add rss_data
 field to RSS function parameters
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
> Of Joshua Hay
> Sent: Wednesday, October 22, 2025 1:31 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-next v9 06/10] idpf: add
> rss_data field to RSS function parameters
>=20
> From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
>=20
> Retrieve rss_data field of vport just once and pass it to RSS related
> functions instead of retrieving it in each function.
>=20
> While at it, update s/rss/RSS in the RSS function doc comments.
>=20
> Reviewed-by: Anton Nadezhdin <anton.nadezhdin@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> ---
> v8: rebase on AF_XDP series
> ---
>  drivers/net/ethernet/intel/idpf/idpf.h        |  1 +
>  .../net/ethernet/intel/idpf/idpf_ethtool.c    |  2 +-
>  drivers/net/ethernet/intel/idpf/idpf_lib.c    | 16 +++++----
>  drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 34 +++++++-----------
> -
>  drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  6 ++--
>  .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 24 ++++++-------
>  .../net/ethernet/intel/idpf/idpf_virtchnl.h   |  8 +++--
>  7 files changed, 45 insertions(+), 46 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/idpf/idpf.h
> b/drivers/net/ethernet/intel/idpf/idpf.h
> index 40f1ce901500..03df59829296 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf.h
> +++ b/drivers/net/ethernet/intel/idpf/idpf.h

...

> --
> 2.39.2

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
