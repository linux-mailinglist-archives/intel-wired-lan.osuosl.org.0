Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WDnpAgXPzGlFWwYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 01 Apr 2026 09:53:41 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F488376526
	for <lists+intel-wired-lan@lfdr.de>; Wed, 01 Apr 2026 09:53:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E5BCE60FF7;
	Wed,  1 Apr 2026 07:53:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tsA3Am8aqlGq; Wed,  1 Apr 2026 07:53:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4F04860FEF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775030018;
	bh=jW2jozUG2ebdvL2lDd5GrFnp+pLaP0e38TWL7dpC9Vg=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=N98Fmt/+ONRmRWeSkzdXlWNp91IcwxwJbrCnDt/1z/IQLDF69Wp4UruM6QmMWgOsm
	 3xRkl4HoKmKCanyLO+S8OHtY1RIrR7Kac9HX6q0D7xMOhW37+/zZPH7BL3p5Ur64NK
	 B3EEgiSlzZ4TmjBrLZgcqj6Sq7w0t1kbznmsahuSsItXAXHbgHx/IgsL0UR8b6j/3V
	 9Nxy0pWnMXiOZsqWLXDqGEx1RD8njfEh9tXMxqXCNwOPq4rHm1e+tNQmfymOKDKPu7
	 2wau44YlHSyp3+IyYXsYijQ+UDWb4McI09JZJYELlkgfql/r4hcpUA7ARO3HzOsGeA
	 wmX2PqMvIjpTg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4F04860FEF;
	Wed,  1 Apr 2026 07:53:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id BB31625F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Apr 2026 07:53:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id ACFDF40F87
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Apr 2026 07:53:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lJJha7P0D65b for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Apr 2026 07:53:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D3BFC40F84
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D3BFC40F84
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D3BFC40F84
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Apr 2026 07:53:35 +0000 (UTC)
X-CSE-ConnectionGUID: vp9owSlVTEWupm1q8rhCiA==
X-CSE-MsgGUID: sEHedcnOT7OrulGdV6RpdQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11745"; a="79664599"
X-IronPort-AV: E=Sophos;i="6.23,153,1770624000"; d="scan'208";a="79664599"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2026 00:53:35 -0700
X-CSE-ConnectionGUID: fJrkKUeqSlmW9qp7mQ0ivA==
X-CSE-MsgGUID: 8ga69ydqTVy0N/66rXmkGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,153,1770624000"; d="scan'208";a="221746375"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2026 00:53:34 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 1 Apr 2026 00:53:33 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 1 Apr 2026 00:53:33 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.67) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 1 Apr 2026 00:53:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Gsan7mstElWznlzSUFTMd9zuaSyhagyGWVaic2I36iGgfvaxwlinlNbabHwsUtSvHdnGC8OHCl+9p5P0S4+Snr250w5yupobzOPcwr3PKaGeE6s+1F5lez7k76VEQfdF+6kxhAA2ZhYP/mg5c78v41W2ncR4dAhAy4hW/Kh1hmgP8H/4mKxTyO5fC7PIlXrbQ9Wa3IuDxPC2e7V/6PwjlKXv9gRaL/lMiXdFlXcRKqZyMJcmGNK99pibL2O2EWuG3KUQIZ2YeBPTsF1hKXbM4vzPUefQTLddctEYLDdGQrosQNlP3Xw4Eb8H+1xBs/UsJON/CWuPcuQIwMHsHfXWwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jW2jozUG2ebdvL2lDd5GrFnp+pLaP0e38TWL7dpC9Vg=;
 b=Dp00MZN1K/PhBjBKOkSD+hZyhoayxe3OEfK3W0jBEyI5F6twMdkjU/XmEYb11YTBu5yM1YZApK/EpXFz79rtrrxhAsV3fbt3IX3hcpQY6xuwLprf8motOjHrgsWZjcGGvBrnqSs5LOVjg6JjBK6U7d7SL+CfVnf/xXaoKYkPq1nD+RK3MBSdhv8CeoAp9U4LKfQPZ/V+8ReJeq7wc+8SmdY3XqeFMjE8W3TlQtB+PUsmWVQOxg/jqVzyegGsEOQKXk9WX8KAveShXGuKLD5aOpWRj6JN/QR7qUuaFIlKMlWnfnxdqCoq94gj+6vNapkKmU1Xbi/gBQNR16C4WpLl3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by LV3PR11MB8556.namprd11.prod.outlook.com (2603:10b6:408:1b4::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.17; Wed, 1 Apr
 2026 07:53:27 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9745.012; Wed, 1 Apr 2026
 07:53:27 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Daiki Harada <daiky0325@gmail.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Kohei Enju
 <kohei@enjuk.jp>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1 2/2] igc: use
 napi_schedule_irqoff() instead of napi_schedule()
Thread-Index: AQHcwSMhgqQgBkjY7E6FR0J6/y/W8bXJ1ueA
Date: Wed, 1 Apr 2026 07:53:27 +0000
Message-ID: <IA3PR11MB89865406A4D4891BF48F2D47E550A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260331103924.36422-1-daiky0325@gmail.com>
 <20260331103924.36422-3-daiky0325@gmail.com>
In-Reply-To: <20260331103924.36422-3-daiky0325@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|LV3PR11MB8556:EE_
x-ms-office365-filtering-correlation-id: c4255163-aafd-4ea3-a905-08de8fc3c270
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|7416014|1800799024|38070700021|18002099003|22082099003|56012099003;
x-microsoft-antispam-message-info: 02rcKj9qa0Zb6BEfQckMGrv49jqC7zVD4N8yA2ot1LVxAJRryNJ2pVEIsjgc7LUF3PHU+n+m8NnvFNN12W81kB0TSzKGH276Z07DWIcuQ3CU5WDb6KwLTeiaBQzNZLMZqygaINIjNhsB7/WNDWc43Hs0u65pF02AgSkV8uS8LmIHFEIsV2Pbldb6Hl86DDcPDA4qiVVdXQI06wS35rlTp+isJr60JDpqV0zO6RKWcBfOiFIak2d3pYwqvrydMPTs0SvWwPg/Ld9ydXnQELbMvax7m69SBzMLoRGabOw9Y2JvPCnfxfeVmWz1LSDzSBPgHROAEOOcrbqtF5J1hceHPc11RqNaPqZwQeuaXWqpN0bxv8qU9iW5Xqm9YoHQuVUCruM4MzrUY0Opl3F0FN7aL4uEZayN/RbfySYNLptnPjcfxV4M0GH//F04pGldO5Xjnpa8IdToaoeH/gN7PBRP1MoTDqedGhVlOBFFmSD77LHIF228qvvon/FWuSvfaplg7bAkJXDM1LVpxx7fGjMPBaQtE+RbpAkaEi9ttJ/3wK8f5V/rm5d1FMDB9+zy5ycGiSufS1y1vHs1MP7TECCMDkrKSu4KSNV96xk68KzO3vJB9KJ7nIfxw91rZR73Do6eoW8ng3IL7e+XP6rRtV52rVs8bdt/fwrWV8TxrmmmyRMQMqlSAbdsTzoGg8sK007sF/grGfjgxyZpylGckds4eMcVwdn+VrPfsCT8YG4ZCOA8KorhfTL4kJ3/dlCaokaGMxSH2u/w3qz/ZOJG8jtOQljhi4lESKLdd46PA1n4suA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(7416014)(1800799024)(38070700021)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?+bk702m0EoSbottCvNk5RTuCVEpvBvm07WiCSf65ftPJHwwC7srKg6Y48GhD?=
 =?us-ascii?Q?IsFoPcYXm/Ak6FZlbRDuu6CklFGhXwn84lJ6gwYDXg9d8TdujCyZ5CmIopb4?=
 =?us-ascii?Q?JCJ1KnLkf8crksaBu1k7KfYuoyXb31jVNpV8SkaLj/NQDi7h3QtFbBYp2aLk?=
 =?us-ascii?Q?w73+09loe8jpo1GCXMozgLCrxSAPJDWUmG1j2wM+DNnNwTnPqMorUWaKG+KE?=
 =?us-ascii?Q?3WqLCrhI5oksFqKYmBUhXa6XfjgK2jnGFJWUwyi68tSUuwKx5s/eUAp8uOoi?=
 =?us-ascii?Q?nj24exWSu5ofd9siGRpDg9tE84nYMQKZKqgRef7Ns6kFRIqfZowVxmxY56CP?=
 =?us-ascii?Q?KBAoHu/ovFGF3SMYydrd3OUISepmlvr1BzDoqnY0Rni3kT2hcUdFjimzE8rx?=
 =?us-ascii?Q?y93C5oNUfS6Vwv7ZaZRDFZy3AHPUZjT9gWENHaltY0ISW8gEB/A5N/A1OvkC?=
 =?us-ascii?Q?Y/QBTvZizkmKSm9OAfp3UHqpN2Ayof62DHOesHWfmJ+mZvYSKGmosqzFM+mh?=
 =?us-ascii?Q?D06GpDUD3GdgkFe3cGGWqitAO71D8rzhLPj+l3UbJHcgZ/wJcj5t5xsY9o7O?=
 =?us-ascii?Q?epSicNSXh3K1GrKSasb48qqbtGjEYo9Wg2VLjHy3CPEyetKrlarnVGKCpiEy?=
 =?us-ascii?Q?FLR0BRmf+xeoH061Cb0U8iH01ya3OAicCrdSlFg+0iZrvfzcOJuCdFWQBIVR?=
 =?us-ascii?Q?wjxVh+dPgqN+Bqxyj/OfsK5nPZUwfbNTAOXHtPnqsLjOMt27VRpCFntf9uOt?=
 =?us-ascii?Q?CMxDRP8apkRFTVo4mNNktKf5/2u7MAlVM5hF3jFzOe32D3xUj/LL92a4ZgSA?=
 =?us-ascii?Q?uQpHQUk7hSUzDUf1BZdv3UP/6sH2KPV2bdeA1i5oYo+CteopCnZLxeslN3jB?=
 =?us-ascii?Q?sATMdpuS543RSVp7eSOYk6+Uk0LjzAy6Vi6Jba3OANYMNf3dTahaP2amy7AB?=
 =?us-ascii?Q?r8uy+y6xVeud+Gdd+ibOHoEB1A2lAPLWHDCMr85MrbBJLBa8Smjnv/cu2LMQ?=
 =?us-ascii?Q?5ZiE09f5i8rCfLd4l94GIGTNTVXR81jeYoMnc/ya4oDirEWLfRjoFP46jDVK?=
 =?us-ascii?Q?HYpWg/XACg5+Rs5IOqyEt5SFSX5jTRSH7hkoF56TgBvFkYQi1Qo1pWw6MpW6?=
 =?us-ascii?Q?2/npjZRnPvvlaOmWMIb5bJQOIkNLvmSFX/Vjfz8JBKBYj6TO3zAAd4wrbTCr?=
 =?us-ascii?Q?tADOG3x4KFIPHClIHwHhoCbHe9ZvZg+EF/YPp1JCjV0Mwu87Wfz34olL5kPe?=
 =?us-ascii?Q?4m3AIDoYhQNtqt2O8qhiUJ7qF8Oej9R9Rp5VUQldHdygd4GAeeSnbs2HJ54L?=
 =?us-ascii?Q?KjXX22E5I6Pek95LLxW+Hc0xoKSXeqA+2uDDsK4+XRU6j0uRaPIVumuFUPS0?=
 =?us-ascii?Q?4O4I/1uvboiIR9yqz/y8FtPSuMWIeWmoe1bZhC8rpDGz+7B6cP2D2c5uRZoH?=
 =?us-ascii?Q?LsHh1VL0wvi5drpQnbX8OxaqP84EmoSyOf6XHRltBOjE8IZbesif+2gx96o5?=
 =?us-ascii?Q?CUmkxUOPkS6bF2eZvXAgM+85xct9e+X4S+Vh45FOgReKrlVJY3xC1U2afB+d?=
 =?us-ascii?Q?38qQRpomufypcpE5xCeOlg2V282g3ubLss2mdzqza5M9oXjOmF7Wq2ZpVBbp?=
 =?us-ascii?Q?UBdxg41u7cGV9tIfNubzs0i5rwt0dq/Tj6k1/mLqOn3pwoU/yVLnQKXWE63y?=
 =?us-ascii?Q?PX4HoFdK3X7DCjsrq4t4VvVSYz6b9Y7SBeOKlSP0dMYEMyZuN1MQkc06f0c+?=
 =?us-ascii?Q?5WmybDeKXGUeiaSPqIc4pdR3vsucGns=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: mWSBpuo/6Wr7zLHNILnlIWldMTftMUySLAd8a5OQqih8Ynwu8jBiZ3ZvZqGib2SdC+EHr+nF8xOS0OhczBMzcOGBnYrqxDMJ3C8CWap+EpPrTrH6fUgsn1l9Ta2yrU2TnZguEPsc+dvZWBv0FyZF6vjnn2w1RNvK5vRpArBHLv/GJvi7SUcij+oVs/YxI3w2tFpAoYAGFzLQHTi/HfwQZgBObviAsjvADFpvutRf3KFvCcBwlpRNxds+f1hE6Ods0WIuPI0ulOJJfVuH1UNE3+gEl2QTACDUuI/iE7HMcc0IuapuXUDEBN2RvEyh3TAa7r1zZyyCC49Lv3+CD2Gs8g==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c4255163-aafd-4ea3-a905-08de8fc3c270
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Apr 2026 07:53:27.6333 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FlnRJIiSsvDcs5iH7I8tRNKNCkjTCj4x8dpl+RBPbxPJcbsroPuMGLpZmikkJJZfXSHQZ9cler+6l0YDBl/EmsM0YKkrOqXicWbT/kcUn/o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8556
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775030016; x=1806566016;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mSIs1CUnKPlbGATqzcnnC9vep5SsY3kysVQVu6H/DLc=;
 b=oF55hfiMrJa46u9pVinRn/0PemluGsNSqV+FbTxTBxKVQWUKpyTozeYg
 UBHL0uIr/+vSWg/3/2RHJsbBLcM5/LBEM12/xcTq6HMuVOkxRN8Zei03y
 iW0lJFK/bpKNcNXiIlzf3GUrKrXKTBwvRoUgfTY0pgy/QAHTi3+lTCfQ0
 Nu6r17ESbieOZTj7nmY84EQNlsVNe2IM6G7zRzGL6ECjHv5tEBmrw+x63
 wqAChTUp2DdDzFlD6zJBaIiqnYUaajHhrkoRSQXqzQhTPbr4bzcvUQn9D
 BSEQtO7VhAdaMonfqWfDfPHZiadaJoz1CwVtdn+3QJBruZpqhHFyD1K+Y
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=oF55hfiM
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 2/2] igc: use
 napi_schedule_irqoff() instead of napi_schedule()
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
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:daiky0325@gmail.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:kohei@enjuk.jp,m:andrew@lunn.ch,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,lists.osuosl.org,vger.kernel.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:dkim,osuosl.org:email,lunn.ch:email,enjuk.jp:email]
X-Rspamd-Queue-Id: 4F488376526
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Daiki Harada
> Sent: Tuesday, March 31, 2026 12:39 PM
> To: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; linux-
> kernel@vger.kernel.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>; David S. Miller <davem@davemloft.net>; Eric
> Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo
> Abeni <pabeni@redhat.com>; Daiki Harada <daiky0325@gmail.com>; Kohei
> Enju <kohei@enjuk.jp>
> Subject: [Intel-wired-lan] [PATCH iwl-next v1 2/2] igc: use
> napi_schedule_irqoff() instead of napi_schedule()
>=20
> Replace napi_schedule() with napi_schedule_irqoff() in the interrupt
> handler path in igc driver Tested on Intel Corporation Ethernet
> Controller I226-V.
>=20
> Suggested-by: Kohei Enju <kohei@enjuk.jp>
> Signed-off-by: Daiki Harada <daiky0325@gmail.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_main.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c
> b/drivers/net/ethernet/intel/igc/igc_main.c
> index 72bc5128d8b8..712605886104 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -5688,7 +5688,7 @@ static irqreturn_t igc_msix_ring(int irq, void
> *data)
>  	/* Write the ITR value calculated from the previous interrupt.
> */
>  	igc_write_itr(q_vector);
>=20
> -	napi_schedule(&q_vector->napi);
> +	napi_schedule_irqoff(&q_vector->napi);
>=20
>  	return IRQ_HANDLED;
>  }
> @@ -6059,7 +6059,7 @@ static irqreturn_t igc_intr_msi(int irq, void
> *data)
>  	if (icr & IGC_ICR_TS)
>  		igc_tsync_interrupt(adapter);
>=20
> -	napi_schedule(&q_vector->napi);
> +	napi_schedule_irqoff(&q_vector->napi);
>=20
>  	return IRQ_HANDLED;
>  }
> @@ -6105,7 +6105,7 @@ static irqreturn_t igc_intr(int irq, void *data)
>  	if (icr & IGC_ICR_TS)
>  		igc_tsync_interrupt(adapter);
>=20
> -	napi_schedule(&q_vector->napi);
> +	napi_schedule_irqoff(&q_vector->napi);
>=20
>  	return IRQ_HANDLED;
>  }
> --
> 2.53.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

