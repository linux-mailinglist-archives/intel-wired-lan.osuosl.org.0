Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id JrSHBRIaOWqLmwcAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Jun 2026 13:18:42 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B8256AF007
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Jun 2026 13:18:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=hbcpcyd9;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6E5C64EDAE;
	Mon, 22 Jun 2026 11:18:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jwWsuvSHbv42; Mon, 22 Jun 2026 11:18:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8E6754EDBB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782127117;
	bh=6/RyXoq1cohG7XzhiLmZCupKT36uwWtgz76/FbYqcrk=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=hbcpcyd9nhppP6vRS8sjyQJBIf6EO5kAZsJx/0pe4tUhGWz8OLmXsQ0s6y9Q106N/
	 xLSi16Rfq0gvS510UMIxssIdk7jsqCVLXR/I7t4yj7VGNfqGVCkB8OhrNzGOMsHORX
	 po7DEm3Ya/3xz9m/1LLX4AeKBBEqp2UmKAs3VoVaBy/vOc4/4gcFAOMXaGjC9X8E7N
	 LaxOXpKdaZZi64P1yZQYf4p49E0tgXXWiiJGbUwOWmh7i5HRHmsSlYJ7AvCdNULKTh
	 F5mG7lJtpk7Dlp3CtfQJjO5Zcem9S/o8ixQ2UoQbsisJNReWrckP+TekSeGlrdvNT2
	 bq1pvhy0Rdf0Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8E6754EDBB;
	Mon, 22 Jun 2026 11:18:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id F0673367
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2026 11:18:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D2DD24EDAB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2026 11:18:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2yfm7_y6-D0w for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Jun 2026 11:18:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A761E4ED9E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A761E4ED9E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A761E4ED9E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2026 11:18:34 +0000 (UTC)
X-CSE-ConnectionGUID: dsApFiceTSyAa9ARyLNoQg==
X-CSE-MsgGUID: mB8EndZBSZKsIBCMwKeFkw==
X-IronPort-AV: E=McAfee;i="6800,10657,11824"; a="86536083"
X-IronPort-AV: E=Sophos;i="6.24,218,1774335600"; d="scan'208";a="86536083"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2026 04:18:33 -0700
X-CSE-ConnectionGUID: URM6h4JJT3SIRrmTHTZJag==
X-CSE-MsgGUID: UgvbE59KQl6X1jkcEsATNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,218,1774335600"; d="scan'208";a="248319869"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2026 04:18:34 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 22 Jun 2026 04:18:33 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 22 Jun 2026 04:18:33 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.56)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 22 Jun 2026 04:18:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ie/LQhsKCgeL7G4BQIKIAiNB2FFrPStRR5j7DT9nXwSqR3i8oF3FfDKmrD+82+dmkkOc2SFAZrzqWOD6ztT1iJK/mzVBiuc4idUR/B2EycRg8YmYsX3x8rDXpVJToXDAz3jR+GrO3acBJb+OD1QclNFmO1xI8+2Lxh2bomZKA1jb/U/Eqe+fjm7loFYKL6hfHM6kulh08xaVxb2duEpizZbJLDdLff1e7NLVGoRWGOplagXlPWp+JR42WtlLElHydu2SMClYsd0CVdZX0/BNY0KrEHnAS454sg+JC9u5LGSH3zS5GdjAmLGUA2/NxLggrEcSSHO/2OhG8v5MQSTzeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6/RyXoq1cohG7XzhiLmZCupKT36uwWtgz76/FbYqcrk=;
 b=MRPYW/42wlwNZk5H/4CYKKlN/GfAMSdbRO0SWTXvdy2U7Agd6cQ6rtmNP2Q61Y4jYbBnZiYp0OkNI19OF7ymqEOfFHaMYNowBRaepgZIidnX1PbU0jB5b5FQIs6SuqXIHSXx3YFq2OU4x8cq0IXQzd7Up8Jo0+F1zmdFtSxT5RyFVGwi4Gt7E0VejxTp6jJn22Df1x3DgoNeAa6apHb9WsqjwXASHAog87pVE/arFqaRDkDiUhOjn3HKyhaqWASiWqvUzVGmFKt8HiK9PThexaWbg6xmeudIr+c97g+QjfQtV121wPI6MTI1fGkSjeqRcbya9fVqKdhDGU3l6iXzjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by IA0PR11MB7332.namprd11.prod.outlook.com (2603:10b6:208:434::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.139.20; Mon, 22 Jun
 2026 11:18:29 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%6]) with mapi id 15.21.0139.011; Mon, 22 Jun 2026
 11:18:29 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Jose Ignacio Tornos Martinez <jtornosm@redhat.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "horms@kernel.org" <horms@kernel.org>,
 "jesse.brandeburg@intel.com" <jesse.brandeburg@intel.com>, "Nguyen, Anthony
 L" <anthony.l.nguyen@intel.com>, "davem@davemloft.net" <davem@davemloft.net>, 
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>
Thread-Topic: [PATCH net v6 4/4] ice: skip unnecessary VF reset when setting
 trust
Thread-Index: AQHc/7LceK/tTBsRgUK0XusOw5V7sLZKcjmA
Date: Mon, 22 Jun 2026 11:18:29 +0000
Message-ID: <IA3PR11MB8986D87F75BDB88CD302C78EE5EF2@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260619061321.8554-1-jtornosm@redhat.com>
 <20260619061321.8554-5-jtornosm@redhat.com>
In-Reply-To: <20260619061321.8554-5-jtornosm@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|IA0PR11MB7332:EE_
x-ms-office365-filtering-correlation-id: fb1245ee-6ca9-4d4e-9f7d-08ded04ffcca
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|23010399003|366016|376014|38070700021|18002099003|22082099003|11063799006|56012099006|4143699003;
x-microsoft-antispam-message-info: ODONPwhUGO/4ydEKVGGyefxHpT5WnFKyUS1KcYhBCp6fwd4YsntrEUGj4YZiJdeSLAiZrj8FajvB5ZQaX5bEkN2vSam91ygi78yunxiq1n5QX2bnlep9DQioD9QwRp5Pv8ldNh6rL3XWX7q+KlP3aE0pFFe4IooUxyIUpUbETEBWe2a9LgmKlE/oEoDZGazdSdFJUmWGE71HZxsphvAQllI3zVcntLv2VW8M3hHWsmpZoMfqetw86WcosKswKh6viVZn4PZe86bqdp/6zTHJcwXnBYs9ShiYX4btM7laZPBxcJJEJgK///W2E9rzmujrCRkBXmP8u58EuKKO6t4QF/RHSPuLsJNOrxG0mszkeq2qU8Ly/WgqS8blfi8a3Q5/jFRTBWQ5EaQqVt8sKuonakvl9xBp9f9QI6qrgnCRYq2vL6bNwvojT9b5JQPte9PgEHkB1EI7mQiEdcUFawDuL+EkFJm+6k8uimG0Rw6sjCLHKLpSgoQoAcmDei9gKPfrBm9n7NDTxECppxNSm9BoEBt22AWTraKdJoMObc4QlSDxeT3pC2Y2yeYnn/DFHwNtFs7j8kaXgl+Or96JsLTHK4Qmq1ur3XVb03+TArDjg+gaF/vokpcYiIjM7RYt5Ad8GemHkCkvJKOYJWbZFGjviIlH+thqUzedGGWjPZQjuqJIAjfJR3Ki6EbJeelBhp3RWQznEvXRi93MohKFwxhrI4XR3xYBq6qyLH3psscgRAk=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(23010399003)(366016)(376014)(38070700021)(18002099003)(22082099003)(11063799006)(56012099006)(4143699003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ZipW5dR24o6rtVDrmxRHt5u17kJV6jYlgrM59Qq0oqrTFIr37Qll01RyS/zv?=
 =?us-ascii?Q?0NyrPluWoXSFeSD7ncS42L2dcDimBpUwioUumFtLJXCI4PPXCbJQE5YbwPd/?=
 =?us-ascii?Q?ekzFRpTwCYivtvvhxV0gTDEoqY1DQl8/rmmkOQ0BccqVTjo/967xamrmKwU9?=
 =?us-ascii?Q?gbt8pMd9hUnXDKsmOHHoJKGNdz+rF9dZhG0fvoscytLj52Hro8uWMh2wExnM?=
 =?us-ascii?Q?CQCo9mgY0TqKaEALTbVrfOX9lWh9LIOW4L1aeeNQr1qMz2BcTQ1KvylrShMI?=
 =?us-ascii?Q?XknydYr/raR+dD1jt9Spux0l8REvd+lNDM5Mi5/w3F9iacCC6Xkq8Oo29bmh?=
 =?us-ascii?Q?q9IGBdv/b/kU4Cyu7lvQOleWc29niAxUgS7LHtA3wJHE1hPN0gwdAydnrEKM?=
 =?us-ascii?Q?lLiNZT1jID4afWwBSdkDGt88UzfZmCF417EQWb1+DWVjRExAJmZDZwTC2IW1?=
 =?us-ascii?Q?GBilCHB5HY0zOFN9b9mFPlelk4HnBpX/8O+L+BDnj/ibI0AW9fp4tnXYqMay?=
 =?us-ascii?Q?PsvEj3fT8Z0NvYlv4JSwc7GGFcNNvZdpJykopz8uL6/HUKn6Oi50N8WqVdJy?=
 =?us-ascii?Q?fVPAkD/2pVSB1kA8bRzjtIWJJPm8lSu/50jcynzIkVyL5iAWPiLYob3enoxW?=
 =?us-ascii?Q?7bL1zpBQuU9/jfO3BXk9p1w+SxNuTWJibOMRtnETtNynuHDfhtMzzOtb6OAU?=
 =?us-ascii?Q?xnor110xT1Q6se/BSXYutVZztn0/niEF6rsofzIUW9SMQUnHG5LgzYpyoqjp?=
 =?us-ascii?Q?bbqjJQCym2yNR+H0PSmFB72jnvPQY7pxoKxrsuWFERPvZ/nsPeIdAZoeakfj?=
 =?us-ascii?Q?qqxXEewAS7j7rpD2SLjF0IBBcotvcH/VYErVGY1xQCDv+oM8KvRhR6T270pS?=
 =?us-ascii?Q?Rt1AbpYLVu1RZuOrpiRWO7wwnpAUEOgFZPko3B/ReYw1rZQSBtSpm46Wd50n?=
 =?us-ascii?Q?ezS60bW9Vn6z9dCrpT0YdpoxI7s9T6J5T3Q394WwQgTr6dM0lHczhVzK3544?=
 =?us-ascii?Q?l2Rmk8L2KA2i5qgZ5pucqSExy35CpkVK9AmB4s786mZF4k54TzX7YyJNwueJ?=
 =?us-ascii?Q?oHPtM3Otty3HIOaYEWnIqZCLaEgANb06xDw0KJlZuW8UmhbOWV8F3XOUM3ex?=
 =?us-ascii?Q?5y5z+KFnSbo+WmAu3msyonJrhhXsMnrQtOS//QNlfFOPoeBGRoVNN13csGnC?=
 =?us-ascii?Q?/DqFZhEmzBLfDCSJOa8Ic57wgAtCvjYTQpO4YTwC2n0nYBTntCbuQ+XloVDJ?=
 =?us-ascii?Q?TSvsgBC+VRfe2ncyK6NSW7dv9j8irHlkkGWfylnex1BnC6RPflcVT1rhTTg8?=
 =?us-ascii?Q?Q3OR9e4lo1J0TngUeFtsTNd90qVB1jRsiRz7M/p3L0YoShL8zvQCcvN16Cs0?=
 =?us-ascii?Q?DBtNDpqFMAvB4z3MZGj5yYBntcb4YuHObilMHNF5yKVNT2tW1BOhbwNtmtLW?=
 =?us-ascii?Q?1zRwKRpQ3D4Nm2/Wt8P9UKzPqrCByAhCT8ZIHF9Yhfl8+xElxtz4fnEnEwQ4?=
 =?us-ascii?Q?xFtMDskv4HXt9KXWH48IJtj9SMivhqN0Bs0mYx57d19PO0U/fv9ZXpojA0PV?=
 =?us-ascii?Q?O/sOxTL08hyWK7HgL9xkYpizUCow747NGL29l9k7lKw7YhRgQcHHykd50mqS?=
 =?us-ascii?Q?eGZG2l7rtSDtwF3crPJaWW6SkxJxdEYGzR0QIDnVnh8LR1g/LzG4sdK0kaxr?=
 =?us-ascii?Q?41bJwLvOruv2MraxtltsXUaZ6ertEqOooFzK9AkoHaybUBxJdzCuPMgmolFN?=
 =?us-ascii?Q?i4iUDeyGP1mItK82jw7F7Mx2TwIvCJA=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: PHcSZHFgUpxTdhNCPkOSQAv/lEBvwlNMYmkEoGSqnBMWOIKHptWvX0HF4PTvqYXRzJn/iNz/lYyUwtg8/L4OQwo2gVXbK1tgEXRDTWt9+3UyGU3ioeE2whjv5dFEwfzDnDH5Q0Aw/x9Goynb5lP3yj4PJDwN5X9bRn8kLim5wylgO1Cxhs72XX56u/4Z2Jj7VndhOdSg4s3S1BmczoRUI0SUNXzqFhouUHZZMMu+8kwWhktBmYgleu0XoM4JBhW916enww+EenQ9JBp09YKnmBinLOplSm4FRRio3KifHMeTVfFCPLXXzMX2z9TYmWh8S+wyQVh7K4wF1vXxbiUZtQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fb1245ee-6ca9-4d4e-9f7d-08ded04ffcca
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jun 2026 11:18:29.5103 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ut5th2TR4PAZqQkyvJ5B3ovE68L4qTsoiOHctjByf9PBHhGwGaCyQ9xvg/6FUryVZ9VVTj6AW9nYZNdV1dWLpfQ2VM+Y00MXivKwskNiV58=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7332
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782127114; x=1813663114;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YPAbbSvQXocjMUpiHAJymvF221z4fS+SbwINVpvkyBc=;
 b=oBG4730cKR+qY9FxYNM/Ub1kl5jVbiSknRC24dBjRoSjIaDqx2/IgDrU
 v+eNEnsxe5zsZzVLx1Tee3+26vFQU9GjYA+rKtdT7ox9xRSsc012J72ot
 K8nNW5KEwVVe85Lc43dIDX29h7ahAoQjRtGTGW4uxxjum9euRoWa6ZczV
 H1XAweyhCGW/YfzLvybTUc4FjmOq7vWE3rXnLfY+y/hTtaIoZaFwaPKW4
 d2xpu1weN3z4igxSweeJ913tIRo62aLka6FANtMuOEGwtjBWhPAcRY1K9
 cHroo5+obACK+MCDa+FEgTIrjJJcQS5DFdWf+NOfqE0HPxh4B4EsNTnoL
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=oBG4730c
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v6 4/4] ice: skip unnecessary VF
 reset when setting trust
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
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:jtornosm@redhat.com,m:netdev@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:jacob.e.keller@intel.com,m:horms@kernel.org,m:jesse.brandeburg@intel.com,m:anthony.l.nguyen@intel.com,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2B8256AF007



> -----Original Message-----
> From: Jose Ignacio Tornos Martinez <jtornosm@redhat.com>
> Sent: Friday, June 19, 2026 8:13 AM
> To: netdev@vger.kernel.org
> Cc: intel-wired-lan@lists.osuosl.org; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>; Keller, Jacob E
> <jacob.e.keller@intel.com>; horms@kernel.org;
> jesse.brandeburg@intel.com; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; davem@davemloft.net;
> edumazet@google.com; kuba@kernel.org; pabeni@redhat.com; Jose Ignacio
> Tornos Martinez <jtornosm@redhat.com>
> Subject: [PATCH net v6 4/4] ice: skip unnecessary VF reset when
> setting trust
>=20
> Similar to the i40e fix, ice_set_vf_trust() unconditionally calls
> ice_reset_vf() when the trust setting changes. While the delay is
> smaller than i40e, this reset is still unnecessary in most cases.
>=20
> When granting trust, no reset is needed - we can just set the
> capability flag to allow privileged operations.
>=20
> When revoking trust, we only need to reset (conservative approach) if
> the VF has actually configured advanced features that require cleanup
> (MAC LLDP filters, promiscuous mode). For VFs in a clean state, we can
> safely change the trust setting without the disruptive reset.
>=20
> When we do reset, we maintain the original ice pattern that has been
> reliable in production: cleanup LLDP filters first, then set vf-
> >trusted, then reset. This ensures the privilege capability bit is
> handled correctly during reset rebuild.
>=20
> When we don't reset, we manually handle the capability flag via helper
> function, eliminating the delay.
>=20
> Signed-off-by: Jose Ignacio Tornos Martinez <jtornosm@redhat.com>
> ---
> v6: AI review identified issues with v5's reset-before-cleanup
> approach. Revert
>     to original reset procedure (cleanup before reset) which has
> proven reliable,
>     just adding the conditional check to skip reset when VF has no
> advanced
>     features configured.
> v5: https://lore.kernel.org/all/20260429102426.210750-5-
> jtornosm@redhat.com/
>=20
>  drivers/net/ethernet/intel/ice/ice_sriov.c | 33 +++++++++++++++++++--
> -
>  1 file changed, 29 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c
> b/drivers/net/ethernet/intel/ice/ice_sriov.c
> index 7e00e091756d..XXXXXXXXXXXXXXXX 100644
> --- a/drivers/net/ethernet/intel/ice/ice_sriov.c
> +++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
> @@ -1364,6 +1364,23 @@ int ice_set_vf_mac(struct net_device *netdev,
> int vf_id, u8 *mac)
>  	return __ice_set_vf_mac(ice_netdev_to_pf(netdev), vf_id, mac);
> }
>=20
> +/**
> + * ice_setup_vf_trust - Enable/disable VF trust mode without reset
> + * @vf: VF to configure
> + * @setting: trust setting
> + *
> + * Update VF flags when changing trust without performing a VF reset.
> + * This is only called when it's safe to skip the reset (VF has no
> +advanced
> + * features configured that need cleanup).
> + */
> +static void ice_setup_vf_trust(struct ice_vf *vf, bool setting) {
> +	if (setting)
> +		set_bit(ICE_VIRTCHNL_VF_CAP_PRIVILEGE, &vf->vf_caps);
> +	else
> +		clear_bit(ICE_VIRTCHNL_VF_CAP_PRIVILEGE, &vf->vf_caps);
> }
> +
>  /**
>   * ice_set_vf_trust
>   * @netdev: network interface device structure @@ -1399,11 +1416,19
> @@ int ice_set_vf_trust(struct net_device *netdev, int vf_id, bool
> trusted)
>=20
>  	mutex_lock(&vf->cfg_lock);
>=20
> -	while (!trusted && vf->num_mac_lldp)
> -		ice_vf_update_mac_lldp_num(vf, ice_get_vf_vsi(vf),
> false);
> -
> +	/* Reset only if revoking trust and VF has advanced features
> configured */
> +	if (!trusted &&
> +	    (vf->num_mac_lldp > 0 ||
> +	     test_bit(ICE_VF_STATE_UC_PROMISC, vf->vf_states) ||
> +	     test_bit(ICE_VF_STATE_MC_PROMISC, vf->vf_states))) {
> +		while (vf->num_mac_lldp)
> +			ice_vf_update_mac_lldp_num(vf,
> ice_get_vf_vsi(vf), false);
> +		vf->trusted =3D trusted;
> +		ice_reset_vf(vf, ICE_VF_RESET_NOTIFY);
> +	} else {
> +		vf->trusted =3D trusted;
> +		ice_setup_vf_trust(vf, trusted);
> +	}
> -	vf->trusted =3D trusted;
> -	ice_reset_vf(vf, ICE_VF_RESET_NOTIFY);
>  	dev_info(ice_pf_to_dev(pf), "VF %u is now %strusted\n",
>  		 vf_id, trusted ? "" : "un");
>=20
> --
> 2.43.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

