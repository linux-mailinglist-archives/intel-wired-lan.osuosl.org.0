Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A05F9B18B12
	for <lists+intel-wired-lan@lfdr.de>; Sat,  2 Aug 2025 09:34:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 439F3607ED;
	Sat,  2 Aug 2025 07:34:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id g0mc9HlBTDH8; Sat,  2 Aug 2025 07:34:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BA8EB607E6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754120075;
	bh=IJTjZ7UeOZQ8GDHDTNTiB+RdCTWxeOLcYKMQWl0bgh8=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=wvsZ7ARLomRGc1bYvaN8Xv4KH3MRm5jLaKAfUgPcXMB07M8kZej/w9xVYnT1InX9s
	 rHEptV0j/3oPXhGETABnZR4FY378Yq3/3KzrcqziPHhZjCaCRciSNaB9qIqC4BkwvT
	 Mvw+dYt+T2ayMBJaJrQJoXfnyKX8FxZXyJ3dhWL99rZmsW/XNRhdX4ma05/N6MLrQT
	 WS0s6/Er10DuTFnrZqaWSpUN0oZ9MkR1O5/at1RU9uWPlmdli2xVX5iAoyCKpDEMnk
	 u11RTakjg4Cb8EY1Cc3NWzZnMD+iZFS3nbhEgVv30gp8l1Dj9mG4f07x07DYAqlkIg
	 +2EkX1Gpl/2Yw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id BA8EB607E6;
	Sat,  2 Aug 2025 07:34:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 643D3160
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Aug 2025 07:34:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 617FB607C5
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Aug 2025 07:34:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rZD1Dfz2x3vL for <intel-wired-lan@lists.osuosl.org>;
 Sat,  2 Aug 2025 07:34:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=sujai.buvaneswaran@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 21A5B6077B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 21A5B6077B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 21A5B6077B
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Aug 2025 07:34:32 +0000 (UTC)
X-CSE-ConnectionGUID: JYd7j0I5Q56mat5jcrqm+Q==
X-CSE-MsgGUID: t8UUdSCaTwu5CJkDhtz2zQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11508"; a="67826831"
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="67826831"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2025 00:34:30 -0700
X-CSE-ConnectionGUID: ALlm78czRFiOQqoZTJWeQA==
X-CSE-MsgGUID: wxX5LyDgR/SkwFhmD7/5hw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="167932401"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2025 00:34:30 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Sat, 2 Aug 2025 00:34:29 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Sat, 2 Aug 2025 00:34:29 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.48) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Sat, 2 Aug 2025 00:34:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pKGrfr6JRExlSUZSTPjPwRRj0rGQyz18aBzk+S6zvg23ldWDF8y4eSHdA3RmcXtVukwc8fUWr3f4lNUn5JsJ/3qJvSa0L7yu989pmDWst2QeAFa2mcaza0GVDRqSN9Qn7frROsBU3C5y/K/7CI+MN5AaMc/QGrvQ8729qYNKEHjjsXtuBKCroAK+OLScHECozxjWrioRkPKMK6umzQeu6CiVTfY9tjfgIKPallwz2wnIj443y8Cdu+eMkX1yw5tMi6YluHLjMrz1urVRiOcrAAUdTbkWUHzH97AUCS9VM9VLw/n9SvMsQ0kRLzkOgpw0zJfnoNtZKcCgIeSHvTealA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IJTjZ7UeOZQ8GDHDTNTiB+RdCTWxeOLcYKMQWl0bgh8=;
 b=umnzotZjG9eiQET2cm4QC5FzvNLZUQpZV3oLaUmO6ywMZe4ggO97css6m7J6V78+OAc0XRy3CJb+DTPKbeb5vxXvCREIyfGgnqMrY0fXvXhyGoo54X1ar2UmlqwZ9kDwLQDXNE1cJdtRlyEjWfxSc1/mRzq9AlUEG8f21U7lw2ENlaiKhl27I6C63N8IrOvFKbA3oy7FuBQzIcXpfUugGaqepVrfjOyZYuBr/Z0TaYwAGtRIhhwnrAD23SYLuPhuG654w5C1SDToisSFNaIBmhh3wpLN4ojBT7qAu2qedd/tDz67JGLadD5tS2NrNehbFuUDVitVPzGX46RPTWEl4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by PH3PPF1AF044E07.namprd11.prod.outlook.com (2603:10b6:518:1::d0c)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.14; Sat, 2 Aug
 2025 07:33:46 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::1c54:1589:8882:d22b]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::1c54:1589:8882:d22b%7]) with mapi id 15.20.8989.015; Sat, 2 Aug 2025
 07:33:46 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: "Ertman, David M" <david.m.ertman@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v4 3/8] [PATCH iwl-next v3
 3/8] ice: Add driver specific prefix to LAG
Thread-Index: AQHb3vFZDa3WM+cAk0W3M2FYi/JiSbRPQZow
Date: Sat, 2 Aug 2025 07:33:46 +0000
Message-ID: <PH0PR11MB50133FB021DDADD30D03B4309621A@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20250616110323.788970-1-david.m.ertman@intel.com>
 <20250616110323.788970-4-david.m.ertman@intel.com>
In-Reply-To: <20250616110323.788970-4-david.m.ertman@intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|PH3PPF1AF044E07:EE_
x-ms-office365-filtering-correlation-id: 3102c5b8-5a8c-4052-384f-08ddd196ea69
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?6oK52g8pWvuzwZ5+HLrY3EYf/ObomLKm4bTF2tqcLr6NUk6vYGfuIAZ5ci0W?=
 =?us-ascii?Q?n/qsSBPm3zxUie4LEBk/2eZ72jb6wSw+Wgxd/0EhYRppCIyz4Re7dbn/UkHX?=
 =?us-ascii?Q?uPbVtdtG4oW5orgCjhb4WA/2wY0RomBKEWKcFVMGfGkaQ3WOrLHj3R8gU6xS?=
 =?us-ascii?Q?2qz/IelglTfS4d/M1C/Odm9WkrUj6XHZ/9YTbV3zTFLR0zMc3BKxIb92dCty?=
 =?us-ascii?Q?8P1/oPyC5BoSRoqRSJJOJAeX8mP9C1lDrRvk3TVppcxMdFPN+VNqxhX4igwF?=
 =?us-ascii?Q?4OlhUryNqs4VVeCG6p4ZeNirlxjVBgYshTwfpOjOd8SOCNr0UELi4JkbaDEM?=
 =?us-ascii?Q?QIYbIYp0VlgLycUvJX6m1W+9OAvsMLfjCdOSOrjb9ik2ZcopX1oYCzKPvkCl?=
 =?us-ascii?Q?FFRZG1dGURzuzO2jvRqnXhCl1GwInz9/xQ5kmJBXZuTDZgyB9gKXD02wqC/J?=
 =?us-ascii?Q?mVCGLt/WAF0do3oIQ31vJ+X581YmJjTljamrio/iJUremylv90aio7o+ttnV?=
 =?us-ascii?Q?Mbc4FnYcS8gyuXGdo3KXHXHoer9Vi+zEfl1SdHeF9E6OYfpLCPp3MXDBdOSJ?=
 =?us-ascii?Q?0C74/U2JGLBEH65kPYsa+AZC1sUAz69r50FWH/g5V/3oAiCUhMcqcf29pJoC?=
 =?us-ascii?Q?Aj7HxnxphoNwdqkaiM5BeBde4vSyNMqcDimuHcxNIkVFa+aZ3Jjpis/DbrBw?=
 =?us-ascii?Q?T4RojIponthjblJJJHCwX4TpSv1RKI4LmrPv5dJ/b4KyrQRx5Z1Jz2zV7+ZV?=
 =?us-ascii?Q?KOF4GKsZAi3txD3cKIPIdSHW4bRQV6gmWHwkjQyOIeV/SWyG+wG7jhPe/tUl?=
 =?us-ascii?Q?lquAClgWevQuNu23q0e/jJfLTbJuvNO2vVRTskzU72iqwcqSPWsaTktNqNR/?=
 =?us-ascii?Q?dj5ZnVr+8o8ywbRru58mlKcbSJfOOtvKknpb+kfiHn/k+F3i6mnyndmfbyzB?=
 =?us-ascii?Q?jcXIiA0UsvgEhXSHsKIai4Ms5Vtrwi+Z68Xv8Qaw92uEQsPjrEmPPyAbetDb?=
 =?us-ascii?Q?vHeWglT+Ae7JIC39WxjlX2T09n0PelcibKy1lWnaUFnBhHdRxI2vvNgP5qIw?=
 =?us-ascii?Q?BE3IkVp08utIcogjM6HYs5E4QsfsJUuWF8i6ufnwDy6MeUYSnIe2mHGLY5uz?=
 =?us-ascii?Q?lUw5Qhx+0MwY3By1sYvFfGf8NOJvfOnhG6OvsjRgZI/ZCkXxvKyTxBodftIU?=
 =?us-ascii?Q?eb2FmyL1VwZAlEMXdWz1tHHYRA8X/C937LLJMWA0+zGgaujPlE1utslSYsgD?=
 =?us-ascii?Q?o5qx3R5yGdDqZDa68HH2BnKHQCLbiEeeRAJeHGALJ/G0cykgZtWw1V/EeHMs?=
 =?us-ascii?Q?akmgQLXE9OYw1U6evYFZzqUHMKX+zgleU/L4y5+yw47ilASj1vVULIWUYdME?=
 =?us-ascii?Q?fYps98lI3nJqU7Y8H7YZpPwsCc3fY7w5pRACI2kKhoA26hHHlUPb1Mu3iptv?=
 =?us-ascii?Q?5PbPikBZkeLJIfNjiToLkk3c0PIvzeHY2oQz/UW/SPZdQMQbYRfITA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ufpW3n03A2uOynWdNMsbKFMSQ5bRAaBuNSPGQayLgsCrrZHySgnM8r8fzpIh?=
 =?us-ascii?Q?0Lev1o+/k0guPqrtblKkjwJaZiJLI8SdJ0X49xaw2FSrvk/9NFxn8tzjZarf?=
 =?us-ascii?Q?2fyICW3pP4yEby5YEm5n1xEpfOZNtmXuSCZlXvbAglMHSgnrI44JqrsRanX0?=
 =?us-ascii?Q?FQ4zLrdmYFISaJRuN9gwmJtv6pbll6I0aKpilVcDf+1YypGykzaSiStE0m3s?=
 =?us-ascii?Q?ARJMuSm8jCW0qXxUvKkjLWMouryM3q8Xfd6IU9154FtLzE6LLSsZpnQtdSLa?=
 =?us-ascii?Q?s/cRSvKBsDLsAYt2IKrClXy81Qn22A+tOISP9ZAQvYe8boPutAfpJQ4HjdwD?=
 =?us-ascii?Q?vrT0z8qNkCYbpexN+72WDEQXyJL7Nxp45LtYG+VVSnCjAdnSN8Iw7v1a4Nkx?=
 =?us-ascii?Q?djBiBPLx0ral98zy6WV1A5hsNHaQru1z+Rz7JmWrngkuK+iLPi6pL/eV54bH?=
 =?us-ascii?Q?nzOIXRM1XBkNYU9fBaVBhXw/piDpAMl2jCnTepM4jyjk5tPSR0OCN3JWsPm/?=
 =?us-ascii?Q?lTm7W4j1z7Ix1ooQlr2FGrnJCn1q66Kfg9Vo+I+lyecXr+oeJ7h7tKznbucs?=
 =?us-ascii?Q?TAaf3qN6GWu/lfKRtL8ar7MJFgG6bgShJi4jJX43iN1uQkEPbwxFvW/5XH0X?=
 =?us-ascii?Q?RVWUKvyu6lHnbb7jIXI3mYYOrxf6dw/XnC+MPFceETkJN2m7b/km+NR0ZVWc?=
 =?us-ascii?Q?cHIfIkpSTBUJNC+sMOUoLj7tGIUd7LbbbAvVL30R3RaZOQbpBGEYGfzHggdO?=
 =?us-ascii?Q?jvxuPCf1C+FlZFZxgNYvclbOm9M4WfMQqXVZF8FaLdj6uTn8VU6z4YNsAz/P?=
 =?us-ascii?Q?EbX1WeN4gYvYarZm+JyHUP2ixy5vmYorbyxtGM4r9LAR22uKmbx7bxdQYFF7?=
 =?us-ascii?Q?Cf4H6W469qf5jd+20vr2WRKM0CNHLcDpSdg4RfNDEhYSAEfI4LsLTLxr6fFE?=
 =?us-ascii?Q?ZB2zg7b6w5zEPg0xLzw9BONbXWKwWFn8f6ED5ICJSqkZVwUaARSP/sRwbVhs?=
 =?us-ascii?Q?2oNVMP0iy5KNPDqtjDIPXlNUfuCQlAwbqYpbu4SNG7HeZasJ+w5I7rgCBt3p?=
 =?us-ascii?Q?0/bX5Z0C6MZqB0uh6EKwPC/ikuIpPnlBruzTVsGWvY79v1F2dND5arAgAQz3?=
 =?us-ascii?Q?GQnTz7iL1H4CfdSnZJlIztVNvqYPlFoYnFd6uds8wo7rxLqyweItOA4IdYRr?=
 =?us-ascii?Q?l9CguW5zIBz7+J3gkVuroLOjLtBR8MpHuhz6YRAnC2kRjnX/SoSa0XjE//ap?=
 =?us-ascii?Q?kYjUg8QnIUG4lIfnxThVasE4wHf79zMi/NLD/nnpOiZc99nCvB26060Fd5Jy?=
 =?us-ascii?Q?pYQK2x7ClI0q9KilUzfv5d4QhTuEQi/b3j7+ko+51AaO+C85OYdshBSnXF3g?=
 =?us-ascii?Q?32ELZExTYt50nFHorLp7Hp+KBg/uC5PQxjo+4FCgQthIXK9+mGvGQdNAb9OK?=
 =?us-ascii?Q?pRfChy1UzhKDuxZ3rezEm7zBRAfP8q0Ga/iuRQks6aP/OzMu5/pNzUZbs1pz?=
 =?us-ascii?Q?UdTSiXhOMkgtLY2nZOaL+reHT7477TUa7ilGt5lDoCc21pDDIXXI+syWYQgz?=
 =?us-ascii?Q?YS7X9OheLGKWk2/Nzx8sLzIS2e12y+5/oEEb2584O+j6NY9beW5YJYpQr/25?=
 =?us-ascii?Q?KQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3102c5b8-5a8c-4052-384f-08ddd196ea69
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Aug 2025 07:33:46.3914 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BXGCP9vjoHaU56Tj50skTYR6yFzvencpYGqMfhrARTzVRpkhVE9rd4dMi909qEyzEDs6U5o9Iw1ldxpnMwt1BRj0xAsINySD2IeEAgpZLdU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPF1AF044E07
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754120073; x=1785656073;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Xcb4cJPjTjmzJmzsKBPRV6RnXP5ej/JCcJY0bx0Qjuc=;
 b=Y0Bbq8t8gSs2Y1fyQ35X43+d5fBpJF0Ffc1lQdOKyUiw4SG468vTRdW7
 zZUxeUZGrba4+EHYW1sad1ma47IdbMQT4rBz09nMlb1Gnbbap4Tik+Cjv
 X+HmnTaNCc3X+hIwBLxo15YrP5I/cy627+hbk42HAW1sj8Mkfh7iOywA0
 DyxMH9TxPngJUyOM/WC9oTvHYLN3FFWL6rh+F9BGqc8ZM3cTyY/iA3wxr
 qJAvPClRlqD33+Ru4nHPQBZ0Ny9osU575gnk+1ilaLN4iey3myQg/Ku7r
 Hzt/FbPNRurg2Hk3N38qaxaUVIRcApEM+qEALS0YyPRH3a4sewX1uRQNy
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Y0Bbq8t8
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 3/8] [PATCH iwl-next v3
 3/8] ice: Add driver specific prefix to LAG
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
> Dave Ertman
> Sent: Monday, June 16, 2025 4:33 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v4 3/8] [PATCH iwl-next v3 3/8=
] ice:
> Add driver specific prefix to LAG
>=20
> defines
>=20
> A define in the LAG code is missing a driver specific prefix.
> Add a prefix to the define.
>=20
> Also shorten a defines name and move to a more logical place.
>=20
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lag.c | 20 +++++++++-----------
>  1 file changed, 9 insertions(+), 11 deletions(-)
>=20
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
