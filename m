Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id jCHNHXGkM2pgEgYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Jun 2026 09:55:29 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AAFC969E3FD
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Jun 2026 09:55:28 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=LUviI8RO;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 04A7561073;
	Thu, 18 Jun 2026 07:55:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VPPNG-1E7sRN; Thu, 18 Jun 2026 07:55:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4B2DF61098
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781769326;
	bh=c93bV5Ed2hZJLTorjnJbgQ5rXC8LYkW3LnjEO+0qg8I=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LUviI8ROw0ceQwshbTfTOX+sQf/rFHIaxk022BLmYCckYUypzHCKM3cFYkH0XQyxH
	 lVW0CjabxLNAFZtxwRX0qKmY3SOdaUoySHmdk9XLv9Q3WBLU4+krnIBDG0LrlkFYhQ
	 zl50e2Rkd2+2bbRoVzuWplt7PxeTT3MUGddR1Gx6PoaU2auUodir8T2RMNJTPnr23g
	 XXib4jc0dztCHcUNoElyn+EBqZ4Nq1i5EitMpr6QP36M18wIeYvP/j4RqrpCL0i6Tg
	 neeF+Pc1MGKyGXYJjEJT9CuSKvWvicFbmvIw6yRcR2vqpj2AV4L8DcQlSuQ10Ukiva
	 wuHRllsKx/RCQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4B2DF61098;
	Thu, 18 Jun 2026 07:55:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id E8D3F131
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jun 2026 07:55:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A5C5A4054C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jun 2026 07:55:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VhuGPMcEO1Ju for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Jun 2026 07:55:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 82C3440531
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 82C3440531
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 82C3440531
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jun 2026 07:55:22 +0000 (UTC)
X-CSE-ConnectionGUID: lYCeYhAtRfCnATXUB6Sdng==
X-CSE-MsgGUID: 6tNOplCbQO2wrbq4b1+V4A==
X-IronPort-AV: E=McAfee;i="6800,10657,11820"; a="105396525"
X-IronPort-AV: E=Sophos;i="6.24,211,1774335600"; d="scan'208";a="105396525"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2026 00:55:22 -0700
X-CSE-ConnectionGUID: fF5Ku70PQSO6KVZskz/N4Q==
X-CSE-MsgGUID: em+HDkTVSluyuHZyu/Clpw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,211,1774335600"; d="scan'208";a="247151169"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2026 00:55:22 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 18 Jun 2026 00:55:21 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 18 Jun 2026 00:55:21 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.32)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 18 Jun 2026 00:55:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FGOQYe62X7Sbiiiaf31+WpxJaagFZzIXQVCnscPIOTEmEyGv6gg9EO0n/7r/slDZGb8/5iA30xddimioyKh7zjl/CQ97tkmepyosEMfBAsf5a0AxxAx10SRW2G9jRi6knaBnJoBO1j83wU/tytTHVxcikuJPz9be2o6z+KbZk6lgW44GNLwecBCjtoP7sSddTvgJfHMNSgIIci0NearyD+dNwGRM9bI7/1TX/djoVxpWOPvV5QVdwmf4IiU38jEmvUG1KBtDgL5YaWwmn05nkI2GmGfxb/yzuyBX6ZCuVYKNn2LZzkDbp5qA4YN4ZZ8WPqf7xtyKnxx6BJS8V0YRyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=c93bV5Ed2hZJLTorjnJbgQ5rXC8LYkW3LnjEO+0qg8I=;
 b=Ar0x/Dvj3DasHYyTBftKqOZZaUNH9O6wN4tVM3yAdENPlYgJdziIk5uTadqh917S/RUK1Iqyc+DH/R40n5hrQ+AtB3EYB8ijZonaudX/6/on1+nbfyfgWIFilaqBT0bUJfVHc3iBdCPbQbmQx4M0GO5T7VU/Ds9G8UEBbqBovqX6OJ6hhKq9NQViRSFqWeqYpYGNHpUMPdhZM3N2izicW9O1OHHPgg2WgEvrWZVlll0xsUYNwmMU64u3o+boc3qRPT9GXncEMmVfW0UHc44U8HkvG638xaJ+S9W0Es2H4hSpTF7ygrPqKG8M4wF4Qy6BYsLZYopmHDUmd4ZHd3kWiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SA1PR11MB8351.namprd11.prod.outlook.com (2603:10b6:806:384::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.139.11; Thu, 18 Jun
 2026 07:55:17 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%6]) with mapi id 15.21.0139.011; Thu, 18 Jun 2026
 07:55:17 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "kao, acelan" <acelan.kao@canonical.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
CC: Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH 1/2] igc: Wait for MAC passthrough
 after reset
Thread-Index: AQHc/vTUlEkOP48iDECS1E/JP5nT7bZD8Vzg
Date: Thu, 18 Jun 2026 07:55:17 +0000
Message-ID: <IA3PR11MB8986B77F49DF672178FEE4BCE5E32@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260618073324.1843310-1-acelan.kao@canonical.com>
In-Reply-To: <20260618073324.1843310-1-acelan.kao@canonical.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SA1PR11MB8351:EE_
x-ms-office365-filtering-correlation-id: caa66b2b-ed27-4b89-242b-08decd0eefd9
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|23010399003|366016|376014|1800799024|11063799006|56012099006|5023799004|6133799003|18002099003|22082099003|38070700021;
x-microsoft-antispam-message-info: BC0jvGF7iroZW4GX7cE65mqUC6KTk3ks5yL1juP7/5Dk09Foo108Clj0Adzl7UcGRynI8cxQp/gV2/bDyWLikxXlWO7Znq4DvQ4Sc1LiCF3fUu0/AgeppbVg2PnUGpdMVH72+OQQ9ddMUDOcajz1g6YS52O0+AxgJlDOLz9PK+vuDUcIuyNUqOWYloslZhIh8kjZYvtN+LmeJejPJ35lcF+4LqmGCCLwXnCDFUCpHpzJD5LzYdn2UJ3qoAF2PxgoriUk9utUKQDW6cSVi16H14FRKHKs12RSc8W5wDhwj6qldZS/FQgQsaeUUiXiESCYo4uKcCPFNkNhLFgpKA00YTvlBLlGDFfB21t2g+5XNbndv4FbxwxsvD99UV2WEQsX0CyDJkGwPQqCUQDwsyKDd94Jal943EXWIjekDPGwfbvZNM49g2fMP0aI8Rq5Z82/nPfN52F+wyvFdXcGnPu4gWUf0+vIlED1V7jpQaMObXSYr7KnQl/zUegVDJwERIWC3poLY5Vmr4ZPmmhoXnJD4DKiWtNgwSFo562PG1l0KAle9CtzS7GbCmN3tAHb/hpJBdvOe69vshO7GXHS37pU2Yj6AK9YtgTU4uh7z9IhdZ+Qga8ESQqr2ML5JBBz7XOEzGdTD9VSBpXXtfvbfx8C3UqTsY0RtuwggA5NYq36JW8qy79r45chIc/J+nPKlSBjwYmop+D45Erj9XzP2VA39I4WYsrTEC2cnxjjm+hEL26n0aS+larM9aUN6gibWUOM
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(366016)(376014)(1800799024)(11063799006)(56012099006)(5023799004)(6133799003)(18002099003)(22082099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?MrhVX7cZ+F34HmVahclzBwe2odEF9a7OoSoM2+loeEzUlIx/e5g4G8W3+6Wz?=
 =?us-ascii?Q?MEFSXTWxDmi6T4/1dd2Oqwd4H8UpBYuVQqoG6HQmFmHh0+NQshpx5/UaqVC7?=
 =?us-ascii?Q?cGHbj6t+8zRz6yYemUw+1xkR9cwh9Wg+SaUyP1LNF2b3h56UnIABzdt8NB57?=
 =?us-ascii?Q?cXJJ5CMaqz60dNmtqTRy30LsfX85PjUKyumgtEQUYWSMxIe0S4HMQgGHSGBc?=
 =?us-ascii?Q?h7VYUxilzLQKBoiG8Q6Hhco5Bg2tYx5unXEpmT/6ATvTopjJ3dGHodzxOOzo?=
 =?us-ascii?Q?NgOtGBi25s7B3lQWq0lbujd6SIHC4O5CMfSiowPrN1mN7IH0x0vUkD44PyhH?=
 =?us-ascii?Q?0hHvBr2lUhWXDUvoA00TjGALfhOYcLBz/h50e2m5Y7sqmUoa0G3j9yNpAk/r?=
 =?us-ascii?Q?7tb+SxnUNSfTd3pBr/h7fJhEf6g13ukzAR+BhUK8DHx2HkTvJTkCAU/pXuBP?=
 =?us-ascii?Q?+DzTVR3Wubk5xw1nRKkKkdXKSA0R5jwyaVSYt8UFWDBpI2gpb9gg6DIoHf70?=
 =?us-ascii?Q?/uLuMK1b4peVzW9ZbRVm//LVXmR46IwG1TTRceJj0TkHdDlWEwFkb+HqmB/7?=
 =?us-ascii?Q?MzDQfux/Eik/22YzU9WNoRMag5Fu7BXHo/HXzMapEmURjoK8h7GTCjoS061O?=
 =?us-ascii?Q?yAZtsaUCJFNjKdZ6BNoPI4sfhY0WQzVOvxbnMIKW3Uj7FcKiGJ1DgcBD0RZh?=
 =?us-ascii?Q?yvm6vt4ILOVr5WAvRlw9jA5Op/OlN3EIOj9s2qgeDwRIHsxWgKXezFxGK6oL?=
 =?us-ascii?Q?8M9vV+GSFmQ4MUSgq2kpD0n9qHVikYElUMySCgUBFfDR3Iim2ipB6pVDsk3Y?=
 =?us-ascii?Q?8SD7b4QnKC1FqaO0KmeE4N8rHxbIa1Zhpd7saaeu8FZnBfxYGjj4YmMZU/hJ?=
 =?us-ascii?Q?WtjXiM6JeQ2a48Wnzni7Zv8wWcPIZCK6yZYtVy6NjsneOfdahDUg8FmswbP2?=
 =?us-ascii?Q?b1LjgXON7rRQqmYg1JzUOK4qNm7adc1zZXkiBPRM0rnLLNAfggrqPF7cUm10?=
 =?us-ascii?Q?IPFQdYDMxvv0Uxl2/yVTlD3BLOZxN3QvMhfkBT7i3DogCC3k0MOIJ3AlQyl2?=
 =?us-ascii?Q?e7Ip5Dh21IdtvllbSwY7lJtk1GtEcU+GkJp7Wwr34Tsf+PhlhDxjLbjxr0FF?=
 =?us-ascii?Q?+c/0bzmOeZ7HEU3cGNW3tuTVrup+XwnSm7HIAwRkCgrs3CQ/5sChULAjXtpc?=
 =?us-ascii?Q?3PGcJ7RKLGo39mk3VDHr6UY61fkD0z/5D8IFPydqftHC+tSJ2VeZfG6wOP11?=
 =?us-ascii?Q?Oy85EWVoPsyRS9CCXNOD4x0n0YT+TQxGmWlsG5ZrO3w6IZ3R1SDBjGX2P3nA?=
 =?us-ascii?Q?xWORxFnkn+bDNsVuOaz9Zp2jNNGkK6usO/k9tDwQlK8lyoFUuhQSPBAjwp+R?=
 =?us-ascii?Q?NeOs9UCu12aE/CJu3ZUrtONLxJjrcVvLgrQXdPxpp9W335Hg7gEFyBOCFjMn?=
 =?us-ascii?Q?/bUAqdP9n+EjbqkKIApHGI/iPiEu8naXJgea/xf29p5Sk9APyScLQH/GQVIq?=
 =?us-ascii?Q?yfTkyyAXpJ+nQPljbrH5sl9zSqTFVG57uNRl4sw8qVgNOhIjXeXUWK2kiwpW?=
 =?us-ascii?Q?PbDG3R8T0Szl7BDQCXqyWQdXxRXpGDXgphX49DFDGXjw+9Fso52mwxm9k+7n?=
 =?us-ascii?Q?/Ug4IY/VQcfSIrOhCtPHZF/U3cnwuyOZ5pW/m9509wbn4nhEW35VRDxHmiH6?=
 =?us-ascii?Q?6nMFZvwlx4UxMDjO7ukkSKyCoDDGnW9k/1BaTnGvSacvKOZOF0Cb1TR6sCGc?=
 =?us-ascii?Q?az8katoJIfnBDGff26t6l9PdOoJqPS4=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: nqhn0BJ7vggreIzaLUSX0cnAdGaw0PqHtlO5mZevERk2cboV7rcAFyhpf/JEeWghZc2SfXOoYfdEnj6SABvbEjVTCad1UjzkJWNXXBFS+xVsar83s+jP5JS9Rlz3JGgHMd6v5wULlUly6w5z89dKd9YMZWL1zPGNA+EbPEvs3iLjuP6/iLQIs9CO+htwO2kIgFrSxnNfnomsQbMmVfblrsHssR6kQgTDaS3ZXFKoDJ2XldXrIe4/n250M9JDIqYDHkH8o6E1iv7pNSBDF+QB9aFMgECDwujsjZwsKRs6vUjhfnaaRPZnEF9eDYmraTflqfqJ7LAQEUylupkWJ9ymaw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: caa66b2b-ed27-4b89-242b-08decd0eefd9
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jun 2026 07:55:17.0282 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Rpb9RNEv22dWsSSXY89KOEJwGsuz50NenGs5YKnXleTgwBD/HH+WLLMxa0/81H3tQgD9Zey0UKWZ9MhHdFhWJl0/xp92h448PZO3+nE/rxM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8351
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781769323; x=1813305323;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MZLa+JGEw7Tka2OYrrM8qWY+UWoE27zzd2+nZW3WNPM=;
 b=TIDpAdjWwwiAMz8ZBHPbxgeDvjx4P+i+ocaOqYgDxSNc66ZOLP4oHWi1
 Hyg1bUvDCeocuzAuBNJLF8on0I2/SFi9fF9/bvX2KBEW1PSRpM2Z48Sda
 HqT2dndKM060wqotieInBRbO3kCXRdfDuzKb3H0Kkqn096/O77jt2YExt
 woKWWQubRTKjm79F9kawFdIPgChJaC+IJiAjxRWw3NCHyZbwl28NhmyGk
 ceC12TjcitkWzcwO1Nv7MNhZmK/sp4ZHqG1H/p0cajPs54D03W/awDzH2
 3r+drfZD0193daLiiQfiz+x3aWF5INUEQVZ+q0wyydxFv+7VNCNZ18Nvv
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=TIDpAdjW
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH 1/2] igc: Wait for MAC passthrough
 after reset
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
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:acelan.kao@canonical.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[canonical.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AAFC969E3FD



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Chia-Lin Kao (AceLan) via Intel-wired-lan
> Sent: Thursday, June 18, 2026 9:33 AM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>
> Cc: Andrew Lunn <andrew+netdev@lunn.ch>; David S. Miller
> <davem@davemloft.net>; Eric Dumazet <edumazet@google.com>; Jakub
> Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; intel-
> wired-lan@lists.osuosl.org; netdev@vger.kernel.org; linux-
> kernel@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH 1/2] igc: Wait for MAC passthrough
> after reset
>=20
> Some systems support MAC passthrough for dock Ethernet controllers by
> having firmware rewrite the receive address registers after the
> controller reset completes.
>=20
> igc resets the controller before reading RAL0/RAH0, so that reset can
> restore the controller native MAC address temporarily. If the driver
> reads the registers immediately, it can race the firmware rewrite and
> keep the native dock MAC instead of the host passthrough MAC.
>=20
> For LMVP devices, poll RAL0/RAH0 after reset and before reading the
> MAC address. Stop once the address registers change to another valid
> Ethernet address, allowing firmware a bounded window to complete the
> passthrough update.
>=20
Good day, Chia-Lin

It'd be great if you could share more details on how to reproduce the issue=
.

What exact hardware setup is affected (dock model, NIC, system)?
Which firmware/BIOS version?
How often does the race trigger?
Do you have a way to reliably reproduce it?

Also, what is the observed behavior vs. expected behavior? For example,
which MAC address is seen and which one should be used?


> Signed-off-by: Chia-Lin Kao (AceLan) <acelan.kao@canonical.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_main.c | 48
> +++++++++++++++++++++++
>  1 file changed, 48 insertions(+)
>=20
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c
> b/drivers/net/ethernet/intel/igc/igc_main.c
> index 2c9e2dfd8499..fa9752ed8bc5 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -11,6 +11,7 @@
>  #include <net/pkt_sched.h>
>  #include <linux/bpf_trace.h>
>  #include <net/xdp_sock_drv.h>
> +#include <linux/etherdevice.h>
>  #include <linux/pci.h>
>  #include <linux/mdio.h>
>=20
> @@ -69,6 +70,52 @@ static const struct pci_device_id igc_pci_tbl[] =3D {
>=20
>  MODULE_DEVICE_TABLE(pci, igc_pci_tbl);
>=20
> +static void igc_read_rar0(struct igc_hw *hw, u8 *addr, u32 *ral, u32
> +*rah) {
> +	*ral =3D rd32(IGC_RAL(0));
> +	*rah =3D rd32(IGC_RAH(0));
> +
> +	addr[0] =3D *ral & 0xff;
> +	addr[1] =3D (*ral >> 8) & 0xff;
> +	addr[2] =3D (*ral >> 16) & 0xff;
> +	addr[3] =3D (*ral >> 24) & 0xff;
> +	addr[4] =3D *rah & 0xff;
> +	addr[5] =3D (*rah >> 8) & 0xff;
> +}
> +
> +static bool igc_is_lmvp_device(struct pci_dev *pdev) {
> +	switch (pdev->device) {
> +	case IGC_DEV_ID_I225_LMVP:
> +	case IGC_DEV_ID_I226_LMVP:
> +		return true;
> +	default:
> +		return false;
> +	}
> +}
> +
> +static void igc_wait_for_lmvp_mac_passthrough(struct pci_dev *pdev,
> +					      struct igc_hw *hw)
> +{
> +	u8 addr[ETH_ALEN] __aligned(2);
> +	u32 orig_ral, orig_rah;
> +	u32 ral, rah;
> +	int i;
> +
> +	if (!igc_is_lmvp_device(pdev))
> +		return;
> +
> +	igc_read_rar0(hw, addr, &orig_ral, &orig_rah);
> +
> +	for (i =3D 0; i < 100; i++) {
> +		msleep(100);
> +		igc_read_rar0(hw, addr, &ral, &rah);
> +		if ((ral !=3D orig_ral || rah !=3D orig_rah) &&
> +		    is_valid_ether_addr(addr))
> +			return;
> +	}
> +}
> +
>  enum latency_range {
>  	lowest_latency =3D 0,
>  	low_latency =3D 1,
> @@ -7259,6 +7306,7 @@ static int igc_probe(struct pci_dev *pdev,
>  	 * known good starting state
>  	 */
>  	hw->mac.ops.reset_hw(hw);
> +	igc_wait_for_lmvp_mac_passthrough(pdev, hw);
>=20
>  	if (igc_get_flash_presence_i225(hw)) {
>  		if (hw->nvm.ops.validate(hw) < 0) {
> --
> 2.53.0

