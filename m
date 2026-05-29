Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wAqMJt5AGWpVtAgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 May 2026 09:31:42 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D9CF55FE8A0
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 May 2026 09:31:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 715C360E88;
	Fri, 29 May 2026 07:31:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mN2xPXs590XX; Fri, 29 May 2026 07:31:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DD58F6114A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1780039899;
	bh=SX3K6a6yJmdv1OhL4DtaiYHfQBOo/fMquC7ZW1ujcqQ=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=UMTMerRLIdm3qCACnncfKLdDniyx8zxGrE8PkyLgV0P8VmtsjDdMU56Jz9Eor6Ere
	 oXcbDJYZQE2JaMdk8TUjBoynq57puI2g8JzUkgeoBN4tjrXtQfBs7rf+Lyj7zFJ1rs
	 c61slHGARsq7O3ORpAisxbkgJlcdkR+5NwVTo2sG4szGFRWLdWiCs2LkbqgvKBoa8Q
	 0ZHBpiUSs8ktIWPlfI8jzwjoOqBlCeDE+wH9dM9UiE225hSxU0dwIrtY2Ug7sokzyt
	 h5zdjSdwYblKUNqumGdxBts45zIHDiokae9XCboZo1NQpq5gwlv+PljN0Ms7mIcRwc
	 ZW8ZgSyhVSP0Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id DD58F6114A;
	Fri, 29 May 2026 07:31:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id D84F7D3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 May 2026 07:31:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D556540ADF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 May 2026 07:31:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AUTp1Rcc_Ida for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 May 2026 07:31:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org CC7484034F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CC7484034F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CC7484034F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 May 2026 07:31:35 +0000 (UTC)
X-CSE-ConnectionGUID: +/AntmPyTVCht+R7MnPvEA==
X-CSE-MsgGUID: bWzd4RtsQAmjTeKJayzRRw==
X-IronPort-AV: E=McAfee;i="6800,10657,11800"; a="80613616"
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="80613616"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 00:31:35 -0700
X-CSE-ConnectionGUID: awEan1NTTLiMZGNrtSSp2A==
X-CSE-MsgGUID: mpVIJwAATlGtmKl5emRniw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="246794903"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 00:31:35 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 29 May 2026 00:31:34 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 29 May 2026 00:31:34 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.43) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 29 May 2026 00:31:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FnOrGTlAjqOq35WpjcytbTbaItjf/okkOjIrLYhdgtDsMIQBPeL9DFAIF8efha3CfrhdvQjG1y7XHJMVBCRn5DMjihx12c+rPtM4SE7B2eGZqpIPvUCAcK+HmopPRH3nT/z7z0AN4U2FK6/4DvrffDCSa4r78AtRZz37tW7GMqRtya57FMcl0Q1Zk0Si/aE8k1DjU+vIgeIC+P9ycaZpVX9WMoxyVgZJ6JjGUmApYVPr196Zr+mhI0xh9jt2FqfoxhY6C/edPxoCByOnKzcQJ73Ar83yMgNIP5U0BMgRvgqwzTgEup1ECurrod3LHlIJ2l/GJANABHotEHFjBYAj3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SX3K6a6yJmdv1OhL4DtaiYHfQBOo/fMquC7ZW1ujcqQ=;
 b=VWMZ9gPtEQAW8WdYp2S9CMKSztpZEozxqL9aTuvMvjANNlmTWwk4fTk6SVnbr0ZPtjMEwDtyzlAgmlmYjBml1j9oWWCJZs0VDbPJlsR0blyYdq4OIzUL2fJXCGMJG9ghVP3DFQorZPuu+OeYdz9NitKR5qfTUpw9f1SsAWkonnex8RvWTCdPyOlTFtTR2g6X7NSAUkyDsgc/qsVPtTkfqFMR24DlBT4OiUdivNOcpG7x9qGXhx1DrfYVsjpqCbF0F42WSMKmJ5ZT5PVv5FmGeN1AxZImFt2lmh4/dVbCFBedxFsozB4+KHEgXTkzm9EUYf42kknuCRg7VrTue1Viqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ5PPF6806D69E4.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::831) by MN2PR11MB4728.namprd11.prod.outlook.com
 (2603:10b6:208:261::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.48.19; Fri, 29 May
 2026 07:31:26 +0000
Received: from SJ5PPF6806D69E4.namprd11.prod.outlook.com
 ([fe80::3dc7:50e6:ac39:32bd]) by SJ5PPF6806D69E4.namprd11.prod.outlook.com
 ([fe80::3dc7:50e6:ac39:32bd%7]) with mapi id 15.21.0071.014; Fri, 29 May 2026
 07:31:26 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, Vincent Chen
 <vincent.chen@sifive.com>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
CC: "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>, "davem@davemloft.net"
 <davem@davemloft.net>, "edumazet@google.com" <edumazet@google.com>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>, 
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH 1/2] ice: allow creating VFs when
 !CONFIG_ICE_SWITCHDEV
Thread-Index: AQHc16S0yJzbUA3eJUWXPzoQbaGh7LX1wr0AgC8IMcA=
Date: Fri, 29 May 2026 07:31:26 +0000
Message-ID: <SJ5PPF6806D69E4828C4799B7D834B5238B8F162@SJ5PPF6806D69E4.namprd11.prod.outlook.com>
References: <20260429065127.423949-1-vincent.chen@sifive.com>
 <20260429065127.423949-2-vincent.chen@sifive.com>
 <IA3PR11MB8986CF64FC3168AFD28231C3E5342@IA3PR11MB8986.namprd11.prod.outlook.com>
In-Reply-To: <IA3PR11MB8986CF64FC3168AFD28231C3E5342@IA3PR11MB8986.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ5PPF6806D69E4:EE_|MN2PR11MB4728:EE_
x-ms-office365-filtering-correlation-id: 4a346e3f-e18f-4f6c-1c8f-08debd544aac
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|11063799006|56012099006|4143699003|38070700021|22082099003|18002099003;
x-microsoft-antispam-message-info: DfVg5/OPt/EMbJNKI8k+U3IIgwXpGdHe1ClOPc55K+kcYjmH8o2L00e5eCmJxoWziAmv/OAcukVlwx7wpreIPzkCGo4tY6bYOoBjHzd33yzoR2ptwkC4kzmD55eRDHyzTWTDgwzrdfSzNl5BDJU9BlJHqXGCOXVglJysEL92tqdq/o12iBpb0vSCvJ6XatURCeOOYHvktut3SOfmx0tVl5KY0989qhgvAaG9JQ6DosNLTMQ3GJYjfzuT5o9OKQXAwV/LyQzscehhJVdU0jP6uxbjxaktSuPA1kyzB2EjTPIne3Rj3PkC1vdiphViDeKdAMjg3+r/fXnwz2DPEMr/lucOwLBi9XSDLS1cm3B/tds56ZBaYSb2wBaflpiI4LcrwESOJBudGerE/K8HMfFovvOAE8rEra8tS/O/FDGrE6GJWn2/aYMNje0d2jH+yW6hak2w3DtYqWNSKVt+1c28OL4vhWjHm6dugkk5t8tSN2F5pCTRgsfI3DsPkDqngIxCAJd5eXGkf0Tboe01RrwkpVyZj4pO3yE+dwmP7Fg9E98ezEBNyvnifW1LT9B3xHk0qdoY2601mOFmJlfZB7uo90NJ/SVYAcY27Rv/gvzWSZpuiNmQfPE3QmXGEXfhJIUFFZqvD6bYtIaIS7/VJKlqcpp9JUPW1lx+fc6Slqim/L+xBQNCkIejjqnjVyJ7VxoJ7MZSG9rQd63eM0h4RvlUUqKqhzun66UYfeHjP50HsItNEzO4pivBwMfcudz6CxP+
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ5PPF6806D69E4.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(11063799006)(56012099006)(4143699003)(38070700021)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?yr5g9sVEhH01VHVt5uQqlyn5meyyUxwJG4Ch2I+fBgUxJamdnJmtemIOfPKp?=
 =?us-ascii?Q?1HaFQ/S8iZu3EJBOIVxukqYRScRbWTx3DHjlzdtfgWpTAIEEErPZSkzxEfsO?=
 =?us-ascii?Q?ZEE/SRQw+7yFjdIB53ASKU0JXKiARxPw1UBvpVeV8iwo8zHtHGoVLds5HMV8?=
 =?us-ascii?Q?8thbnQ4KnimR20HVRdkEwfvyce0Thj3CtV0HHZs1+Ig4lQofM8DyPKjAvhdV?=
 =?us-ascii?Q?cbcw/MYQKee1r2dEYuaCr0ExKjS6AeH0j0Sz7iWTb0VQX4aZpuw0gFe85OtC?=
 =?us-ascii?Q?n7TdMzKSepVx9Z9hkvGr4uqyphf/8cie2BTQ3hr4SIrMKfTQ0XLOvfOoYXOX?=
 =?us-ascii?Q?hWR7jlufysF8pYTX7JfOxlhoPbp7sn7S0TbiE2GPWeCHyiN3pQmGXeJJApCP?=
 =?us-ascii?Q?JxAaHKTkpFFHNFo6kKEDc0EdWbKMBmPC8QHVka/4D7quqG8K7cwPn0RgCVeT?=
 =?us-ascii?Q?Yb0QyzFAVHS0mEG1kubcophUurmhBzDfCMSQDD851xgrL/WF6CBPn+3J5bjL?=
 =?us-ascii?Q?yg6MX1squ6HhDn+5G/kaTj9+xyskqJbuPQfQhMc23fPambvbb2yEF5jZY7Zo?=
 =?us-ascii?Q?Yvwdxw+8dUh9FafjYrigEkKbOGMaOWpSty34DBI4MS8sqeYgLyionTVKyKSb?=
 =?us-ascii?Q?1nHP9Syg3LmxoT1XhZ8RaH4++3Wl3JekSx5AYgBqyMI1+bP9BNOPqDBw8nym?=
 =?us-ascii?Q?8qr194gMSsT/qWLIeiCkeoZTAe48u9oU5B2OxR0BbBPXmIlNyfk4nxeATGvv?=
 =?us-ascii?Q?fIrddkjvWUfLwN/pXmonAdD0pmOBPCSHoO6q/sbS5tmGVXFkS4oJMsobTPnv?=
 =?us-ascii?Q?c3ESvks2WKbwOu/QQP0ImScyFQpizku1ffuD/ouKRlOsQGvU2zjcccM97hCz?=
 =?us-ascii?Q?uiUo/7W6fErTjQo4jlIypJavNy+YSWzX6kW22eDS78liDpNuCbgTfctP157O?=
 =?us-ascii?Q?WYJ+4WYFDaI3wfChFgyVRqNgsURwaShLNt9vIlPG2MQal6pdLDcVs5zGC5K9?=
 =?us-ascii?Q?QhqHN/83n41QlqhnU0QxRYUaO57apUnVV8wPminvOON9GX3TWp9EM3pbHToU?=
 =?us-ascii?Q?9j5MuIG0ZZQlRzTGzKExdhYvt0KNQZ6Trwh6IzfrCc7PRQe8Yekr9hKAvhUC?=
 =?us-ascii?Q?G/3ra8w9q7hk8b4olHmDeTvUS05lCgdP0nuRI5vc2gmdmK1BW+egv/Fhoqht?=
 =?us-ascii?Q?0sKdmf1/x0Z3w3DkKSfA8CNycacZqOH9GzIlel59EhLURM34/xpF3FJyMQ9J?=
 =?us-ascii?Q?IZK0gIom3K2EkvWj9wNMmcm317z+IP7P5sx2p5oPX8n7U2iavdT/p067/YCc?=
 =?us-ascii?Q?bO0kgAC42Pn+DlCb5F/DLJo7Lq9t8Ix8wGg7d+ECooBE4P1j+MIKI5MOd4xF?=
 =?us-ascii?Q?ySGCtP2/AXu5LhFvODWzGQaYf81exNYef/frrbdmLnUv5iy4tZNbpvkcmyhU?=
 =?us-ascii?Q?VO4N8Ndke+f1QuagbHONSKZB+W1JiQ0NlQgsF14WbHZhnJ1kRfLEpyI1cwX5?=
 =?us-ascii?Q?5E2BIrH6dy7DxGhUkMAxU5UUfdt1fxHtyHE1dBMHKjN59V1nDFA5AKZdzzM1?=
 =?us-ascii?Q?kOT/lLWYENdyXnU9TUEwVnt1ZeqkN17N1xAHDUwLFHqxyf35/LoYjztNE5ty?=
 =?us-ascii?Q?deCxStQqKx6KIEY+e6dJOgMI9ADPV9+wS7GvBHbDekUvQckpYxxZXoc75K0S?=
 =?us-ascii?Q?Lp0MoTzQzjg1R5D+crOig8XWF9C6QSEPcU3VfcJnuL7OiT98DbQRPR/NnBVP?=
 =?us-ascii?Q?Kotd+FlOCQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: HRQzKj80UpjH/LIXEHm8wTJqhGQl+ipw7LuiNQu5/s1lVUd0XRhbrZPtYfPLAfEMDxInLrkBrja0rUoA5how8GkHgjWzmCgNSZQ/cvmpFnyH+erFw6ZAVc1ZS/XB6c7lkanCp+/wdZhAe4sDqE/kBNrDrXRrLUd/YByq5tXzJMGXowqcQk2UJdycTX+rGVBj9oVqdZPUFz94XcK5ZP8s+ADpmr2hd3dGUIeTkC8t7Tb432qPRO6SIz4PMHoVBEs74geIpeGJOil+VdRw4l/whKUPpUsgqfnv6SbzJ0f6li4pTkp+m2PEIQ72rfZlapurJuHr4dWgApR9rGoWP0jm6g==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ5PPF6806D69E4.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4a346e3f-e18f-4f6c-1c8f-08debd544aac
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 May 2026 07:31:26.0282 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /0wSAV/KCrl6rwev1bM6zfyqJPqD/7jQNuYn9LyG7JuyNrY4mQkcMlPP9TTf4pTs9UwVlexDh8TBcJ8GAPyoPjMKX12QRYyCNwKBmB//SoE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4728
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780039897; x=1811575897;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=01zV1qM51CsmglzAxQf1pEhnKVCrXMc5BQysHCKRGAE=;
 b=gND8Q53VfcvuY49xQdUA2E/sqxvutwYcN6fdl6rhFKuqrDf6uXbeOJ4c
 QR9TmzotxHmulIvk0cAufbTkHkX1RTfJsnL8OoPn7vognyie6BU3Qu9eY
 6riOocR0Aeq3kZZihY4GJjbFnBGyt8B0waDQkNgYB7fUw8Ay/sd11mEnd
 i5PyX9Js4mD9+71gse1dEhXC+jUyetey+9eexqiqjHqCaJLdIPlMz8NmR
 UhzTxxfUvA7tvEK8mu7Eyb6gtQ81ZX01hC8poUwC3kuRdsvtnHHt9P8J4
 W/hD+MFI/9SzSssPygkoaA4X4R9dSp00r3hpv0Tn3gVYhtNXEQTA/dLmy
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gND8Q53V
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH 1/2] ice: allow creating VFs when
 !CONFIG_ICE_SWITCHDEV
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[rafal.romanowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:vincent.chen@sifive.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	SUBJECT_HAS_EXCLAIM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rafal.romanowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: D9CF55FE8A0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Loktionov, Aleksandr
> Sent: Wednesday, April 29, 2026 11:18 AM
> To: Vincent Chen <vincent.chen@sifive.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>
> Cc: andrew+netdev@lunn.ch; davem@davemloft.net; edumazet@google.com;
> kuba@kernel.org; pabeni@redhat.com; intel-wired-lan@lists.osuosl.org;
> netdev@vger.kernel.org
> Subject: Re: [Intel-wired-lan] [PATCH 1/2] ice: allow creating VFs when
> !CONFIG_ICE_SWITCHDEV
>=20
>=20
>=20
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of Vincent Chen via Intel-wired-lan
> > Sent: Wednesday, April 29, 2026 8:51 AM
> > To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> > Przemyslaw <przemyslaw.kitszel@intel.com>
> > Cc: andrew+netdev@lunn.ch; davem@davemloft.net; edumazet@google.com;
> > kuba@kernel.org; pabeni@redhat.com; intel-wired-lan@lists.osuosl.org;
> > netdev@vger.kernel.org; vincent.chen@sifive.com
> > Subject: [Intel-wired-lan] [PATCH 1/2] ice: allow creating VFs when
> > !CONFIG_ICE_SWITCHDEV
> >
> > Currently ice_eswitch_attach_vf() is called unconditionally in
> > ice_start_vfs(), which causes VF creation to fail when
> > CONFIG_ICE_SWITCHDEV is not defined.
> >
> > Fix this by adding switchdev mode checks at the call sites before
> > calling ice_eswitch_attach_vf(), consistent with how
> > ice_eswitch_attach_sf() is already handled in ice_devlink_port_new().
> > This is similar to commit aacca7a83b97 ("ice: allow creating VFs for
> > !CONFIG_NET_SWITCHDEV") which fixed the same issue for the previous
> > ice_eswitch_configure() API.
> >
> > Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
> > ---
> >  drivers/net/ethernet/intel/ice/ice_sriov.c  | 14 ++++++++------
> > drivers/net/ethernet/intel/ice/ice_vf_lib.c |  3 ++-
> >  2 files changed, 10 insertions(+), 7 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c
> > b/drivers/net/ethernet/intel/ice/ice_sriov.c
> > index 843e82fd3bf9..6a0b724e46f9 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_sriov.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
> > @@ -484,12 +484,14 @@ static int ice_start_vfs(struct ice_pf *pf)


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>

