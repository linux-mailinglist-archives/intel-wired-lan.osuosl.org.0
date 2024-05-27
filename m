Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B7BD8CFA93
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 May 2024 09:53:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1C53440BA6;
	Mon, 27 May 2024 07:53:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uZ2yYsGgOJqA; Mon, 27 May 2024 07:53:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6DF1640B96
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716796408;
	bh=FmBm9tNXxwG+cdXIoift6k5IF2PRVtP9rrrpSp+Q9ec=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ql8WLua5BLgvB4kbFr95ULbk1Ni0W0oRerahQEAB+cEW5W7AdT5Qgq5UDiTdWvCb3
	 i26yOP8nHkAXuV5Dn7xQ/QaGa2XrGl5cqN+at4Fs8YLc4Z28ASFccSgQoBd7a+Mma3
	 QhK+ZBW9IeKdg43zrxCgwskFCi/iP4YEJzYp6CW40hqjLLCQS5OR6aRr9XKEU5CFwa
	 nDJH5Yy1nnNmAJEicxmyWeiZwQIEheRjSlPsiRNM+4z6HmVSxPRPm+CJNBHtLcJxbU
	 K6QMQ04PNVa8JAKSPX2y5MePFEWPevrbEFUin3AD3goR3HF4qffNogAcXPaJfLKJFN
	 Ce5MsxsmB6pig==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6DF1640B96;
	Mon, 27 May 2024 07:53:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5169E1D1988
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 May 2024 07:53:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3B1D281E32
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 May 2024 07:53:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZAkV7_Cz6-Bn for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 May 2024 07:53:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 03B2881B8A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 03B2881B8A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 03B2881B8A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 May 2024 07:53:24 +0000 (UTC)
X-CSE-ConnectionGUID: cJuxlBdDShC+gFgiBk9Z1g==
X-CSE-MsgGUID: uepkgZ05Qpe5stcQTqk8Kg==
X-IronPort-AV: E=McAfee;i="6600,9927,11084"; a="16924795"
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="16924795"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 00:53:24 -0700
X-CSE-ConnectionGUID: rutZTrQ4SjeMO7+NbLGEmA==
X-CSE-MsgGUID: hpnOPnmVTKOMj8EqluHUSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="39646160"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 May 2024 00:53:24 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 27 May 2024 00:53:23 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 27 May 2024 00:53:23 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 27 May 2024 00:53:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LRSr+QC+OBMjqF6AYn1Wx6yM8g7qWrR0+Xt0P0AJtdeB824SxGYqvp980MxrBpXhhZ6r0RNpllDxp78rd/WgcMPOaeU2IjisgDwmVfbL9QJOizmWHzVX35hruIK7UZS+aCAOiQv/vX24OVv27O5Kyvv2zY+Pnr0GP9vXtHdPSgUJ4mEFmoRhWg6nOihWZ+0DSBQYZcCfHBlm8yiXLFNxVSpUl5dpskf04zOj0MU64VGEXrXXgZZQyz3dvCiUSqBz5nAaIzmXSx8AIUziivnXE/RB9sCTBynat4Cns+4MedaFtHorOaIwOruF4DXtHe+n1sD250/pbZxRUSeHEQfYdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FmBm9tNXxwG+cdXIoift6k5IF2PRVtP9rrrpSp+Q9ec=;
 b=URBTV9qjJXKtnxSxhCbLUY3mtevYco84KWBZF06i7Wxwgv7ZJ3b3OW3Uvp8wVsSbm7IOth7jMsD9f1P6yuwmtMwT22WGVY000AGQ2VVGla1Xa5WgvjFXYjeYP42+yvqbK1HtlHWmJJj6Tq1DmUvZyXgMmfxs1SXTljRiKPpF/ulPvzZP3ApKMOJ0GBmisndUf1u3qREFEfbaeFPu31kIV3h6Uak3gRQi5M8zKm77ofQ/WfxYHtlxmvIGcQrYjwovwJaUI2G+/LiN/lcEIftXdjBcldaFmnbPy6qPxiqiqjNSxeAy1ygCxOBEMUtwKf16ONG4dvp5bndZeLnE3ivZtw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by PH8PR11MB6976.namprd11.prod.outlook.com (2603:10b6:510:223::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.29; Mon, 27 May
 2024 07:53:16 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%6]) with mapi id 15.20.7611.016; Mon, 27 May 2024
 07:53:16 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Kolacinski, Karol" <karol.kolacinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v10 iwl-next 04/12] ice: Add PHY
 OFFSET_READY register clearing
Thread-Index: AQHalkyul5Beoy+bkEWzmKILoZd0srGq6QdA
Date: Mon, 27 May 2024 07:53:16 +0000
Message-ID: <CYYPR11MB8429D1CFD9A16CBC9789E854BDF02@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240424133542.113933-16-karol.kolacinski@intel.com>
 <20240424133542.113933-19-karol.kolacinski@intel.com>
In-Reply-To: <20240424133542.113933-19-karol.kolacinski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|PH8PR11MB6976:EE_
x-ms-office365-filtering-correlation-id: 30eaeda6-26fa-4aa7-a99b-08dc7e22112b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|376005|1800799015|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?4lyFWQXtxxBouvx7yC7l1SRdVCJCY0NAcorj5QZPUmkrLXCDkjNXw8lgCRxG?=
 =?us-ascii?Q?UFMvWdVJBjR4YROCTkrrCDlbgMXEC2tEoPb6tzSOkKD2QC583i3+AXxQUkLu?=
 =?us-ascii?Q?ytEXOHi1N4C0+aLIz2OA9RLQrlsE4zr1A/F5vxBsiRE/Tkv3eBQ5XKLhQMOd?=
 =?us-ascii?Q?gEX3Kyl3qsP+rz1y/SSz0Eaf4pCE5vETPAyQ07jcYxY2XqtMSzqX/6Ku/s9b?=
 =?us-ascii?Q?QPTwXF3Z0GJU359RkuNGVa4JrLlg0zT5v/D7KGng2vTQQBn7lyyjeetkcW8a?=
 =?us-ascii?Q?PZi0a0opjSOmsN/wiDxXwbvMpVcPA6mBtI7RCkVuN7cJJR9AaZ5Rj4Pg1+2E?=
 =?us-ascii?Q?W74rlXTf72jOnRuz+rfNDFf+w9z94g0YfIZNwgQ5zMyuYmfA9n5AlJOld5oV?=
 =?us-ascii?Q?tzBN8ie/4LRo3vIi4PZ0LEyEufZdlwUn2RHLSgj9kZmeOQlfUIjC0dq+/cPd?=
 =?us-ascii?Q?55+tMcQed0uRBp8CJNDDj+UiG5E0yj+o+zf1BnXf6yVY7GyerAmeChCcTKUk?=
 =?us-ascii?Q?xpOY0QnaWWwdARWVtcZwH5qD6YCqudcOQJnUPJdd7LI2O8XNvg9Y0vIrr79+?=
 =?us-ascii?Q?tLFnQ+zqmH/cyo/jnEXzFGwwyZBE07r8pDxDGVyKySSBt5tstdSnK3kPejAT?=
 =?us-ascii?Q?HwUiDC5vCLAYZWiJ7LNmQugYBc3IxHvKu50tHL1wVVGpjd2XLds6FrYvE/Kr?=
 =?us-ascii?Q?l2Djsovsd/EDX+cDPN3n2jhkdW3wbL4XQGFyhsTyVs+S6YHWdTBiOeh5PQcP?=
 =?us-ascii?Q?Srp3njvnLmWOs9oiJM+D9XTERmAJCxzAEs5cZlw4a6mxUxD8BBLderj2YfdQ?=
 =?us-ascii?Q?y7Z8w5lbQp65ZgdR4+1MkPdBCsybc9AEGc+X0LV5DTNmlxJ6gNIUjBJsvU5Q?=
 =?us-ascii?Q?IVOkF9oR5Gm5CRg/v5gjPYvVwojP0DaRDplH4CFBjeJBjI331PSKkxGLbMl8?=
 =?us-ascii?Q?nAZgXihgjHJlWfD+qOD2BEi5BHh+ArldS2JlOOmM80sBdseBT3wK285MWknA?=
 =?us-ascii?Q?65Y/RhmxDHBTstkryiFSwJZuYkwy/MQfYlHItDfyBWIfDmEzn2SQ7sY6/aXp?=
 =?us-ascii?Q?o1Cn1y8TYJOwpcnY5eq1Y0unz+95g+FKNvHq2kez12F/rnrVZClLSYzv18zi?=
 =?us-ascii?Q?HkKJt2M7TYeYxNXrs/059PQ4c5KkYgT4bXuQB44aK5EnPh0d1wVMdl3OpzW8?=
 =?us-ascii?Q?2lpxOoly7XePtiiqa4e9Om1l03atmv2PMcs+8IlcrPX7UVSMb0reqNhydSyd?=
 =?us-ascii?Q?j32/a+iI8iXN3ITEdFObMPLj6VHxuuydHkzlj3fF7DygmNNEPcZHAZ0D2s7I?=
 =?us-ascii?Q?IC9Y3H1PRVkOAsAWyCcAanU5/braFU4P2MdXIxwqL9LSyg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?mjgpYuunvdL++gmmS1yiDzkpIJHWy/fMQOSUoLg9XU8u5VZAU5vI5fYK1WPp?=
 =?us-ascii?Q?yFKTQMMun4QUiHY7Layl9aNRgqmLGGVYHMkiY4hiVhkyS7myQMXp0aS0tr04?=
 =?us-ascii?Q?OZJhVcLpblOywnxGewp+qsJ502wKshXlcZH6RVywNalAFTy3xGF/6x7rxv3e?=
 =?us-ascii?Q?vyowPZVHplQdRSDvvF0XdFzQQO03heEh54KLjQmKHw9FbSQ9Xea2O6gQG2/a?=
 =?us-ascii?Q?p3wpXe0wklSbkU7+QOrPynJTZtuIGBY1S89LF0AVzTFnvs50RqKqt7T3bhsL?=
 =?us-ascii?Q?JbbjeF/5qpmBt4/hE5cX5x0CjhDXWyjq201v3ibRv6+xDZ4yR+71GWQzvPW4?=
 =?us-ascii?Q?Qr/FZGkKEQkulUBDLtCW584RPuwaOXTaUZ3EQhd+qEq4Zaq+HW7RPJfOLyQl?=
 =?us-ascii?Q?Abt4Hg7ig5rbZiW/JVbIYIlqIyvgmgoLFxAsgZzc/zy9xljfU1QwLJF8sZrP?=
 =?us-ascii?Q?5Q3+0c1ga6FVM2NbtwiJKI2ykVnrgkksubbK3Skyapjqy7whBMZqqVQS4WPq?=
 =?us-ascii?Q?thzvy79qRwn8i65k2hT+YzpiWZRwniXc2qyvkvi20A/7eMUlcJKDtUhZIy0/?=
 =?us-ascii?Q?N0FIyCBSoDWcizc7UC0phF/zJXVnNQuTLL8l0BokTCLonMYAA76NHbD+Zs//?=
 =?us-ascii?Q?GGrbBHdJnb4XiTjqipKyf1SJSnnLVlDBfZkY88QOyXtbfqei7ixoDWsKCg/Y?=
 =?us-ascii?Q?PWLpRIIpTNtBQsRl+pnQ3Pxq+PDm6sNILieJXnhqAgwc/IYuiEcJDEJtHIx3?=
 =?us-ascii?Q?/wBGEKA5jYu2gXxb2PqaibAxJJtkJ4pfMa49HAmR/Ryo/HOynMYNZ5d8/Z9/?=
 =?us-ascii?Q?WI++VskkNV2M8of1mnNGPCPomGmzw3PHEgmyVVabl5mIv4dGmfelyp+wAZ8f?=
 =?us-ascii?Q?vf9nZF2Dw1+/BQ24uQenFqsczwpuvbB3kpy9sF0y5C2cd2Wywq79dff6VoXe?=
 =?us-ascii?Q?DT8wWU+3XdWlJsbdF4fxTXh3Cd0fCz5ySxiQxWjrP04OoPoXZvwbj9cCYn0z?=
 =?us-ascii?Q?yJjfvcwdu0+nMkklgvvvjuerQUMw9GCe10YQwgcJT2PY4h/hOL8EPFJxZ8/+?=
 =?us-ascii?Q?BS1JOgAWA1QyKTQC5KzR2Ieq2K6vKgjuEKO2lfz8rDiXZpeWqY1MQM84y9+s?=
 =?us-ascii?Q?wfoYkT8LgF1WLROE6O3YA3z6Bffx1VC8pLqwbB044yDvZ90zvEQC58auwHjf?=
 =?us-ascii?Q?8ZXAdn9Frq7BaAV35ABaHZZWOS/S6ISrQSVX7PU5LKeq8T1XvpVoNTuOh76B?=
 =?us-ascii?Q?AHw7P/fiS24760Qztm/hgr4YuYTmM1ODLtiFxfA2EuC8wvLw+2ALy7TaLZvF?=
 =?us-ascii?Q?a8bHiJHHfG7XOesn/qJWE9VjOL3JLK2a83X1YT9GrAk8WOtDlwqG/k75vmJ8?=
 =?us-ascii?Q?kdaVu/7E+ZJgOzlyEE9o+DX1kEBikV3W6eCo2rBdDue/lEhz0C6X5h1U0p6+?=
 =?us-ascii?Q?D7RmS/wErnCwMTyQeH+oS9gZ00ketABpy2l80iwEnEytZiOsQ4gbNMJR4WDY?=
 =?us-ascii?Q?EvyHftP3IN1sZAHD2dXEOIhPCX6Mx+iyGZs4fuHXuObeZr2XkfiMaYtjKr+2?=
 =?us-ascii?Q?kQQ9gA9995MlmKL8vUqLrFy9wPdcq7r0bvceThhv/XaE+hgBrPo38kycS6iF?=
 =?us-ascii?Q?DQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 30eaeda6-26fa-4aa7-a99b-08dc7e22112b
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 May 2024 07:53:16.1193 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kDWYe4Ss+eRVBVJv02vGafo3czgYwWnv1zNHzZKkil5M1SNT9AmAg3O5avgK4ZQ6f/zw2H3TeaJB/HKThjRu0VCxo/JKGMixF/hL9vgERLCStkAs4tKTwvMc0+zKR+g/
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6976
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716796406; x=1748332406;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ieKO1QuX/ookVW89CZ+DPHjEtAIMtZtc52m+xJAfiWg=;
 b=CC4BydiTBqxa1pmZnX//K8zBkH8mKV+enrxlDjAkqEPO5digDTz/AXLJ
 f7fD4s7BVN7aSt7bniqHVz3lwqGD5P4E7EADgJpy80CKea4UIkBErA2Ib
 peYDbZBycjEdx+Dn9yY1WgRIVRwbahz0RjsJQ0TtKovwk2/QxPUoZH3Ze
 H1FvfhVzTKHwiX52cwHoz9mxiL86HgUJXhZKqKMgRSdX3utGXAGmq6YBU
 rbP3pTQunLIqVsYq/MOxUqLLk1vjWdtE9PZM82EFSuPszGbNB5X52R958
 yw/sP/sKNJwVwxaST+rZQiN4foP8CWWXQOmMrJlmM/o50TJ4Y63nt7tVu
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=CC4BydiT
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v10 iwl-next 04/12] ice: Add PHY
 OFFSET_READY register clearing
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kolacinski,
 Karol" <karol.kolacinski@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of K=
arol Kolacinski
> Sent: Wednesday, April 24, 2024 7:00 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Kubalewski, Arkadiusz <arkadiusz.kubalewski@i=
ntel.com>; Kolacinski, Karol <karol.kolacinski@intel.com>; Nguyen, Anthony =
L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw <przemyslaw.kitszel@int=
el.com>
> Subject: [Intel-wired-lan] [PATCH v10 iwl-next 04/12] ice: Add PHY OFFSET=
_READY register clearing
>
> Add a possibility to mark all transmitted/received timestamps as invalid =
by clearing PHY OFFSET_READY registers.
>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ptp.c    | 11 ++++---
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 34 +++++++++++++++++++++  =
drivers/net/ethernet/intel/ice/ice_ptp_hw.h |  1 +
>  3 files changed, 42 insertions(+), 4 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

