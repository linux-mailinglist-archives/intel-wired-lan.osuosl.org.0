Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B23FDC50EF1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Nov 2025 08:29:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 37CA060D89;
	Wed, 12 Nov 2025 07:29:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6NNLtMlle5zx; Wed, 12 Nov 2025 07:29:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A0E5260D84
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762932568;
	bh=xSXJ1J1/sLG7OehqF7q5KjjN3+okBQO7lgZ669+GB54=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=avvOe4UJEBzky45SA4hCXgtbSibScTLpMSegFl+Flv62nJETmwEURMe8CgvVe5i6k
	 WS+ZzEqaEAkkcMxeK4WJVUnV2u/gtpHJjrbzBAUuajmYUTDPe5u1Xig6ZM6rjCTTMr
	 AW9WY0UWEiaWOlua5dMsSE83mVugTgla/dl7J4JruWWoB1s/7XckvGjMJi+xQMT57g
	 VT7KDdK+R7G3bX+c96jCd9GgREtGEHUJ0WL8Dxl2JOALYkC2AhcajL9g9fmaaERMwg
	 GeKkhw+Tx8pfyvWmtVqfykyWLXl+72QV/JTJeZUxYFQoGenTniTJvRYEb1zSmIBImv
	 nD0+Py974y84A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A0E5260D84;
	Wed, 12 Nov 2025 07:29:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id B1DBA230
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Nov 2025 07:29:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A771A80656
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Nov 2025 07:29:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 61pfRo6Itt6J for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Nov 2025 07:29:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8148780322
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8148780322
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8148780322
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Nov 2025 07:29:25 +0000 (UTC)
X-CSE-ConnectionGUID: EqJknpVtSIGAU/r9zGeNuQ==
X-CSE-MsgGUID: k++OljYISp+Fw+5xPvoyJA==
X-IronPort-AV: E=McAfee;i="6800,10657,11610"; a="63996621"
X-IronPort-AV: E=Sophos;i="6.19,298,1754982000"; d="scan'208";a="63996621"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 23:29:24 -0800
X-CSE-ConnectionGUID: lVjQGjzORvmmmC+PKMljNw==
X-CSE-MsgGUID: IjJfRqLvSzenFcTjePsmuw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,298,1754982000"; d="scan'208";a="193261035"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 23:29:25 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 11 Nov 2025 23:29:23 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 11 Nov 2025 23:29:23 -0800
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.60) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 11 Nov 2025 23:29:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WIwG7cRx2dw40xiW5q3812xe3i4nYaPBKvT06HDt9xUDuLjdsP1TVt0FGTH7MXO2f2bYtushpH2ZGH1tlipo4YgTBtOrPJ7Vi2e4k2Bk/zCR0EHKUYqaXXYRHuebDOkMu2N70sMPjQE5hvmsaT6mvXYzXr/f9V5vtIReDDwsrBXIdQ6F0uQ5eymjPw/bfjcNwaNLNktEL/bcP+uQ8uDCeQTkhRZvlz4VHUdR3aU9r8amA3IZ1VeAo7QcmRk9NA5qBnou/Db3wDvTqyQBUKFs+LGnyF1SdhH913XUgESpWs3li/G0HM6T9dq1SAY/s8QFcjUiPyEJGT/F4VXDOZjXYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xSXJ1J1/sLG7OehqF7q5KjjN3+okBQO7lgZ669+GB54=;
 b=h+CU5qW8VQipCzscRVXBH8kdRVjlEFu/JPor+W2ED3TjX60JRbjIL+GJlkcvw4zsZkrBNk1X6fevKxakbtHz+izsMb6T2ELwD+BdMRz8q1508JQz7C0k/l5sEYNMmI4tv2hnZ8gEiH9PWh9tJC6s1P/ykYs5qtigiUYQe9T9G1k2D+MwE+fC+P+/m/hF0LkW8vqzTPwFfWZ3sC3EEKNCWZ1xbVmnl3itmJ4CBzhnzU9A+jhqo0ug2Gxz/XTyrBmK1lzny2Z9Iwo3XBlCX8xQ0tEk59M2bqgpJQOZwFeZe+LcZjTb3mUEOjpDmxroMo2XQiujeBirQ/G6Xwyt7FsONA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by CH3PR11MB8096.namprd11.prod.outlook.com (2603:10b6:610:155::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.16; Wed, 12 Nov
 2025 07:29:15 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9320.013; Wed, 12 Nov 2025
 07:29:15 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Simon Horman
 <horms@kernel.org>, Paul Menzel <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [PATCH v2 iwl-next] ice: unify PHY FW loading
 status handler for E800 devices
Thread-Index: AQHcP0JKLWbT1M1bE0ehSDR2wysoWLTuzQow
Date: Wed, 12 Nov 2025 07:29:15 +0000
Message-ID: <IA1PR11MB62410706491A19216C8823BC8BCCA@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20251017084228.4140603-1-grzegorz.nitka@intel.com>
In-Reply-To: <20251017084228.4140603-1-grzegorz.nitka@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|CH3PR11MB8096:EE_
x-ms-office365-filtering-correlation-id: cb8fe2e4-3fe8-4eb2-71bd-08de21bd2f0a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?Y1TMqSSn3JiIOxJv2I0/UubbaZQS2++kGdcJcCw9ZO9HFbYUobyf+G2oyKTn?=
 =?us-ascii?Q?f1SxamrNh2CZaJbqQk4Cz9JW+ZJhg6PYN65/nCJUHD3FfoIHEGfCKDdwCNYX?=
 =?us-ascii?Q?iDAor/lVmnKXGkNQ6muPPsnq9zesH6bT0Y5S3Hsnslw9/WaY3A34Dr983znc?=
 =?us-ascii?Q?xTwxTWbG7GSa19dOlj5IPEYCfC9XCvN+LSDzBILnKYbiIbMkQcQz6ieh8DXT?=
 =?us-ascii?Q?UjgfxmiCTfCgtsvFI6AGF5v87fSSLoVJs7s/M80hQ0g6Ydsqth07RWnDCUaU?=
 =?us-ascii?Q?9mhAbhPCD31vFwltRvbG1cDlC6qHFl1Q84emWzVaSkC0Cbnq/f+hIOSp31sV?=
 =?us-ascii?Q?lRV4fxtD7jjbI8f90VbSGemb4GVzjcg0etmIPxfGKMjTO0JlHJjkjNSQD2jO?=
 =?us-ascii?Q?OARApGoyF5l5+67f1xpdnmCGCSNHsOyNnNoeAH+Ul8C0yIVHPkpiJR0LYJJI?=
 =?us-ascii?Q?lGeGsp6dYaNLOKkqvk92S2rxiv589MREqrxG8NXtGG/VVpX9gbax2C4MlsHd?=
 =?us-ascii?Q?84xySwCTcTheVw/vydGmwPg/ucrhaDC2XDw3rF8gD1t1CWCUKoowE0sZK6I+?=
 =?us-ascii?Q?4NHqWxSR8SdWKFcxN14q1+NBuBs819b5oyIqwdZVGRsaqoTvO/er02NXQlBs?=
 =?us-ascii?Q?WHazGpEV31AEC+FqZx/yeVZ7e5HHOPfqb3W2+O8+wXs4Mws21qfT3LxmzFpm?=
 =?us-ascii?Q?cCzzSHssOtiPurNXHzrZTK1m3Mdn2EmaD+gA/331vPRxSBr5CjUH7obMyNIz?=
 =?us-ascii?Q?SLRd89xhRRxwu5ZOo3dh8xF1wHvmkVVkhCH8iyIApLS81WY/geHuqEWDkXiG?=
 =?us-ascii?Q?3i8Kz5C2ZbTLfy0VsNoOBWGMI0JCdLYGv2HfiJFnZd/9v6gFib+HlmHmyyhG?=
 =?us-ascii?Q?XC2SjEPqzobAxa7L6Hr4p8MxHBd8pKZIfYiAnWMCYd9QSaZ0/P1iImU6Ter4?=
 =?us-ascii?Q?0JLbuYrSzhmSTMCpEfLDtwz63R0j/sKAzHJGWDA0YCRFSeREBoPgxWXqwCqW?=
 =?us-ascii?Q?KnfYbbHKPz+jo/hTSpdtEHKl6U+uBxDYGxXkUAg+FUNPrfiDgT09VaQKOy9v?=
 =?us-ascii?Q?1qtL85Ed/hSw/DgQYBoxsoZ+cTc69YF6aQQPq60prnI2u7K1MqiU+4HzpCjk?=
 =?us-ascii?Q?x73oXyWaMpX03kbjOgZGI9y6chb4pofQoLlP/4XXkHUHhxLkYCrrqAXXVhy2?=
 =?us-ascii?Q?oM2ADWA/sv6Gi3u2pSmVYTEe8aFJQhjH6XNq0jLu1Gz5OQ4lmppyBlNU6E+M?=
 =?us-ascii?Q?UFI23vHG4hLh9b3tamLPBwXwId5Z04l8ZX0ZRlaNawtQlvuxJeaIiNlKNo2C?=
 =?us-ascii?Q?1Iiv1b1B6/Brm3OJkRKj8RWlDbHyE4UIm8WL9DZFurPHiHM3QeiE24bZbP09?=
 =?us-ascii?Q?2aWr5tYekaDHhp6r0f1yRgBuP/yNkETm73KyMQy0pNqEfI9lS4wOgCIYzZds?=
 =?us-ascii?Q?0kOLczuKfWeslltpa6/3712IW99VIxa9jkpMu5soyPPjvNPBVuLqh5VKFiJh?=
 =?us-ascii?Q?EcHgdPcOwHNfV5QXoUHArdsBlKdCZYbUbS+L?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ABu+d/z66pYM7vm38tTbMbxeihY9o0TaDEOPYUfJTen+lre/h25/ro8SSORv?=
 =?us-ascii?Q?tk8Lp7ktmqoweRPtlwN2QhcaGDVtGdvK5EqF/GM68gdMz9G58lUcJOljCtAe?=
 =?us-ascii?Q?AWhi+DP6aEe8NsdJ33v793V2GxuNppEY7FAr4vJd2nXEqNERANtB1Hc3AcFL?=
 =?us-ascii?Q?v++1YhSCIbpIlvMpJ/D9eteq30Ws3Td5KKG2ILjMtYDXa2XLAOnjEo/JZAYn?=
 =?us-ascii?Q?KZ35M1Q3xQr5mLLdyYevRHR6rHAvGQr+0hqfBYAxVJaDXvQQFp6iMrlN3JEG?=
 =?us-ascii?Q?+/Wklq8+PZIpNEQ2OGrTgEDsk59kQ/2U8zKHSteOKyuFAbsxObD7aH1jIFac?=
 =?us-ascii?Q?4IRUzgSiwTjkoqFvaXfzkmo3maxKA8zKFOiecmc7TVmCce8+ynQFp6viH94f?=
 =?us-ascii?Q?0SzbNtlchj8PtwtUeioeS9ORu3EKNEBnLUHY7JJTUfFTq8xgVLOvYv2eH6Yl?=
 =?us-ascii?Q?53ZMG/AAFUSp4GF6l9oami/jgXwIstFjnJWjPNTKQWK32yzzmK8ySH/H7qUs?=
 =?us-ascii?Q?SgTAmMgQc/nb2RAq2mUgUOpbLmX7Hup8YjiNZfHPdLg+11Cx7OImc7s/STme?=
 =?us-ascii?Q?eBkVRVL9YDBMdTlbFJKH6TLWyQm+iCroYK8cq/r6C8idu0yA8J83NH22vF6a?=
 =?us-ascii?Q?86ZbGXY+Qm6h18/JiA75yeCnkURhweq/CcC8Uj3OGWLDzkfNPn8f6yJQdsbc?=
 =?us-ascii?Q?Hwe1qcW1rhnjihL5E86SPKU+JQI67OFkkS5pHQddGxSFNX9gaxAgVbEvmhAx?=
 =?us-ascii?Q?OFq1QqFacPkmMZHLK7sskSjrl3VrXEYMljAyQ1Tu5BIg0f20mKBOymLoX3YI?=
 =?us-ascii?Q?02i16URoghNeV8K2/+zvcgClEGD7NLrbWsm/thS43iC5aP23zkITm56oMFMw?=
 =?us-ascii?Q?51ohcZ7b+BJiF9NjLCPROHDtem3sctupkgmHj7HowXmQrf83laRaM5CVQjrK?=
 =?us-ascii?Q?/L+Cz5hrq99LvHCLMKdBjSkmPImCHTd4YyX2+V8wCiq5bcEcbffB1CfDqeTV?=
 =?us-ascii?Q?c2eg+MHH4a6+kM3wO1yACqGVPBe1f7d7EYiNzUzcaU4IBVFnUlOAw028YGn1?=
 =?us-ascii?Q?r2j/bZjEapCld4bd+VgfdmFLSuBiHqR60cWw0dar5ZXZ0YdRA1V+Kd7whOUy?=
 =?us-ascii?Q?2zgJBGx23H1hD3AzJJjF8L19Z+BeTnueD55XoI5qjtQu/XsDEWNHrhFZNzJg?=
 =?us-ascii?Q?6ee91BJJUezHC8QL9WT8KqzeGoQbet0j6TTxjbgJC1JLnUEHgTS8WGzb1Gyk?=
 =?us-ascii?Q?mO3OWs6iJ8BAE7nypDbtfxNWZG33eW+1/dQW43utKBs8D4x6vE3v9660zlk1?=
 =?us-ascii?Q?+mc8r5XyKQTS8kS8nRxof/wLMBy3IJXXTFPCJ0WcTvVUTrxgdw0VWYJQiBOV?=
 =?us-ascii?Q?OyNAwW8hxS87y8TtOWuc4phYAtxz3ZEWF8sAQ5e4tmX9CUp+smfuRjUKnp91?=
 =?us-ascii?Q?mC6sMORAGo2N5CXOHkr0qEFJbeuxORfLz2r6QBbDogUKODZeRJHd74K7rl1u?=
 =?us-ascii?Q?u40OhmJDQr1WQkldtzH33mlQGjdCNtKR68KpHRrw+5bA9VUKboOAzM8les0E?=
 =?us-ascii?Q?LNBRk6C0EfduASKHpsHNbQWSrdAVF0r3gPC9tXcY?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cb8fe2e4-3fe8-4eb2-71bd-08de21bd2f0a
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Nov 2025 07:29:15.4017 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jJl/QPubwnP5M7Jxkdkz93IfppMjXW2C2Egl4NwAMm3eQAF2dJ2K2lP5rDhs9kf4X3Ud59BWeTiBN/PVJNzHlQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8096
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762932565; x=1794468565;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xSXJ1J1/sLG7OehqF7q5KjjN3+okBQO7lgZ669+GB54=;
 b=E3UxKJ84i8cWvkJgFY5eMNMLVmtgmvNPSB5JDLnmTJh3S4EeJO6JBvJq
 vucfSQFmiKEA/uUA8f55FQXl7ZUXi8UHOzbGgPxsfEstgqqckXtC24jr4
 ZO4XDKq2JMzxStDEe2NUkjmUrUPtSrLXHKF6aUyJ2q5g5pp3PC7w3M1/5
 wkejdegyeiMgNOTx8wz0/qJYAoU38Pb6uDPXHz905g9nRE8/KLK1bzrTU
 Qlwepi+7dEFZtyUGMAcZkNuqwhG2qodvk/RQ3MYudKZCBCO+X8/+skLdr
 4sDENBwSUdVBJLIzxKnVXXaTNOVndAqruoqMwMT61VAQ+NiSVE0uoc28x
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=E3UxKJ84
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-next] ice: unify PHY FW loading
 status handler for E800 devices
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of G=
rzegorz Nitka
> Sent: 17 October 2025 14:12
> To: intel-wired-lan@lists.osuosl.org
> Cc: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; netdev@vger.ker=
nel.org; Simon Horman <horms@kernel.org>; Paul Menzel <pmenzel@molgen.mpg.d=
e>
> Subject: [Intel-wired-lan] [PATCH v2 iwl-next] ice: unify PHY FW loading =
status handler for E800 devices
>
> Unify handling of PHY firmware load delays across all E800 family devices=
. There is an existing mechanism to poll GL_MNG_FWSM_FW_LOADING_M bit of GL=
_MNG_FWSM register in order to verify whether PHY FW loading completed or n=
ot. Previously, this logic was limited to E827 variants only.
>
> Also, inform a user of possible delay in initialization process, by dumpi=
ng informational message in dmesg log ("Link initialization is blocked by P=
HY FW initialization. Link initialization will continue after PHY FW initia=
lization completes.").
>
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
> ---
> v1->v2:
> - rebased
> - pasted dmesg message into the commit message
> ---
> drivers/net/ethernet/intel/ice/ice_common.c | 81 ++++++---------------
> 1 file changed, 24 insertions(+), 57 deletions(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
