Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CF64A2EA84
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Feb 2025 12:05:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F3E3181121;
	Mon, 10 Feb 2025 11:05:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DYh9ymjwsKBC; Mon, 10 Feb 2025 11:05:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 354DB81168
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739185538;
	bh=xIdQuOI9cp+GeHcGuV/LZU8yCK7jE64nbaCbgKWDqnc=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=CA93xGUOVwAHBm1+m8jDCn6E4aEpiE1xWDtktAtDlhrduKzsyI3f8Ihgf5qkSdEDC
	 27zWWvYlkk8mT3YpPZ8v+Tx449/fub4r1jICy9IQhZLQygWdGYk1dXpWGs9GNB2PvS
	 2/sRxlKeS/4gSxHXng2KJlP8+a+PY37irk6vi1sOi+1FaZBqyZDHA4/QXWiSdWVkdW
	 DgMpPaJeybaeCfapEJ/cLAkX/bVpF1dSUNDjS63WZxhOeuecDZFoIesVW+FKjrIJ8x
	 DGJuA2aSEXwmYxS/wqABEeFgWghTB9cSLIUpwiGKbqrf/2VOMDzhQUztcv9TBNGfTJ
	 541CGUcQ4Ls0A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 354DB81168;
	Mon, 10 Feb 2025 11:05:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 0D6986C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 11:05:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E0B8A40024
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 11:05:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HtPnwZ0humeA for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Feb 2025 11:05:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 31C3D400BB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 31C3D400BB
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 31C3D400BB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 11:05:33 +0000 (UTC)
X-CSE-ConnectionGUID: RcyT7OdjSmysPtooJ9tk0Q==
X-CSE-MsgGUID: DXvEn88ZSkSlLchApqjs/w==
X-IronPort-AV: E=McAfee;i="6700,10204,11340"; a="62235982"
X-IronPort-AV: E=Sophos;i="6.13,274,1732608000"; d="scan'208";a="62235982"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2025 03:05:34 -0800
X-CSE-ConnectionGUID: jq6YnK/ARuCDoCsNdwVrzg==
X-CSE-MsgGUID: lXbUOf2IRomuwfph0QYFKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="135405883"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Feb 2025 03:05:33 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 10 Feb 2025 03:05:32 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 10 Feb 2025 03:05:32 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 10 Feb 2025 03:05:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hvTyiW3p2Gp/kdmsHblZWgEnw+/jTjTDilD12Cmho3F6HsSUwuIbViLyBZvdoYTtGZSNLv6SiHZ3cZgNZv8EpOtXeZubfrG7zL8DIMD+flTbTiNHpJz7tPC3sjXY54BcT5LB4HpwSer/rdIWCaLaes8baqjlPC2hcD1pgi6uIORV7pOqIfqRXOWDlnjO0rPn3FE/Q5pl1Cawmlbju8sMtCA6yt7MPkV4SLP1PjlUDT1w1gz8Lcq9FDFDgYnzLhcCRU83/ECD6JvzcITFe/7zcoM6hHJJxQEj0fKmx0WeKNQB2sdYzMmHA3u6xeuc8TFVhWsy0tX/PB7LgN8Fgcm/gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xIdQuOI9cp+GeHcGuV/LZU8yCK7jE64nbaCbgKWDqnc=;
 b=WQYASdwXA/RaJ4B8m0hzlTy1+KS3ZJj1KNIecOuau8jb6FTXKsg5gcOmt9N2oTQ4WocyU7F96INNGDghJ917bJ0BjtaPosHkl47dRO2VE4WiMyH9VhTVO/1dy2beUSQcm7E6t2m6R78OHWCeTP8qjFWgSeVJEKPDZ7eYD6GUvJiDS8CYYFSKyVl9aK3dRm8KvD+ZHLgCNvsCt0sUFEEjXFtApA/U/KBHderanbySI8zE+gILGdUcw8kf/tZkxoJ7kz4NY7+gO3exr56dcwj1mKOgk4Nj9a2gir5lyeaQVjvK82p1LKSh5x+eG9c7GhUlomi5u0P9AjBplc5NBCY/rQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6219.namprd11.prod.outlook.com (2603:10b6:208:3e9::15)
 by IA1PR11MB7872.namprd11.prod.outlook.com (2603:10b6:208:3fe::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.18; Mon, 10 Feb
 2025 11:05:30 +0000
Received: from IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::f302:c534:2d71:822b]) by IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::f302:c534:2d71:822b%4]) with mapi id 15.20.8422.015; Mon, 10 Feb 2025
 11:05:30 +0000
From: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>
To: Simon Horman <horms@kernel.org>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Kolacinski, Karol"
 <karol.kolacinski@intel.com>
Thread-Topic: [PATCH iwl-next v1 2/3] ice: Refactor E825C PHY registers info
 struct
Thread-Index: AQHbeHLPI/wfae92b0ykdrS+HFzbB7M7nj+AgAAAjYCABMdyYA==
Date: Mon, 10 Feb 2025 11:05:30 +0000
Message-ID: <IA1PR11MB6219E9A67D79B4045ED0765592F22@IA1PR11MB6219.namprd11.prod.outlook.com>
References: <20250206083655.3005151-1-grzegorz.nitka@intel.com>
 <20250206083655.3005151-3-grzegorz.nitka@intel.com>
 <20250207100345.GK554665@kernel.org> <20250207100543.GL554665@kernel.org>
In-Reply-To: <20250207100543.GL554665@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6219:EE_|IA1PR11MB7872:EE_
x-ms-office365-filtering-correlation-id: 631c2a48-1914-40db-78c4-08dd49c2d4e8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?42HZqfDjCB4y58oDBbgaAsfJYeLyBJX5a3nvyRnAD87g5mP5SiwzA12+F1bb?=
 =?us-ascii?Q?I9dshrofPjyksaS4knduHzumKshDRmAbn/4ED9WFq62tI3krHL1y+PuRtMNy?=
 =?us-ascii?Q?xkWFO91thWxuTILlpptFodZhTXTzIaam7BLXCH6zS2aMyVs7Jl/P08+1rUeP?=
 =?us-ascii?Q?EzP0RKB0r0pyOlM19PT3fqw8azqYMTqetl2FjvRhk3LoThtasnL5M5ee7ImY?=
 =?us-ascii?Q?KBAOMw2ixUWE4KxLDQgXGInBcNFZJwTFkS8wbsZ+Uu5iCjIuLWJUJqMTd4Mp?=
 =?us-ascii?Q?C7vxP/dPxbQIj3Vt8ZF//oiuyj+mlY3+SYfL+KRV2/MEB//t4lTGwMxtztCx?=
 =?us-ascii?Q?npGa/RLFqN08AVohX1YeOY25vYwS0gBXR6gPw1PTrRHZzKZqO9Wpav4OUquN?=
 =?us-ascii?Q?v2a7/N3GIKszkGrbHMr3UFduBPBTwKucJ9ItwJDfSWla5ANI3JSrtBGEwTLu?=
 =?us-ascii?Q?dUVrIC5yPNO84fxWzJD2jmDuhwEUa9BhQf80kHSIojBFsDE+zE/LqrylxRqP?=
 =?us-ascii?Q?lcci6fAa63gaZdw//Xo9zVYhcjD/fZQ0PmCPhBdzgeeuDgdKgxKK932tiR7v?=
 =?us-ascii?Q?Tpj/R8cDNkzcTsCeY7kJ6CyTyHJwFfG0IbYcLHkoczC9LibfJ0/bwh6bpvvT?=
 =?us-ascii?Q?O2EgWbOat6tXZANe22q0mUfdTEYHz/TTBIoH8bMRkRIlPfTVMVeGGxEh8uod?=
 =?us-ascii?Q?AXeBk0HXmW+KeStlrTVjAO1CFO+jYVOMy+NecxHVGv5/+fkohMjlT7SrB0Q1?=
 =?us-ascii?Q?qjX7+Zl5s7K4RSSQbrU6papPooHJVVokC2/wSfdVwJJPPimvhW6J0JSl4/Lk?=
 =?us-ascii?Q?haaPpt/S8sjk/YpqvyCzcbG2Bii/6y47GZVDNiGpibMnV54i4DqPOW0dIdTD?=
 =?us-ascii?Q?Twwu8BXFttHsFwFK2zguWwGZNX6e4Wncg+MFj1lYrGsYtzRzP0tIZB0d5rwz?=
 =?us-ascii?Q?oHdGbJmqGbJKWqbj2gxM/CiSH9nkUKEPbYrTNlw2KxYOhoBT0eaZ4RTIEeet?=
 =?us-ascii?Q?zpRXzu4yj7f0Vo3mghMAn2qMXTeCIjsUha22hqqVhXKi234w9QJjGNBiHH60?=
 =?us-ascii?Q?XOTwtrFKWMaE0RFvOE8yVe3BXKq5aq9IZ5Gj0392Og86POzYqihqfBV/ropi?=
 =?us-ascii?Q?FvWkg9/TbL5WR/hlvNKGyOHIdro6TfO8ilbHGC2EUu+BWSdaZNlYHzdrtYwF?=
 =?us-ascii?Q?9XqZSS1pj0zOPvwWIYB0f/v9wHbjtP5+PpFN/C6geBWPwBAGJBhCXsFOMSRg?=
 =?us-ascii?Q?gy9l64Djoz1wOLeJvQDsuJav1zyFA3z6E+z67qDVS4m6wek8jrAWhO+Zvalx?=
 =?us-ascii?Q?EoFGJ9cecC8GhBgScMpKps09rbFsadEydPlktDYQQctjISVVH2kBl5+8GKMX?=
 =?us-ascii?Q?vSc5ieU1Ky/H9sndGu6ClPBtd6SCKuqawZmvEU3YK6GSmqHSgnVius99kUA9?=
 =?us-ascii?Q?pd9AqxOS2QvQacB21Wcz1IcDtr4RC0ZL?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6219.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?dygqrTcYi3uCuwxyjC0Vv2ZRvCZCCsgLDwzhNrfT3ScvXq+nAZzFetQqrB17?=
 =?us-ascii?Q?Ddm456nfPqg5NXM580ya4LIF/GXjDotE1yNixYMSVx9p3Q87jmTAowFGY4vV?=
 =?us-ascii?Q?h6Fg3DKMsH1iedkBHXWCaYXWphWjfryujCEX/4lW9lARD5z0BvBEfcv5s/VL?=
 =?us-ascii?Q?Un9eni6aeY7k/0u2uj0M8F+H3H0Dta9ZUYvkL4iexcibodBlr99Wq9W1ycOs?=
 =?us-ascii?Q?GAjbXujBPXpbumX24MduDOzFY//VFT2AFCN2BTdypEaaVNyOMAFvhS96w+KU?=
 =?us-ascii?Q?JxwWFL4TUwxXYKEpjQGu306VgYFGqAaZviuqH4d6ALWaOv+t1bydjyOzBzVi?=
 =?us-ascii?Q?HPhZnF7QU0eXkVnYRjZTxlN1D9LyrOglr5AtiFbmB7xXy1G1LJbYfD3cFoPM?=
 =?us-ascii?Q?a8iCrIJSx9rJV1JweqXB5UzatrNfLau2AsOtKOECjpPL/2AWZH614n9hhI1J?=
 =?us-ascii?Q?2MjaYPozB7AzY7ecUobWNYo1z+HEPVQHbgEkkk1gHWr/mSxbe+IrjmZd/QUp?=
 =?us-ascii?Q?FZ5eTmlIySHYZfvVh5gCRwUmJ8CvTCQ3BAzCxkyJYTxKJB+x/kAFGOmM7gP6?=
 =?us-ascii?Q?WEnBFoMA7xC2aXGMCMZQRz3/JkeBTJpRXv/Ceb8xAbaoEopCWC1aDotaXJY3?=
 =?us-ascii?Q?tXHb21fGE5HUxOfn0k7qRS8T9l90Ns7l5m5dZ4vTrPZ8OEwK7hZh3+xXimPI?=
 =?us-ascii?Q?6lYh8NU7MN6mn6WIiyH3qnBs9LSIOuIw52gFGlAQ+A0oQXyzatKUpeyvvwYS?=
 =?us-ascii?Q?jE+GQAwb/xp3NH008zfJ/UgVaFQJT+cv20l2npbOEoBEmWY/qlDiC6Wh5F6p?=
 =?us-ascii?Q?MAd18eHBp9zZvjI+KtVxLMntDi3PGsFi6GcUJI+RVuMQtVdHNN09QKUZbHxo?=
 =?us-ascii?Q?PqbQyadr/qMEx9OTZkITNq5IAXbhSx5FcDjCmiQkmarv7uD5jAVxCHvN6n24?=
 =?us-ascii?Q?mH6y6eueOVA4ObwKXozAUOmoY2PQBl9Xbv0YeSKTcMa4PxXocdOb+vN0j/Qj?=
 =?us-ascii?Q?qyihYYYERlErYEGH5V2/7l0BEeC4rTVSt2DVwAMFG8QDuWcbK7uKH+Ama1fx?=
 =?us-ascii?Q?kYFx/DMUnJ1WKlghn+KRshUQ7LJSm45yMTw4bgU9UKmevYoH8QiEX9lBprsT?=
 =?us-ascii?Q?vsqneqGE3r7Vc+h+nl2stPi83D/eKN5NRxcegdp7pSb1L5Aekz+6qkBwoCze?=
 =?us-ascii?Q?JWw3hczq3K2jcsNnWZurbI8aVcKLYE56ObN6oin/sJahIb0NDq83rz9lzPJV?=
 =?us-ascii?Q?SG7B8qONFZfR+mGQNp9c2kfOvPsTTnC8eYISiEm7L1Yr6f6d3LIxySkM2bi+?=
 =?us-ascii?Q?klieJVLkvm/y2b/poNcfCofZrNtxKSmvHMpjVKrFA8ZdY9txAUZP9RDY+VuN?=
 =?us-ascii?Q?xTd2ge37wohfKPb/o86KQY/r04nypCJLqoDsXqJqVUBzvIM+zPHCaa4PwRc2?=
 =?us-ascii?Q?/o2OmDaXleOW1uBbEhn28ZtQS/HVCXE8M2iUmaPfNhcM8wLSXDrftRLbQM99?=
 =?us-ascii?Q?QvqXS2yofvmwCSiJi+K+GtveOCBBGBfPEfz9WZI5vUU76tlcJdDba+LhbA5u?=
 =?us-ascii?Q?7ZsbcW0Qyn+BrEMfbcFc/D/YHqMtWsfsp2JbeD+v?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6219.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 631c2a48-1914-40db-78c4-08dd49c2d4e8
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Feb 2025 11:05:30.0682 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sRjijHRRHtAkNr3mci4XroB+wfSO9lsuEWyTNWrVHUA9CEuwrvGC7P3XYCJkwWWK0qPQ0d9Z7MFz5uaqhWzaMgX5zXv7Yg8mZqXN8g/mwPQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7872
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739185535; x=1770721535;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xIdQuOI9cp+GeHcGuV/LZU8yCK7jE64nbaCbgKWDqnc=;
 b=eHtCQhY0VReXINbPyhh8L3i7/wi7WJJvRw+I2UveZEVWzaC6VoMrSMqX
 0kHsBp7150YEx0qGDGtxwHcLC4QmAm8x8MkXegPSTBunuVFgGRT28LDj4
 IQ4UI2XCsBNEHXE/H/bkN09jX5fkKz5I9V0mDtvHMSfEN9fFnWE1F4YFT
 4MV8/l/iSmwoDZBpw6zywm5nqc4i4SE8nZfiTkIbdSuLIGs0sRhXNk5Xh
 2aiM9kYkIaGVBxCy609hP0AaHwX5Swa0MeFv1v8VfQJ/z2yuOXhkZgGdy
 X42l+3gqjjv1q4jXRenKvqSFKcekoS//KaU5lNNq5y1uDlMKq+FPVAKOK
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=eHtCQhY0
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 2/3] ice: Refactor E825C
 PHY registers info struct
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
> From: Simon Horman <horms@kernel.org>
> Sent: Friday, February 7, 2025 11:06 AM
> To: Nitka, Grzegorz <grzegorz.nitka@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Nguyen,
> Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Kolacinski, Karol
> <karol.kolacinski@intel.com>
> Subject: Re: [PATCH iwl-next v1 2/3] ice: Refactor E825C PHY registers in=
fo
> struct
>=20
> On Fri, Feb 07, 2025 at 10:03:45AM +0000, Simon Horman wrote:
> > On Thu, Feb 06, 2025 at 09:36:54AM +0100, Grzegorz Nitka wrote:
> > > From: Karol Kolacinski <karol.kolacinski@intel.com>
> > >
> > > Simplify ice_phy_reg_info_eth56g struct definition to include base
> > > address for the very first quad. Use base address info and 'step'
> > > value to determine address for specific PHY quad.
> > >
> > > Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> > > Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> > > Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> >
> > Reviewed-by: Simon Horman <horms@kernel.org>
>=20
> Sorry, I failed to notice that the kdoc for ice_phy_reg_info_eth56g
> needs to be updated to document base_addr instead of base.

Good catch! Thanks! To be fixed in v2.
