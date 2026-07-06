Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id kmgNLqdxS2okRgEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 06 Jul 2026 11:13:11 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FF5D70E7BC
	for <lists+intel-wired-lan@lfdr.de>; Mon, 06 Jul 2026 11:13:10 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=7gLOsGGB;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1D933608AA;
	Mon,  6 Jul 2026 09:13:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LO1zxU7sY_IA; Mon,  6 Jul 2026 09:13:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8F913608C7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783329187;
	bh=4P5gtOFUerGe0EM1ixJY1qwcJzHgYltlB+/D8xjEM3o=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7gLOsGGBiuQuOHPvdCCToke8nIiwuCGoYslNap7kr61MW52L8Le1T4wPFFuwZzxeB
	 EX4lDcrI9lioyIl9ou6Oj8SlX3m45oDpnzDftXZ8j6NetZiNprLhjZ9o6GUlO3H4rt
	 kvw7ZA9nyn2J6YRzW4zi65IDB518f1Wigg5S7sDqiaJWcXUcA9ArpIhWHfQpiXVJ0e
	 WTadfPXYxbyoNcfH/y5NRVYqumODK9rXbjTGBSgtu0N7nywSLNVyPEXTa+lo7IjCkO
	 jZYIGEMMHSlbqClma1fpkh2SugTIFuuK9Z5L5/nYRcW29txWfpsfVUUV/EMyXirITC
	 qWRSn+1hRjlZw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8F913608C7;
	Mon,  6 Jul 2026 09:13:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 4AF6AF2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jul 2026 09:13:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 305A140A31
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jul 2026 09:13:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EVyjfqIrHCpm for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Jul 2026 09:13:05 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5D69D40A2F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5D69D40A2F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5D69D40A2F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jul 2026 09:13:05 +0000 (UTC)
X-CSE-ConnectionGUID: zOBqq4/ORryDcqdC8vSSTA==
X-CSE-MsgGUID: eClOISIHRHiHsD1HtO8iIw==
X-IronPort-AV: E=McAfee;i="6800,10657,11838"; a="86510033"
X-IronPort-AV: E=Sophos;i="6.25,149,1779174000"; d="scan'208";a="86510033"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 02:13:04 -0700
X-CSE-ConnectionGUID: zeDPx1ApSZiR139fIPO7sA==
X-CSE-MsgGUID: YWT0XXyRR4OffJ8q7VkTAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,149,1779174000"; d="scan'208";a="253191327"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 02:13:05 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 6 Jul 2026 02:13:03 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Mon, 6 Jul 2026 02:13:03 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.20) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 6 Jul 2026 02:13:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eyl1hvOEzJmCiJSTXJdi8IscfGQ+nP1MdCCdcNJGpNOVDc5e71Yw0sDfOK5Rzn6mRA6Z8wIymM0MSNLXr8qYs/2y76W/eBbSAuGheIJjbC4METfE9TiywMu/FTTGm9Dx8uRHM23EFVxonuKMab091BQSj5aiC7X+77bI6bkks1+kSa67v97I3V7ruR0rCFNEFlbcIY2drMkKIx9gw2+mT5rriqPi+oaONXPPrrcWvo8AflF1f1W9++Gp/wiSRKGc+jNKS6C0DfttuRIrrHNkCKBC+J/9Ic5i3WxU4KfccJSBDVmn27fmhyD0XNvelN7KmPUpz+Kr7KpTRG9FwKam/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4P5gtOFUerGe0EM1ixJY1qwcJzHgYltlB+/D8xjEM3o=;
 b=Ssf2iMAktvrPt+//yjW7XMYDdIWFEx0+Q94WwMUh9iwJ+oWgo7hXQZIfWSg63uwLlZHXIt+qkx6d1jy5uw5GFemFiwpgccC0oIHrl+3kW35KVypaq3UXVphaH39HQgRtLO8akADdtIzffWirXxWgoPlalmlavg4rEqq2e7c0h9oquu9C3tEEqsyre0/DOl5EIifIb/vjF5bo968CDuVXNDSE2zUsl7CoAambCCNQgzXlQuzMr01TVDZCa4DW8od1bOq1M6kkYmEYP+VcgWKTUx/73wrvQ5VRxKs6C+Ba7EzL1UhV9Vj7UIE2XiAmYumYhzoJONVfWvjqe0Y6k1IRJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5902.namprd11.prod.outlook.com (2603:10b6:510:14d::19)
 by DS0PR11MB7481.namprd11.prod.outlook.com (2603:10b6:8:14b::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.17; Mon, 6 Jul
 2026 09:13:00 +0000
Received: from PH0PR11MB5902.namprd11.prod.outlook.com
 ([fe80::f95a:602a:34d3:5d37]) by PH0PR11MB5902.namprd11.prod.outlook.com
 ([fe80::f95a:602a:34d3:5d37%5]) with mapi id 15.21.0181.009; Mon, 6 Jul 2026
 09:13:00 +0000
From: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
To: "xuanqiang.luo@linux.dev" <xuanqiang.luo@linux.dev>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "Hay,
 Joshua A" <joshua.a.hay@intel.com>, "Nikolova, Tatyana E"
 <tatyana.e.nikolova@intel.com>, Xuanqiang Luo <luoxuanqiang@kylinos.cn>
Thread-Topic: [PATCH iwl-net v1] idpf: fix lan_regs leak on core init failure
Thread-Index: AQHdCtsqNBw1WrA5j0KCdYRO+bqom7ZgOXIg
Date: Mon, 6 Jul 2026 09:12:59 +0000
Message-ID: <PH0PR11MB5902BFDA3935B15A12D4B091F0F12@PH0PR11MB5902.namprd11.prod.outlook.com>
References: <20260703104132.47419-1-xuanqiang.luo@linux.dev>
In-Reply-To: <20260703104132.47419-1-xuanqiang.luo@linux.dev>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5902:EE_|DS0PR11MB7481:EE_
x-ms-office365-filtering-correlation-id: 65d31265-4017-4a4e-508e-08dedb3ec6a5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|23010399003|366016|1800799024|18002099003|22082099003|38070700021|11063799006|56012099006;
x-microsoft-antispam-message-info: W0KPAZmLwYj1PwJLh564d6+MOjQH4P9VputPMlvjbyiktFJ4wyTxX1yDIUACwrK8UXEMGSFzjZuPucRJNtAsnGTcZi4+g3veAxjLSxn82Q7iS/iHYolm230mFNh//PvDm4oZT4ZExlJuS0rEAEy+HR24+jvIR5/zTPT+GLRWihertKijX0rw7BQo7+ik67awX8/M6tMBIKzGm6+LmwlXsMH+cHOlID461TfpsPdribMbCdku2f+TQDIgXoaent9qkyo9XlieJdjWeKA1ccPd4Er8ZzazA5HQHH9CfuakiMeOjLXSpTE8wfrpdiRNXFrTptgu4BD+YIOLcTO7ooMc5z55h18bXRmhauGhf4eDRzw+2xk0GW7B51zoHY6I58DPlhJgdKMaist+t66Jx5MtTxVHZ7oVxGcZzaxcSCS35Y4FV5EODAermUhYBWip2rYfxJhlJz6Z73eJtsNbLH/LXFlqIwe82BzeTTjG+gCnh8l/cYD84T4tr55KhFLB9gK5VhO8FNHOd1fKcBrai6ikrLLV4tqvSaNd5enEwQpU1vcK8Tx0HSIU500bc10KNiWZelMK9yAv2XNqsM+NOPAzxFttXlclX8+YkyjfiUAHtyegDJeQy6qOm/cwbhGIF9UffwbWsgKLA1IzNHvR28gOy1uwpOGrd1Mfcv8RrgEL0aSi7TjkO0xGjtAtz8dCT5UXLCNU0A26el4Pwh61JsDd1i4ImT4ig0/lX0egdhTQ5Lg=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5902.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(23010399003)(366016)(1800799024)(18002099003)(22082099003)(38070700021)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?KBrMWcLfYuIyIpZipVFYsipfNJruAvyF7wW1vjzeq/jiTIExf1Spv+LSmz5t?=
 =?us-ascii?Q?mDiKd55Gj7KZKjh+iGfj324kvAunnbTOPsXgiAi9IjHFCh0dE0gnc6DiyQXW?=
 =?us-ascii?Q?niHRT9Nm2rGx000vOOlFG7rKAiHVYfUoDQOpX2wbhURPWIUM7ph7F6FWOM/p?=
 =?us-ascii?Q?dCLjII2JcRoMbzkI19HIiQuvpMc0a0BN7ePYMN+yZm/IPZHxAkrsG2w6EDP0?=
 =?us-ascii?Q?MjRi/Xd0yXTKEovp5xRBHRJq/rN3UAHt5WMoGqUzHEcXYN0+268vJe57BeBI?=
 =?us-ascii?Q?cF6BhKnFzxUnODI7yqjvK/tt4yhqZ4To96BB6xy5A8OTFdPqNOWqOItb0pyK?=
 =?us-ascii?Q?IH2yczHkBR9rhdfvPu/DwxvmnZ+hKOsxQRM/LWsjp85NR3yKqU//sz9BtrX3?=
 =?us-ascii?Q?aDw503cdJgIDTn2yKRQAVWoXK6fUtx3PFygCVo3PHgJr6i/e+YwENeu2QyQD?=
 =?us-ascii?Q?2GTcCXmz908uD25tgTr8lBL9ITGXTBEDt7Wb7lKVMfTRY0izkdyFWR4ML4Zx?=
 =?us-ascii?Q?wYWOXKBDXHXnEK5O3X4FVMjA7igi+nxy9+BdInL7FkeCFcm8Bq5FK/EsXuZC?=
 =?us-ascii?Q?ijkvu6Rassdn3NapQ6q2lZZ+2VglikYgS9KaeIbbCtauPbvGUZQ0gSZv0fC+?=
 =?us-ascii?Q?aIMopF2Fnvi9VyFz0LN16wP2lmKO1pvfW6jXMiNXhhmd3RATVBB15cWWX6OU?=
 =?us-ascii?Q?WJyh3Xou1sl33gvkMkf3iE9ACGnLLaC89UtcTUtwTV7RNF1/OR1XlfDVU+yV?=
 =?us-ascii?Q?h10qakGLtTVzGNioYVF8OIPR1/Ugx6zxgTh7g+22hw6g5tTW3L/Ce6ml11No?=
 =?us-ascii?Q?JvVJ2Rp1IgQR8VEFryOFCvie2af2D6mFSKZckkyt10ahAthPtE2XAqeXO2va?=
 =?us-ascii?Q?3YPX/7afaSZ8TlSrKX91ebqm2AwP7VcjnS0ZTBmQJgzwzJ09ooCB/JiBJxu7?=
 =?us-ascii?Q?hvwJOe8MCMXRywIRlnGn1WCci+4+/iJU2f41DRUe7kMASHP1GJQJWW2/jkNT?=
 =?us-ascii?Q?otg+n/HIlLnJaEc+Q66p10ppsPwq5Da2M7O9YkM96Mqzf++Vs3vrdiaBysta?=
 =?us-ascii?Q?LynBagZstopwwN8GhrojgvJ5wHcCO/kQMMnEqPCAmHqPRTJwYz7gpiPvcscI?=
 =?us-ascii?Q?6Q22oaiuREg7sF6XipVNehQhOef0PX/O0KVge+BjWm741uGu0PqVm95Z292R?=
 =?us-ascii?Q?RsCGOyBUQgpVpc/xnvkxtWiXdkpS4MPHKHUSUugJbPiEQwmH49dc5kQOq6yC?=
 =?us-ascii?Q?FcHj2mTca+2Ag8RjkT7MtYagkrewBg/ovXJlNTeMpieaWjRoTznkoJjOtE/8?=
 =?us-ascii?Q?uk94CtWybUS88a8z95sgRbz785hWqs42On88dCoh15F/nNYmiGwSliqF/ZWV?=
 =?us-ascii?Q?NidygOOjCUqtHVp8cVfisnVNFgYczbNeMbOdTo3JsR78P0w+pBjpW6nqh4Bk?=
 =?us-ascii?Q?uiOSGG0cpW1Nr/3trgGVqHzaT5bv9MnvUbO+FuMry+/adPTqXfe/ZdEIKaqJ?=
 =?us-ascii?Q?MdnajbW7M/r79Yb4miR9zWYHAgufOKhe09jg+DUMTv3/5tP2p7LhVKjL5MuD?=
 =?us-ascii?Q?gekCtJmTvlrguKblbNDLj5b1P3oUIQNDqcIC6TyA5JtMunVDNxhoIETJcYwn?=
 =?us-ascii?Q?F5yiZDRqWNwOKMXnSrF7ON8G35eO/kPs3HJ+EgEUm8gUJ+KsekT56UNLiUv9?=
 =?us-ascii?Q?t8cfy5TMyyrwteAuFab2hE4bxg1iTLDQJAJpcu0H88B5NFyrj2jlARNEedqo?=
 =?us-ascii?Q?ouIrbMemWQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: q8auVhiPZMONltXR9SZinE4Rr9HD4vhvA3RLPVrbLa6lzOR5+fSyRBnQ81um7ddCmOBFKak/LTUaTMxiu69dcDvycGwTl95ibqTFH5C31xpzTbV5zkfJlNV6Fh8wSM8ej93l5VGZq14su7+ViO+tQs8e4zPF7h0/KM26vWpVni5I/GcR4QRXeEAZLh0QmoWoxMCioStxjrB3E0+ZiTCjWAb+VS+ueMMB31qLy6sarEQgBW7zzPaqrFDHXHdD46sKMs34Kw7Eqv+chbD/uB564z8nOmt1oPIdPhZaRcpd5Xjs0a9rSvQLlRA5tbDTdaCA5W+/GyjdBFoMbdkj7lNuOw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5902.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 65d31265-4017-4a4e-508e-08dedb3ec6a5
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jul 2026 09:13:00.0232 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qd2NwR4vpU+zR134grsfKdxUYW7QrG0W/5vRhDMD1fpRs8sMNd2A+C6UkVG9OTeG+MZCC+WYk+yrSIV1U6tDR+2tvuhNpsjnnOEuK5PInuE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7481
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783329185; x=1814865185;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4P5gtOFUerGe0EM1ixJY1qwcJzHgYltlB+/D8xjEM3o=;
 b=IOCzUqSxOHZAfQZRWoc3rwVPJ2OU+2AFh/vHrQNawfyDBR6mdANJIAf4
 ZLgxM2b2X4vGPKicK5KfQZNplyVxVLj5wHuGmCp0+nKguQ3c5dxgcV/ER
 f9t6yQCnHnqUFvyVkkXfE0zRRSmciDd/2ENyHevx72ocbqioDnLIR+Fq5
 k7+P8VGAXQTu3jWEwe208Ejh0LH2INvLY8jMfW+czAzsRpACCKspBuT5W
 vfyGp4WVZbl3JNOe2MewfqmkuuaNJHe0WLf3u7N4odYEgXv4wXTlIiQNj
 v6Rl6NQuDzI78dWPHbN9qxoTiSM7/m4GXLHhP2mDkU7ngML2ZVX9qyBQE
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=IOCzUqSx
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] idpf: fix lan_regs leak on
 core init failure
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[jedrzej.jagielski@intel.com,intel-wired-lan-bounces@osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:xuanqiang.luo@linux.dev,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:joshua.a.hay@intel.com,m:tatyana.e.nikolova@intel.com,m:luoxuanqiang@kylinos.cn,m:andrew@lunn.ch,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jedrzej.jagielski@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8FF5D70E7BC

From: xuanqiang.luo@linux.dev <xuanqiang.luo@linux.dev>=20
Sent: Friday, July 3, 2026 12:42 PM

>From: Xuanqiang Luo <luoxuanqiang@kylinos.cn>
>
>idpf_vc_core_init() gets the LAN memory region layout before mapping the
>regions and allocating vport resources. Both layout paths allocate
>hw->lan_regs, but later error paths return without freeing it.
>
>idpf_vc_core_deinit() does not cover these paths because it returns unless
>IDPF_VC_CORE_INIT is set, and that bit is set only after core init
>succeeds.
>
>Free hw->lan_regs on the post-allocation error paths and clear the
>pointer and region count.
>
>Fixes: 6aa53e861c1a ("idpf: implement get LAN MMIO memory regions")
>Signed-off-by: Xuanqiang Luo <luoxuanqiang@kylinos.cn>


Looks fine, thanks for the patch!

Reviewed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
