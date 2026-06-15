Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id CuHKGT0rMGqEPQUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Jun 2026 18:41:33 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F2BF6887A8
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Jun 2026 18:41:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=8IFTyPl2;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 249A44085E;
	Mon, 15 Jun 2026 16:41:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FMMwGSWy6_Xi; Mon, 15 Jun 2026 16:41:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5BA4940560
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781541690;
	bh=7glyMcpB0/ZPy7L0uFOt1kOUZBFrbnSakv4jihKLSWE=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=8IFTyPl2CZG8DeAA4yjZyBeDss5cUuV6+zHaTXTzcu6bVW7+YGOoSfeUx3dEkOMLl
	 jqxuXZmxYLknjPfwFV861mjEsEuB/VcsPRd2FqLipUxpWVqxRhuTNfDmXi06vz4SdK
	 RSt3U/AciPBrvvsmeodhQlQUKxs/wpcpjVX0/g9VBUtKBDHXNrtSVDThrdgIk+eqNQ
	 gRTdWzJqj0Tvs07wiT/Ky3YFFrYA4PObA23tV0GGtMxsicaTb0Kd9G4DLTkvAW7yTB
	 I19ZIbfoEok146Qa3854MA0TAJXVa9DIqbHAIM/+pAf6he04df4S0YY10rHk2xxSIx
	 rQMBjKoh/WDZw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5BA4940560;
	Mon, 15 Jun 2026 16:41:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id D69292B8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jun 2026 16:41:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BC56D40514
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jun 2026 16:41:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mVVl2uGFvVoL for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Jun 2026 16:41:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=alexander.nowlin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C26AA4040F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C26AA4040F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C26AA4040F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jun 2026 16:41:27 +0000 (UTC)
X-CSE-ConnectionGUID: ZdJOn7LdS6Cvzm6NeHjcRw==
X-CSE-MsgGUID: tENQNpsVQH+kf7ZJlxrLOA==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="86130506"
X-IronPort-AV: E=Sophos;i="6.24,206,1774335600"; d="scan'208";a="86130506"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 09:41:26 -0700
X-CSE-ConnectionGUID: 1t0tV2u4SoCmEPRs+ZPUdw==
X-CSE-MsgGUID: ZhQ4X/1dSW2+hZU/tS702Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,206,1774335600"; d="scan'208";a="251438392"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 09:41:26 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 15 Jun 2026 09:41:25 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 15 Jun 2026 09:41:25 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.42) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 15 Jun 2026 09:41:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Pv3gTZYyfwQjgFGma8lYkrzZDorOkYMNBRAHPGBVWOVObXEyeKH/TkabwRuVgYRlkGxnZERBbgiWR6oQS1m7stPYRx13m1jTX8dmNJGO+/tFw6YmimGpnhCUxR4nNISgO2sB2k83kaNic2uYjwEzTnCOK73AfaxF/Av2p3oapdOXlVolSmKRAVv/D62qfA7+ljnHsZW6vefJM9vo70CNcPVzAxkUzvJ8B379eBUE65/lDa3eX6WYSbtOOkGS7wns3UQgt0OTiqzGPP/mDGHBXPKLbuWmGJpIfC4Yqs3aVoSWzZKdgtTFfLBrWfpPIsGlovPM4NczmZCHU5Pyx5vKgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7glyMcpB0/ZPy7L0uFOt1kOUZBFrbnSakv4jihKLSWE=;
 b=MAadSZO7u2ab8iX2jKF9b3lF81aE2qxCdpXQ7Ro4zd5HJQtn0jjZo2DEB2YKc7HoinWPvY8qmMJpOo2OmViAW+TcU2JPoNWKEd6MRl4wExwaHy3KCO2kXKbPiiNXU/Se9DKhNTo9sf/hC48TyI65tFn4Egmr78bRyIL0bpjYVutgznp0GjP4riP1qs2HonEOTPiS4YwaGqRNCHjtvA44i8r3kSVCCoZBgvjWoz/H2/j52sTAM1f/WOtUVtTiPTeXQ+ayclRrkmmYa5IJPI6yZUSAVvHebNroOrWtuaJ1pWVtKdbd+ICULdfHSKITWpjuYJZ84vk/BZDsr0r8rDPTdw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH2PR11MB8780.namprd11.prod.outlook.com (2603:10b6:610:284::6)
 by IA3PR11MB8919.namprd11.prod.outlook.com (2603:10b6:208:576::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Mon, 15 Jun
 2026 16:41:18 +0000
Received: from CH2PR11MB8780.namprd11.prod.outlook.com
 ([fe80::df78:7472:d0bc:f1e6]) by CH2PR11MB8780.namprd11.prod.outlook.com
 ([fe80::df78:7472:d0bc:f1e6%3]) with mapi id 15.21.0113.015; Mon, 15 Jun 2026
 16:41:17 +0000
From: "Nowlin, Alexander" <alexander.nowlin@intel.com>
To: Aaron Ma <aaron.ma@canonical.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
CC: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "kohei@enjuk.jp" <kohei@enjuk.jp>, "Paul
 Menzel" <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [PATCH v4] ice: wait for reset completion in
 ice_resume()
Thread-Index: AQHc14sub8D+DQf7lE2fbl6slhhcpLZAHDLA
Date: Mon, 15 Jun 2026 16:41:17 +0000
Message-ID: <CH2PR11MB8780A57260FE68DB943CC7D290E62@CH2PR11MB8780.namprd11.prod.outlook.com>
References: <20260429034849.1686650-1-aaron.ma@canonical.com>
In-Reply-To: <20260429034849.1686650-1-aaron.ma@canonical.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH2PR11MB8780:EE_|IA3PR11MB8919:EE_
x-ms-office365-filtering-correlation-id: 830ac0d5-d22e-4747-2b53-08decafcec40
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|7416014|376014|23010399003|366016|38070700021|22082099003|18002099003|921020|56012099006|11063799006;
x-microsoft-antispam-message-info: aTdD/aztHeYJGiQ6L/Pryd2+bqi/Lmi3z6D8zkQaK+RqBIl0CUpL5T2nBZGXoHDcxGtVU4+Cfx/G1l8VxpjwRJpx+3QZrH36ivld8KiM7pk2x4lyVqqGvKMhhZnLwBGO1rSWrOX5bAoVvvhph9BmhVXkByA3zmG5YQ5qOSRypDAuMvA+0c3jjQacPiwwCOByan1yPp5xvMiz8R5PbdvfvS+OEvL2GO/IXdrvHyZVMDT7ERjBJL0BH+pGaNBV1c1Ro/Lc+P8ru2DHRDDYH8kEFREW7v6s4sJphCZamYJqlxAscz9WdFN26Zndb5jlBjkFvqVCYPLcJ2u0kW98KuHoAJiexrU/fSVev2382Ahoj/GtEQ0BR+ktdyQFnxco2LuHbFAos/LYasKzmuIZM/DOkYsgmI3OWMI7WfkKoy3Ffp5YAfjvplNeq0O1ShYz4oLqLz7Pyjn66UkipG0u+6johetPqcUdqAl7qbNJLHcBuGHkRrALuUGxVBu/lBsGwu0JB+QpAOmOT47TEBlBq0wdfqIfJg7DxCs60tB3aBRAsXD3Z5FEpzYZ0umC3t6SsX6KAsPS2/n9TtPJSjP47bb4Kbs5TG63OZBt/RmFf3o5y9IXfBpAbH+l1lZI70BWnpMXezq5P1hkVp5F7SVYIs6wwXrBjWT7/uZPdbS/eQmknjBDeF3hQgvbGeewe/BchGJivIb1ikUkTvEbn9d+bxlC+/NYKkHn3T+mNJJnj8//T9DrYRPgjqMrPOH+7WPisU8iQUhT7JY81gSTO/t20x3G0Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH2PR11MB8780.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(23010399003)(366016)(38070700021)(22082099003)(18002099003)(921020)(56012099006)(11063799006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?bKZusarB/6ijr0qYgyRkWlEGVUuZUHDSjmOOXOlS02zQKArXKESRiXtPXpun?=
 =?us-ascii?Q?1ZaJu/PvabdW9DLj4JL73TH39l1H0FLt5WchbPqBbKSfjOz3RqLSM/pnT2eP?=
 =?us-ascii?Q?ZPpiPoEveoAG9xZXF2sSbQz+Lj7ucjKCDuRl5v6cOA9RfcA7liZ4Uhny0Gfd?=
 =?us-ascii?Q?S2ve8IL/6C2XtyCE78DWiFYA0lz7VeqH1cmg3frkCYsKM83Qwd3O4sMQh9Y1?=
 =?us-ascii?Q?DiQb5eqHVA8GupIAs0L7KF222cxAqUEswLoxM/VDYk5DCIcTPpoQ/75FIWms?=
 =?us-ascii?Q?6NCkJLztJwniMo4abzVyoe6n8dQNLf6ArhFYin6emYIMgqsQ8Ef/K+8y/gwq?=
 =?us-ascii?Q?rBEEYFYaVMZzS/FwdeXuXSSUjsdgw9hjGZFdDh56HUdWCA5OMSP2JxgyotW+?=
 =?us-ascii?Q?6b6PQw47AGpAsI1qPeW6rJzXWtjLvYUnT1YCdbNtlNnuH3cmm4ShrRQG+TdG?=
 =?us-ascii?Q?uznaT+hmiCCtaktNhL+tbtt0yS/q/uVx5rO2J25Bjf+XkzP4+UYmy5zbkBMR?=
 =?us-ascii?Q?f7OHKAC8vZB7H1IB2JrNrBc9U3GcqX1iY8pAhlTKSOjc2boXuSauwVF/YT8f?=
 =?us-ascii?Q?lbOpKMcjXYbygvBDwMvwsgQzQPa5OgzFtDHupq0FH6AaJGAm69UWst3t3Iab?=
 =?us-ascii?Q?FmrXSHc9a1D160BMKOdAO5f74N9wZndVZy3B8YkrnDvMzHDT60/ahyakB9VE?=
 =?us-ascii?Q?cLDzrWWlut3f+KylejxzEVFkXQAYUUWnXeaxeNhCz6iWSF65XOfo66qiWzlL?=
 =?us-ascii?Q?abkpLqrPOgJg3tJBHNZm3kdmPsDjLmBHbqeNa3rXzfeg+Mg8vcyWCbagZ/q9?=
 =?us-ascii?Q?r2vwEMT2IyycA4RqYecr6ZDSAkgJqBqEx0xxj9IgzgP1PeEHTcBLtWR5saCK?=
 =?us-ascii?Q?NVQkEekgZ9/k2depfq0RYGMrCdTlUMHetCk/EB/pEoRfztuz0ihyuxj11bT2?=
 =?us-ascii?Q?SLVfEyxiZnkpJAcoQBZ4mc69P1dhVsAOVt8fCjpP5UQHrEGIxjfa0a5pA/rW?=
 =?us-ascii?Q?XYGhT3a8qAQkVn+Q1awXfyUCynOmESwqOx+niL8AC0jsHrIHinOkuJXnXT89?=
 =?us-ascii?Q?iPmbLIxcWh58dWJKku7ePQp61+IfSIFPl9I/G0EpVomfZwipLkXiTFR62sSb?=
 =?us-ascii?Q?bqZz6eSauW+Rn2Z+eK1YpSySV0ZORiJRazrADIh4fXQeWV/6W1OQGyEyhChk?=
 =?us-ascii?Q?RqWnC3T0iWhloFWrmMIPmSluyhuBndcl8N9nC4SRB1iWLwxoOS3p5Q8VCnxe?=
 =?us-ascii?Q?DhT99QIBl1Kxbu97iem1JftdPXAo8keTaVM8S5z/z0vSqnio7rDniEpeHNvk?=
 =?us-ascii?Q?/GpPBCTm+CSiCNdpZwb8XuwlXncX1PjimZ6YemubNe9B4AipyMqDToN/AEhp?=
 =?us-ascii?Q?wj6Lwjx1Xqe9Nstozr1UcuxNAFN8PG+J2oVZYhgVuoRhirbZb1c0AQgZSmRo?=
 =?us-ascii?Q?/ukitQ9S8MVvJbPQ+J9FPX5wQoNBed8inEnPZubfFXBllx6TfxW1A9cNlgN8?=
 =?us-ascii?Q?KJqZn3JF4QSvwrUuEDJkK6uHY78zsEuEbfsSrBV2osJYsnlL0U98fQh9eciE?=
 =?us-ascii?Q?E9mZg/4bZk67Nwo055QHkM5pyua4uTTHtYlCs4YyFZwaLJmePwX7pj4mgORb?=
 =?us-ascii?Q?lZ1LyCBYBXYuXY9ufG/zhrJDCpyFRGlm192cNuKTswKjJj8ShNpe0r3sVjD1?=
 =?us-ascii?Q?JEoRabA2Qe/PYMIeq1G/252XW5KtnKc0Xwud53J8xL6/5NoEd2zmLEe/mytM?=
 =?us-ascii?Q?vgLsWEG9Fw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: PP+aK3II4aAC0gRdPzzqj3zT6/CaVvmGnwX4fRHMuvjQG5u9kSpqZPAgPtz1WBdbcvE111dqmYyd678eqDOq7hp6w9bA3v3rDasEytwW6Sr2O05knCzQwPLZpjrwA9xELch2KdbEFMnIRr6eys8Ygclm3gZdHWzXpIMx70IzYfdSWrt3YACjrE0JfHC53u3Y944t+aF9ECKdZTdoFoWQRYw97UNI+L+cXupv+RvtYUPx20y3+MyoLxShsulfffJkeH6ECo3EjST+IGGEx8zbtNBsIPHd1vMoq38eDziRCPjS5NLLXN2Vn386ehGF2E9CEATTjBuoSHEi8rW52iAg9A==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH2PR11MB8780.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 830ac0d5-d22e-4747-2b53-08decafcec40
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jun 2026 16:41:17.7344 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iGEMqN/4UZ9dI2pqxXZGSHnGPOKKi9DKaISAZ0AoEvugOugnOGRQhVnCFjqxF0e41uqG3dWaLwptyXpTpLh6DM0X9jI+yYlOFze3zEG/kDQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB8919
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781541688; x=1813077688;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=eTywsRcbVnGfADfJ7qfI0G+A4CIL0wktvZOeN07SaFQ=;
 b=E0y8V5sbjSjCAzqITkigaAQ2STict312b2l+S9ezJhP0N558/zr3gGUv
 ciZaXNkg0ID/w/46bEaad2WNcyoUhCjygMVAr3fGtX1kFB+c2DdXkZ4Lx
 Qk8l6j2ddmajmZjoOECSVEqzMrlVxLmGJFPZXILWdzzfjagZKiyGo7dW7
 MLHHBDnAJIcXF2+P3hGiZwful4g0BPuWs9PAfqs4VQIRpuu10cfCKR8zO
 JQeXAin82BuIMRMbjC3VJV+rUg2TKqH9QpNYYmbhyRbTksTRohgqBD0Wt
 OONqEzi/no9Jr6/asMiSC/4o0ZhVIcASYz6ZQrM678Js7uAD+AdpApfNy
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=E0y8V5sb
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v4] ice: wait for reset completion in
 ice_resume()
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[alexander.nowlin@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[16];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aaron.ma@canonical.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:akeem.g.abodunrin@intel.com,m:jesse.brandeburg@intel.com,m:aleksandr.loktionov@intel.com,m:kohei@enjuk.jp,m:pmenzel@molgen.mpg.de,m:andrew@lunn.ch,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[alexander.nowlin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8F2BF6887A8

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of A=
aron Ma via Intel-wired-lan
> Sent: Tuesday, April 28, 2026 8:49 PM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw <=
przemyslaw.kitszel@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>; David S=
. Miller <davem@davemloft.net>; Eric Dumazet <edumazet@google.com>; Jakub K=
icinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; netdev@vger.ker=
nel.org; linux-kernel@vger.kernel.org
> Cc: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>; Jesse Brandeburg <je=
sse.brandeburg@intel.com>; intel-wired-lan@lists.osuosl.org; Loktionov, Ale=
ksandr <aleksandr.loktionov@intel.com>; kohei@enjuk.jp; Paul Menzel <pmenze=
l@molgen.mpg.de>
> Subject: [Intel-wired-lan] [PATCH v4] ice: wait for reset completion in i=
ce_resume()
>=20
> ice_resume() schedules an asynchronous PF reset and returns immediately. =
The reset runs later in ice_service_task(). If userspace tries to bring up =
the net device before the reset finishes, ice_open() fails with -EBUSY:
>=20
>   ice_resume()
>     ice_schedule_reset()          # sets ICE_PFR_REQ, returns
>   ...
>   ice_open()
>     ice_is_reset_in_progress()    # ICE_PFR_REQ still set, -EBUSY
>   ...
>   ice_service_task()
>     ice_do_reset()
>       ice_rebuild()               # clears ICE_PFR_REQ, too late
>=20
> Reproduced on E800 series NICs during suspend/resume with irdma enabled, =
where the aux device probe widens the race window.
>=20
>   ice 0000:81:00.0: can't open net device while reset is in progress
>=20
> Add a best-effort wait (10s timeout, matching ice_devlink_info_get()) for=
 the reset to complete before returning from ice_resume(). In practice the =
reset completes in ~300ms.
>=20
> Fixes: 769c500dcc1e ("ice: Add advanced power mgmt for WoL")
> Cc: stable@vger.kernel.org
> Reviewed-by: Kohei Enju <kohei@enjuk.jp>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Aaron Ma <aaron.ma@canonical.com>
> ---
> v4: use secs_to_jiffies() instead of 10 * HZ (Przemek Kitszel)
> v3: add error message to commit message for searchability, mention
>     timeout in dev_err (Paul Menzel)
> v2: reword comment to clarify best-effort semantics (Kohei Enju)
> v1: https://lore.kernel.org/intel-wired-lan/20260402024220.210466-1-aaron=
.ma@canonical.com/
>=20
>  drivers/net/ethernet/intel/ice/ice_main.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)

Tested-by: Alexander Nowlin <alexander.nowlin@intel.com>
