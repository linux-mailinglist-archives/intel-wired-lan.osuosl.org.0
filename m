Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 31DEAB3F4E3
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Sep 2025 07:56:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1DE7841261;
	Tue,  2 Sep 2025 05:56:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dK1_zhENPdrZ; Tue,  2 Sep 2025 05:56:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2A746411E1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756792610;
	bh=3msNermAELkqRaAWCTpXJwRiRVWH4hoYEK5IWuLFqVE=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XSIQogMoCJSvrRZFNZShG3i55jFc4YRzGD2ACd7c4+x5Q3v5c+MB92pM0IezOB5cf
	 4bnZeoBc94KJAUk8eiPNInFzPpFGiDOySjtuaNnZdFrHa++8V/E4BL/s9yMM3EKXrf
	 BJZ5YoGpl2Jpad0fYfLPmTLd7MnPOGXfV9OPor3/yLORhEhW/PM3Abf5L/wMiw9nZm
	 5UI8Z283LIH1tFWHG0Pf1pPsJHP/8ydK3taFAdGIG5k8GAKPoKEbA2VslLeRA+5YZ8
	 VqpJ9kz33MUSdejns5LE22hdLSGAngCYrC0S6927+5fMM2t00Y63iXAKDke/LlPcKT
	 roiSb5yhwZb3w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2A746411E1;
	Tue,  2 Sep 2025 05:56:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 42FEC439
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Sep 2025 05:56:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 34F5D41361
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Sep 2025 05:56:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dmjhYjgFi-GI for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Sep 2025 05:56:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=priyax.singh@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D56CC4131F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D56CC4131F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D56CC4131F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Sep 2025 05:56:45 +0000 (UTC)
X-CSE-ConnectionGUID: +Rq6ScHzTrinuDjF4jWCVA==
X-CSE-MsgGUID: WHFPphAMSh6jBYjDGTCtSQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11540"; a="61688159"
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="61688159"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2025 22:56:24 -0700
X-CSE-ConnectionGUID: EzB4oIxmSbi2LsNXGLxRrw==
X-CSE-MsgGUID: MI+BbEuhTa2Y65sEGCNqng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="175560039"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2025 22:56:24 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 1 Sep 2025 22:56:23 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 1 Sep 2025 22:56:23 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (40.107.212.75)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 1 Sep 2025 22:56:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HVQV4mxYfujwfNKGbVIU/O3TqOw9Hn0P8veTdkUcjx9dt1BvfwFDUte55rbw6f1+y8O3b/gHsW1/g+lKXRjVH7LR1lZBLBvxCZbEAERjLKYcTLiKebIdb/JoR4Kmtu+yF2NB2m7BwrgLuIS0ZOG1JO5m+ozw7uAmOE9746YvBokLxEdCl0X19DGIvPBflqkaUw/F/PQFOCP+yWtq3GyWXtV1tfninVTd4hT6C0A80YLp23OZje+T7OuEAUhp5K4Vi9g7535pBGQZXPjTGYUirqd/bwEs4JZH/1mNfId8cNt1EiB5ETDeHXWuYIhnLk8aQ35t25bCV69ATU0fVLf0og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3msNermAELkqRaAWCTpXJwRiRVWH4hoYEK5IWuLFqVE=;
 b=a0VCO0x0PYyZd59BEBxYkPRtsyW99OtiHBMlQCAp6IMFIYgseNpTxJUwaH7J2jYUbi6PeZmQoElhtNteclAvb1YJ9o4p72D30rRGV6kpnniUU4OQ5iwstyP/iS9a4eTP3Fc+GlsE3PMwFMdiHWazqS/IDSHpUPsoLg9MdekHOgf69t9DdTyNLkKowsF+Y/XEIyqK3NRBTFYoB8duxz9cGk255I94HXQlXedDBGSVJakMYy8QglOsTCH0IXJnQ0MPI3IjnSQ89CPxYNY26d4k7pzMHgMKPauGC22oVm98hpdEjyqfXeH+/FibFOALv6iT2TyZdULdSXzSHKn+31NEJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH3PPF67C992ECC.namprd11.prod.outlook.com
 (2603:10b6:518:1::d28) by CY5PR11MB6461.namprd11.prod.outlook.com
 (2603:10b6:930:33::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9073.25; Tue, 2 Sep
 2025 05:56:19 +0000
Received: from PH3PPF67C992ECC.namprd11.prod.outlook.com
 ([fe80::8435:3b39:7eee:480]) by PH3PPF67C992ECC.namprd11.prod.outlook.com
 ([fe80::8435:3b39:7eee:480%7]) with mapi id 15.20.9052.021; Tue, 2 Sep 2025
 05:56:19 +0000
From: "Singh, PriyaX" <priyax.singh@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 1/3] ice: remove legacy Rx
 and construct SKB
Thread-Index: AQHcCH0rH9WskqzIAUiwSeQ4tI0sdLR/f6aQgAAKzjA=
Date: Tue, 2 Sep 2025 05:56:19 +0000
Message-ID: <PH3PPF67C992ECC0EE93FC07AC8059DD3289106A@PH3PPF67C992ECC.namprd11.prod.outlook.com>
References: <20250808155659.1053560-1-michal.kubiak@intel.com>
 <20250808155659.1053560-2-michal.kubiak@intel.com>
 <PH0PR11MB5013108C34B30F5DB4F01D019606A@PH0PR11MB5013.namprd11.prod.outlook.com>
In-Reply-To: <PH0PR11MB5013108C34B30F5DB4F01D019606A@PH0PR11MB5013.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH3PPF67C992ECC:EE_|CY5PR11MB6461:EE_
x-ms-office365-filtering-correlation-id: 4363ad1c-5a6c-4f73-e600-08dde9e57034
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?pE4AOAvQhjfXC8UysFyodFOybdpr3vQ5NC+BfKqSVcpBVjs1M+3JYK+lYPUS?=
 =?us-ascii?Q?he965pezfiBEthCwTVLk490lalsAet+DaBynVP/oz3OFZDuEb9MAAlcdHKV1?=
 =?us-ascii?Q?DFl6fkMsGCdP6fbEVhTGPBBuqzh6HCdZEM+kt50q72HrGIHcgWDfi0zST/+R?=
 =?us-ascii?Q?BKTNyRu/gqy1GKoClVQd/7VeVQaB1xPXmyvy09YFoG5XKihT5seuw2xpf5Gq?=
 =?us-ascii?Q?xwn7+CI5x0l3oZpWaWMbpAT9qOFcMryrFTtqp/qldlaGsZes5/8Zd6xE92rL?=
 =?us-ascii?Q?bbZ3ZrUIpODCKdJ5DVEuz+u2XrqVb/EoeouwqNM1Pj71K4T/iU1KiE/wog4+?=
 =?us-ascii?Q?pgMnvWuywQl8FcE10k1zrIGGy7T/muOiKZIaQ28CwFqazNKx9qpKZ/oLd/8h?=
 =?us-ascii?Q?yDosAPrljLE37qAt+NqP5UJjt+GrXZrT5IZ5ProbUMBezjUgLvra5Y1f7/kY?=
 =?us-ascii?Q?N42aVNg+0fgQgRH5neoGldoNUtM3B4j2bw6Z0iucg+0DD35LKpvOcS+oFqTo?=
 =?us-ascii?Q?IpVsiWwV67u4UBZpp9zeErjvzaqe+jZlCrBtESCA0ob0xNyMOzzugSjCgjz7?=
 =?us-ascii?Q?sLpRwHkdIpFth8eTMWe+HPGVNGK0XxZUlVAtdohcmfefIpZXSZmKR1lly5OB?=
 =?us-ascii?Q?SNV88oyIfOlN0WFo5XF+5UPEm5Lf45fT/4uBcjPryn0ZjGjgZrf1nHE4MqyN?=
 =?us-ascii?Q?uNYB46QXMnNc9QVr/uyYdeUpUeARcDG9Z+ZVkDPCss/xoQoOymi+F9/dJFQd?=
 =?us-ascii?Q?kiv0Y9F5YYKDwb6SntrM89jBaGcQsaUCdAh/632u8YLnJZ3TmXuXOtKDQPVa?=
 =?us-ascii?Q?5QK/Cv2p5R2kIYnSD7p4KmTSBCXeN7ZH5IAx01nznyW4wfN4j3H6PJ6txQaK?=
 =?us-ascii?Q?Kyxe8r9fepgBH7qtG/kjJC3p3UWKa3VXP0GUP0nZG/F26RsvXY50NlZ6B60b?=
 =?us-ascii?Q?23yKLr/TlzojG6UEtzWfJwYFXW1HVe9V3DYalozB14i5eQ/SiqDvwKxzoM9f?=
 =?us-ascii?Q?3FJ4lz0yZ2BKTl3hHjuckw6C7dr/srFyQerUunuDkblxNWlpKZirMrFf6qsN?=
 =?us-ascii?Q?1s2Pewm9TDDGtHXN2ZxruIfR+vFeLFfz/x6mZGlXfWMkAW9HML/o5oMJyJA+?=
 =?us-ascii?Q?glKrUm7+oQ7zD7R6JfXl9y9ZJoAFcuErdBYBSHBvSeuCWWEmkvgKci1pkrfs?=
 =?us-ascii?Q?2SWodMmg+opGOMUHbmQvOFUcHwNDMad9Xxl89kuW3mePTjiLsWvBvYCvsdbh?=
 =?us-ascii?Q?wpu36mxi7wi7NBioyfdHI7ZP9+EoONQ36/I/35YmKlnu2vGxGd4kUnHfZvGc?=
 =?us-ascii?Q?8fXQsa/MFKseZ0jhxaUlteLW5OuswmxQF3MwZTUsA43p89xB9HLRnlgf6Eij?=
 =?us-ascii?Q?7800/67UtM/7ywrKeC4qCIsz1ehfACaE2aHJ1b5pZDrMLLaBzUBbQqXBG6xw?=
 =?us-ascii?Q?5rJcuo2d7tawjBCsGmkooRBddcO/sV5qNgNh/HS8+fopi/BTb30+YMD56zso?=
 =?us-ascii?Q?meptCb8jvybD/k0=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH3PPF67C992ECC.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?3jgPudWexuGg9frKW9JDFARNrMwZ0tWrq321eDLlq9Wq3Hw3A71PlXgBMgBu?=
 =?us-ascii?Q?ZIqrBabY6hbkYdcxwkUA71+TuoLkoXfz3eNVVlnTiGd91kLVOZRBZpmHx1aa?=
 =?us-ascii?Q?9xIXPZMwcDQgFEtdC1dmcvKAmglQZogM15h70lv7pB72tebh9basFkBzmoVP?=
 =?us-ascii?Q?Fk80DxYUwRdoSwnZFQFGcW9Elag7ub8692vQjQDWrwsuc7md9F07JfYXFwxU?=
 =?us-ascii?Q?sF+eURxSmDN0aoG65AuCdIBGPOIeDfhCm8mdemO5U3c5HGpJZ3CXespmGRzb?=
 =?us-ascii?Q?VYo7yrIo8qhwNVfwVZOpBKJqIHsnIg0BXaXRjl9yVAtLiKHK4XDLXcP0wHYd?=
 =?us-ascii?Q?lEz4Nx31jgkQ/bvUd2ZJWQ2XELImIbVPFJu+kAGrL/b80dYDBfBS6ng24Os5?=
 =?us-ascii?Q?HwFN24LZ3As7SvBXY8QpvjRbaTRtUdbAF7aK1vPg0g9lveMjKSulEN2zcHx+?=
 =?us-ascii?Q?0aksEytXa52InK/5K5X2dTieul5L71DiErOSPNXlTM5F3CDmMbkbNiOkIALY?=
 =?us-ascii?Q?aEemdf0kB/Eg7k1X5itMtsTzkD5rvtthypFhfR0Dopgc+XDJqcLPbzyWgnRT?=
 =?us-ascii?Q?ps2v9D26vjAgeFSdE+uqMi25BVDk9oXpUT3XBowFwOYwxPvsVNKkbWmgKeEu?=
 =?us-ascii?Q?PvRb4tJaLp7JWCjsVwW0cI+xzA8tpl2mEDjPYfuLRd/lEf1ABJkY8Q3TM9j3?=
 =?us-ascii?Q?3us52YHpX+744vs+UxWBYkX5C9LgmhTzzn6+bE0D0GZlpdcZ7Cvo83rPklfr?=
 =?us-ascii?Q?6oGwwdoJcHc6MF0YpeWofpp1Bcb+VUcLDLRl4Dh5U9Uv5L/gJBsd6QtLirKY?=
 =?us-ascii?Q?Y3i86u/biL96CQE7NE4dTVFfI33TSXbiAVGxZxlmWb7QxTaVCPXpybcYtIhK?=
 =?us-ascii?Q?Z3aMjyci1wLG5/xkosNFpv/kT+Z6Pmy1O/ckHbJKnnCd+/kgtLFKR6vPchlA?=
 =?us-ascii?Q?2B2puaO2q13E80v+1/9JtwwjQ+RdT5hAOiIpEb8S0Zk/sUAsfoP2dsFgM1fp?=
 =?us-ascii?Q?NeQnUp3fyM5R/xWG21jO6IRx80UWdmPLY59sozXWNJQ+2nNucgaeEVwLM7DO?=
 =?us-ascii?Q?YGLwU8WS/obOrmWppGDjqbR1HS7rPgwuvBshPdA6el1kUpCihvWo4KCl0V7w?=
 =?us-ascii?Q?ZDTKC7sD0mp8YTxlt+qAbPx//hJwwLfE7oJJvPijopTbY6D6HoIht2UKirYz?=
 =?us-ascii?Q?NHhQ951qtKTAip3nkfoq64J4lxUoYSekePkTvrA50GlLdzRMF4bYSLtDZ3ip?=
 =?us-ascii?Q?18NqAmcj5oFpW7lX+7ypRpPHVZ9xcwee6ma629YlwdToseNBhRwxfpEpMM7p?=
 =?us-ascii?Q?Zt7+APj29bywp8tcpapxfb0u+r5gS3tEaa+4C17p0tBlnIHio6azocaHxMiy?=
 =?us-ascii?Q?cQXYvNHx5tYD205m5k+1EwEwDrsnlXyeWjvR1b+qqq6czKIjhSW84GYYWP/i?=
 =?us-ascii?Q?yiQuZXL2adGMzngpSACQAKSnaLWHuG2EPpxQQEt3gc8aoQqfRpRNX1l2oPNX?=
 =?us-ascii?Q?z8RAEnOPazT+3b8fp5ozIKQ47D6u+6vGJ891/rPMtIWSkBR1fKK7Dg9JqMkb?=
 =?us-ascii?Q?BwX3oz4KpAbV2LkxcPVqdd1sEwryu7o57WHRK1wR?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH3PPF67C992ECC.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4363ad1c-5a6c-4f73-e600-08dde9e57034
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Sep 2025 05:56:19.5663 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RQh1x0jTo4VizmbB8Yc3i2djV3beQziDxvWidmAxwgib51ZHsZ6xg49mdNruQ/OwlarnMWLtLDSJiZ1+WSY8uQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6461
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756792607; x=1788328607;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hQ+cslWCa30q83kTCi0LmOsff5Lb2G0nFXGMDTLBw2I=;
 b=nBKVAjVYgr+bFXH10zI39zUlOBKkbP9WNGjHOrbOhGFNhDvNPEVbCFLJ
 hBwAqFmwNGG0CYZpRkqBo/o6gd1XEqLUV1u3xI5boeRrtkTh4GnKgOU5/
 ZJfugp/oLq4EZ9YZKi+VrgkQT0owOUdd+2NWWc1Kzr1MK6g4xexKhDGg9
 cENvBGclxDaG+5PhLfvi92YCE3UvdNjh0pt88VK3+hC0/4bGiuaaZlVvW
 vZqDYXGModldcmDn3XtAoSQze5Cgclb1TtxtWVz7yg70dNTarxn0jjJGr
 MNGdKgAKlTJt6Vyus6toAq8jcIyOAnJ3pfi23G7kC3xj2UldZwm6GK1hy
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=nBKVAjVY
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 1/3] ice: remove legacy Rx
 and construct SKB
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>, "Fijalkowski,
 Maciej" <maciej.fijalkowski@intel.com>, "Zaremba,
 Larysa" <larysa.zaremba@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Lobakin,
 Aleksander" <aleksander.lobakin@intel.com>, "Kubiak,
 Michal" <michal.kubiak@intel.com>, "Nguyen, 
 Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Keller,
 Jacob E" <jacob.e.keller@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> The commit 53844673d555 ("iavf: kill 'legacy-rx' for good") removed the
> legacy Rx path in the iavf driver. This change applies the same rationale=
 to
> the ice driver.
>=20
> The legacy Rx path relied on manual skb allocation and header copying,
> which has become increasingly inefficient and difficult to maintain.
> With the stabilization of build_skb() and the growing adoption of feature=
s
> like XDP, page_pool, and multi-buffer support, the legacy approach is no
> longer viable.
>=20
> Key drawbacks of the legacy path included:
> - Higher memory pressure due to direct page allocations and splitting;
> - Redundant memcpy() operations for packet headers;
> - CPU overhead from eth_get_headlen() and Flow Dissector usage;
> - Compatibility issues with XDP, which imposes strict headroom and
>   tailroom requirements.
>=20
> The ice driver, like iavf, does not benefit from the minimal headroom
> savings that legacy Rx once offered, as it already splits pages into fixe=
d
> halves. Removing this path simplifies the Rx logic, eliminates unnecessar=
y
> branches in the hotpath, and prepares the driver for upcoming
> enhancements.
>=20
> In addition to removing the legacy Rx path, this change also eliminates t=
he
> custom construct_skb() functions from both the standard and zero-copy (ZC=
)
> Rx paths. These are replaced with the build_skb() and standarized
> xdp_build_skb_from_zc() helpers, aligning the driver with the modern XDP
> infrastructure and reducing code duplication.
>=20
> This cleanup also reduces code complexity and improves maintainability as
> we move toward a more unified and modern Rx model across drivers.
>=20
> Co-developed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Signed-off-by: Michal Kubiak <michal.kubiak@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h         |  1 -
>  drivers/net/ethernet/intel/ice/ice_base.c    | 23 +-----
>  drivers/net/ethernet/intel/ice/ice_ethtool.c |  5 --
>  drivers/net/ethernet/intel/ice/ice_main.c    | 11 +--
>  drivers/net/ethernet/intel/ice/ice_txrx.c    | 86 +-------------------
>  drivers/net/ethernet/intel/ice/ice_xsk.c     | 72 +---------------
>  6 files changed, 6 insertions(+), 192 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice.h
> b/drivers/net/ethernet/intel/ice/ice.h
> index e952d67388bf..d67dc2f02acf 100644
> --- a/drivers/net/ethernet/intel/ice/ice.h
> +++ b/drivers/net/ethernet/intel/ice/ice.h
> @@ -504,7 +504,6 @@ enum ice_pf_flags {
>  	ICE_FLAG_MOD_POWER_UNSUPPORTED,
>  	ICE_FLAG_PHY_FW_LOAD_FAILED,
>  	ICE_FLAG_ETHTOOL_CTXT,		/* set when ethtool holds
> RTNL lock */
> -	ICE_FLAG_LEGACY_RX,
>  	ICE_FLAG_VF_TRUE_PROMISC_ENA,
>  	ICE_FLAG_MDD_AUTO_RESET_VF,
>  	ICE_FLAG_VF_VLAN_PRUNING,
> diff --git a/drivers/net/ethernet/intel/ice/ice_base.c
> b/drivers/net/ethernet/intel/ice/ice_base.c
> index c5da8e9cc0a0..db2fa4a6bc67 100644
> --- a/drivers/net/ethernet/intel/ice/ice_base.c
> +++ b/drivers/net/ethernet/intel/ice/ice_base.c
> @@ -357,19 +357,6 @@ ice_setup_tx_ctx(struct ice_tx_ring *ring, struct
> ice_tlan_ctx *tlan_ctx, u16 pf
>  	tlan_ctx->legacy_int =3D ICE_TX_LEGACY;
>  }
>=20
> -/**
> - * ice_rx_offset - Return expected offset into page to access data
> - * @rx_ring: Ring we are requesting offset of
> - *
> - * Returns the offset value for ring into the data buffer.
> - */
> -static unsigned int ice_rx_offset(struct ice_rx_ring *rx_ring) -{
> -	if (ice_ring_uses_build_skb(rx_ring))
> -		return ICE_SKB_PAD;
> -	return 0;
> -}
> -
>  /**
>   * ice_setup_rx_ctx - Configure a receive ring context
>   * @ring: The Rx ring to configure
> @@ -482,13 +469,7 @@ static int ice_setup_rx_ctx(struct ice_rx_ring *ring=
)
>  	if (vsi->type =3D=3D ICE_VSI_VF)
>  		return 0;
>=20
> -	/* configure Rx buffer alignment */
> -	if (!vsi->netdev || test_bit(ICE_FLAG_LEGACY_RX, vsi->back->flags))
> -		ice_clear_ring_build_skb_ena(ring);
> -	else
> -		ice_set_ring_build_skb_ena(ring);
> -
> -	ring->rx_offset =3D ice_rx_offset(ring);
> +	ring->rx_offset =3D ICE_SKB_PAD;
>=20
>  	/* init queue specific tail register */
>  	ring->tail =3D hw->hw_addr + QRX_TAIL(pf_q); @@ -649,7 +630,7 @@
> int ice_vsi_cfg_single_rxq(struct ice_vsi *vsi, u16 q_idx)
>   */
>  static void ice_vsi_cfg_frame_size(struct ice_vsi *vsi, struct ice_rx_ri=
ng
> *ring)  {
> -	if (!vsi->netdev || test_bit(ICE_FLAG_LEGACY_RX, vsi->back->flags)) {
> +	if (!vsi->netdev) {
>  		ring->max_frame =3D ICE_MAX_FRAME_LEGACY_RX;
>  		ring->rx_buf_len =3D ICE_RXBUF_1664;
>  #if (PAGE_SIZE < 8192)
> diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> index 55e0f2c6af9e..804fe474a41f 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> @@ -340,7 +340,6 @@ static const struct ice_priv_flag
> ice_gstrings_priv_flags[] =3D {
>  		      ICE_FLAG_VF_TRUE_PROMISC_ENA),
>  	ICE_PRIV_FLAG("mdd-auto-reset-vf",
> ICE_FLAG_MDD_AUTO_RESET_VF),
>  	ICE_PRIV_FLAG("vf-vlan-pruning", ICE_FLAG_VF_VLAN_PRUNING),
> -	ICE_PRIV_FLAG("legacy-rx", ICE_FLAG_LEGACY_RX),
>  };
>=20
>  #define ICE_PRIV_FLAG_ARRAY_SIZE	ARRAY_SIZE(ice_gstrings_priv_flags)
> @@ -1869,10 +1868,6 @@ static int ice_set_priv_flags(struct net_device
> *netdev, u32 flags)
>  			ice_nway_reset(netdev);
>  		}
>  	}
> -	if (test_bit(ICE_FLAG_LEGACY_RX, change_flags)) {
> -		/* down and up VSI so that changes of Rx cfg are reflected.
> */
> -		ice_down_up(vsi);
> -	}
>  	/* don't allow modification of this flag when a single VF is in
>  	 * promiscuous mode because it's not supported
>  	 */
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c
> b/drivers/net/ethernet/intel/ice/ice_main.c
> index a1528edeae24..f68d28be4d9c 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -2981,10 +2981,7 @@ int ice_vsi_determine_xdp_res(struct ice_vsi
> *vsi)
>   */
>  static int ice_max_xdp_frame_size(struct ice_vsi *vsi)  {
> -	if (test_bit(ICE_FLAG_LEGACY_RX, vsi->back->flags))
> -		return ICE_RXBUF_1664;
> -	else
> -		return ICE_RXBUF_3072;
> +	return ICE_RXBUF_3072;
>  }
>=20
>  /**
> @@ -7878,12 +7875,6 @@ int ice_change_mtu(struct net_device *netdev,
> int new_mtu)
>  				   frame_size - ICE_ETH_PKT_HDR_PAD);
>  			return -EINVAL;
>  		}
> -	} else if (test_bit(ICE_FLAG_LEGACY_RX, pf->flags)) {
> -		if (new_mtu + ICE_ETH_PKT_HDR_PAD >
> ICE_MAX_FRAME_LEGACY_RX) {
> -			netdev_err(netdev, "Too big MTU for legacy-rx; Max
> is %d\n",
> -				   ICE_MAX_FRAME_LEGACY_RX -
> ICE_ETH_PKT_HDR_PAD);
> -			return -EINVAL;
> -		}
>  	}
>=20
>  	/* if a reset is in progress, wait for some time for it to complete */
> diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c
> b/drivers/net/ethernet/intel/ice/ice_txrx.c
> index 93907ab2eac7..fb1d14bd20d1 100644
> --- a/drivers/net/ethernet/intel/ice/ice_txrx.c
> +++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
> @@ -1039,87 +1039,6 @@ ice_build_skb(struct ice_rx_ring *rx_ring, struct
> xdp_buff *xdp)
>  	return skb;
>  }
>=20
> -/**
> - * ice_construct_skb - Allocate skb and populate it
> - * @rx_ring: Rx descriptor ring to transact packets on
> - * @xdp: xdp_buff pointing to the data
> - *
> - * This function allocates an skb. It then populates it with the page
> - * data from the current receive descriptor, taking care to set up the
> - * skb correctly.
> - */
> -static struct sk_buff *
> -ice_construct_skb(struct ice_rx_ring *rx_ring, struct xdp_buff *xdp) -{
> -	unsigned int size =3D xdp->data_end - xdp->data;
> -	struct skb_shared_info *sinfo =3D NULL;
> -	struct ice_rx_buf *rx_buf;
> -	unsigned int nr_frags =3D 0;
> -	unsigned int headlen;
> -	struct sk_buff *skb;
> -
> -	/* prefetch first cache line of first page */
> -	net_prefetch(xdp->data);
> -
> -	if (unlikely(xdp_buff_has_frags(xdp))) {
> -		sinfo =3D xdp_get_shared_info_from_buff(xdp);
> -		nr_frags =3D sinfo->nr_frags;
> -	}
> -
> -	/* allocate a skb to store the frags */
> -	skb =3D napi_alloc_skb(&rx_ring->q_vector->napi, ICE_RX_HDR_SIZE);
> -	if (unlikely(!skb))
> -		return NULL;
> -
> -	rx_buf =3D &rx_ring->rx_buf[rx_ring->first_desc];
> -	skb_record_rx_queue(skb, rx_ring->q_index);
> -	/* Determine available headroom for copy */
> -	headlen =3D size;
> -	if (headlen > ICE_RX_HDR_SIZE)
> -		headlen =3D eth_get_headlen(skb->dev, xdp->data,
> ICE_RX_HDR_SIZE);
> -
> -	/* align pull length to size of long to optimize memcpy performance
> */
> -	memcpy(__skb_put(skb, headlen), xdp->data, ALIGN(headlen,
> -							 sizeof(long)));
> -
> -	/* if we exhaust the linear part then add what is left as a frag */
> -	size -=3D headlen;
> -	if (size) {
> -		/* besides adding here a partial frag, we are going to add
> -		 * frags from xdp_buff, make sure there is enough space for
> -		 * them
> -		 */
> -		if (unlikely(nr_frags >=3D MAX_SKB_FRAGS - 1)) {
> -			dev_kfree_skb(skb);
> -			return NULL;
> -		}
> -		skb_add_rx_frag(skb, 0, rx_buf->page,
> -				rx_buf->page_offset + headlen, size,
> -				xdp->frame_sz);
> -	} else {
> -		/* buffer is unused, restore biased page count in Rx buffer;
> -		 * data was copied onto skb's linear part so there's no
> -		 * need for adjusting page offset and we can reuse this
> buffer
> -		 * as-is
> -		 */
> -		rx_buf->pagecnt_bias++;
> -	}
> -
> -	if (unlikely(xdp_buff_has_frags(xdp))) {
> -		struct skb_shared_info *skinfo =3D skb_shinfo(skb);
> -
> -		memcpy(&skinfo->frags[skinfo->nr_frags], &sinfo->frags[0],
> -		       sizeof(skb_frag_t) * nr_frags);
> -
> -		xdp_update_skb_shared_info(skb, skinfo->nr_frags +
> nr_frags,
> -					   sinfo->xdp_frags_size,
> -					   nr_frags * xdp->frame_sz,
> -
> xdp_buff_is_frag_pfmemalloc(xdp));
> -	}
> -
> -	return skb;
> -}
> -
>  /**
>   * ice_put_rx_buf - Clean up used buffer and either recycle or free
>   * @rx_ring: Rx descriptor ring to transact packets on @@ -1331,10 +1250=
,7
> @@ static int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
>=20
>  		continue;
>  construct_skb:
> -		if (likely(ice_ring_uses_build_skb(rx_ring)))
> -			skb =3D ice_build_skb(rx_ring, xdp);
> -		else
> -			skb =3D ice_construct_skb(rx_ring, xdp);
> +		skb =3D ice_build_skb(rx_ring, xdp);
>  		/* exit if we failed to retrieve a buffer */
>  		if (!skb) {
>  			rx_ring->ring_stats->rx_stats.alloc_page_failed++;
> diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c
> b/drivers/net/ethernet/intel/ice/ice_xsk.c
> index a3a4eaa17739..eecbc08a491a 100644
> --- a/drivers/net/ethernet/intel/ice/ice_xsk.c
> +++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
> @@ -537,69 +537,6 @@ bool ice_alloc_rx_bufs_zc(struct ice_rx_ring
> *rx_ring,
>  	return __ice_alloc_rx_bufs_zc(rx_ring, xsk_pool, leftover);  }
>=20
> -/**
> - * ice_construct_skb_zc - Create an sk_buff from zero-copy buffer
> - * @rx_ring: Rx ring
> - * @xdp: Pointer to XDP buffer
> - *
> - * This function allocates a new skb from a zero-copy Rx buffer.
> - *
> - * Returns the skb on success, NULL on failure.
> - */
> -static struct sk_buff *
> -ice_construct_skb_zc(struct ice_rx_ring *rx_ring, struct xdp_buff *xdp) =
-{
> -	unsigned int totalsize =3D xdp->data_end - xdp->data_meta;
> -	unsigned int metasize =3D xdp->data - xdp->data_meta;
> -	struct skb_shared_info *sinfo =3D NULL;
> -	struct sk_buff *skb;
> -	u32 nr_frags =3D 0;
> -
> -	if (unlikely(xdp_buff_has_frags(xdp))) {
> -		sinfo =3D xdp_get_shared_info_from_buff(xdp);
> -		nr_frags =3D sinfo->nr_frags;
> -	}
> -	net_prefetch(xdp->data_meta);
> -
> -	skb =3D napi_alloc_skb(&rx_ring->q_vector->napi, totalsize);
> -	if (unlikely(!skb))
> -		return NULL;
> -
> -	memcpy(__skb_put(skb, totalsize), xdp->data_meta,
> -	       ALIGN(totalsize, sizeof(long)));
> -
> -	if (metasize) {
> -		skb_metadata_set(skb, metasize);
> -		__skb_pull(skb, metasize);
> -	}
> -
> -	if (likely(!xdp_buff_has_frags(xdp)))
> -		goto out;
> -
> -	for (int i =3D 0; i < nr_frags; i++) {
> -		struct skb_shared_info *skinfo =3D skb_shinfo(skb);
> -		skb_frag_t *frag =3D &sinfo->frags[i];
> -		struct page *page;
> -		void *addr;
> -
> -		page =3D dev_alloc_page();
> -		if (!page) {
> -			dev_kfree_skb(skb);
> -			return NULL;
> -		}
> -		addr =3D page_to_virt(page);
> -
> -		memcpy(addr, skb_frag_page(frag), skb_frag_size(frag));
> -
> -		__skb_fill_page_desc_noacc(skinfo, skinfo->nr_frags++,
> -					   addr, 0, skb_frag_size(frag));
> -	}
> -
> -out:
> -	xsk_buff_free(xdp);
> -	return skb;
> -}
> -
>  /**
>   * ice_clean_xdp_irq_zc - produce AF_XDP descriptors to CQ
>   * @xdp_ring: XDP Tx ring
> @@ -902,20 +839,15 @@ int ice_clean_rx_irq_zc(struct ice_rx_ring *rx_ring=
,
>=20
>  construct_skb:
>  		/* XDP_PASS path */
> -		skb =3D ice_construct_skb_zc(rx_ring, first);
> +		skb =3D xdp_build_skb_from_zc(first);
>  		if (!skb) {
> +			xsk_buff_free(first);
>  			rx_ring->ring_stats->rx_stats.alloc_buf_failed++;
>  			break;
>  		}
>=20
>  		first =3D NULL;
>  		rx_ring->first_desc =3D ntc;
> -
> -		if (eth_skb_pad(skb)) {
> -			skb =3D NULL;
> -			continue;
> -		}
> -
>  		total_rx_bytes +=3D skb->len;
>  		total_rx_packets++;
>=20
> --
> 2.45.2

Tested-by: Priya Singh <priyax.singh@intel.com>

