Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C08B0B3DF0A
	for <lists+intel-wired-lan@lfdr.de>; Mon,  1 Sep 2025 11:52:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 62ED283EC4;
	Mon,  1 Sep 2025 09:52:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1ngiRQOLogev; Mon,  1 Sep 2025 09:52:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AC53383EBE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756720367;
	bh=qb1w5BomNDAbgg8+o5r4Jsaq6qXErWYy0wND63rloEA=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HyRhPq2bkK4TgQKv/gK8rmW8WS4bNoHqkBZYnC1sJ9sFrgQE/W0RW6iKTXpQlWckf
	 guyCdN4nbXnvjn3zFBU4Afl8sLGg3iWC2GuwpwzCFdNmDxlTuvDnCBAbOxdwUCeMUO
	 X1ViZcc17ary+/GN2MCXE7Fk9+VOAeEgX7H1JsYpDaHXlZHdHgqXc2EQVUFdn/iAme
	 ECxYbmRWg5TIxrK4FvmItPt0IE+pDeFALPG6h9AYDr0vllZcnK7nc5M10pFGcNSnJn
	 zDlbnHUpmQ4NUZCz4HbXzpsgKApMBPe0hD65juJ7lk1OTCLU8GApXXXTNV8QSmF6rt
	 NHBbLzyqKFEzw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id AC53383EBE;
	Mon,  1 Sep 2025 09:52:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id D93E010E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Sep 2025 09:52:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BDC1383EBE
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Sep 2025 09:52:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lZPyrkYwCZhh for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 Sep 2025 09:52:45 +0000 (UTC)
X-Greylist: delayed 428 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 01 Sep 2025 09:52:44 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B53FE83EC1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B53FE83EC1
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B53FE83EC1
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Sep 2025 09:52:44 +0000 (UTC)
X-CSE-ConnectionGUID: Q2tr7B0mRYSQyz6LqSfiCg==
X-CSE-MsgGUID: HqTXT4HsQ9Sex/tNcfgTEw==
X-IronPort-AV: E=McAfee;i="6800,10657,11539"; a="69237695"
X-IronPort-AV: E=Sophos;i="6.18,225,1751266800"; d="scan'208";a="69237695"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2025 02:45:36 -0700
X-CSE-ConnectionGUID: 1nMke42FTmWudaI5ECHrmA==
X-CSE-MsgGUID: fINUUklST0uaFlIcNRhwtg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,225,1751266800"; d="scan'208";a="208170453"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2025 02:45:34 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 1 Sep 2025 02:45:33 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 1 Sep 2025 02:45:33 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (40.107.212.81)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 1 Sep 2025 02:45:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yXO1e4ujG+O5Ohb/Eo7+CaQbhrBR8mej2faeLwp9rl2r8JI7BujAUZyC2N1ZxzmV4RRtufdW0e3tN2RGRrCb36b5QeHAywD6yzytwTh8A6EYFHETRVEmRcOtEz6hoZGXoCqfITMK5A/AdvLkWr2OsKr0r5bQPyRPda8cxFr+8x52Xg7jBXXtq+Pq+CqvReI70gwtDD5Bjwb2g5DA8qoeH7YcTM8nsN571ZPP/Unc8MDQ4dxLaZ7CP6JEnwk958Z1XpCjHmoyxnEUQSppGXbgobBniaVBXr2Xm7fAq5PDMiQ2hRVCbG8rdnVWrlMKj135yVf36TC2Bbhyn/hbGSh5Uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qb1w5BomNDAbgg8+o5r4Jsaq6qXErWYy0wND63rloEA=;
 b=M9r1E1jTkoGKTfRsygsR9PPHIKrLC/NkvZXODGCcLIPLJI8TWVRS2GTD5iAe3K8EPLHP+1o02mEiCRpv1PQT0AVfohBkpz0CXuqbk2xZQ/jIpzMt+eIw0bMkf7oZlIm4iRUjkgX2HFcqaWoWz0+WEtfgfZU007hFSEvJm9VRIq7DcocABVSNLtRK2cawne+a+elRfFYMdj6RCSjqhGClNpfVaXrb7Bb2mHCullU2h4/Qb7sQACpn9II+IMMSBJAksYRhahbKLZXKOl3Lf3uJMsCppCTnzmD314ajdlRnd/njHFwcKPnXw3/OJ/ySb8cv6bwRG7VFN4JZKxt0buSyXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5902.namprd11.prod.outlook.com (2603:10b6:510:14d::19)
 by CY5PR11MB6113.namprd11.prod.outlook.com (2603:10b6:930:2e::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9073.21; Mon, 1 Sep
 2025 09:45:30 +0000
Received: from PH0PR11MB5902.namprd11.prod.outlook.com
 ([fe80::4a8e:9ecf:87d:f4ca]) by PH0PR11MB5902.namprd11.prod.outlook.com
 ([fe80::4a8e:9ecf:87d:f4ca%4]) with mapi id 15.20.9073.026; Mon, 1 Sep 2025
 09:45:28 +0000
From: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
To: Kohei Enju <enjuk@amazon.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Wegrzyn,
 Stefan" <stefan.wegrzyn@intel.com>, "kohei.enju@gmail.com"
 <kohei.enju@gmail.com>, Koichiro Den <den@valinux.co.jp>
Thread-Topic: [PATCH iwl-net v1] ixgbe: fix memory leak and use-after-free in
 ixgbe_recovery_probe()
Thread-Index: AQHcGraQu0KFgNb5V06YW9XuCrRFB7R+FMFQ
Date: Mon, 1 Sep 2025 09:45:26 +0000
Message-ID: <PH0PR11MB5902D5AF8F99D96C0DCB73F9F007A@PH0PR11MB5902.namprd11.prod.outlook.com>
References: <20250831203327.53155-1-enjuk@amazon.com>
In-Reply-To: <20250831203327.53155-1-enjuk@amazon.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5902:EE_|CY5PR11MB6113:EE_
x-ms-office365-filtering-correlation-id: 79c30c17-a175-4e31-2b4d-08dde93c48d0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7416014|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?SptCHlp/okv7KN5aADch1Y4x1/GFpUoGJz40LpasJ23SF1InQ7g+S2/sW+Ug?=
 =?us-ascii?Q?ywzbiKrFOeEGMt0EQW9/6AupLLcCeTL1vdhmQzgRDKFF4Ib/VhRMXckRznZc?=
 =?us-ascii?Q?tsXtGnNyLDPi0n2YHKg36/7rUhteK3dyFPg0b3bAQg3e2Fx5N8/a2wxX4cKb?=
 =?us-ascii?Q?BqlQQx/ZeQ1X6A4ghH2YZJ9KWVoU8qZB/cvRITcC1v8Luxxw7TU+o6ExTE/2?=
 =?us-ascii?Q?TBjg8g/65MaoZS/2Fqos4iRZ+6t6gbftaRPQS8KHmNPfxBrkyanhuGlod78o?=
 =?us-ascii?Q?0QDjcMBpdPDZsosIOHRUJFsAALpBL8IGKn4TQbc/hn8kn9N7Hztki8qnumyM?=
 =?us-ascii?Q?0z1jyjSnrH7rA4o542Ol0H1vIwOdaWI7UsJnGy6DkjDrw6QlqwkDENymAS0J?=
 =?us-ascii?Q?rmX35xonoJ13kmCjrP6THP0iQbO18+ZIhwJ/rTlPJyIYVqVfX9B2wAZLP+rC?=
 =?us-ascii?Q?QmlphifgdF2XqTBSIhkkK28LvONj2oIV4P2tvSVNDv59olqfLeeDE3/MgaDV?=
 =?us-ascii?Q?b1vwYZFFxCjdK/+f/2t/47lzxMKPRUpRdHAx/WpMAhHRXDLXi3iDSBete2r8?=
 =?us-ascii?Q?whlTrEI2lux/ymkQMvFsc2ZlGSR3761lZghV5h2d+RfHiuhzQ05rnnzvGEJ1?=
 =?us-ascii?Q?82VLWGUcS/vrjP6RqCwqu35VjFMPb5UqS10UWOvb6ftqFhuXJfvXMJzBhkeI?=
 =?us-ascii?Q?ts+F8DgmekftJcVkbn+UaCY7kq8zb8jRFMS8i8HfgkOHk7fOkaReWWtrI3YF?=
 =?us-ascii?Q?jSV/saA1AbtDEq9z4CEIrwFF1H7hAzpjUyws5Ub+AZfBK3I6BojtAbKRG17D?=
 =?us-ascii?Q?r78FuhF6B4/JvhO1toCaIrzeVgPZswsLPW/Et1HuibZHPjooy9B0KeRpsLMJ?=
 =?us-ascii?Q?BsFAIyGS5qXsaGAcYx5fUYCjCeJkBIhC6xrSkbZ/+6usSFCr+USIdsD7i9gL?=
 =?us-ascii?Q?Z4HUl/E92NpNSBdDQK3Ulg/0n8FsSrGs+Oamvsob4rzGBIrNlgNQqPYBOIzA?=
 =?us-ascii?Q?Rvee3FF9TYzJlFVeNpuXmgSTaE7MVa4mNIIXmyvjlrLoHhEdwXydnmC/Ydfp?=
 =?us-ascii?Q?NB+H+hpvOX2aElt66lwqfo9rJtEnJ/cD/zXkEkuUWIAYna+Od7w4eH6lY6Mw?=
 =?us-ascii?Q?nyVxXZEZFehRIkZI83Lj2Jv18IGbokgyPXZOpG4RdLqYqKVKxTcIsqOrRFrF?=
 =?us-ascii?Q?pSW7fl+Ad1PBr5TmGgl6baOC5b9MDC7KcFWC7lFWKrYhQ0fQQJb9eklEQXO4?=
 =?us-ascii?Q?PR/6H2q05iuyeF/gFkJjispXsLTTdhB0WoQoUzQOYfRksjWPOz/Yemt2uZjk?=
 =?us-ascii?Q?n3ANVb6LKP5PKARCEPI6nFd35FLIvrCImeH7P3/XPDv5zvzukfo8G7lZi3tN?=
 =?us-ascii?Q?2FqK3tAidGXjGuJgSglAIh0bhVAe9gJHaxZ955KKckmZz+6i5THHaGgnOmK9?=
 =?us-ascii?Q?mx9y1e4W7hyXBNzcbFbjbDmaoM3XfC8eyCfHSAucTPAfWZGrVmjXfQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5902.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7416014)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?drRGocZUwCGFI4Vfg/8Z2T9StnbZy+Et0WjcKNFqkQOFYHG2/v4qe5aZ5VK9?=
 =?us-ascii?Q?qxGj4aYE9cnROwG2EA7Qkj6ZE5vhGLrQKT+1NHybU8OIXXCyBNaHkzzviN7C?=
 =?us-ascii?Q?XzZttuQvHLhaIo3tVmvzFwb+fY2DI5TPoqg5Jv64ZjSLRiWowArucy3m+h1x?=
 =?us-ascii?Q?Pu/eOsyN9v56AFSS0mJMpn/+DIEVw8yXRqgHQZJ24ya9UkZXqN7nv7Qk5/2H?=
 =?us-ascii?Q?JoNfg9oexeCcjM1m5NcT8bXYe1BzWvIkV8CUgNz001oX9wX5hOMZp5RCiDgZ?=
 =?us-ascii?Q?Y4BwKXKUAxUX1GA/f/e+MM0ZeqeSRkmLuhPWq7G5SYSiXVK626FG2pTYEVyW?=
 =?us-ascii?Q?cp+CigIhggmT03n9GmURrCHcUqAA5nW+LFpWEYorxPnBoMvQcVxJsZVzZ/Np?=
 =?us-ascii?Q?YHVRjOZNBpL/rD9XVeP3JX8rmrqdddgSc7jj414hXpowGSslt+r95NaE9FYJ?=
 =?us-ascii?Q?4I2mbGKe+mU/xi/8XUkuBkZxKHML5suj0l2kL1zEwFgt7mc/AFbESc3ars2e?=
 =?us-ascii?Q?cxBP1AGaIPTl+ePVh7qP34EY5dnxisRw/yK/daNHEzk3IKegkU+FngE9ohYH?=
 =?us-ascii?Q?cGnqS6qnntBBskIafKTE3weehYRiuqnYLAHfVB+R63NWzf7FwlkdO6U8tWsE?=
 =?us-ascii?Q?Uia9BGb+AeZWEAv5P1elRqaMF+XVpw6GFrQLP21nwgNk/4v4VM6OSuasvpMZ?=
 =?us-ascii?Q?3bDi/gZCIZMj29//hvqrtE/6/mdOdD5N9yP/0oXuq0BxTvlhtaFqfMGbPq9H?=
 =?us-ascii?Q?Hh26TELVJZU1Ow99xs7P2TNYl/IC9HM51nynvrs7Pfrj61EFRJwpsDSiNQZ6?=
 =?us-ascii?Q?jS3ARrCEhU1bKqIBGDncxYPAagqINQ9mbAAG411dmVXFTsxPpTMdSTt0qSu0?=
 =?us-ascii?Q?u7TLJO004RsjQvERRagf/8G28mciVMcX1x3C6GD/oSFlgUmRw4APIPS/vbTu?=
 =?us-ascii?Q?5/PcIotxnvtkvoz4YkSU59nvUsxxX8UAbLZYDIm9G5Y8hxbokzbfT9jbkIG1?=
 =?us-ascii?Q?x9IQNjbRRHSAcmSJwM06niekHsL2mGCIRWMXHN+vrgs9C1g2ybzuiYcA5+uM?=
 =?us-ascii?Q?t7an5muCVL7rVSjQaFc6spQ9jJ3enfOhcIBwJqr5VyanxwPUAlXomenzbUD7?=
 =?us-ascii?Q?t4Xb0dnvnxmNrEpMEAH3Lj0JRK8FoePh3CoL9BIaPYsz5IH4BKOR0UzgPcD+?=
 =?us-ascii?Q?iSVTJeBa/d+hEPTngtsCTjgx5OM3344IDMJgN6AAvqZCd0uZNaCmRFHItrGF?=
 =?us-ascii?Q?4CvpBikpGROvKAvnMqbZsC5ddfs1+SsFGaUqgu5WmV2vDHtdsoT/NPROu/ZJ?=
 =?us-ascii?Q?eYITt+nv9b2oRtdKfoLkjrisvmnL+q7MFhBqDqTf1P9IP3+Wtu/w1qc2BK2i?=
 =?us-ascii?Q?IB/qykF1gwFWI46LjqzixD66BXH3kbvT/7VLMM5uqwgL2hNepJWgUDEOKaGj?=
 =?us-ascii?Q?jIrEtWweSfUxCKjI3/WToOVNMuzd7NzFVkPnv80uAsWm0GifFWk0+QgEznOM?=
 =?us-ascii?Q?zxMqG29hbR36lsbuQBfmR2fexHS08pa/1YVoAIHfdRIAYBGl/4ieNIvXagTh?=
 =?us-ascii?Q?+/EGwHTmUgBsIL1NX67rrxka8Jq/o40q/VaLNO3l/zRoxdruHsvCpWi6zofd?=
 =?us-ascii?Q?2g=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5902.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 79c30c17-a175-4e31-2b4d-08dde93c48d0
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Sep 2025 09:45:28.5348 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: p9f+Bj4CccJAbP7Krrov+3qjiwMAWXP/D6lIUoO+AliT/3/6SYi77AXaC1hbcRgaXFJ95Z+N/P87eFN0blohu9Zb4qQ273cCz949jqcb9i4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6113
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756720365; x=1788256365;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bHknzxS9xlq0gqp0OOyEn2NwmLuFXPpRHEViPpJyAgY=;
 b=aC4Y5B0lLTEbZQNgJ8CE5pP0/WYBnMrFeznpPk7eKaLre/D/hajACZqg
 DjEHYzbggXWQFzBbONgnYzELQpTYs2Scn3Pdw+LXhr8TWixkXJgmidSib
 1laSuX+rtRj/SjpbFd0G915Zx9Cb63zVvTtUHYDylar0uUcNEmOzfiPPA
 Q7Ww/YgZt+gEH5iThaC2zngh7WsFOQIZQsv+WI8/JJZ2Es92pV3GqqQwz
 dw4HCj00DD/754WIIfuQcgY/ehaY+bR8mlHt82Op78XELTSiTSmA1udxl
 z4Ko+rt0V+ifv93f9w80AEUD30RjrTL96wJC22FOqdmTdcL1wgC4f22i8
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=aC4Y5B0l
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ixgbe: fix memory leak and
 use-after-free in ixgbe_recovery_probe()
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

From: Kohei Enju <enjuk@amazon.com>=20
Sent: Sunday, August 31, 2025 10:33 PM

>The error path of ixgbe_recovery_probe() has two memory bugs.
>
>For non-E610 adapters, the function jumps to clean_up_probe without
>calling devlink_free(), leaking the devlink instance and its embedded
>adapter structure.
>
>For E610 adapters, devlink_free() is called at shutdown_aci, but
>clean_up_probe then accesses adapter->state, sometimes triggering
>use-after-free because adapter is embedded in devlink. This UAF is
>similar to the one recently reported in ixgbe_remove(). (Link)
>
>Fix both issues by moving devlink_free() after adapter->state access,
>aligning with the cleanup order in ixgbe_probe().
>
>Link: https://lore.kernel.org/intel-wired-lan/20250828020558.1450422-1-den=
@valinux.co.jp/
>Fixes: 29cb3b8d95c7 ("ixgbe: add E610 implementation of FW recovery mode")
>Signed-off-by: Kohei Enju <enjuk@amazon.com>
>---
>Cc: Koichiro Den <den@valinux.co.jp>
>---
> drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>
>diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/e=
thernet/intel/ixgbe/ixgbe_main.c
>index ff6e8ebda5ba..08368e2717c2 100644
>--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
>+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
>@@ -11510,10 +11510,10 @@ static int ixgbe_recovery_probe(struct ixgbe_ada=
pter *adapter)
> shutdown_aci:
> 	mutex_destroy(&adapter->hw.aci.lock);
> 	ixgbe_release_hw_control(adapter);
>-	devlink_free(adapter->devlink);
> clean_up_probe:
> 	disable_dev =3D !test_and_set_bit(__IXGBE_DISABLED, &adapter->state);
> 	free_netdev(netdev);
>+	devlink_free(adapter->devlink);
> 	pci_release_mem_regions(pdev);
> 	if (disable_dev)
> 		pci_disable_device(pdev);
>--=20
>2.51.0


Much thanks for finding and fixing it!

Reviewed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>


