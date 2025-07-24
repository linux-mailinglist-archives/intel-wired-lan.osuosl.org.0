Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DAA5B10BCB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Jul 2025 15:44:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E02194131E;
	Thu, 24 Jul 2025 13:44:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SWYEMtAsCWWC; Thu, 24 Jul 2025 13:44:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0099341334
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753364646;
	bh=liS8byiN4UzSdaGSJ9X8wyQ55Z1RVQlMaHtZkbRCGjM=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=cBImuW+5g2fbBPbu1y63PHaV4FlHerPIWCaLG6kKHHam4v3KXO1clLrYlEyq1CvUZ
	 B5B+DNZtWVHpKh0xZPyQF4MV005bYSoQC/XDbcOtId9iT7AEsbYaBEzcWG3nU9j/64
	 oeVyU2AKmoj+cz/yUNIc/jnMgCkNwEcep8uh+xMfRXDnA9W7n3DAvFJk2GwCXKORMX
	 37rZbBvVmcdE3MUrtqCJ8Hlg5cuXcwmhBnG5QMM/fuu0+yN0ICemTVOMntXmpmLDFh
	 CLIC1LqhAiNvf7apb8m1D741eZJB0n7X/KfckOyQ8b5Ynzz+Hrq5cej69Sp+43e8Gg
	 UFKVjpRyJdtnw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0099341334;
	Thu, 24 Jul 2025 13:44:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 16904DA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Jul 2025 13:44:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EE5134130A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Jul 2025 13:44:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cP9jdN8-A60G for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Jul 2025 13:44:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org EBE94412F8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EBE94412F8
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EBE94412F8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Jul 2025 13:44:03 +0000 (UTC)
X-CSE-ConnectionGUID: EqRh/XbTThetZQ3oPR0PfQ==
X-CSE-MsgGUID: dvvOM6wURwyYE7dNLaqUbg==
X-IronPort-AV: E=McAfee;i="6800,10657,11501"; a="55553064"
X-IronPort-AV: E=Sophos;i="6.16,337,1744095600"; d="scan'208";a="55553064"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2025 06:44:04 -0700
X-CSE-ConnectionGUID: 9BjWyBFpSKGNVCUis3HkpQ==
X-CSE-MsgGUID: nbDuFLU9T/K94IFOrjw7+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,337,1744095600"; d="scan'208";a="159822044"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2025 06:44:02 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 24 Jul 2025 06:44:02 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 24 Jul 2025 06:44:02 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.68)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 24 Jul 2025 06:44:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=U3xWfIMmll2bpbzXPZA4+2a0B7alvQAuUpsOHOPoztkuyUpmOlVeWtmoCGNFPNdfX++SvsphPiTV5MNf7AVvPsKmP62kaU3+fR/lKyzNi9c4x0gbJqwDbdAkr/2DMVeCw8gUCQSZOAHk8u+8shAOMSwA4mmOZSt4vuv128P2/a/t2z0xOseSJ6MHcsUG9xm1Vcq+VyqxXOvOS4aCVS0oPQyFfT7xK+PYeJ8XduxXvKksbP3mCMhMsXjKmbIc8dPC9FNKDDUrhv2v6HbUQ6+Oijr0NhNY3OyNWOuJCO22e/B6JuwtI7EHIaTtRf0Ys1BH2Xfe6+jUNyO7h5XBcI58Og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=liS8byiN4UzSdaGSJ9X8wyQ55Z1RVQlMaHtZkbRCGjM=;
 b=jVncBVG8XQ/puMXgHZ7m8Y1qE84dIepj0Z9L9WyclP+jRE/F7Ewu6b0MnQ+z+QBdqKlmGcYJ/RiNyfceYmaMx1C2bgGXPH7mfKrr3ZfEuNcsStc4MUApMxfUtrohdfVT8WESvY24tA4x12ktT60dirYb8pJx48+uJD/P2I1Y2pCZy/diaVROJndJ6rHK6zvLLJZuOrIIEOpCpw9/RCWgl9BIts/gNQV2IR9kPOp9Qt3Wyc5qW1Xz0zJz67yQJwIeUOb/azzwTBcYkFmysh01JeOU5qIjt/Xl5UtyVzem4/Mjyg9BaDp72Lqk29RkDqOA5YdudkYoBGSgcsMq3Yyj9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SN7PR11MB6875.namprd11.prod.outlook.com (2603:10b6:806:2a6::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8922.39; Thu, 24 Jul
 2025 13:44:00 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%4]) with mapi id 15.20.8922.037; Thu, 24 Jul 2025
 13:44:00 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kubalewski, Arkadiusz"
 <arkadiusz.kubalewski@intel.com>, "Korba, Przemyslaw"
 <przemyslaw.korba@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Olech, Milena" <milena.olech@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH v8 iwl-next] ice: add recovery clock
 and clock 1588 control for E825c
Thread-Index: AQHb/JaXJJ6a9Z+VzUmZvPalwzcpHLRBSK5g
Date: Thu, 24 Jul 2025 13:44:00 +0000
Message-ID: <IA3PR11MB898644529A711CF9228CB65DE55EA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20250724122736.3398010-1-grzegorz.nitka@intel.com>
In-Reply-To: <20250724122736.3398010-1-grzegorz.nitka@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SN7PR11MB6875:EE_
x-ms-office365-filtering-correlation-id: e96c586e-5571-4610-e698-08ddcab8251a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?pVpyslCnIgD5gZ7pmoNX8pAAYJ+NI5mEMNHtSDGhHf4cLAKKldYKQxgoxFAY?=
 =?us-ascii?Q?0kpH5JcpWX+zOf+NkpoDfjmVOYhsTw6Ml9afn2VqGMNvvSf0wgxOuFY4Lvaf?=
 =?us-ascii?Q?rFS3TYSkxlce3Pj8Ha9f4ez2tC88mg35JKkCMvtSdiHW4z4y9i9g6wGlPf/I?=
 =?us-ascii?Q?p0VRGJU12NDAyHicX/z2TgcJdXhbW3hYRhFL9FZGbGMjlg7Ph41qvVelvX70?=
 =?us-ascii?Q?bRxS9m1JU2vnLcD9zYs22TEe3xtohz0TefY072685PIzni8MrmIlMJIa6ksD?=
 =?us-ascii?Q?Unhs8WwmWIhhAtl67jF6wjnxr/a2sRbWW8+/vF0tZprxP2uIfs2/g7dZkzxZ?=
 =?us-ascii?Q?1TluLwMoE7la7IQ5f4TMbM1YYAHvwvJ7JweKZPXXYrArBQWVV4QqjVJVdZDJ?=
 =?us-ascii?Q?uoZf3XMg9MgdRTW8fx1icG6DASrc84ANsXi+rRcvNZwrUAtWut71zZNxC/+t?=
 =?us-ascii?Q?kCS4zts163TLxIc0icFNhmzdnE8dD7hrPDH2ekZVi9rEOHDqu09wPBjUUEfK?=
 =?us-ascii?Q?58335B2vQt0ZBt+R2eG1sqS/+l8d1iQyx12G6e21byOizI9OFivio239jmaL?=
 =?us-ascii?Q?EjLclyps37mLtTjGtxOVo3IhveXOTJyBeSQ7vgYs2GDdr+WNxUrYdCg+ZnDM?=
 =?us-ascii?Q?zpT4/JJvyUYepNYOZ/5ClK6OndFKuRYt0CS9riRtuUIy9gdErq0L9sxhRBC1?=
 =?us-ascii?Q?ej4zehq3PV3zQxYqCWtYkg91jXx3/UKBB9XJXAslsEh7/B7keOZlFju3uR7l?=
 =?us-ascii?Q?PP+gonSSCYmhsfEptClH5F8uhM0ly7H/5rQLIuqbLpjgVvTzJpzCYKe4vERd?=
 =?us-ascii?Q?ap8jM2sljf+Qdngj8dNtDUTBxRzC6DXZgA8ou/a4LhN10foV4SRaWeyWh8Ct?=
 =?us-ascii?Q?st1O3KeVSZJG5MYymlNWSnr8JPkFdsy77uIxkv/uXo3A5rcHTkrekGbM54a9?=
 =?us-ascii?Q?T6ceperslnN1XRN6jmcfeLJPtuO8FyIdGm6gjg+L2qQcHVba0F2VI1V2o8S0?=
 =?us-ascii?Q?iZsTTr2ZXWuWD7/oZi4hVWs36KVdupc7thlG2HGYDFQjNHZ3aTeIxp7N6LE+?=
 =?us-ascii?Q?Rl/xcJ2tmd43i2gY0oiD7dYuC7Y/z9mB1eJmqYtE+YIZ2hGoMQeOrOzFNsOx?=
 =?us-ascii?Q?jtEjCvknaiYt4zZG4RUpEXIIwP1VxA9sB5kIRwd3GXXZa0xVK3JIA6jECh66?=
 =?us-ascii?Q?WeuI1BIHD5fBNfoXphUG3Jp6hZIwnivUlgyQZSkj45+8HzHcRFBfT7yhDfj5?=
 =?us-ascii?Q?QDx0m0kE+MsNDxuug8vuoS1Gw2JnqKr3A2s8/kC+zxuQX0TPJYqVgtEv3Xc7?=
 =?us-ascii?Q?F77gHLZNbvB/XXmmcZq7C5UWWQFnpJm41f+Pia5lui0aE/suDNugs2DczADF?=
 =?us-ascii?Q?CJxa4WE49QL9Oi1i1XNmXHm/Vp9oMVYw070xaYTpf2NP6Y/NEAevSub4TTV8?=
 =?us-ascii?Q?nHSQ29xnBb7SR1GrZU3VAh0FapRwaCob4OSA8Agak2KREVrPiiSrfg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?q04IUs+sKRgzbXOF4tg3leoHHy49KZ+OHDrFkMmnXGpxdUCHGSuHklC/EHMq?=
 =?us-ascii?Q?mf+0oC181mPsddYmyNdVXPThhirsB5WOJrk7aC0DrZDowmJt1Sb45R4Z5XeM?=
 =?us-ascii?Q?QMVbNEfv3hGXvdxO2krRG1h1d+gtZwr77it+sApwxW+llg6iVfuTzDINQncu?=
 =?us-ascii?Q?spije1wmWyl1pc4CYesKUatlvRhZIfOnB2kVZOV3q/WSg9O0eJQ1iDkcUlCm?=
 =?us-ascii?Q?CsTLSqrdVpouZ0w8lq4pT2xXsRob8xLsGdnRNKM6F97RQpCRW5hETKUV8wEn?=
 =?us-ascii?Q?IWD5Bci2wjQzAw2pLPshij74zasWLn2jp+Fag1ck5E/xFwt9EFVx7R/6zpvx?=
 =?us-ascii?Q?fOWihX00gX5Dsw7XmSEIgcWMnR2Wnb68kknKCWp3z9ATY3uP1WUstbeJhmtj?=
 =?us-ascii?Q?DhkfDLE08qtSwzQ1JkR08XZw8RH35FRfmuNOCP5FTMUSgikmWJ9z+Bg2Lls8?=
 =?us-ascii?Q?HZZ6Gjnc9MVwTKcT8eMWIn/ThNRtWheuY3m8DG132/mGjL8QBCXew5bylrdi?=
 =?us-ascii?Q?FnCbhGh8cp9Se2NZnAI/UI2WOe/Me3M1crvBVepuP7gLZP4ox6YYR2hwz4Zl?=
 =?us-ascii?Q?LIeSI9xf/aeT6tRdgcrBOEKQMe2yJd4uforB9LNlrHu8lNoYzXA03tza1iC0?=
 =?us-ascii?Q?iQpiugRxoNBz3sVw9ViklQgZeBENwG1VWWD/QvMnbj6EeUD6JUHyO1+b4IKv?=
 =?us-ascii?Q?Xbirha7Eb78iMavu4DCT1zkHaUHebY7lC64m7OO1dOEwIh4Bh2ImE1eoAVMb?=
 =?us-ascii?Q?HIbzV1FRF/UIzW5sHvW3zpfjvoHcNrir8XZvQ0SNz2qzQLxMR07UmPVku6J/?=
 =?us-ascii?Q?DPb2fKWvEnaBkB+DjiZCZi0UZ+5tuJHlcPvrUIs2qggZpU9nIgxRiDomV5nx?=
 =?us-ascii?Q?nLy/JhVyb8iavxhnP50iID0+Yg/mxWLVMCwg6XTOtrzcpiL1XAJfZ0sQKLVV?=
 =?us-ascii?Q?p5Y6osrBy520TRggeBChVApudQadmDmwaSpKHbxP5TbYwDeZCwWz40DtJG1c?=
 =?us-ascii?Q?r/6LnU9bdpqkDEnDJmFLtP9TnWc4brpRVwS0Jbxstmbs2oab9KKL4GZdHT/5?=
 =?us-ascii?Q?kNHdH27PQcjjyrOwole6s06ODbQaugIoDS6NzpnokBrRkJ6hE54buBJQIXku?=
 =?us-ascii?Q?jWUk0urmLqUrA4pcywifS/aTQa1rBYwkxzbVSzFlChHwzsFwtaA4gpIXMWCF?=
 =?us-ascii?Q?je2nzvkxXsJ0uZYa3ptnwdY5b0KqvpqNWDE+beFaYccmc9R7yRk3s+xV/aJP?=
 =?us-ascii?Q?gTJdcyr9gzZIjIIPmxbVkXowez10wmy7kDDcNX/cUnd5Z+fPx+JiEoOgbfGm?=
 =?us-ascii?Q?KKl/aFLeJU7Zuc6RW7b/4fOPUOqUBJj+n73cETs9HxRqNkvaY7LWyIlpQ6wc?=
 =?us-ascii?Q?4BOp/oBlTBMtGKsQvbr3+Va8rHh0PmK3Un1d0sfkocYQ4WdXHiB3kmzbaCq8?=
 =?us-ascii?Q?wUQSSz4OzKA5Qcd5dxT+U3kl+TQTY4Br7XMqN9vu/jSLOohEkC/dU8rZGz/c?=
 =?us-ascii?Q?8LOJtW1w5Cs63pMLuaw9AI9AHt/p88xIOwNs/NpDxr8YTiiqcGSybqtFF52R?=
 =?us-ascii?Q?HXYNn0qaujoOgQRzkkQjOD2kPTJu99n7GLcmcLYKzEwvC0mUOqq3KRXpQW0j?=
 =?us-ascii?Q?uQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e96c586e-5571-4610-e698-08ddcab8251a
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jul 2025 13:44:00.1459 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qYSCOc54GbyndN39DSyKYb0xZInduzpSF+t5PaTOt41Sfw042rAemEWJcpMl3gOSLIJCU9YFP7SkGZ+NtndHXYrCBxB8oIDAkE84s7oKbdE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6875
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753364644; x=1784900644;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BT3VlG8FYImaP8VvMq9/aOK3axUO/ul9WegFe1kchEM=;
 b=iwH+QRREy6YhcGewFbrJZ5Y2NKJViGzwlsF+oqENG+QLeyg56SNMO9vc
 e8TCO3pIBvEpd2d/TV66Gh1ykYEu//OJJ2L8dw8hI8NPwsEq/sTulYXAd
 gK6NFD4cR2DJlt5sew5rNRlTp3z9Kp/DNChdBXEZ/UhN3/XfJHQvOHkyY
 1Gr6Tq9K9tzsw+MgCvXE7tASzl4ypwCHi0OGOstIO9VXaP30pB86MLrSp
 +HbtjS/q1LxoBx+6DmqyFQooBCXpSWyRAFvzKwaQ+4JULOVz526EkbvZd
 /jVv+SSAIa+HEXSVeMB+VUY9xaI1gYEvIU5gBbC56RV9JK0xHGxR9SlzP
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=iwH+QRRE
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v8 iwl-next] ice: add recovery clock
 and clock 1588 control for E825c
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Grzegorz Nitka
> Sent: Thursday, July 24, 2025 2:28 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Kubalewski, Arkadiusz
> <arkadiusz.kubalewski@intel.com>; Korba, Przemyslaw
> <przemyslaw.korba@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Olech, Milena <milena.olech@intel.com>
> Subject: [Intel-wired-lan] [PATCH v8 iwl-next] ice: add recovery clock
> and clock 1588 control for E825c
>=20
> From: Przemyslaw Korba <przemyslaw.korba@intel.com>
>=20
> Add control for E825 input pins: phy clock recovery and clock 1588.
> E825 does not provide control over platform level DPLL but it provides
> control over PHY clock recovery, and PTP/timestamp driven inputs for
> platform level DPLL.
>=20
> Introduce a software controlled layer of abstraction to:
> - create a DPLL of type EEC for E825c,
> - create recovered clock pin for each PF, and control them through
> writing to registers,
> - create pin to control clock 1588 for PF0, and control it through
> writing to registers.
>=20
> Usage example:
> - to get EEC PLL info
> $ ynl --family dpll --dump device-get
> [{'clock-id': 0,
>   'id': 6,
>   'lock-status': 'locked',
>   'mode': 'manual',
>   'mode-supported': ['manual'],
>   'module-name': 'ice',
>   'type': 'eec'},
> ...
>   ]
>=20
> - to get 1588 and rclk pins info
> (note: in the output below, pin id=3D31 is a representor for 1588 input,
> while pins 32..35 corresponds to PHY clock inputs to SyncE  module) $
> ynl --family dpll --dump pin-get
> [{'board-label': 'CLK_IN_0',
>   'capabilities': set(),
>   'clock-id': 0,
>   'id': 27,
>   'module-name': 'ice',
>   'parent-device': [{'direction': 'input',
>                      'parent-id': 6,
>                      'state': 'connected'}],
>   'phase-adjust-max': 0,
>   'phase-adjust-min': 0,
>   'type': 'mux'},
>  {'board-label': 'CLK_IN_1',
>   'capabilities': set(),
>   'clock-id': 0,
>   'id': 28,
>   'module-name': 'ice',
>   'parent-device': [{'direction': 'input',
>                      'parent-id': 6,
>                      'state': 'connected'}],
>   'phase-adjust-max': 0,
>   'phase-adjust-min': 0,
>   'type': 'mux'},
>  {'board-label': 'pin_1588',
>   'capabilities': {'state-can-change'},
>   'clock-id': 0,
>   'id': 31,
>   'module-name': 'ice',
>   'parent-pin': [{'parent-id': 27, 'state': 'disconnected'},
>                  {'parent-id': 28, 'state': 'disconnected'}],
>   'phase-adjust-max': 0,
>   'phase-adjust-min': 0,
>   'type': 'synce-eth-port'},
>  {'capabilities': {'state-can-change'},
>   'clock-id': 0,
>   'id': 32,
>   'module-name': 'ice',
>   'parent-pin': [{'parent-id': 27, 'state': 'disconnected'},
>                  {'parent-id': 28, 'state': 'disconnected'}],
>   'phase-adjust-max': 0,
>   'phase-adjust-min': 0,
>   'type': 'synce-eth-port'},
>  {'capabilities': {'state-can-change'},
>   'clock-id': 0,
>   'id': 33,
>   'module-name': 'ice',
>   'parent-pin': [{'parent-id': 27, 'state': 'disconnected'},
>                  {'parent-id': 28, 'state': 'disconnected'}],
>   'phase-adjust-max': 0,
>   'phase-adjust-min': 0,
>   'type': 'synce-eth-port'},
>  {'capabilities': {'state-can-change'},
>   'clock-id': 0,
>   'id': 34,
>   'module-name': 'ice',
>   'parent-pin': [{'parent-id': 27, 'state': 'disconnected'},
>                  {'parent-id': 28, 'state': 'disconnected'}],
>   'phase-adjust-max': 0,
>   'phase-adjust-min': 0,
>   'type': 'synce-eth-port'},
>  {'capabilities': {'state-can-change'},
>   'clock-id': 0,
>   'id': 35,
>   'module-name': 'ice',
>   'parent-pin': [{'parent-id': 27, 'state': 'disconnected'},
>                  {'parent-id': 28, 'state': 'disconnected'}],
>   'phase-adjust-max': 0,
>   'phase-adjust-min': 0,
>   'type': 'synce-eth-port'}]
>=20
> - to set PHY0 clock as SyncE module input $ ynl --family dpll --do
> pin-set --json '{"id":32,"parent-pin":\
>     {"parent-id":27, "state":"connected"}}'
>=20
> - to set 1588 Main Timer as source into SyncE module $ ynl --family
> dpll --do pin-set --json '{"id":31,"parent-pin":\
>     {"parent-id":27, "state":"connected"}}'
>=20
> Reviewed-by: Milena Olech <milena.olech@intel.com>
> Co-developed-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> Signed-off-by: Przemyslaw Korba <przemyslaw.korba@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

> ---
> v7->v8:
> - rebased
> - removed unrelated changes
> - change pin_1588 type to DPLL_PIN_TYPE_EXT
> - use ICE_SYNCE_CLK_NUM to determine the number of rclk pins
> ---
...=20
> base-commit: c4da238c4a0f62bbaa055f9d85559164df82bd07
> --
> 2.39.3

