Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E355BAFBE2F
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Jul 2025 00:17:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5178760BEF;
	Mon,  7 Jul 2025 22:17:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UAcn0jSQHDQk; Mon,  7 Jul 2025 22:17:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AD99C60FB8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751926639;
	bh=2fUHkui64p0UvGDx3rRsYiBoCk09Na8QIpOr2u1NOEM=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=4bsWmFiqg3oIn/9iNUVJukHwwWFPRS1bfZll67lIBs1pnfFw3ISn4AGkDVX7/Zh/D
	 BM9RLltX9J/wflHp/4XXsc7VrnJM/ZTuUy6kN3TrDJQ7sD5F1HKjwArK+zKG2z1dWz
	 WopwCgiIii0XOlq9VD0/HK/lx3FJNtIKRb1QrM/KsDaXh1YaHiMoYLCVxBHp+9hU3F
	 oQxTLRIdgHG9HM/G6lrmSjH0mjHcXNF9iciuD4NTVxoGlmy7ldxZTztJN6R1d14y2J
	 i2wt379R866NHWzeqtlF5JFZj6YdF5znoFs2c+/GLTBhp0HyqlEhDoluYxIqHPoJjG
	 WNJvfQoMRxUeg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id AD99C60FB8;
	Mon,  7 Jul 2025 22:17:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 2525C12E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Jul 2025 22:17:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 21DAA40443
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Jul 2025 22:17:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2yB0dlC-8r-i for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Jul 2025 22:17:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5CD4E400F1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5CD4E400F1
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5CD4E400F1
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Jul 2025 22:17:17 +0000 (UTC)
X-CSE-ConnectionGUID: E/dXeqhrSoG6qaPm3Tv0TA==
X-CSE-MsgGUID: U+fHApLDRlK5g1mCDB/UQg==
X-IronPort-AV: E=McAfee;i="6800,10657,11487"; a="53369308"
X-IronPort-AV: E=Sophos;i="6.16,295,1744095600"; d="scan'208";a="53369308"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2025 15:17:10 -0700
X-CSE-ConnectionGUID: DD99oCFZS+25q4ajLbp2WQ==
X-CSE-MsgGUID: h1apd7XqQPa0jQvjpEprmw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,295,1744095600"; d="scan'208";a="155069733"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2025 15:17:08 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 7 Jul 2025 15:17:08 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 7 Jul 2025 15:17:08 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (40.107.212.86)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 7 Jul 2025 15:17:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yhtmHe+kdoxEDIBR9BKod2VRbThwLzWN7QHElZAUxVcrMU2G5QtRtpBcNMYObTZco/2y5chKVz16F65A0wtUjIrcThpzcLtfvcz7Mr0Gl4EVhi9o3dsaER2dLP56HLkvlUitVv55Bw+aB24i1x0lK8dPejJa+1C+5yQAJcIWZGJtsJ+I6Xbv/IidY2/RsHz8VaT6usGTlFahFw3YtjuSQUVVFiwALyhipx5pi1HkgeF6mDO72vBdeS28F8BxHN5wEDDt/KYnQvWMc+eZzRuk10vAyAjMoP4IAg8aBnnpNdCm2DkzTf9JHQ8oLFKsz4uBW5sZwdjtT8XczSV6CrG7mQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2fUHkui64p0UvGDx3rRsYiBoCk09Na8QIpOr2u1NOEM=;
 b=gIFYTVqtSUayca5LpdLjgxaqBaqH8RdnArPGbfPwBYI0A/W1e92YI+UtYuiOUSBGTvNrAOTK6+foAGAan+9+gQDgYOaM9eWiT4g9lFFWqMpj2G5TZEoPjS/6HNvdfi5wax7PHsuCQqlrjYE18oD7Q0TfXc6pZwaOYM7m4bIXM7kG/G+frl7+RppBEmUtUbtYSdUcLSe6+GD0cfu6qb1J+IkqkrzNWMhmni4bOiOBn1M+PHDZFXNl2AJkZFJWkBdzXjp+ZrpqzNAS+615woMs9Q+vtKfv0jVDeRrQIYolbHPY2SMmulTgTmlGU7rRdio70glkCw8gJOyFi7sCW5Frng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by CY8PR11MB7745.namprd11.prod.outlook.com (2603:10b6:930:90::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.23; Mon, 7 Jul
 2025 22:16:37 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7%5]) with mapi id 15.20.8901.021; Mon, 7 Jul 2025
 22:16:37 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: "Zaki, Ahmed" <ahmed.zaki@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Zaki, Ahmed"
 <ahmed.zaki@intel.com>, "Chittim, Madhu" <madhu.chittim@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next] idpf: preserve coalescing
 settings across resets
Thread-Index: AQHb4gcIdSgzLlp9u0GAcF2ikOVPyLQnVLxg
Date: Mon, 7 Jul 2025 22:16:37 +0000
Message-ID: <SJ1PR11MB6297C5347D40BCAC0B6A883D9B4FA@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20250620171548.959863-1-ahmed.zaki@intel.com>
In-Reply-To: <20250620171548.959863-1-ahmed.zaki@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|CY8PR11MB7745:EE_
x-ms-office365-filtering-correlation-id: 52446b63-16d7-46c7-c419-08ddbda3f0f6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?799pdjQgvMWbTWImbRnTh3JobTsHoq2+UiUkxFBWnEkFYMhjdpOfNf0Rn6Oo?=
 =?us-ascii?Q?qzQ7O+VYSjRdJLIZSoez78+4dCRAzXpRVvkYIb4oJsxMkOQr4cDiM4lymLXZ?=
 =?us-ascii?Q?6Z+2+CYwlCdA7JcI7NkNrYFos4mpRi4p0/1gHw5MgsCZEcQRruAXQ3Ub5MvY?=
 =?us-ascii?Q?Nox8Kf+EcSL6C8Bk1cmu9ACArag7e1D1+Uq+6ngiIJi1kTgrqUQ3LGOvc5n0?=
 =?us-ascii?Q?YfzyXXNlXzwxOF+20s1Qjcl5vZ/q3CXrtlUdeZR0abVs4J2/G5QStnoD4wfw?=
 =?us-ascii?Q?4eqxETqVZkLOGVA+EEHv8ZUu0iEJE3ybMqDsO6IZKchEWcYm21YISV/ADXT7?=
 =?us-ascii?Q?53Kcx4EW9z++ZrnssnkKWodzuUk6mq7Pub/liJIMx9M7GfQK63iWc+Z4qWmi?=
 =?us-ascii?Q?4ySSORBrUVonRe/O1tvi222dfMbhZYA8WL2O+RivsM8vAD0bnTnMv14wFuG5?=
 =?us-ascii?Q?S2K3I5qAIk643elH7lP1EQj90QXD6wNCtmxfo2USeXDSI1AMMv1Cmrzh/NV0?=
 =?us-ascii?Q?OpzhVbwhK94QRXsCIReFi02UxGLbzBrfy962gCZczsYTBF7N3abZA3rORdzI?=
 =?us-ascii?Q?itJUD4vTXUtqhh/hud3c3cFKmpPk9x94FLDzgCrXigz+vmhOvoyPiFp5SWDy?=
 =?us-ascii?Q?3uREwR20J652600eYzv0hHXhitYljwn8asQZD8XQIt/qowVAFeWnn+xa8IgC?=
 =?us-ascii?Q?ExqGvFOrcvPuHiRYY46viM3OB9J58TSxDi38c/xMt15t+2SUYHI06ouQcJ0N?=
 =?us-ascii?Q?gZM5OZ7quXCud0IAhgftxYMIBn3yFe/GdJH6fcdO2lzyPOL2cD43+vzBtQTi?=
 =?us-ascii?Q?jO2LxhviEliOTHyQNzp8BAyKDj5xtKf+ivjub7aLKiWuD32JNCtPRJZoW0qX?=
 =?us-ascii?Q?a+0a788DUaZ+Uv3ajLZ/j6e6NxtthoYm3wq57p4Fjdfcr4B4C5QI5dMA8J//?=
 =?us-ascii?Q?UIVa6Ft5vHtNtEfOL9nik6YcYJtNGtJpGVjDXt0alW0N69BPcOMI2gJaW1yF?=
 =?us-ascii?Q?yvfdOPrTzQtNpOzLHQfm/u3of97mbQShzEwocwYJb4FxeKX+OHu0uYs6XMIy?=
 =?us-ascii?Q?sw6fBv+pUdAXLsU5bq5H6yuUyEjalcrrQrbPu66FHxYM70RxpFIN8YCJUCPw?=
 =?us-ascii?Q?keSfZNiUU13BBaGFmRNKe/ZVtJvvx5l/2EVIWfDb0+9nJ3/dFZVXWkGv/ZMv?=
 =?us-ascii?Q?laFikHIHdYrtxLFJDTBUinwVwa3zddzRjPH/N8E+6o9FGaeDEq7ZGj/oOiH4?=
 =?us-ascii?Q?gHFy7/oFu1WteKzCE199CzKMh7710t2LSCYl/ix1PZbBf5ACpghzxRWnz6Gz?=
 =?us-ascii?Q?cAFbOjmkRGHW86r2mIdLonK+VK0Isagdydkqt7h2DQ0gL/OtJRGF9EYZAzd5?=
 =?us-ascii?Q?/qzhnFqE0lVM1xtCgYRPV/0rb0XftALrOcG0V2372cw0ZpZ5Sybz4LIZSNrR?=
 =?us-ascii?Q?K74ZmDhspZ3Dj2H5J7Hsa/DddXwovGG8r6JDoin9qPyYkQoM3oxDlw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?DPXI7y0+oSPk2zwY3t7fTxs+Q0oUpDawjJK9MndCoIu95hzGMKPU2i4WS7/9?=
 =?us-ascii?Q?gGxUg5KeOZQfxp2hurGGPZzXBTbC8gtt86LsRcAI8g6geuJfveQNMBCMKkve?=
 =?us-ascii?Q?AJSzPK5pkkjAV5ptVY22aB3QdOf7ARePDixwq0aXxR85FM1mIoEkipPNpmlf?=
 =?us-ascii?Q?8jrFQDGwKtzsR72a7190GvNIjbbu0EIHsFWajiLUZDrGr6PpRC9hkXUQVq1Q?=
 =?us-ascii?Q?YBGfXH106kHouzlOEKbrIB0PdVMzdLxWXm0nS9X3oeir8KK46Zzxgm8dPSdC?=
 =?us-ascii?Q?78oFhVCKC8RN80GiwNynOzF4EfIbYzTXiFfvkNaWPu8VArrN+enuGKhOYa81?=
 =?us-ascii?Q?C1dijgoX3VyVLtvE7uzckmGSyHB6Rw5dAJIZGpg5b0xMC90i018NaHTHM+Ij?=
 =?us-ascii?Q?saz9bFD5QFFxnQtotHwqP+hx8tsbBDvSsdLS/V1zDV6TWXb6JH+YpsnKeqmh?=
 =?us-ascii?Q?lEvMvZi+o1qeyKKPKHeCVjyfKpfdGF9laP1HVJM59o51dC/vUusr0DZPdjnA?=
 =?us-ascii?Q?lboa5a9BoQImYu0ls5T1ifnmNS/rZ3Oha9HhDRYMVEDCm0Map45xem7AfxfF?=
 =?us-ascii?Q?HMFdy9ovh1saMphNSEN6YfmdjK/YBMCY/pmmUMhk2BAZgiKR7AzgdfJT3wF7?=
 =?us-ascii?Q?2qV9I/qTQgU5EY0DN1tAgINRXFn/qKn3LMzHlhcJJSDv/omKSdA8/7wk/sFn?=
 =?us-ascii?Q?V5qiBYwXMjZiB0ciqq6Tdu+TmhVlcfSlgsdNCO3N+KDlocJUxeXwh8O789St?=
 =?us-ascii?Q?OUB8X5wJ7EM6vzT85tfLkLdkDM5EWm9p0bACcdSBD35sZxUIhKZoIUBu/XdT?=
 =?us-ascii?Q?N/rtrb/8jPybzMf/0QHJ8u98kea33BeAjxMlGQKW8/sRTkmbVjFaH1e5SIU6?=
 =?us-ascii?Q?qEfLWUuTjU9K/I7D0hCpfbS8kT9yW0tUvGKxmvzPxEW3Aohn7FdQYg5retc5?=
 =?us-ascii?Q?EBpAd/UPp49AkprAo3KYQZm/Zj2Py5BgEGvWEHwKNw9LqWM68sRWraScR046?=
 =?us-ascii?Q?L4fgMC2zrSYoJlfdleI57KaGfI1C0rYLBjynMSa1aQV1kbaHBpmsfoc7ONxi?=
 =?us-ascii?Q?jaz95VftGnFVx+ZZ0fEdtt9fyJLdqt/QcCI19GANQCe23lCZvq1mX4WRjudO?=
 =?us-ascii?Q?ugF4FiN5GUVZAptcJoLI4gUzkC5Z/zbADOmEtWKoZY5Kl3JUeYsoUSN1Kn26?=
 =?us-ascii?Q?i1IGtMugqMcysCbdjxR70UfmG5wh8UkOPXzpOPvevut6bxJblo9XTeXWjAs6?=
 =?us-ascii?Q?gKrpeZyzu8nbVvxYROu/RvWhgyE9OaFWXott60wsCOy8wqddXHIKWUVo9VWx?=
 =?us-ascii?Q?gojc5CrPgQwHFrMGVH1LmQxkz6Y6RfScx2TQLKkB0w0gIfLVIrICidGO8SYE?=
 =?us-ascii?Q?ku4jJol8hHzQoJkoY02P431ZOP5Y+8rsY16C3P2MwbtId4Td4j+TXrsMHDL6?=
 =?us-ascii?Q?BqqJ9nqnX9/wlJVlj+N4aH+9E3eX2hTvqJlnC1Dg7tj8KS85ifaPuUkyvL9E?=
 =?us-ascii?Q?oCw5XGz2ZcExajIS3s0o0a/88qXPKsSInzbeD+E5cIKUrkhLhKMYYaYXJToY?=
 =?us-ascii?Q?7pXzcyrHN8W8WTY9dX5koilMpzF40mFECCEL6EM7?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 52446b63-16d7-46c7-c419-08ddbda3f0f6
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jul 2025 22:16:37.6108 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eqAJt0GRfaeZd0A5jG0JHtpzAkKhbPQZcWJgOHeBWOH/iBVQt6c7b6FS6nSVq+pcgAHm+wgI4deiCsb5v40Zkg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7745
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751926637; x=1783462637;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2fUHkui64p0UvGDx3rRsYiBoCk09Na8QIpOr2u1NOEM=;
 b=Y39fd449R1N+6z/vUnppA3K9i0KuuMb91l4SGcQAfZGYwI5+hCfu8KBf
 cY05PNAjH3ywWss086s4Q3Gu42ngUGNFr8RNxB2q5TcAE93N/vX/8S7aA
 N+4nOzeu+qAnXlwyT266RKVrNr4of+z9qujUFPsOgCX2Jw0WdMx9iqBW0
 xtiMdBWVnZ6xk7/EmvTxAAB2PohlY7EiD/KPj1g/Kqza6zHW/dJBBd1q8
 0JC7tAMe1Px9X2qBXNjzaHGMSTMA8feJzKMSvRPeMLNlUqmNvtdmELGky
 ngiC2qa8FEuS44cUeopFN7fh5cH9m74no1DNHQ2UZqBP7Iq6hb64lz7p1
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Y39fd449
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] idpf: preserve coalescing
 settings across resets
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Ahmed Zaki
> Sent: Friday, June 20, 2025 10:16 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Zaki, Ahmed <ahmed.zaki@intel.com>; Chittim,
> Madhu <madhu.chittim@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next] idpf: preserve coalescing set=
tings
> across resets
>=20
> The IRQ coalescing config currently reside only inside struct idpf_q_vect=
or.
> However, all idpf_q_vector structs are de-allocated and re-allocated duri=
ng
> resets. This leads to user-set coalesce configuration to be lost.
>=20
> Add new fields to struct idpf_vport_user_config_data to save the user set=
tings
> and re-apply them after reset.
>=20
> Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
> ---
> 2.43.0

Tested-by: Samuel Salin <Samuel.salin@intel.com>
