Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id CkEgGutINGpcTwYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Jun 2026 21:37:15 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 686406A25FA
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Jun 2026 21:37:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=WAeB7bno;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1B7E341932;
	Thu, 18 Jun 2026 19:37:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id o3jj_3Yit2PQ; Thu, 18 Jun 2026 19:37:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7826E41912
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781811432;
	bh=f/Z81PTWRXxkZqPMqaxE2jitJ//hRGDl3/Rjj8nOXus=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=WAeB7bnotZFTcycMur9ZknZ9S7oclKIBL7cgOgiDOFCcC8mPY6G8lZptGnAogk+Vp
	 a4aTlpkXQ/UY2AZPqwSWD5gTHrF9CM+vJGVDf3xcmFXtVV0TuRkRheZQqYNmW20LZl
	 G5h/unQTipIlzsTdtItsmI8oqguRRgBJHqKslUWbNVYyj90AW1T6b31nkqVoBzociB
	 Wfw/U1Dr44xcvlCF2kp59zYT6JinGtVOsLUK67MgYUHJ5PvDt5eIxRthhzKd9S4OGu
	 tkc95PL/CkR39Dj0GEi+Ji5Ipca0VgXdnpgO2E89/O79Nu5jh2uGL2ywOUfjy+RiQw
	 e1/sfjgUsewJA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7826E41912;
	Thu, 18 Jun 2026 19:37:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 0850D358
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jun 2026 19:37:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EAEFB41851
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jun 2026 19:37:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TfbUHVX48s9V for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Jun 2026 19:37:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3CCC041850
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3CCC041850
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3CCC041850
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jun 2026 19:37:09 +0000 (UTC)
X-CSE-ConnectionGUID: tE7zP6ckRVSkbBGYpctqeQ==
X-CSE-MsgGUID: LPQ1/C/AS5at7N8GD/GFqQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11821"; a="82668973"
X-IronPort-AV: E=Sophos;i="6.24,212,1774335600"; d="scan'208";a="82668973"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2026 12:37:09 -0700
X-CSE-ConnectionGUID: NjyqOZckS1K9WDczwAySIA==
X-CSE-MsgGUID: B6V1eHavR7m9d426WuzoHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,212,1774335600"; d="scan'208";a="248528791"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2026 12:37:08 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 18 Jun 2026 12:37:08 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 18 Jun 2026 12:37:08 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.28) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 18 Jun 2026 12:37:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZI/BMkVk5NK70uXcwgpjrm5IxqiRbqyauyLHpyeNynrR8RNoZn4s6xE/7bVMszyQQqNtQJqCryC767R1XprYgJDfuCQEWqoVuFkTlh2UX86Ob4YneDR+TQFhZzyIeAfwDTfqDvWChPIoBrytAXqO8XCVpFtRq2CYjYZ/hoeTp04dLq0oPqYxFfWva4YtGiYQyY8fjLDQDXfpj4mzfSy4oJbi6fSXFvPz88QwU+cyjP9kPSA4oiRpRbo5SVJz3rBnhl/qPJni+y+jupcniALpeu6lJ25D69r5Db8oj5AqLvijtCZZdw2U9JhnT3mxELVSTANPlH5QY3It5I+7AYPdjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=f/Z81PTWRXxkZqPMqaxE2jitJ//hRGDl3/Rjj8nOXus=;
 b=Kd3SFH0e889klLXJGDf78zm5rPcqBo3SCSdufWBo94lH9pqdvMuWuFiFJD6eO650HgrCssz9cPKUJUfZ3kwaei4nLQ40rZgd2i47FTyc0y4YoTO5XjRwlPFIGgcSBrcwV3LpxyZj1xC5drGJy9fqgRolAESywLsmnNsa79ZklCicHed/bKT/7MibtA3fSjdCLueSsVmp12Jmdq/ph1mGdYkXx/xXqwqETMSyeTiL7eXXHhiAet4F+34hlIUNSugB2lv7IQYi5eyADj9A11yXbhxz+ZSOxYhbuqjdemKzAfzDhiWOhwf/+taSPhnwk2K6yhryQg+ursG6UB+9H8Xcqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by IA4PR11MB9009.namprd11.prod.outlook.com (2603:10b6:208:56f::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.139.11; Thu, 18 Jun
 2026 19:37:05 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%6]) with mapi id 15.21.0139.011; Thu, 18 Jun 2026
 19:37:05 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Tantilov, Emil S" <emil.s.tantilov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>, "Chittim, Madhu"
 <madhu.chittim@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] idpf: fix max_vport related
 crash on allocation error during init
Thread-Index: AQHc/1f/F6KjYuf630qaM1Rvjwn1KrZEtL1Q
Date: Thu, 18 Jun 2026 19:37:05 +0000
Message-ID: <IA3PR11MB89867EC9ECEDA89667EF9B7AE5E32@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260618192325.8694-1-emil.s.tantilov@intel.com>
In-Reply-To: <20260618192325.8694-1-emil.s.tantilov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|IA4PR11MB9009:EE_
x-ms-office365-filtering-correlation-id: 28f8b959-c77d-42af-06ee-08decd70fa4c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|23010399003|1800799024|56012099006|11063799006|6133799003|18002099003|22082099003|38070700021;
x-microsoft-antispam-message-info: m0krnpQqQ2DS2/ONGJq1lkCwjtlP3s83WQUHzpBv65k9UNluhZrDRSn6yUOAbyMtMnPRJO+OY5l3Mgb/UzbgKFmBDG9lPO1O2phOUcSwJyQYHija3yCjYAJ9vMzgQUgGBdnA64Gr+tdPPRHmqBkhUXfEl7x7klK9DYoy3ic442N9xcR+mTAAmfn4VSw+D26DOkwSzylbWyrkAbNFenRrowtFhr/xCf+LvjZ+syrfFW1BRIYekLGjznwSHVojFgRLcb49gNYrjE/VvdpXtZDDHC4p9HM81fsvYC7p3gJypvX1PAuSFMpop6c7kp2Ulapz3eHS1OIwpKjjj6P0zUmxs7gtA2cJ1rKOup5JBW3O9PRvXrNhXN10s5lQzcdjTvfQpoBzl/grTwteqtbU8crfNhlPZBSCVfsrpuUWcjhFlzB+CRHolaRFAnRa9aY7+jfN0YeJN7YNBHK1sR4A/CcLTMig39vG+Gu+4ubFXbblPJ3vEeRF7pYHkhJBVLtLAJKzojS32P2HBiX91wq3x26bB6PNQy/O0F87LhjWp3QTfGFap3DTppBe3adwRVoK6VfpGPWqmoML4WI2IcPQQdbFGKZeOwk+v0nPpA/ynmFhT+H+xmXXqGwMaYaRfcBpnFNnRlxhSoAfIOs40SA0pECNkCNz7ys6+WtDnuSnX03vVM9CVb3MZvoAmxQkTWjJPrL2bs4Y9PkxJjPNl/qIYz/MLkQXQoVc9eQA2frQzObc/kG5EbufbK4dPDa/biM51DGK
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(23010399003)(1800799024)(56012099006)(11063799006)(6133799003)(18002099003)(22082099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?p3KMMWlaRmN6DUwJcd2B7dyABGPRHs8XoaafDO2OfJfYzhjANY9zgdVTQ/FQ?=
 =?us-ascii?Q?1Bhw0dtjit3GfDVeHTiNBkS+apkvouY/BzYUJmNbmH3zzTOzapGgrXF4Eb1T?=
 =?us-ascii?Q?PF7Nwvzb+Je4iEH3f11R5absMTy8p03oxH0y/4YK/2+L9nd4j/SkLSFH7emN?=
 =?us-ascii?Q?Cezyeoymtlcvoc1a9uPiG8Q5WZg3qIA5o1LwaT/wo2itL3se4LSX9YprcBlh?=
 =?us-ascii?Q?ihVT+YKEtfRCc15wepTSjkpfrhswl8kmpQsULaWqiMDEontGLcdjpChUcKMq?=
 =?us-ascii?Q?Rr1zVvsGT1aWPCPVXsItyaGRTKBsg3rjEZBHTQAPnjUk1beKW3oiO7WPE+tF?=
 =?us-ascii?Q?eKcZa4KlpAv2JE3eAftbcoOBDCgD1CFl1nemTPQkmglO6Bbdo6FoStXCnpXg?=
 =?us-ascii?Q?diox5mkBJ7a5Mpf6F45Q8D8MdNbhMcsE3hcn1F2y17nU7P3vyhy0vXSyRV1I?=
 =?us-ascii?Q?eJXmOLfxjDwTYgI3Bgw/PirH9raILQp2FccAEtF1OPg3bn59tK57mHPkX/Cw?=
 =?us-ascii?Q?WzeLA9gWZHY5qHYWWuY7bJ0J5OPOn36mURB8kqCp3jxUHbwy24L6kQ9sZQPj?=
 =?us-ascii?Q?6egLqXxyW447hdeZRmW7kNsTA+cC81ZYPgFiBlZqyDqEeKRdl9/RXFz5Dned?=
 =?us-ascii?Q?60+UNFZ2m0JuxFmdocnJN0EQkCxeB5bgOA4QqBWQK7QINqU71p2mgdvgtTFp?=
 =?us-ascii?Q?Gj1DrwrSSnLozPaMenIVF20eB51XUf5zAA4N8YL9Azh0gLuONmd3R+P+hbUq?=
 =?us-ascii?Q?ukRGA6j3eBX06fyAQ9y5mxSU29r8XcgJNcWf8l+q0+pF4XMpalEvV5kKOT9P?=
 =?us-ascii?Q?UEdJhySMJt/gn0qqXQvEXUPV5wOQcv0weEJjwGHTPpeIU5mKGYoGLMeoy8Yr?=
 =?us-ascii?Q?Eo23IpoVFFwZAzy/9JzJ8EBBt3AMU/w6al0oCDjROYy0YgDx820oyqSwCrPB?=
 =?us-ascii?Q?6FcDtf/Yf7Sx4vMjO57zb5x6P6MsHW1yqjhm7CEh0sFGVlsxVWrrk1OnGOjP?=
 =?us-ascii?Q?G8GRepYk8tnVmbR3pcF7WedGE7VUhqTqXHLUk/fwI+PKwCgsYIFuYHmV1dKM?=
 =?us-ascii?Q?hOLFbaWN6KjtT7+vWSF9hdXjKtmlm2m9/Q2KEW4nuaB7SpIbVkDkK71STuGn?=
 =?us-ascii?Q?3fLfTUAqjA+C+SoNZgCUlNoXA3tql0/OYnxDS5a9Cl+Nhu0OcSm1DgOiVttK?=
 =?us-ascii?Q?y6wXNUeXPhlfmBCEmFG66a1N5U5Toq4Nnq1J8ZbolAzgDr2ARmBouVjGxy1G?=
 =?us-ascii?Q?sEweOyJO9LtMSYKUTivc/sSB/+K4mFPVL8DSu1gWjezKXVjLFZLUf0TvZx+X?=
 =?us-ascii?Q?jGS9irjcp03NTR1slxbdTk1c9hxQuvJcQi2dqUPRifwuC3e9ycbN0/I800N9?=
 =?us-ascii?Q?vympuzChG9kZdCAWLJT0SC9hkNy56Ja1IChQ3WKhJCLeRxKHHq3ylr3waU7Z?=
 =?us-ascii?Q?Dv0BlDo5vLTr9+lm1ydIBRzoglpKBSRoIM1cCOG3O7bJDFsCZoUS2aPCEUgH?=
 =?us-ascii?Q?igfiT/uqh7170h4QPNkEDPzgJL9NW64tKooRXvM68JTsP+ApDZ+UZeLzzd+I?=
 =?us-ascii?Q?JXCCAlzp+bTPN+VpXrNslTwso5sV87lurfF8XFVwuzvOt9qePE9dpnLq9249?=
 =?us-ascii?Q?lBfXDdvmhZVEVfL2t0zI+9Urgb+oPAKaOd6OHilWSrsdo7nvSrndQUDC5BI3?=
 =?us-ascii?Q?vDiya8eFNBla3reTNnCnAnP+5uKpbmaUsXb/CZq1L3R8cbWbgtJbadQQ96RR?=
 =?us-ascii?Q?lZSlz1CbSEM93ECcTqoG2dmOQ5FsWrY=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: mDD9jEHtjsaUc5rhuo31BYMG9y+qUP5N/SW7GhSfAGKSuTu7NNWpaE1koCM1X64yQ10b2hYkOzNZpjSE1w+ZwXma2cbHgdlehSNptxaGyT/BmDu2rleW9edP/TBbeXZwA7uaPPmQ1SipPDiijcLEazSSaJ6aUNSbkJ23FNyb3zo2umZFApFpC85pX60MAgxmb9IEACq/xx61BCHVTSNCUipAfeOe/ZuJHE9ZB7q/Txd8YSyfHi+h2mYtb9Hlzv9HaCibQbhBelDrjSUzz1F3IL7IZdSMa75aC8xsINFiwVYVXW2MfMERHcdsUgLDs+lfBSomBsHrrzXwWYlleKgNFA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 28f8b959-c77d-42af-06ee-08decd70fa4c
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jun 2026 19:37:05.2264 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +h/Yzl8c/So1NGsaIMSWPhWOvtkoOAEH3M3ziVPPUPW5iyxoL73vai0Axlhp4MCbN2n4Ulbz6HgYCDpck3KagDGkOtHMrF/qF/MAr9R5/ec=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB9009
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781811430; x=1813347430;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8mXEuXSwHvqn/7xNjL3IBkXWqa65j96wkzDNFzr0gLY=;
 b=l16RsgRR6l5Ph5Qm58BeCjCfDRaffJBKLSTAYxF6/S42bIV75DnxU/oU
 aQiuvkmYfpdJtcVaC+AkZA2oqZZpdQrr6Mzj663PeirBkRZ5SabpKa1cI
 qONP2QPzwQInyKEKzb6Aoiy7PlEQmwO/sFIAn59+clAWmCiL52CDwlEi5
 ceOjkhAE0Q11iOHLZGt6qsDxEn2w8DWrSPtquucgp03Yk8HsSdlGjjrkl
 7p4Az3KciMIuMUmyYpB+m+z4MfizSutbwxrmcHmd+HeXCbH6pjGuHY1xd
 HvgySqu9QlU7y+Tcxl+UOTjAxnRIYq6tr1B4+Li/lVmRuzJAUplg5oxs0
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=l16RsgRR
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: fix max_vport related
 crash on allocation error during init
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
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:emil.s.tantilov@intel.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:madhu.chittim@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
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
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:email,osuosl.org:dkim,osuosl.org:email,osuosl.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 686406A25FA



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Emil Tantilov
> Sent: Thursday, June 18, 2026 9:23 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; andrew+netdev@lunn.ch;
> davem@davemloft.net; edumazet@google.com; kuba@kernel.org;
> pabeni@redhat.com; Chittim, Madhu <madhu.chittim@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net] idpf: fix max_vport related
> crash on allocation error during init
>=20
> Set adapter->max_vports only after successful allocation of vports,
> netdevs and  vport_config buffers. This fixes possible crashes on
> reset or rmmod, following failed allocation on init
>=20
> [  305.981402] idpf 0000:83:00.0: enabling device (0100 -> 0102) [
> 305.994464] idpf 0000:83:00.0: Device HW Reset initiated [
> 320.416872] BUG: kernel NULL pointer dereference, address:
> 0000000000000000 [  320.416918] #PF: supervisor read access in kernel
> mode [  320.416942] #PF: error_code(0x0000) - not-present page [
> 320.416963] PGD 2099657067 P4D 0 [  320.416983] Oops: Oops: 0000 [#1]
> SMP NOPTI ...
> [  320.417093] RIP: 0010:idpf_remove+0x118/0x200 [idpf] [  320.417130]
> Code: 8b bb 98 09 00 00 e8 17 0f 5b e5 48 8b bb e8 08 00 00 e8 0b 0f
> 5b e5 66 83 bb 28 06 00 00 00 48 8b bb 20 06 00 00 74 49 31 ed <48> 8b
> 04 ef 48 85 c0 74 2f 48 8b 78 20 e8 66 58 91 e5 48 8b 83 20 [
> 320.417183] RSP: 0018:ff7322212903fdb8 EFLAGS: 00010246 [  320.417205]
> RAX: 0000000000000000 RBX: ff4463de40300000 RCX: ff7322212903fd4c [
> 320.417228] RDX: 0000000000000001 RSI: ffffffffa7f7d100 RDI:
> 0000000000000000 [  320.417250] RBP: 0000000000000000 R08:
> 0000000000000001 R09: 0000000000000000 [  320.417272] R10:
> 0000000000000001 R11: ff4463de3a638f58 R12: ff4463be89ac7000 [
> 320.417294] R13: ff4463be89ac7198 R14: ff4463be94fc7198 R15:
> ffffffffc0f10f20 [  320.417317] FS:  00007f963c0e6740(0000)
> GS:ff4463fdd65d8000(0000) knlGS:0000000000000000 [  320.417342] CS:
> 0010 DS: 0000 ES: 0000 CR0: 0000000080050033 [  320.417362] CR2:
> 0000000000000000 CR3: 00000020ba674002 CR4: 0000000000773ef0 [
> 320.417385] PKRU: 55555554 [  320.417398] Call Trace:
> [  320.417412]  <TASK>
> [  320.417429]  pci_device_remove+0x42/0xb0 [  320.417459]
> device_release_driver_internal+0x1a9/0x210
> [  320.417492]  driver_detach+0x4b/0x90
> [  320.417516]  bus_remove_driver+0x70/0x100 [  320.417539]
> pci_unregister_driver+0x2e/0xb0 [  320.417564]
> __do_sys_delete_module.constprop.0+0x190/0x2f0
> [  320.417592]  ? kmem_cache_free+0x31e/0x550 [  320.417619]  ?
> lockdep_hardirqs_on_prepare+0xde/0x190
> [  320.417644]  ? do_syscall_64+0x38/0x6b0 [  320.417665]
> do_syscall_64+0xc8/0x6b0 [  320.417683]  ? clear_bhb_loop+0x30/0x80 [
> 320.417706]  entry_SYSCALL_64_after_hwframe+0x76/0x7e
> [  320.417727] RIP: 0033:0x7f963bb30beb
>=20
> Fixes: 0fe45467a104 ("idpf: add create vport and netdev
> configuration")
> Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
> Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
> ---
>  drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> index be66f9b2e101..dc5ad784f456 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> @@ -3555,7 +3555,6 @@ int idpf_vc_core_init(struct idpf_adapter
> *adapter)
>=20
>  	pci_sriov_set_totalvfs(adapter->pdev,
> idpf_get_max_vfs(adapter));
>  	num_max_vports =3D idpf_get_max_vports(adapter);
> -	adapter->max_vports =3D num_max_vports;
>  	adapter->vports =3D kzalloc_objs(*adapter->vports,
> num_max_vports);
>  	if (!adapter->vports)
>  		return -ENOMEM;
> @@ -3576,6 +3575,12 @@ int idpf_vc_core_init(struct idpf_adapter
> *adapter)
>  		goto err_netdev_alloc;
>  	}
>=20
> +	/* Set max_vports only after vports, netdevs and vport_config
> buffers
> +	 * are allocated to make sure max_vport bound loops don't end
> up
> +	 * crashing, following allocation errors on init.
> +	 */
> +	adapter->max_vports =3D num_max_vports;
> +
>  	/* Start the mailbox task before requesting vectors. This will
> ensure
>  	 * vector information response from mailbox is handled
>  	 */
> --
> 2.37.3

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

