Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OKL2GlGC3mnkFAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 20:07:13 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DDC23FD745
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 20:07:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0205D84DE8;
	Tue, 14 Apr 2026 18:07:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VIBFWHvnq-7n; Tue, 14 Apr 2026 18:07:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6CFD984DE3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776190030;
	bh=fTGix8DcTNvFbznTLoIZ9fsm/hKiCz2Uw/pxp1xzcLo=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zUyYrw2ogWCCB9zCnjwz3n5zhZ0psSKR/bvFm2A0Y+QxuG0PsxefG8wAfrpHuuTe3
	 0EEKMfA0oExWKDRasd97YNvEob16mXDbcDUH63wi40fGqO5YBbwBQXDE68lFd5Q8tt
	 PkqBYw0HNHSwVrjAex4z4TnyXZevrMsPlIcJYZx4BWYFgq/8ZZDNqj72av354YZxZ4
	 vwlphCbv2bNVNQxKqaRebVCYmyAHVsbNzLI1B2iO1ZqR3gk5mwS17HYZNo4LnzNWs1
	 NQMBFDhIFISFEkdRbRjQeDIeuxJugBOYd6bgwnSVhkAb2Ic91Ote+6CSrmB/zxHPT8
	 lvTzXTEKF8DYg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6CFD984DE3;
	Tue, 14 Apr 2026 18:07:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id C3501375
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 18:07:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A96E942CAF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 18:07:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CvoXH60xHaUC for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Apr 2026 18:07:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=sunithax.d.mekala@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0363942C64
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0363942C64
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0363942C64
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 18:07:07 +0000 (UTC)
X-CSE-ConnectionGUID: IrUofTnbQEqt3a95liLBbQ==
X-CSE-MsgGUID: ZfT1wA6qSbGOfqMPM7oVcA==
X-IronPort-AV: E=McAfee;i="6800,10657,11759"; a="77034155"
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="77034155"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2026 11:07:07 -0700
X-CSE-ConnectionGUID: tfSs/D4ITCyM3UcqEhb4yQ==
X-CSE-MsgGUID: qXToM1usTviKh48L8ZMWZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="235103780"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2026 11:07:06 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 14 Apr 2026 11:07:06 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 14 Apr 2026 11:07:06 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.51) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 14 Apr 2026 11:07:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gRw3vC2HIs5IPLnY0MAuZMo+Lw9k6+UdGSzasOQ3I7gPP9RbOmApS1upSDBrIiLgIyaYX6RiEG/GTX+yYYF40/qvAsOTcLbAJR6cQ+fvvwz5LVFyDfHRQhP969khPAoAGaonpTBTL55Y79h/NJSFPuKUzsO93zuRk1uQ9O2KRoM69RkdYvsxxEjf+Z+cuIGEomLk9GpbbqajJZ8MBjL7tsQpUQhpmNSvOcThyvT+8bfhhqhL2y9skCcHZXENGS5bxj1D07Wi6hsWjPeE7aJwNfU+Jxt1fCsxoDi7O8glwKHh+tZUio9++skOznHnKh/gqJHM+YeACO9tbuQOCv6eLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fTGix8DcTNvFbznTLoIZ9fsm/hKiCz2Uw/pxp1xzcLo=;
 b=ZQ39GQonGpTgWkeMFdbI5Yg+CSG55yLjCP8p8pWnSdk/S6SApOIS+h4i7VhhZAdwp9MIHSHjNPh3tc8KKDdV4UaS8U6APRQmOL5B6u8g7v9j58JFYiCr41C7wmE5OOwqKO/rivrEadPRj4QU1W7t+lwHNrU9sz5UQLKjoBM1mtTWhXOBAHAPE95KxIsGG4jnYX0RcwUO/LZ58h95XSxTOZKGUkmHQAa3xDc6IS791v+hTWEpNVCp8L6JgIKvYbHmbvRCEKwCEkSNG5wmm0aVSXgZFxj1SFqPAJ632ilnFuPlKgrR2GLEVD3kBZkQNjl2PyQ/2AhH8017/OXFOyt8oQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB7522.namprd11.prod.outlook.com (2603:10b6:510:289::8)
 by MW4PR11MB7127.namprd11.prod.outlook.com (2603:10b6:303:221::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.46; Tue, 14 Apr
 2026 18:07:02 +0000
Received: from PH0PR11MB7522.namprd11.prod.outlook.com
 ([fe80::ba5b:e8f1:5eb8:3ca3]) by PH0PR11MB7522.namprd11.prod.outlook.com
 ([fe80::ba5b:e8f1:5eb8:3ca3%6]) with mapi id 15.20.9769.046; Tue, 14 Apr 2026
 18:07:02 +0000
From: "Mekala, SunithaX D" <sunithax.d.mekala@intel.com>
To: Kohei Enju <kohei@enjuk.jp>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Shannon Nelson
 <sln@onemain.com>, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 "kohei.enju@gmail.com" <kohei.enju@gmail.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v1] i40e: don't advertise
 IFF_SUPP_NOFCS
Thread-Index: AQHcvJk24h4qT97iA0Sw6A8+JuMzxrXe+BXw
Date: Tue, 14 Apr 2026 18:07:02 +0000
Message-ID: <PH0PR11MB752220A0CE30349AF2A783F1A0252@PH0PR11MB7522.namprd11.prod.outlook.com>
References: <20260325205054.109822-1-kohei@enjuk.jp>
In-Reply-To: <20260325205054.109822-1-kohei@enjuk.jp>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB7522:EE_|MW4PR11MB7127:EE_
x-ms-office365-filtering-correlation-id: 84a9a205-5a76-4223-7975-08de9a50a12d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|7416014|366016|1800799024|38070700021|56012099003|18002099003|22082099003;
x-microsoft-antispam-message-info: ykHsOPIxk+FlY4ExNKtbPP9BHmRNrx68tz/5wQq5SBh2WunK8eZLkgNvUBGXYPmBeGyVQYCiCD18Ix9PD8K6EnzSVQDYNG+unBcQD4ZjSxwhE1t74N+WZhsTvfUAIndJieW2FVSRmNhySoGJ3jud+zpAvbqq1f2QMTEqhDwzFZ0KfJYkljkXRKO/XPYmDbICfpMvCpX3m+Mrm6QbnL6YbvCKMtTDvv210kT0LqY+vYYhz0zhJ8I9xkDLvDPiwGAKG47pSLbv2k63vTQyRclkDbNfcAg9T7Q1/onuVVNt26v+m57CijAxgIEJkWpJHC2nE537A4eG8zVtbB743nilC/EoBhuUh6Tpk3kUYYe4BQiq1/W0aNylpvT8TyKq95beXyGqaj+bcjkgppfnGOSiqyPdl5GEmKD7UkJQd5jX3qmeLAGrz0ooBfLvcJRTtm4LmFkkdqDYfBLLK/fClqEjt52WcgbkirGrOP7O3McKXo18/Hs9n0DNQXm1fS2eZZNIBeYDhWLaHzJS8NI4oNif40p6zBIs/oVtZFFP/IWAYDTMneOch3UDOAbxuBAPbiyKWAORHTMim1YXLtfarmdDCxakim80menniw3RS8gIlEAHTlM8Iapxnt9TkTIRaf2paxGknU09adHjQVSCQWaqyoTGgBsdCv0To29a25xE9MZuBHfmmOzxLI0GY3rHN6L4jLOPJZWucojEwTIJKyCDwMDv7Wi/ULlyt1+tTvhFnYRbYEHo6Y3jRrwoKLCaggOKtROP9WKZjPB8HTpIdM1LYERPm0WlUViYEbA2elUBAAU=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB7522.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(366016)(1800799024)(38070700021)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?jlgY6RphbqFaULfyxPoxCubn6bT/Fgv2H7NrMpn/6KeHvGe52M8K3Ur3/m2D?=
 =?us-ascii?Q?R5XJ2LHApPB3uxee2fvOElQbKYB31Vl2SgTA4AVnyJdg8kj2b20nBd7d4115?=
 =?us-ascii?Q?Bs+XhBEX1wWPnwtiYi+aBz3Vif6Qv1kIWHN7T7tn+P8Innp7fE/0CXHWSaxs?=
 =?us-ascii?Q?Eo+Narlm8xHaW2rxEnQPuLHHSXffgN9WKaHqjVbUI477ELg3ABsV4/+dKoS6?=
 =?us-ascii?Q?+ODmrmdEmDGpTsLyF0gJeSLJP62QEEBjLiHw1MudONAH1MDj0Zd0XNIx9BYF?=
 =?us-ascii?Q?m9/qxY5EAlMblzFvQqNXIC006pwAiBsBwfURuE2cgFcu+nHiX/F2u2NLnXqs?=
 =?us-ascii?Q?kCuLVeXNHqIbGMBQXqiATXg+0VSfX7TBWPcO1yyLIsWINce/Z70nlX/+OmNe?=
 =?us-ascii?Q?o4yvZ0j8bPFKyPq7tqQcI7kENOibg53plFQh/Tx+dgbRKaXz6Wx0G63LkMuc?=
 =?us-ascii?Q?o2Znnai6x5SdCVl8Sp4r1xVWG57BpbxyAkEr5mcuDS/0/VkkCPcSjlSDdtw9?=
 =?us-ascii?Q?FPBtlUv5abiMydK/DhHs36E+MPEywlWuFlQd2t3MPcaA3f4vapvghVkVCFSG?=
 =?us-ascii?Q?E/kpHe/nO5D4AlP8pvY5dU2xonFxvAtsn+pn9jc4NOjyEdY9+FedWSeASvQ4?=
 =?us-ascii?Q?HZij2uabrLv7vJOztr1+6o1GC9uGnRH3daGaxCfZV3H0jisQwmFVwh5OYYGt?=
 =?us-ascii?Q?zwzo8cTVwg7lxVQRRauPGrjx3MrIWC+QmGDgvArXFArpJv/tSsMb5kMHstD9?=
 =?us-ascii?Q?c8+hZnLZi4QyY2KxDj3CRIqYZ8bBaH/N1xA084dbXgsQvFUoV29/JLRJuVko?=
 =?us-ascii?Q?+MjKMyxtWmEsJJYZ0sDPiPmGmQmpY1OI9bgFguCg6nRxlFDcO+4douMjGuXX?=
 =?us-ascii?Q?E/KV3gNWomhcXKnoV/F7qplfpra0Q1cGGjDetVT+BjBYXPrzwLcLLOgrWohY?=
 =?us-ascii?Q?1aSLzsD5uRHdcM8m3uN6yuBgdN1CvQ48fP2q1nP4DO4gH8nfoFdrFZ2dr2Y5?=
 =?us-ascii?Q?r7anCs/GFi6IdW+QkROqbB5gEBgLhWaMoKaElt5bjQtia/szzzhDFUvxUL88?=
 =?us-ascii?Q?fDGo/lI1YU8VLFLbHx0zBNJdptnqNMb1gn3DC1qR9BmJL1skk++RK+FsK6l/?=
 =?us-ascii?Q?AVZkE5/kdb43f0It6ZBUBnmgGge2zacj/HzRE5DMNNtw39xO7FAUBIeg40+I?=
 =?us-ascii?Q?NX0ERkR7dEnfUWgP3BN/AMOEIfV/DIpEXC+EJz74I4dP9JOaqKlN4mu1RJjp?=
 =?us-ascii?Q?o/NB7zVAZ6FaOGsz0hRSWeR0gTjokh9ykSqqvUbSbizyt2krkS9xwqPET5aE?=
 =?us-ascii?Q?OmR2jtIKQJtWdw8XB9B+mA2A5b6GooU/uf1kPNiOCrB6Aw+1JZ4eYyyfork1?=
 =?us-ascii?Q?ld7rvIlol8HU2wS5PHw9Z+NNI+F2hof1G4EbW/tQ6THheyM7mNQs1OjIs4CD?=
 =?us-ascii?Q?m7pqPI4+5KdZnpEy3eRD2jvOW1Rhq+QHvmc+JYALCwTFIWH8ksDCDUAbLnmI?=
 =?us-ascii?Q?G/22FFYI1FglUzKwmCEJ077OgeRX1TmR9BBgj7oRLk+/Cu9u4Dwl0wACjKWT?=
 =?us-ascii?Q?2y4XGSnIyPTWoX8irsGt1WSM2KVIEqkVTQIFXJnpJBRpnKGiaiX7bis5cipm?=
 =?us-ascii?Q?2WwUSH5jD2Cv8zK8L+tzPn9FdZ9R9OWHoJcJnEq5zyo+VLTnUVB9vadnlIjz?=
 =?us-ascii?Q?T/NLF9Re5RoEBzL8PwZd8t6yeRwJiuKguH3mnneo2TA3H2RzQorFjbF9CV+x?=
 =?us-ascii?Q?e+xmmxNkyTi2IkXSWIe/K9OzkwCZktg=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: W4HxOw/ybd+hclv7GODzBidPZXu2X6+2eG05PMC31kCXfeDcETBfG+1jGlgOmt2ImcNNpM5lJQWA+mlrZUJ6AyJGaQC3b0fbyid7/CU9omTzsBfYbP3p9qfzyokjnJy24hNqpTuJFtG1+gd6DRbsnLboc8bhYabEHxqAi8QGD5ebh/tlZiXipqiSsZdxMkJ2hjZBySeh9zcLqFO/iIpQxfkj3bBKo+H8c1BiExAbBQRnMnENveeVEmvyD7N3IzB1JErTOESsSCrGQ+HtMIGG6z0+gByR1vAcMSO8I6xvocq5cnGDZqmeJhEybKfiUjWj2h6eNsTFksWLTT9S0bW+LA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB7522.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 84a9a205-5a76-4223-7975-08de9a50a12d
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Apr 2026 18:07:02.4930 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: D/9iHuWnL73F4MrojEJiJeEkoiruyt8KXuAV8kKmDZAIKoFX+ZYiUR8DGKsUhpN7mVYdHfGfhhnKFrfhpsyOmNMw+H5EkxyaUQwV+70oOjs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7127
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776190028; x=1807726028;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3eNP5HvqFtZixweFqtSnBgzAkW0g+Qkv8NSF7i/3OlU=;
 b=nXyRojVmQjU6lfB0b2gVD8lkWGvCZzXLSGSSt0KZT9AqLI0f436+MEdd
 Xkp/Dj1kCoTGRU/DqNvbm5yfMxzfNVE6iYxF4O/m5eOmru5d5WYlKxTMv
 4fmE/zGHZKA6VON4KKQ9E6gLaU3bYi/4aemVUFiMoCWpaDBK1SHvxRO/f
 bMdQ5cWwVOc5MrMfeHIMvq8/p4XMXHGZ1d+4nSVKMU9cX059PKVhr5j2f
 tg+ezEHKeHAJUhW5VxMSpMZyDfTfti2T02rUOnU4BkfHvwQhWmlGQvRau
 GrJgCiY+z+akl9hJW9r+SgyCDtj5xDm28W1LFhz0f3t+/1bEoA55vkG4l
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nXyRojVm
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] i40e: don't advertise
 IFF_SUPP_NOFCS
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:kohei@enjuk.jp,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:sln@onemain.com,m:jesse.brandeburg@intel.com,m:kohei.enju@gmail.com,m:andrew@lunn.ch,m:koheienju@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER(0.00)[sunithax.d.mekala@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,onemain.com,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[sunithax.d.mekala@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.975];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lunn.ch:email,davemloft.net:email,osuosl.org:dkim,osuosl.org:email,onemain.com:email,PH0PR11MB7522.namprd11.prod.outlook.com:mid,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,intel.com:email]
X-Rspamd-Queue-Id: 9DDC23FD745
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of K=
ohei Enju
> Sent: Wednesday, March 25, 2026 1:50 PM
> To: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw <=
przemyslaw.kitszel@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>; David S=
. Miller <davem@davemloft.net>; Eric Dumazet <edumazet@google.com>; Jakub K=
icinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; > Shannon Nelso=
n <sln@onemain.com>; Jesse Brandeburg <jesse.brandeburg@intel.com>; kohei.e=
nju@gmail.com; Kohei Enju <kohei@enjuk.jp>
> Subject: [Intel-wired-lan] [PATCH iwl-net v1] i40e: don't advertise IFF_S=
UPP_NOFCS
>
> i40e advertises IFF_SUPP_NOFCS, allowing users to use the SO_NOFCS
> socket option. However, this option is silently ignored, as the driver
> does not check skb->no_fcs, and always enables FCS insertion offload.
>
> Fix this by removing the advertisement of IFF_SUPP_NOFCS.
>
> This behavior can be reproduced with a simple AF_PACKET socket:
>
>  import socket
>   s =3D socket.socket(socket.AF_PACKET, socket.SOCK_RAW)
>   s.setsockopt(socket.SOL_SOCKET, 43, 1) # SO_NOFCS
>   s.bind(("eth0", 0))
>   s.send(b'\xff' * 64)
>
> Previously, send() succeeds but the driver ignores SO_NOFCS.
> With this change, send() fails with -EPROTONOSUPPORT, as expected.
>
> Fixes: 41c445ff0f48 ("i40e: main driver core")
> Signed-off-by: Kohei Enju <kohei@enjuk.jp>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 1 -
>  1 file changed, 1 deletion(-)

Tested-by: Sunitha Mekala <sunithax.d.mekala@intel.com> (A Contingent worke=
r at Intel)
