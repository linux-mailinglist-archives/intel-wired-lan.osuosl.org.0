Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YEcvFbKZFmq1ngcAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 May 2026 09:13:54 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 514F85E049B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 May 2026 09:13:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4726261315;
	Wed, 27 May 2026 07:13:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qXlXFfW87cYy; Wed, 27 May 2026 07:13:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B2A6A61339
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779866030;
	bh=w51Qm/lPQJoE2e1PiicG5/MznTmLMAIGTiwEezjEyUQ=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xOVw1QDk7t83Rs/t2xpPAJZ1qwwCnBPvn4GAJczac7PZ+AJ1Pmhk0bst2w6NJUnZ2
	 zycvXV8WruM4NALUvuxLjC6Pr0JOCFom1kFObdhRjPC4okqUgfv3IhMYHjVpUHWdx1
	 MpQJXIMZb2/X+SYjdqw73SUP93kL8pw91tydHvYgDH/dRXbybOQ6F5fgniguPwxQLi
	 Wglg0kbOClEEH8VwbnSFUF97YhyqzbM5ClUXU9W21P4BmJfnny21lNxdV5DX+C3w95
	 aJEAvmQP9+TCgZ08sglRw9vDxEhQudZzha13IABlQ3iL8gYRvQR2MbGFBLL25KHYCL
	 VusWrgV3XDb0Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B2A6A61339;
	Wed, 27 May 2026 07:13:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id A18A323F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 May 2026 07:13:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 88AF741F34
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 May 2026 07:13:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id w9znqie6lx0N for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 May 2026 07:13:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D626641E8F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D626641E8F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D626641E8F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 May 2026 07:13:48 +0000 (UTC)
X-CSE-ConnectionGUID: ipla1Z0wQU+TvhcgeJT6rQ==
X-CSE-MsgGUID: zRk6ne1KTvS8XvB5r3RITg==
X-IronPort-AV: E=McAfee;i="6800,10657,11798"; a="84314304"
X-IronPort-AV: E=Sophos;i="6.24,171,1774335600"; d="scan'208";a="84314304"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2026 00:13:47 -0700
X-CSE-ConnectionGUID: anRzIwZwTf+VyB9RYg2C3A==
X-CSE-MsgGUID: lekOaCqOTWu8PQG3dR6jFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,171,1774335600"; d="scan'208";a="246178152"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2026 00:13:47 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 27 May 2026 00:13:47 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 27 May 2026 00:13:47 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.22) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 27 May 2026 00:13:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EV1ku9BiATJO9LpEiPHlg4HHYp9lAzNegRiCeLn/TraZg/ZauZ96Pdy1kLt24yvYqDBqI5K9AFiNGcd9O/b/YfOTRIM0rTh6I+tt5uzhvJMDGqZAirYwEcCl0Z1MRP5oJpc0kyOFSl8SsZLirD/D/jhJlifS/JkDGC3PnezdsBoKdZ3cVstjL9JcHt72PlhkQR2dOCpOzJrjY3kofVSiso8zhcvClb9u301Sb1iYs6QqunRJ0a3Rve/DbtaMraUIHElyQkaUri04+OZ8HzFtZ+49d1JYWI1m3aUpiDmZcHR/bIDQ7TTE+ZEVcpdBYZvXSMC3NdhpwH4C561dGT9raA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=w51Qm/lPQJoE2e1PiicG5/MznTmLMAIGTiwEezjEyUQ=;
 b=xzOh/MDhI6UC85CXPfDOutIl9381AQ3RmZmOMbRfkeSsoTYggLwdKS1N8R+kuTVynSEQRF8iR+uNEK+5eYsIwlEi7Y+Q6gfJyHh5Y62/dzSP7ojgrPyNvUN83OQksH+xByrdVw5LDrmHa8wG+X80TEeind5Y1iwqM0bweOJjjmrZfHP32dUK8QMU9AnLxpDxZSb5Dhf9bpqK/4e+dIq4qZ+Au2hRApZbAjZZTMiKUDaZm0048ai/HKn05Geff3nBNBDVbKezn1u1jILtjVDSl7HS2yl6YBqw6yIzq29jiDRhXzernl2Yn00TeZEX2qa2vHFORmy9Utxer8vOXC8Cbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SN7PR11MB8281.namprd11.prod.outlook.com (2603:10b6:806:26b::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.12; Wed, 27 May
 2026 07:13:43 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%6]) with mapi id 15.21.0071.010; Wed, 27 May 2026
 07:13:37 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: ZhaoJinming <zhaojinming@uniontech.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David S
 . Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net] ice: dpll: fix memory leak in
 ice_dpll_init_info error paths
Thread-Index: AQHc7SQyWbXOjEfmTESGqx4igTzGhLYhdkbw
Date: Wed, 27 May 2026 07:13:37 +0000
Message-ID: <IA3PR11MB89866105E1DFFAD917A80B64E5082@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260526021154.2774526-1-zhaojinming@uniontech.com>
In-Reply-To: <20260526021154.2774526-1-zhaojinming@uniontech.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SN7PR11MB8281:EE_
x-ms-office365-filtering-correlation-id: 50171fff-0711-4c27-3a62-08debbbf78c4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|18002099003|22082099003|3023799007|56012099006|5023799004|11063799006|38070700021|921020;
x-microsoft-antispam-message-info: QLW/il1FIz+rYDS/7v5yM0A0CPbYcydn05eAuSAVl1vEEojPcN5AfRTR2fUsA4lP4RWMJrr/F0GWwhMI6XnJhAmyyLsxAdfVUHchG0Rybzs/pWbvKOMqRvts9JhOqy2CYOojf2pgoVVBvyTSwftC8Q0i154KHV6DmKrdlkh6NGkjlqr7iUtX5BuIw84qn3aSBHbg1V4YPtkLXnJNnMzTpPE26JpT4v/XMI0y8tX7LQ1Qz45pzIMJ/SkriVAZZLpzO6NYcbXxoxxY3Wg5Rk4qOLEVMf2nIRd0DdZASw2S5UlmDa4w1O/RnnLTpT/cIDwE/DBaxT+vs4IJz2NRfhfvFycx6bGqJx3TATKqWTRh5ZesaCqE6aurH50ClgWxDJV0l9a6SgVSo4IMsemqoVczF5kSGXJUmMg+ITYBXmT1hBnO+TaAgFoNx8gVog6f81R3tQMGfKjgH5NoBP3cYRrouxiUGS900w90QlFq4uE1TMZVJxg0e/jVewGG1ahc5DU2LVuCHrG5RN3RLMD6OUUDMz3LlbY9No3388nNanDii0nirgkkz6KeHHs5M2jM5DBkeGL+dII4Ptf3KousGoV3nHKCk2TpJfOApJpGwgE8D4NBe2lb9skuWaTJVBFC8dp0zUviRACmm0xmEo+Lkhp4d6ttrByDZldjdhvS8ePi6VXYXgWXYVTCJ8W6acSavsjWX4DgKzeD9UPmJwkms8AKiE3kmJSZKLp5RBF0hHpfnl5WzdNB4DhyPSO1Ho8XbFkepQ+PMLROE8+RQgW5pOKk1A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(18002099003)(22082099003)(3023799007)(56012099006)(5023799004)(11063799006)(38070700021)(921020);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?DSWsG5Nsm6jLYbpJTAlabRpWOk+BLRL1It+ykah8RMI08E60jviduxkG7jOa?=
 =?us-ascii?Q?GacmY7vSI2iT68dl01HsIZ1cgBGB+5KQMttNBy8jhmDecUy3YC/jqP1d3b81?=
 =?us-ascii?Q?nQN2bRjKLGOdMthrSQIM8xGuQxvAIHydJeSBJt6VUySfgjv3StqkClnEWXin?=
 =?us-ascii?Q?99rDsOcmKCUhUuty9/L8k1i+gf0F90ZR0UZbEuMdjWyA1rH7YSs9svzgHTau?=
 =?us-ascii?Q?Y5HSo6yf7pn9UeJgNxY83EycvYAZCP8oxF8dj1BEc1cIj4b8qGS6kpFcdmWK?=
 =?us-ascii?Q?GCuHme2uwAHctYsH0MLhNrLPcs1GqshJhlloB93sceQYsn/i5WlmmypeMlXD?=
 =?us-ascii?Q?VxH04j/wHQkt87x3UjIXF429GKiAv0hS5fM5Lk206ntpPALCsAdbjmHtYL/K?=
 =?us-ascii?Q?nmFXztOP+i5Me7vY0QHmUoVhGW5dfr0za4X3tbkvr0x+bBU8tomOL9AY3LJX?=
 =?us-ascii?Q?dlc8hg9EQOxl6r7+2Zqz+9g6MzmDPbJYgMLpjLwMli2UwK+x/oalokOdjViP?=
 =?us-ascii?Q?coDf+A/tuYysKta3JQYRybuOPkHUmI/pH5KUQEG02wdrsyrFZp8ItEs+sr9J?=
 =?us-ascii?Q?4R1wHBOYDCooGQInH0Yn096Iht3m7O4S6bf3EiUtUlJKX1UoQdAOK8iVsR94?=
 =?us-ascii?Q?1taH9GmHZifNsazP9/NutDlg6yVHQmyK2Ir9BfHHaEpdbzcxTQH8qTnD8WHJ?=
 =?us-ascii?Q?E917OEuOtW9u7G7PItNTrQ7qS3A5NZYBX5aarOVaCgD9oUb/KZV/sPzkG8Fp?=
 =?us-ascii?Q?g6OAhRgnI8kzOI9wKZe2crzNcFXS3nnx1z2Q+oanmTYU7hlP3DEmqJj4gJ0U?=
 =?us-ascii?Q?i7cIV8YLacVzdzpriUpZ4m5A2+KDtOcN6R47NdBf8PrqOOESrIA9i4oWi9XU?=
 =?us-ascii?Q?M6lq0/7zO2NDS5Rxz7Gv16S0NaYneTTblhiQfh34//PFrlOKzfb54stK7nma?=
 =?us-ascii?Q?Ae5nq9mxH+fuXS0l6/sz3k62Pc7ny1PlnaYHP5jSgHaZBCAj/yh7lc0YSY12?=
 =?us-ascii?Q?vB3mniE7Yo5S0+hXxo6IoIJpyISyS5oXdElFeU/vqf3FTEzw512oiph7lIZI?=
 =?us-ascii?Q?Oy7sBtiuu3SjBkU+4R90XtYHtDo36/cwqeaToxWUxnQ7oOTRLOkEhIm3/YFl?=
 =?us-ascii?Q?cK1cWAbbc2vVK6A4NMkc61iL/eFwxErQJxTtJHOtmTmx/Nae0pviDlXZFmZL?=
 =?us-ascii?Q?E1GFoVxNSRKNrvO/ifenclk/ko27zXjWBwnFixDjEf1Q2uoQ1vB5KYHDlGAe?=
 =?us-ascii?Q?LdgMjIOVwOaw1KvayEFuI2MjnlYpheJiO747ntT4JUzw9Z+qIJauWtr/imBs?=
 =?us-ascii?Q?asteUN+mNQmEolz9PsAE/JVTUOecnIiNHRtDSK+eE1P5pwoTfmc8moWX/GZX?=
 =?us-ascii?Q?tDTGpP8B+Dgbcod+VFhdmHkgAEnHwQkHxQEMbqTZiqQUw5KgUtrl4apu2VoX?=
 =?us-ascii?Q?AhjGgCU8dKAP3dleIP65QwFqCgqsf+wWqI+sMkxkAJ+Ce4D6n1Ql6/nDA5IV?=
 =?us-ascii?Q?tZZUv2Gow1v2VfxMug03mVd12ZGgwNlOFsLZhNxZXYBf/En9qwoSx2eex6wZ?=
 =?us-ascii?Q?pjRcWh4dKgiDgKaKj5O0/CfF2GwzJozo9msEf42pLYw8NcEQ2ipP0SQBAnKx?=
 =?us-ascii?Q?rB7zxSEDfWyFGf/IZxK+gH04irV+xvSPjxlgo+I0yRt/grb7ODly2nZoXXWy?=
 =?us-ascii?Q?M4Cik9lWvig0nrdSoufpjXCdSIjyWHFt7QMlnDwgnh1ASgMAxGuVDGHyHsxl?=
 =?us-ascii?Q?x3mNpLVXpU4P75COX0N2ZaybYLzHmkE=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: YjXw1+fJ7O0VhVNQxeZPsQwwZA+VAXfEp8w6OEv5s/L6gECGuiu/k2+Dbd7J0xZimES3Av7LSh0X+ZAPG9HZrO6n+lZJMRj9Vttp8CZLQDbDKNEN13tF34c7CuSs2R9H9KK5XCUK5hMTC3M+WpWTjJghtTtTP2SbPMFDdJigVabgFY/aMSPt7vwKz7VKTE2afQP6Ho/wOsz8TX63EbgsRXe2e+2s/lxYmkL+ygwc5Zhg4kJ1go37XKjxM+Bh21twV4uGGhMmFTQe0u5qcq8OL0nN/VNOaK7e0BZzui6c0jz2eYhKBITxZNdCtTmdj23khAGg5Y3+CtJ45MyJOIawlw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 50171fff-0711-4c27-3a62-08debbbf78c4
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 May 2026 07:13:37.2404 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pA58YU/+PA1KHah6H3Fa6YaP/TAIGJWNN3w8gkHU+Fg7lhITD1oK+NiYcAYcTdH3IPgodH+bnlCFJ1AatXpSXSnhzd1PLOROdmjLelul/BY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB8281
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779866028; x=1811402028;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=V+Xw0FzUfvjBnu8Q9WZGIyqwAXh932zJxsAtJt4YHTg=;
 b=L7bKTwLxzPYV803lAxnjs3OIhksjHMZrFYZDrik36Lo6dt5Tb7mC92TM
 awRG+BBW66mjYuAr+PdCtatg8C2XPXVWoFLE5fHQto+pGobk0pOaMN3UK
 wrxv27gID/A3Y+FoEEdUoil6zJZ76ThtGLyNHxYesdGcRVN8Abd2o/+W2
 NyWsc/gjn9E1fMBhH+FioPgv3LTEbeivYRjdiaNd7vzb3u8SFNmekc7C0
 bFBb7kvh8pxmmym9b2q6Oej4WZVMlAGtzslYBjqUH9phGBUNvSmbbu4fv
 K/rVzVGkItCGoOKi76Zoj2Kct0mdXOaMTrljUef0goi5BDdYVmRGtU6Qe
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=L7bKTwLx
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] ice: dpll: fix memory leak in
 ice_dpll_init_info error paths
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
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:zhaojinming@uniontech.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.981];
	RCPT_COUNT_SEVEN(0.00)[11];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 514F85E049B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of ZhaoJinming
> Sent: Tuesday, May 26, 2026 4:12 AM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>; David S . Miller <davem@davemloft.net>; Eric
> Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo
> Abeni <pabeni@redhat.com>
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; linux-
> kernel@vger.kernel.org; ZhaoJinming <zhaojinming@uniontech.com>
> Subject: [Intel-wired-lan] [PATCH net] ice: dpll: fix memory leak in
> ice_dpll_init_info error paths
>=20
> Several error return paths in ice_dpll_init_info() directly return
> without freeing previously allocated resources, causing memory leaks:
>=20
> - When de->input_prio allocation fails, d->inputs is leaked
> - When dp->input_prio allocation fails, d->inputs and de->input_prio
>   are leaked
> - When ice_get_cgu_rclk_pin_info() fails, all previously allocated
>   inputs/outputs/input_prio are leaked
> - When ice_dpll_init_pins_info(RCLK_INPUT) fails, same resources
>   are leaked
>=20
> Fix this by jumping to the deinit_info label which properly calls
> ice_dpll_deinit_info() to free all allocated resources.
>=20
> Fixes: d7999f5ea64b ("ice: implement dpll interface to control cgu")
> Signed-off-by: ZhaoJinming <zhaojinming@uniontech.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_dpll.c | 16 ++++++++++------
>  1 file changed, 10 insertions(+), 6 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c
> b/drivers/net/ethernet/intel/ice/ice_dpll.c
> index 892bc7c2e28b..3cf098e67563 100644
> --- a/drivers/net/ethernet/intel/ice/ice_dpll.c
> +++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
> @@ -4341,12 +4341,16 @@ static int ice_dpll_init_info(struct ice_pf
> *pf, bool cgu)
>=20
>  	alloc_size =3D sizeof(*de->input_prio) * d->num_inputs;
>  	de->input_prio =3D kzalloc(alloc_size, GFP_KERNEL);
> -	if (!de->input_prio)
> -		return -ENOMEM;
> +	if (!de->input_prio) {
> +		ret =3D -ENOMEM;
> +		goto deinit_info;
> +	}
>=20
>  	dp->input_prio =3D kzalloc(alloc_size, GFP_KERNEL);
> -	if (!dp->input_prio)
> -		return -ENOMEM;
> +	if (!dp->input_prio) {
> +		ret =3D -ENOMEM;
> +		goto deinit_info;
> +	}
>=20
>  	ret =3D ice_dpll_init_pins_info(pf, ICE_DPLL_PIN_TYPE_INPUT);
>  	if (ret)
> @@ -4371,12 +4375,12 @@ static int ice_dpll_init_info(struct ice_pf
> *pf, bool cgu)
>  	ret =3D ice_get_cgu_rclk_pin_info(&pf->hw, &d->base_rclk_idx,
>  					&pf->dplls.rclk.num_parents);
>  	if (ret)
> -		return ret;
> +		goto deinit_info;
>  	for (i =3D 0; i < pf->dplls.rclk.num_parents; i++)
>  		pf->dplls.rclk.parent_idx[i] =3D d->base_rclk_idx + i;
>  	ret =3D ice_dpll_init_pins_info(pf,
> ICE_DPLL_PIN_TYPE_RCLK_INPUT);
>  	if (ret)
> -		return ret;
> +		goto deinit_info;
>  	de->mode =3D DPLL_MODE_AUTOMATIC;
>  	dp->mode =3D DPLL_MODE_AUTOMATIC;
>=20
> --
> 2.20.1


Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
