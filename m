Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ZVGvBgkPMWrTawUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Jun 2026 10:53:29 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BDFD168D50F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Jun 2026 10:53:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=Q0ybsE2H;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1BC9942D1B;
	Tue, 16 Jun 2026 08:53:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EPLXmc4fYbKs; Tue, 16 Jun 2026 08:53:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 66FD442D19
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781600000;
	bh=d6JLkVOVAr0PoR31ZiHNzoGqMqi898C0xPzYDGY4xXM=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Q0ybsE2H8dsy/U0VfE9NDbthQiNc4Y4NRZyYW27gHOMVSddb4VvfarueNCOieQzbT
	 iEVhNZiqwHii8KGtmbFwZEYrduzU6VC2UneYpslRt7Rp0xsZxsCpKQxTGYWbBxsfXq
	 ePFwCkpd9P6nemCpvjblTigkMtDJlhVsK+NkeS/xzmKnsge/iWTMDqH9D4NMXeWhmC
	 w3+SSo90SPDs9SJ0EsgWXRSVWBVm1MAAaG2MIghToUW7AMaKvV+pCoRoV9OZyUva2x
	 k+OYAybqoOTbUom1NbUjK2nT9TWKYL3l82c1XkyDMYf/AbsBYhisS5+UarWlb/1RIH
	 JWHt582mnJtlQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 66FD442D19;
	Tue, 16 Jun 2026 08:53:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 42C1C2F3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jun 2026 08:53:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 28CAD85448
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jun 2026 08:53:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id j9yRz9ur9i8C for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Jun 2026 08:53:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=piotr.kwapulinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org DAC7D85446
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DAC7D85446
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DAC7D85446
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jun 2026 08:53:16 +0000 (UTC)
X-CSE-ConnectionGUID: tER1LOprRNaGi/P2RihH3A==
X-CSE-MsgGUID: 41yi72HYTRiIhWQFMkpUgw==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="93848257"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="93848257"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 01:53:16 -0700
X-CSE-ConnectionGUID: YEJEYb6gTM2n8gYKfYMN1Q==
X-CSE-MsgGUID: qnkstXnKRhGXwB5JG/ZeLw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="252837238"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 01:53:15 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 01:53:14 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 16 Jun 2026 01:53:14 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.66) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 01:53:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UZZVX5lbOCSoqzYeP6Cxf+TWGCDO83AWo/5WaS/pW0w4O9nHOrW0SQy3y3it7KARwcNHx67GFrX0PHqyrNipskLiCfdSPdgdi70hMNrTq3iWpGCsxg3Y6e4sYwzisLfK5MAndXSqm0yeQz7yBz0/5incuSFH9SwlzT6n6c27VAC7ZwnpQdQjjCtf9lPcD4z9HKLL+amBJRxsAHVso1yAEsgf7FbbSLFmYG2qbuAdmhxUELBGLxObFA1HOcCtkCL75JMEfoRvJBN8Soh3LS1DYo21oXGxlawDn7diUJ1ML/d81Ev71bkI9U/BuyZFQxLZJQfbv7LwBJjG75HsJ22kpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d6JLkVOVAr0PoR31ZiHNzoGqMqi898C0xPzYDGY4xXM=;
 b=TEDlgg1sBA5wxR9IGpNULszAiQuJo6g3ChazOzpNGSvIWoXi+joqa4mekzyn0aOVsJnp5p3HracPaC+CNvl+EyuBg2q3OuFsk01Z1BNrvTExGf30SbRW2ma0GokRmZVEOya3YCOO+m1lXUm5cj40DzSoQ7yhKBkC7baztKBEFjOsCCrU0kzoN99hTWX/D4azACZR3hsr+/C5CeG6rG1+V5uAYOh1vQKLu96Q6IftFx4FsK+kZrC8Z9VMyaqq6/GxBLzDLcgtFUyAEpcf5FPGdhy13upy3p6KvJnNqOFlZw+FBZ6KJTl2+yBNsoL8wc+umWJm7zwUbeCjdr82es+csw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5983.namprd11.prod.outlook.com (2603:10b6:510:1e2::13)
 by CH2PR11MB8813.namprd11.prod.outlook.com (2603:10b6:610:282::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Tue, 16 Jun
 2026 08:53:10 +0000
Received: from PH7PR11MB5983.namprd11.prod.outlook.com
 ([fe80::4d6a:a025:2e8b:b240]) by PH7PR11MB5983.namprd11.prod.outlook.com
 ([fe80::4d6a:a025:2e8b:b240%3]) with mapi id 15.21.0113.015; Tue, 16 Jun 2026
 08:53:10 +0000
From: "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>
To: "mheib@redhat.com" <mheib@redhat.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "jiri@resnulli.us"
 <jiri@resnulli.us>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "horms@kernel.org" <horms@kernel.org>, "corbet@lwn.net" <corbet@lwn.net>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] i40e: add devlink parameter
 for Flow Director ATR sample rate
Thread-Index: AQHc/BiL3evlwi2s306qJnvvM3oNbLZA4PZg
Date: Tue, 16 Jun 2026 08:53:10 +0000
Message-ID: <PH7PR11MB5983EFFCE5D7DBA199640113F3E52@PH7PR11MB5983.namprd11.prod.outlook.com>
References: <20260614161131.192068-1-mheib@redhat.com>
In-Reply-To: <20260614161131.192068-1-mheib@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5983:EE_|CH2PR11MB8813:EE_
x-ms-office365-filtering-correlation-id: 6d5162f3-7f94-48be-ae5d-08decb84b176
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|23010399003|376014|366016|1800799024|56012099006|6133799003|11063799006|3023799007|22082099003|18002099003|38070700021;
x-microsoft-antispam-message-info: hmZeuYD8rptG6f16uizfh3safhkzu/w++PJXzw06959gIGU1ZV5xdlBH9YGV6RTgp1/oQI0yQN5xJDmEWgCV7Y9rzhJZAJSAHYknWBc6NxtS8N5qzoZoEQBOcmL2+FIfucjHwyJwoAzyscWMNkX6OQ4fw41oi7DA7mHFeozyfeHQj32hFct7WuH1qepEcQ0hy7sQFIfdnhnrsckjPpLe2R65OI11yNH+z7tj7jJ+SMSyYqSyT0BPINlZ24T3js1/jXU9rTeumyiB5FhlQ/pyXXEH1pH5o/U/tk97EegfXmL/yNBXYl6fbhV6Lf9UHYv/Q7vkT1OAuZvygkB1g87VgKzrPeXADncnxFhvIIdSICAsM/crEQRIS2E6WVPMNlkFcENQe7giXVR4x3RHAotg1y1SrvNLzXn/Va/5YOWcbxz5xY8ivEYh3bORUrAL/mmNufNpQ58wjBEGMRuJHH77/JwitjKdm9abe8ydpqkGS07TgHbJQECrwQr/5av/5+THulUbrV6xGY1o81wQlZyQ+I9nrgOJv3FXYc7KSAzgjwMnGEbFS5g4IyDoAf4lEFaMqMHZ/EPCYN17US6oqyeIR4hX9lRNsX5j1Pf/35IDORfjH2CSlB+9b9RJmsmc21xnCqVavfHHvzeBSQjcPwqy9A3aWAby/ElOn9DGZK6qB4fnYsflYSlhMF8jxYSuzsTl+EpLY99z4gopxiQ41T19QixcW4/ELcam4IfoQKEGM+zMY+b5Wd47Jo5DavEjm1aC
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5983.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(23010399003)(376014)(366016)(1800799024)(56012099006)(6133799003)(11063799006)(3023799007)(22082099003)(18002099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?f/9kLXeAnAexYrYwVRFMatqJQkdAPer7BfpnP5AuV9jdwXbge5CxH4buWCuq?=
 =?us-ascii?Q?CqWW3aGbRcuplgV92Gh+NhMv/eTES5YVCSf3OsBrQCKNOPQU+SwIRvoBtNN1?=
 =?us-ascii?Q?9BvO6aQOrOR8/Yjmme8FKQ6mZXyoJvFpLFVsAk0vfX5JbAfTSa14G9o25qfu?=
 =?us-ascii?Q?5VAPbZ3U1p9SnVswc7D5HcFmI3e9SgdnjfQage++MUDKFtPokrPnrRIDq9sA?=
 =?us-ascii?Q?4QzraBvJgPdD8DxYFZwdv2hEjB5YKlF3aQ+fUtR+vhFWpk2BUL3eDRvxhSwr?=
 =?us-ascii?Q?zi+P8lccSf4TbG7DokohloB+xwIgwfa6RxoIrYJ6s6XX75DFo+X5GjGDteRY?=
 =?us-ascii?Q?5urgzJrXpKaBXQzhWCH3SAHsiW510tdeTasJSLGmVZ53w/6Ap8BjvAdxQ6Ik?=
 =?us-ascii?Q?EqixV+6yzG2q4CQlxOK8VjkkXpSuskIncaa3q4M0PY6lWqdVTG/KaA3QkZ06?=
 =?us-ascii?Q?kuzGAHdUL45SjrsldAlKxyMgj8920ZXwZKtDWlfz1RrCc249WR/Y5fADnq2+?=
 =?us-ascii?Q?XhZDrwU1rCkPwMSXJb5W99mNmStH9hGbaU7Ocp9iR/xKBdEWd+6HhSc8tJNj?=
 =?us-ascii?Q?lZFs9bdFHP4jy4zfTNFK8vGUCzUN1aKW8jjX3ZuTdJ4ZC6vJEAARCwN+Nu9A?=
 =?us-ascii?Q?E2q5hXdZPf68GHcUAFqs3wUU6TpijF1feZdfVbVQzO/SnJkMmTvoJoRJ34f7?=
 =?us-ascii?Q?zaZNvVGv7ZSkcw9VTUAN6qEyLGen++4WKqoUqJqUJfzX3IeDtAofUJOJ9uRo?=
 =?us-ascii?Q?JqmcxiWQmFe9OWb1vKw6EfOjfpUW6A6xMWRxuK40VRlOH+bZ2fx7zF5pn1NV?=
 =?us-ascii?Q?caFbYHDk5w3gzx8tWtApgm0pLQOxCbfsmYczX4MmhaHMXya4GF0+DhSa6jyC?=
 =?us-ascii?Q?Yf/zJGmndHOfD2vvzBoXstcvHRagWrNH4EPa5DcX5dG5jRMFkGfh7NbfqvqH?=
 =?us-ascii?Q?VPt8rpFzE7kixexZUP68ilW//3jzAVkYJdMPKOfD8cFxAa+3Fh4zexMFtGMA?=
 =?us-ascii?Q?Z160w82NBeMJW0icnwRi10jBGvGw3NVVBI+Mo1hzmbp8u1845SGzyJl8Rvz1?=
 =?us-ascii?Q?WmMfZg/YBgvAAd4fY5IfZSNKnzpPMKDH0Xqmn3aJ4Ro6YlnCBbuxHxJclEl4?=
 =?us-ascii?Q?bUnLcLY+/QV2NMY2AhBPhUOFeQdoZ/0hiqr3EtW4O0tVqKtvaA6X+rG7bw8c?=
 =?us-ascii?Q?EdTv2yW1iWoa7To+9lTMZBzDH/7YnK64zZ9juTQXTeQgQZ3ZGQHi5b9xW4l9?=
 =?us-ascii?Q?0KSL+PUOwN3AinubR6AUiEiQ7dG0b32//JTHhXrGb5l+oXRHGBOyJvhx9BzP?=
 =?us-ascii?Q?6AVpxG7duNR/GlDGSxD32Zb5EVhfZUQBv+5G//cM18M6IlLassudCE+JRZjB?=
 =?us-ascii?Q?PnP0ZynhjfBRHfeYIa2Xukh7jrPPDXBsZHCdYxNw3iTm3ozLmP7o9vQ2+07K?=
 =?us-ascii?Q?IicpUv35ZzATvxFJGBovlnB/PCEOzE8zw0Xslb82ON53hB1VyxVIiCkC2KD+?=
 =?us-ascii?Q?jn+GTDqP4PVVJ2DeBKZ4OWdJWKBFMWEV66vfpBs0G8LF3+kySs3ZkhYkEKM+?=
 =?us-ascii?Q?nvaUlpayaNa02QZtnQWI10RhkArYyAf6D7uYD/+TNG0dtiWzKUpa05wCKWg9?=
 =?us-ascii?Q?lZNtziFlnZv41RGTdB2LJKhd6XbxFfiVK9NQQrpAz4hbNXuC0tkROFeOUGoS?=
 =?us-ascii?Q?kYmIpf9Z9SLKNFqi97IvJjCyQ4+/KwOoCCtv6N5bbVGulnxRK/eA7QBBLbBl?=
 =?us-ascii?Q?/XioeZ4rZQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: ZjZ3+MLRN+NRE63yM/hD6QGs4CS6E5f2wF2Xt9jsvRk0mCsyAfl0/eDATmFZSdj5PmYFS6P6JIx+jsiY5uD/hwvf5P6xt374wfQUfJw6jpR1g1DvwCETZhYHoxfC5qLy10+Lv2ItziQTJcgTPV3uM3bQ4yLuPbNtvwS69NUt2blynVU1M6YHrpRccFM3GOLGytJmRNVKnVRpwCxifut1rZ98TkMhZdFtZjeEbO6Xa1k74hfhZPwtDkCNxb+qxuAQVVs79dfEN3be1iRFzs/QqB8pM3cb0OBZcW9NdXNycM/9MXb76/XFAoedlRtS79oSG8dH+Rh3SsCK7M/4itCPKA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5983.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d5162f3-7f94-48be-ae5d-08decb84b176
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jun 2026 08:53:10.6257 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: L6Let3x6cmkcq0u1ssXsgSf2SSgIPAZtHp2zUkItw9F/x93iZ6YKwMa6yHWPxk8uTnnOcRffHJe2PlT+cNP9LYIspdloaos46hrusofpFX4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR11MB8813
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781599997; x=1813135997;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4usePgSK6Wt5LOsNduVAkrxUdYa/MyhgXFhObr8BxpE=;
 b=SWK0yDgqR6Isz7DsrNRvz2yvPlrcDKrX2lsQhJGm963p95IgUVEP+la5
 GyTVLbS0j/LQrPW6DMRTsYOa2b01509Uf8asf5TTdDGPAFgO6t0jfaCro
 sd0fQNY84LNjS4/JGJ768+55jEJu6AqEtVfwD29sDwFBjj1rmzDXjKXo4
 ZLHL4GikhUTdOl3t8+jgRsPALf9YT2bFcaGGOpSuAfnkOHBkMNAunDvZM
 SWlUonS48CS19zGAAFDE07JWAQS39ZhUjqYzBD0VNhHM8Pf2w1vBIlyj8
 nDH7nwUyD9KcPMUoVqvCB2dLReWy4nCQ96QbJIG3V8sIn6D+alrCFBEKH
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=SWK0yDgq
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] i40e: add devlink parameter
 for Flow Director ATR sample rate
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:mheib@redhat.com,m:netdev@vger.kernel.org,m:jiri@resnulli.us,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:corbet@lwn.net,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:andrew@lunn.ch,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[piotr.kwapulinski@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[piotr.kwapulinski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BDFD168D50F

>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of mh=
eib@redhat.com
>Sent: Sunday, June 14, 2026 6:12 PM
>To: intel-wired-lan@lists.osuosl.org
>Cc: netdev@vger.kernel.org; jiri@resnulli.us; davem@davemloft.net; edumaze=
t@google.com; kuba@kernel.org; pabeni@redhat.com; horms@kernel.org; corbet@=
lwn.net; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemysla=
w <przemyslaw.kitszel@intel.com>; andrew+netdev@lunn.ch; Mohammad Heib <mhe=
ib@redhat.com>
>Subject: [Intel-wired-lan] [PATCH net-next] i40e: add devlink parameter fo=
r Flow Director ATR sample rate
>
>From: Mohammad Heib <mheib@redhat.com>
>
>The i40e driver uses Flow Director ATR to periodically update flow steerin=
g information for active TCP flows. The update frequency is currently contr=
olled by I40E_DEFAULT_ATR_SAMPLE_RATE and is fixed at driver build time.
>
>On systems with a large number of queues and high-rate TCP workloads, the =
default sampling interval can result in frequent Flow Director reprogrammin=
g for long-lived flows.
>
>The amount of TCP packet reordering observed on some systems is sensitive =
to the ATR sampling interval. Increasing the interval reduces Flow Director=
 programming activity and can significantly reduce the associated reorderin=
g.
>
>Since the optimal sampling interval depends on the workload and system con=
figuration, a single fixed value is not suitable for all deployments.
>
>Add a devlink parameter to allow administrators to tune the ATR sample rat=
e at runtime without rebuilding the driver or disabling ATR functionality e=
ntirely.
>
>Signed-off-by: Mohammad Heib <mheib@redhat.com>
>---
> Documentation/networking/devlink/i40e.rst     | 19 ++++++
> drivers/net/ethernet/intel/i40e/i40e.h        |  1 +
> .../net/ethernet/intel/i40e/i40e_devlink.c    | 65 +++++++++++++++++++
> drivers/net/ethernet/intel/i40e/i40e_main.c   |  4 +-
> drivers/net/ethernet/intel/i40e/i40e_txrx.h   |  4 +-
> 5 files changed, 90 insertions(+), 3 deletions(-)
>
>diff --git a/Documentation/networking/devlink/i40e.rst b/Documentation/net=
working/devlink/i40e.rst
>index 51c887f0dc83..704469aa9acf 100644
>--- a/Documentation/networking/devlink/i40e.rst
>+++ b/Documentation/networking/devlink/i40e.rst
>@@ -40,6 +40,25 @@ Parameters
>=20
>         The default value is ``0`` (internal calculation is used).
>=20
>+.. list-table:: Driver specific parameters implemented
>+    :widths: 5 5 90
>+
>+    * - Name
>+      - Mode
>+      - Description
>+    * - ``atr_sample_rate``
>+      - runtime
>+      - Controls how frequently Flow Director ATR updates flow steering
>+        information for active TCP flows.
>+
>+        ATR programs Flow Director entries based on sampled transmitted
>+        packets. The sampling interval is specified as the number of
>+        transmitted packets between ATR updates.
>+
>+        Lower values increase Flow Director programming activity, while
>+        higher values reduce the update frequency.
>+
>+        The default value is ``20``.
>=20
> Info versions
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet=
/intel/i40e/i40e.h
>index 1b6a8fbaa648..88eb40ee45f0 100644
>--- a/drivers/net/ethernet/intel/i40e/i40e.h
>+++ b/drivers/net/ethernet/intel/i40e/i40e.h
>@@ -487,6 +487,7 @@ struct i40e_pf {
> 	u16 rss_size_max;          /* HW defined max RSS queues */
> 	u16 fdir_pf_filter_count;  /* num of guaranteed filters for this PF */
> 	u16 num_alloc_vsi;         /* num VSIs this driver supports */
>+	u32 atr_sample_rate;
> 	bool wol_en;
>=20
> 	struct hlist_head fdir_filter_list;
>diff --git a/drivers/net/ethernet/intel/i40e/i40e_devlink.c b/drivers/net/=
ethernet/intel/i40e/i40e_devlink.c
>index 229179ccc131..16e51762db45 100644
>--- a/drivers/net/ethernet/intel/i40e/i40e_devlink.c
>+++ b/drivers/net/ethernet/intel/i40e/i40e_devlink.c
>@@ -33,12 +33,77 @@ static int i40e_max_mac_per_vf_get(struct devlink *dev=
link,
> 	return 0;
> }
>=20
>+static int i40e_atr_sample_rate_set(struct devlink *devlink,
>+				    u32 id,
>+				    struct devlink_param_gset_ctx *ctx,
>+				    struct netlink_ext_ack *extack) {
>+	struct i40e_pf *pf =3D devlink_priv(devlink);
>+	struct i40e_vsi *vsi;
>+	u32 sample_rate =3D ctx->val.vu32;
>+	int i;
Please keep the RCT and put 'i' right within a loop.
Thank you.
Piotr

>+
>+	pf->atr_sample_rate =3D sample_rate;
>+
>+	if (!test_bit(I40E_FLAG_FD_ATR_ENA, pf->flags))
>+		return 0;
>+
>+	vsi =3D i40e_pf_get_main_vsi(pf);
>+	if (!vsi)
>+		return 0;
>+
>+	for (i =3D 0; i < vsi->num_queue_pairs; i++) {
>+		if (!vsi->tx_rings[i])
>+			continue;
>+		vsi->tx_rings[i]->atr_sample_rate =3D sample_rate;
>+		vsi->tx_rings[i]->atr_count =3D 0;
>+	}
>+
>+	return 0;
>+}
>+
>+static int i40e_atr_sample_rate_get(struct devlink *devlink,
>+				    u32 id,
>+				    struct devlink_param_gset_ctx *ctx,
>+				    struct netlink_ext_ack *extack) {
>+	struct i40e_pf *pf =3D devlink_priv(devlink);
>+
>+	ctx->val.vu32 =3D pf->atr_sample_rate;
>+
>+	return 0;
>+}
>+
>+static int i40e_atr_sample_rate_validate(struct devlink *devlink, u32 id,
>+					 union devlink_param_value val,
>+					 struct netlink_ext_ack *extack)
>+{
>+	if (!val.vu32) {
>+		NL_SET_ERR_MSG_MOD(extack,
>+				   "ATR sample rate must be greater than 0");
>+		return -EINVAL;
>+	}
>+	return 0;
>+}
>+
>+enum i40e_dl_param_id {
>+	I40E_DEVLINK_PARAM_ID_BASE =3D DEVLINK_PARAM_GENERIC_ID_MAX,
>+	I40E_DEVLINK_PARAM_ID_ATR_SAMPLE_RATE,
>+};
>+
> static const struct devlink_param i40e_dl_params[] =3D {
> 	DEVLINK_PARAM_GENERIC(MAX_MAC_PER_VF,
> 			      BIT(DEVLINK_PARAM_CMODE_RUNTIME),
> 			      i40e_max_mac_per_vf_get,
> 			      i40e_max_mac_per_vf_set,
> 			      NULL),
>+	DEVLINK_PARAM_DRIVER(I40E_DEVLINK_PARAM_ID_ATR_SAMPLE_RATE,
>+			     "atr_sample_rate",
>+			     DEVLINK_PARAM_TYPE_U32,
>+			     BIT(DEVLINK_PARAM_CMODE_RUNTIME),
>+			     i40e_atr_sample_rate_get,
>+			     i40e_atr_sample_rate_set,
>+			     i40e_atr_sample_rate_validate),
> };
>=20
> static void i40e_info_get_dsn(struct i40e_pf *pf, char *buf, size_t len) =
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethe=
rnet/intel/i40e/i40e_main.c
>index d59750c490f4..9c8144970a34 100644
>--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
>+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
>@@ -3458,7 +3458,7 @@ static int i40e_configure_tx_ring(struct i40e_ring *=
ring)
>=20
> 	/* some ATR related tx ring init */
> 	if (test_bit(I40E_FLAG_FD_ATR_ENA, vsi->back->flags)) {
>-		ring->atr_sample_rate =3D I40E_DEFAULT_ATR_SAMPLE_RATE;
>+		ring->atr_sample_rate =3D vsi->back->atr_sample_rate;
> 		ring->atr_count =3D 0;
> 	} else {
> 		ring->atr_sample_rate =3D 0;
>@@ -12745,6 +12745,8 @@ static int i40e_sw_init(struct i40e_pf *pf)
> 		}
> 	}
>=20
>+	pf->atr_sample_rate =3D I40E_DEFAULT_ATR_SAMPLE_RATE;
>+
> 	if ((pf->hw.func_caps.fd_filters_guaranteed > 0) ||
> 	    (pf->hw.func_caps.fd_filters_best_effort > 0)) {
> 		set_bit(I40E_FLAG_FD_ATR_ENA, pf->flags); diff --git a/drivers/net/ethe=
rnet/intel/i40e/i40e_txrx.h b/drivers/net/ethernet/intel/i40e/i40e_txrx.h
>index bb741ff3e5f2..7e29e9244c3a 100644
>--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.h
>+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.h
>@@ -372,8 +372,8 @@ struct i40e_ring {
> 	u16 next_to_clean;
> 	u16 xdp_tx_active;
>=20
>-	u8 atr_sample_rate;
>-	u8 atr_count;
>+	u32 atr_sample_rate;
>+	u32 atr_count;
>=20
> 	bool ring_active;		/* is ring online or not */
> 	bool arm_wb;		/* do something to arm write back */
>--
>2.53.0
>
