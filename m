Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ODfzGlYg12naKwgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 09 Apr 2026 05:43:18 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B0793C6100
	for <lists+intel-wired-lan@lfdr.de>; Thu, 09 Apr 2026 05:43:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EE881822D5;
	Thu,  9 Apr 2026 03:43:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EI01tgX_btva; Thu,  9 Apr 2026 03:43:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 67646822D6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775706194;
	bh=iowBiyXNwEBg+IoGwZyeZDRaY+QC9Yv2lPpk7MYCVzM=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=X1iZ2lVprIRxifBD0ipuw+GmeYIJXtQ3W7COwFTZYxnxiV05xMHEHBK9LZqDJ3dSW
	 hCq8k1MSGaoLLjKyCdlfXRJVRE/VZMUB81EYtDpij7Dx2wUICL8CTw6o31juZ9QKik
	 IUOMsuesRJIhz42JvSyXekdcTpLI3EJoABahuxEKUWC3FXsnU+KyDCwpd7uvExOGJY
	 Uop8RUQxxvno/I1qzy1SX2RlSZAmZTta7HcUuR/utv55WS984pTBNGiRdMXDbKAWES
	 vAvWyqhWHJwWFLuWbOs40Ol1awKDEryHnIJKfjvugolGyRcIkAgT1lRmYkCrVFZ/hB
	 RJvO7//rNZ5Fg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 67646822D6;
	Thu,  9 Apr 2026 03:43:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 9530A1D6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Apr 2026 03:43:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 92915822D3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Apr 2026 03:43:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fJqJ80YIA2DK for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Apr 2026 03:43:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D1BDB822CC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D1BDB822CC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D1BDB822CC
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Apr 2026 03:43:11 +0000 (UTC)
X-CSE-ConnectionGUID: wHo9RPMtQEqHBNOF+LjQQQ==
X-CSE-MsgGUID: qUS01nXtQpaD3t/f9LmWLQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11753"; a="75874809"
X-IronPort-AV: E=Sophos;i="6.23,168,1770624000"; d="scan'208";a="75874809"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 20:43:11 -0700
X-CSE-ConnectionGUID: kgjL2QWUQ9OnJjQqlZmdXQ==
X-CSE-MsgGUID: XgcYHov0QciWZZYi2YB+YA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,168,1770624000"; d="scan'208";a="228536095"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 20:43:10 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 8 Apr 2026 20:43:10 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 8 Apr 2026 20:43:10 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.12) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 8 Apr 2026 20:43:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TIiiJZ9e7h6SEebc7XAwpxdh+rnJIlf4GGTYla2P/tLhoEMrK1lyRDTDnlpJ7xVUGJ9vdkSXzyZDTC7S4KggfRzMg01XOMPlzc1deDRVlRYe1uq3UOgBQecyUJNmsQ0ikipSOGauK6jOFZ5yns4RHJPKDkbV3gDkoDFwFVgzJuRYGghWCZDmD8qq9enhvWYD2gpd4KMeGdazTBJo3s3Q3v/ppKeIrVFP8Q756rFKnosftdUhYbj2JHFAqdcoEtZNWB6hLi4uzmfZ7u6jS9i2C1BkjFz/fh8S/8mKLeholifk9AgiMpdeMSmTQOmXUKTmGffYMk/lEWKq7ioQr0uXUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iowBiyXNwEBg+IoGwZyeZDRaY+QC9Yv2lPpk7MYCVzM=;
 b=OOnbwV3tg5Zpsds3jPR8I3+u+CbNQk/EbqlIk+TI+sGubj4SGFZQeJfeansvmYWrSvVRQiN72JBxZGNT5RgxhMrDAYWtbh3G0ZZ6qzeIJWCInLgURetWCa+Za/BCrrieb90Dw57eE+ptTXi2v90QBhL2B1IA1zsmh6oQKYLDgj7UyAaYir5co+J8GpuICKOSqbyyk/zq+GsGtRnh4aQ+GZkJvaVZLrC8VC3VHWDhCOLMnbDrltLhC6cYjZ1YC+BhaqE3QMiAMS7pkV05hgRq/Um48deGCuGx/1ngJNWwG+ATuOv6VkI+NkJWIDO3CQ6HZ0KNQQgaHJMwIK1e/UcI1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by DM3PPFCBDC4B878.namprd11.prod.outlook.com (2603:10b6:f:fc00::f4f)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.15; Thu, 9 Apr
 2026 03:43:01 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9769.016; Thu, 9 Apr 2026
 03:43:01 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: Kohei Enju <kohei@enjuk.jp>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Richard Cochran
 <richardcochran@gmail.com>, "Temerkhanov, Sergey"
 <sergey.temerkhanov@intel.com>, Simon Horman <horms@kernel.org>,
 "kohei.enju@gmail.com" <kohei.enju@gmail.com>
Thread-Topic: [Intel-wired-lan] [PATCH v1 iwl-net] ice: ptp: don't WARN when
 controlling PF is unavailable
Thread-Index: AQHck4WhQKuwU7SVBU6M+jYhVN71brXWflmA
Date: Thu, 9 Apr 2026 03:43:00 +0000
Message-ID: <IA1PR11MB62412013EB2995D1661ABD718B582@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20260201141430.131063-1-kohei@enjuk.jp>
In-Reply-To: <20260201141430.131063-1-kohei@enjuk.jp>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|DM3PPFCBDC4B878:EE_
x-ms-office365-filtering-correlation-id: 4409433e-9883-44db-61cb-08de95ea1932
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7416014|56012099003|22082099003|18002099003|38070700021;
x-microsoft-antispam-message-info: 7DpK9qxwmn3zNx/IKTJvMz1/VzwbtGDdVn6XwGY31zfbVAb+Ex+2Y5MyPuzVvPVAQeM6vtj7o85p/SsEPZTWfFioCYS43PgKmo/5MmKDXzHAoNgjMans/HTEa3Y89BBR10H+5EefsG0lpYB/hWI768iIOk93tJpX15Rf6WH5KBOCgP2hNxmmRORK+VQShTkOSAsV6qYTB6/bQk5YS7IfJwMUAy/vszNeU/t5Chphzyxp0X/XKuG0Qtz15mmBDotZ8+L6OgnkBpnRc+hCwCNRIImGoMLRfLDcHRhqhwnHtvQ2PN87qVpS+bbtjIFaSc3kBzKGBfo0TqrAjpG+INsFHdEFCEk0CAIe3pauIUNwG6YJyL/jDntFmvJgTs3YHgo1Q2MIM98SSIgP+Ot9uCO+i4A9zHNMpNjFeT+OjqsHFnt7h9FDxqMr4sotz/51NKjBjBsNXaQDkC5h85Pz1tM5gyOR1f7q0wPFf3xvJOQgDu0j26hceCUIdeG56vM2ygp1g7Jyp2u9I9hD1dhXEaDbvnLOiPT70j0yXE5IccdrmF3QnYhI6ka7GPXbPmEIWAbOonPQXSPcGPMeokSPPNRkBZAiz1mfjTyYvZYt7moNoAVhNU7gm08LthpO9hAzfyPsN7TF6qdUDeHVdl/qdR0MCTI973kae2sshCe5WeBw2dGEn/Wj4wu+N+xy3I4Pdbb21nQCvPvOcX2+Ot1TC4hM5wgNZFJGfXniIvU9c3Dr7MY5BXEzFD5tevg6GS/g2oDgPtIxgI4VvVpnY2Ozts1RR3nvDrAPTgtMu5Ox8kDQaME=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7416014)(56012099003)(22082099003)(18002099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?PNtKb3GoxTZC5GLm+OQwJMFBPuWPPB/6o3R+pImaBQHDl1aY1NXSF3B5GkVL?=
 =?us-ascii?Q?mvFK6MhvjddGxuooN/hlG65hBvKTExFKDtV4ZAeMNW8tSW/zvF82RZ7qy+LG?=
 =?us-ascii?Q?56QmlZMH5NWhFadmsRPrcEmqmPoi11wqfAfU58u2ANriCUd7++SNddOxf1we?=
 =?us-ascii?Q?9rDqIdR6ccgnKxg6+jfxtqAm6ibzDtdHxxX0eziFgGyUcwurpoNWmeBqEGGg?=
 =?us-ascii?Q?0+m0a/J8C6r1yu6zJIOa3YPhdrnzVIW0gTtSl9Jr5/aD9t+IqP46zRPqOQag?=
 =?us-ascii?Q?aXYwfLwhxBw+YqjI6YRb1zspBhnzNxMJDbA8/Rx5jhkTtzXXfSZo3Mz5+8H6?=
 =?us-ascii?Q?tsN83egeT1eYa+2ovFV3ssjXjeAGqTNzbkRmNnQuiBXJ1Dnq3wd+5lcdl6ew?=
 =?us-ascii?Q?zan2OSj/3nAtg4WVdaU3l0rwvfgE4UUN3vqLSz/SsZFCVz77AD64wKiTA5PN?=
 =?us-ascii?Q?sqvSZmcnr3hdTan2nOHG/1tOd5Imh0PdqERL5ayRedM8e2ccamd2cr2fxqtK?=
 =?us-ascii?Q?F9mx5DgXezE4XGQlcJsuNbLowLW/7ILLW0U7Ey3MN6z/tj6wvea0YGceJ2Z7?=
 =?us-ascii?Q?ZWQNlGycjJLoGETAVACx5krqAp/eQdPUZ1gsjruCuaLVverV3B1t4CChb1De?=
 =?us-ascii?Q?OYcoF1Wsqirx6UAbgfFGMlrfyJ8c/uApxTLKeRyfYKDZ9HTlNsDhAOgXigIo?=
 =?us-ascii?Q?hl3ZqOgZsdLXqONjcoGH10P1iK1arRhMsFPyo7ENLKqQh6r7Zf/zigHPUkqC?=
 =?us-ascii?Q?wA0+RVKiavS7bg2cM4LkD9k9Up1nbf7/N2PEg5KmaJy7y8UpWz0wXoARxDox?=
 =?us-ascii?Q?NMowTKa5zqaf4PeldKtWz52NnyiPJl/uJFSC1GpSEjHo9BNba1hEo0tZZihr?=
 =?us-ascii?Q?4XaSyzqh5PqVv8PGysZl44pF7otsl2pYfD1KHGtN8YcO02YfYUbipndoEiFK?=
 =?us-ascii?Q?SYa+gpnnr3ejeLUJ2Ydp87DSpWnlfsqODYEBKtExF1YK92MM+ckUn6MegR+4?=
 =?us-ascii?Q?mmg7XawML6Xzq8ByC7GI/SdjRRN4+ncyJ62VVLV6vll5t2X6YH6xz6TEB52I?=
 =?us-ascii?Q?aI5PMXaE/cXD1axlKzfPXjGbuOZOR9roMeDz4ivkCqFwVg4AF+mruHyy+cxZ?=
 =?us-ascii?Q?UXDDzwSFzZw3oXCCWvlVRTTeUA6yvvyTtZaFPFX59KGGskPwozt0qggk9TCA?=
 =?us-ascii?Q?wKLTLeEPsjU1t/T4XE8si/DZYqO/NkfaMw7TnQamli8D7qj2Jz7T9yohHwCE?=
 =?us-ascii?Q?4forANKgI7xp1fQsesgK4puHv07t6Ze8XEFIWnIv/2cWA1gg3sDnAA1x5jcP?=
 =?us-ascii?Q?JmyiEhps1KaP7jGZ/4WOz384nXaQ9Q2YtNopdJyjVNyQjUSCF8vi2b58uVvf?=
 =?us-ascii?Q?kzZ7sspPb1pMbGAJ5DNKH50oHCULZ5fhoztNuowzQDSYjaO/Wt0HvYg1rDJL?=
 =?us-ascii?Q?xEB2jKcN5UJTbFVm159zHunMwoEO53mV2KUcXTIDiEFPmKUJ1Xl8oaNZZ+IJ?=
 =?us-ascii?Q?WLSKk4jIrRNfMCQRxM+BvNzgdZc7TQOO49YwyiqMznzKPThnqjQP3esgVL4x?=
 =?us-ascii?Q?4wBiAbADxBALjp5G1VjQVeghFeFlQndssIt4WuLtpbdjSYes5pO8gGF88Nff?=
 =?us-ascii?Q?u1NfTnpm4nE5K8MMNG546eM9jJO38awLmZZDyocaEVgSCpsWpYivVQJobI41?=
 =?us-ascii?Q?DmaUrFQFm3DzAm1rzPmNoPnfQBmOuazN+9lIfz8KkhqhsNcd?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: hvhXNtEuUtf35NIz2z3Rmhno8AkQ+UWb4XhSiQKuYQ+Qt5NJJHimZeCAnAeCtO8n1jWj8mHSt4sXV0TJxKb/cI+glBPfpY9GNGkxb+tTttNcvc4jf06RCwdfExE6rj2m3iRWZT9I6ny4UHDEbdxKZtxb69oCL9ATyrzv2xnhV5tvbEbX3pEnXxZIvgQyrD/39MlelcQbTJ4awlf2ccxucgwqh65ABmZ3BuVw2l3ZoIOTpnl1EWVx5L9OgeoTAJ+hxFbWq4KHwzyD79lolZ8HgAz89NkbeG6kZGw7qNi6XVHd+h4HLoea0LrNfmTAxf9Xys5zOcvnWpsz4M44631XEA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4409433e-9883-44db-61cb-08de95ea1932
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Apr 2026 03:43:01.0329 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CAVK8SyCv+rt06XWahz4h1RqK9CamLl0SPEx5b5SO7en+tCouFnmM/pONk87RDlkG3LWuJr2g5Z0Pxf6o5zAGw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPFCBDC4B878
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775706192; x=1807242192;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=iowBiyXNwEBg+IoGwZyeZDRaY+QC9Yv2lPpk7MYCVzM=;
 b=nhSDREMEq7QxPMJYlmteAbFaVkoHBsAyjlVrX2Fhbg/kAeLswmi21lNv
 RS/BASaKLhlg7OmCec60zoU1sTwN2xSoMNQI8npy8OvpK4EqE5G0DZxQ0
 bnc8fJAKN14kz3M8vEdkyQyT7t02k/3T484D9ZU0ighg2g7FBs+U8PE7g
 63Zs9rRSPVp8z8UH5B8x5QgOAKMpZerGbTHd9VpFdd43W+tY1c5fRbJ3u
 EjzdUngBWSTawTVOZ0/BLL7b+9ud/QgLKR1ddDOwIXo105+Xkg/IIeBiY
 sk29xTy2QCcC6HhYj7CrhqdYMXD7q2OjfGVEMgHINuRq6IVmqBK6WfNFC
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=nhSDREME
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v1 iwl-net] ice: ptp: don't WARN when
 controlling PF is unavailable
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
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:kohei@enjuk.jp,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:richardcochran@gmail.com,m:sergey.temerkhanov@intel.com,m:horms@kernel.org,m:kohei.enju@gmail.com,m:andrew@lunn.ch,m:koheienju@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 5B0793C6100
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of K=
ohei Enju
> Sent: 01 February 2026 19:44
> To: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw <=
przemyslaw.kitszel@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>; David S=
. Miller <davem@davemloft.net>; Eric Dumazet <edumazet@google.com>; Jakub K=
icinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; Richard Cochran=
 <richardcochran@gmail.com>; Temerkhanov, Sergey <sergey.temerkhanov@intel.=
com>; Simon Horman <horms@kernel.org>; kohei.enju@gmail.com; Kohei Enju <ko=
hei@enjuk.jp>
> Subject: [Intel-wired-lan] [PATCH v1 iwl-net] ice: ptp: don't WARN when c=
ontrolling PF is unavailable
>
> In VFIO passthrough setups, it is possible to pass through only a PF whic=
h doesn't own the source timer. In that case the PTP controlling PF
> (adapter->ctrl_pf) is never initialized in the VM, so ice_get_ctrl_ptp() =
returns NULL and triggers WARN_ON() in ice_ptp_setup_pf().
>
> Since this is an expected behavior in that configuration, replace
> WARN_ON() with an informational message and return -EOPNOTSUPP.
>
> Fixes: e800654e85b5 ("ice: Use ice_adapter for PTP shared data instead of=
 auxdev")
> Signed-off-by: Kohei Enju <kohei@enjuk.jp>
> ---
> drivers/net/ethernet/intel/ice/ice_ptp.c | 8 +++++++-
> 1 file changed, 7 insertions(+), 1 deletion(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
