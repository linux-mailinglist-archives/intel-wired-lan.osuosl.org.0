Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id F2B58AEB356
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Jun 2025 11:49:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7253F41A51;
	Fri, 27 Jun 2025 09:49:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DCczdkc0QkjE; Fri, 27 Jun 2025 09:49:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CAD8141A58
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751017786;
	bh=7ban5ecGcWIClFwbMweqketcWRz0sGhi6z469Au137s=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=5Ym9zsKg4+VaPnwIyYN/EMcHeu+3+11PKEBBhBvYSXgx7/FCt4pBoQmHsWTNaPrcg
	 s738rOdV51jlwqxOpVe35Yi5isZwXodq5foEOzS+36eXc1vf/CM762GdbgGSoe40z+
	 Vdofhk3Zkx8ZocL8dMt/B8BXhdoVofxT5wWWLNLTfmJodUDLg74Ea4FdTjD/vOLFxX
	 zgN2jctRHex+6mLS8zUuWovHJu7ZEsV09GC/CA8QPmab/lJ3ALLtzGxedaUCHB4PTP
	 d/5SlQW7q0PrbvgJP7Q/eV+y2rb3EM7BScTc4tKx5Ni2ewXTM9a6S/XCKJzyv5uDXN
	 +H4WGvwMBvR6Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id CAD8141A58;
	Fri, 27 Jun 2025 09:49:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id C4237154
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jun 2025 09:49:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B54176125A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jun 2025 09:49:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RL8A5gdqzOGS for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Jun 2025 09:49:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0DF7F607AF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0DF7F607AF
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0DF7F607AF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jun 2025 09:49:43 +0000 (UTC)
X-CSE-ConnectionGUID: j61CQPMATsyzTqj5agkkWQ==
X-CSE-MsgGUID: 6cSK7PVqToe8o34H+EeL1g==
X-IronPort-AV: E=McAfee;i="6800,10657,11476"; a="64766699"
X-IronPort-AV: E=Sophos;i="6.16,270,1744095600"; d="scan'208";a="64766699"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2025 02:49:44 -0700
X-CSE-ConnectionGUID: /WXBhm7xQFGTNGtaTy3F9Q==
X-CSE-MsgGUID: PpqFFherROuvhivMTiGPUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,270,1744095600"; d="scan'208";a="158494540"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2025 02:49:44 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 27 Jun 2025 02:49:42 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Fri, 27 Jun 2025 02:49:42 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.47)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 27 Jun 2025 02:49:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=akzoPtZFXSJLtjGy/eX2oCkjz2MWRuwdXp9UqiY4L+Q07vqBqIUt1rFCyyP/nnd55tJf/CLBcE+O0RddZz5lCHFIa58DJtFGQtSqnOSLErr1usPNFIe5qqbT6Wr3zJBtjgcSrUEAGp+D1ICTMXKXQOIc/Biw5vwPOZXgABrCrcm/q5nVCTUjQ42uUbHlxP1ptIbs9X0kvPpfBYkU/VcccDgoHB4YmO4s9oEUGYurXSAYT7InCu+YInqrb9ciWkR3ezPZLD25QbEOrz+ZKfMxtndYU/XGL9mBw1zm1Wpa7kTB7vb0Irwa+jO6hDDvedTkjOIRby4EDVbjcEuU6LbzbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7ban5ecGcWIClFwbMweqketcWRz0sGhi6z469Au137s=;
 b=by6h1wafDtJTkojVwCvJRaLjqyxFFekc0mRHIqdn/U5rMvnzPm7bEZh1sQosXOpO7VZSqko3NNv8LwldAHMhJxXs6SleTqhWnvgXB6GNk1YJndKL5EMj9LL7v122eBRx08yW+N/r2e3blMPFMP/XAC91dRGKau73/5aCEWNIIagfNkJdC8QUhiElno7jPFv2d8jSh9xOvdEy5cbx0bv0C0qVIJuEp8oD9OshYM+mfsab4GpY+iFi3JstYWksa6mKPYSZVkHVCX8+RVkcCjP/UMkl6M1PL1cCSpqAZMxattWnxluETrfBHwXQ8RniF2lUen8WyqKH7LjyLiMqQy2GJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF7A0031045.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::33) by PH7PR11MB8527.namprd11.prod.outlook.com
 (2603:10b6:510:2ff::9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8880.16; Fri, 27 Jun
 2025 09:49:36 +0000
Received: from DS4PPF7A0031045.namprd11.prod.outlook.com
 ([fe80::def5:6c8a:d610:7ce6]) by DS4PPF7A0031045.namprd11.prod.outlook.com
 ([fe80::def5:6c8a:d610:7ce6%6]) with mapi id 15.20.8835.026; Fri, 27 Jun 2025
 09:49:36 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: Simon Horman <horms@kernel.org>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "marcin.szycik@linux.intel.com" <marcin.szycik@linux.intel.com>, "Jagielski,
 Jedrzej" <jedrzej.jagielski@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Kwapulinski, Piotr"
 <piotr.kwapulinski@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Osuchowski, Dawid"
 <dawid.osuchowski@intel.com>, "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [iwl-next v3 4/4] ixgbe: turn off MDD while
 modifying SRRCTL
Thread-Index: AQHbgRtX0Eab64XHFkqHN2ciloOKZLNNdrqAgMoYlzA=
Date: Fri, 27 Jun 2025 09:49:36 +0000
Message-ID: <DS4PPF7A00310452B777E3B1F6AA4B106E98F45A@DS4PPF7A0031045.namprd11.prod.outlook.com>
References: <20250217090636.25113-1-michal.swiatkowski@linux.intel.com>
 <20250217090636.25113-5-michal.swiatkowski@linux.intel.com>
 <20250218193657.GK1615191@kernel.org>
In-Reply-To: <20250218193657.GK1615191@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF7A0031045:EE_|PH7PR11MB8527:EE_
x-ms-office365-filtering-correlation-id: 93576ef3-4c11-411e-9441-08ddb55fed19
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?gCloSOgKp27mF7WkecVhsYSGrYXQyIEbqitaJ9WOYZuBomn0ez0pGXVYubRz?=
 =?us-ascii?Q?s8TvgH8bmaIq/wmgH5sAPsickClMFCVF6jMHik0QmBHNy9n5xP2Tt2D4Fb2I?=
 =?us-ascii?Q?RnMGiPEjPNPacrqhDh+msuJLNpOoTjfjqshoCKmEYWEz3+zESUo9Q0AzIzTk?=
 =?us-ascii?Q?LZig/GzDtEo1iTX49gvG2gTlOmVBK69KAUsyQ2vqxthtaXzeBmN1Dh+oXKLj?=
 =?us-ascii?Q?v/RolfVDuoLOCbt98BPWQzdrpBWKEWCRfL04QHHewEErNVT5H24ridPEXTru?=
 =?us-ascii?Q?vPyUOY0R2sX8l/pU8hKB7SWUJyfatFtiQjJVXDeIL4tj8GHUHU/fQGzExSJt?=
 =?us-ascii?Q?fHW7jHXM9EKMd04DCVw7MgSSRaGxp3GOIixeJj456VJ5HORgFMuSjj+yw/4o?=
 =?us-ascii?Q?EiJP4lz3nBkuDysBgOpELcVCx1CuqDfTTfLlzq7xLOsFxi04qLlV9/8LrzYn?=
 =?us-ascii?Q?P0AvMw5b5t37hGRrhSm/rGCgKpDDmZ3GXsvPosEjTmrCPadH2qQgY1Zx5eti?=
 =?us-ascii?Q?vP29Ko4WHKwt19aCmSRGM/KTVjyCofo8CAjm2mLyT1f71TfiFWe7T3qfeKAG?=
 =?us-ascii?Q?DoVL8cZxmmYNbcWtCRQVCsNbU2l6yjQKqnvUsr4uKg2eyWU/hcllGTBWOJGQ?=
 =?us-ascii?Q?gcDCP9uOM1MCkm7Wrq1hK+5gsVRqD29VVUE8NhT7hvfuslb0VOxXClFGlCB/?=
 =?us-ascii?Q?nzFMPHOIwvPbbIi3xudEwCLMi6atVGU/RfP3zah/3pH8kz7Y2mezqIAFGWyp?=
 =?us-ascii?Q?zqJ59SJBqqdBsfA9CjSQJzJid9VsA1zZh6Pipib1BSz9FgLLpG7vS+kFSAOh?=
 =?us-ascii?Q?4iSym8WCHfFgHKyulWGe3K9jPxXvnoun9WMzaXaYmrRUKVk2eiTObfaLrkuE?=
 =?us-ascii?Q?2Qg0rjg2kHTSZGD8re06msp1BjsrE84q8z2xkF/PXT9vsk4aOwSw7bEKTJt4?=
 =?us-ascii?Q?KHvfai85FMYDhie7LyhYLCj7/YgUYXriAkUfVEPz87osotqDplqRsh4CrHAD?=
 =?us-ascii?Q?gCozRQL3YjoSldgB7ACWaPuy3fEfzQCZlMA4AV0FmjMTLL9w2OLZVmWQAZaU?=
 =?us-ascii?Q?ekMoINZPaHHCvi4TcqkZEzowB9+haCAoB4xiIaL3WAcNmAYgHKoUyP4gr5Fk?=
 =?us-ascii?Q?2peP6xbgRv8CBs98a4u6W3usNJvvi6+SA5a/11/CaKDScpFcLuAlMAyLC4xO?=
 =?us-ascii?Q?jaGhCgqkf5u7SAMVbZ5xq4SuhWCPri3RSo+fX9NnCtKTeG4sYqmW0zfD2Oi4?=
 =?us-ascii?Q?uverrlasNvAaDewTU5LJeHZaNiLvUydxfhfv8FGJP44WwdNuad9dvDMTFE7O?=
 =?us-ascii?Q?xGOAl5OV4iokKyd2/iy9mo83SRQZRewhA9xcxkhdVHyg2Ps9TmXJYevdDHrk?=
 =?us-ascii?Q?HEopBufKpKeqFGHSZotPK6QuPSOhqv6JW/933A5fK/DoCR1na7hEtbcmm03g?=
 =?us-ascii?Q?jQUyuWsFhz50hz6cAorsj0GejR5FrMJ1uQu9XdRdOSICItpU72TMUg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF7A0031045.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?PwElzPIWWye5B5XI58/zypHsQ6bMIFpuA2rj+q3p2I6d5Mi3EKhTCA1oa0UW?=
 =?us-ascii?Q?Ik0CWqf0IIHNPdpUw3VllINd53r+mzY5W9UnWvpEM+GZs6V2BdA742OmXjQ1?=
 =?us-ascii?Q?ggHElNjD8Ccs0iJun8m0cOP7VT+CprGje/x9hMA+fJkU2fF1ql6ORp2X/J7i?=
 =?us-ascii?Q?GXPZz5ZqKIPoYu8PyvDt1zBUuvqmNRijojBEF5g2Kpko0u0jzPa9PEsR14GC?=
 =?us-ascii?Q?wLVyhhLNxVMdeanNaVaLI9q8YVheDUXBtarl4TgZOgKBOhLCPscNp5r7NRNw?=
 =?us-ascii?Q?JUrbZBTaFMfK7fsGOMlU87jUsQT+5RR9o1aVf5OTT6Rx0j42wgn09rLE+5Ri?=
 =?us-ascii?Q?glVwyOUpOX6EmJN+h1ttf/uq6i2AkHrRWdg8DF7uclTlDnQktvA8l+AVUqi4?=
 =?us-ascii?Q?yDcEEjJZIIxd/kao6r4TbRTUkgulOq8m75ZbhjipSPHZAFNunAq0m+8Jt64m?=
 =?us-ascii?Q?OWrt2vnNBhELnoSP7Xh6lCLd8r0DMd6bjAS4JW0p5AnTbb58lPPcqS9kxWVL?=
 =?us-ascii?Q?CbbeW9QbKmvArthqNmokW57qYWGrASRjve4cSw2gR5QPZ7pueZa+1KdkC4/N?=
 =?us-ascii?Q?1OzzmUng3xXWpYgjqqptvhcTqma31dh1eRmMBD4LRycOHsWKWP01xYgeDz/q?=
 =?us-ascii?Q?R0wVSUxdMtc2FowWjdPOaw6f3uUPdRFozDtZf/xHIj9xWTgucDms4sgve7xx?=
 =?us-ascii?Q?wcwjD2NwCSubt4ESxSOq4PVmREbgUM+xVje3JDmKZtRyTQdous57me2MwmzQ?=
 =?us-ascii?Q?4UKBn9f9gyM35psPR2PcUXgVBVUAssuSFC8YsU4zkrOrH2IXc7CSmPXiBNgb?=
 =?us-ascii?Q?5CUp6pZlZPpfEpb5u6mP0sfIfeSFeFu34z7OBWtR3wTHl985hC6MAmGZmVr9?=
 =?us-ascii?Q?dGwIpSlFk/V0QBa8OPICGgUQDC5bW7AMRoAahrbrUPA0D+B4duR2di8Td17F?=
 =?us-ascii?Q?834fRJOOON0H/OKTkC/7vGQS1wr2o2+Ao4q0B0cWLSpRTwOBN2KcrPC0Vb9H?=
 =?us-ascii?Q?eRs6FPKdVoS7wtrmmE4tzZlahaR9UxArj/Qq7ON+kt0zkjHqgRS8jgP2XDBu?=
 =?us-ascii?Q?zwOofJh2akavxQkYhfyolj+TtZpRLIZWMax9zbdWvmA5I6dDkUiFROr5Ozj3?=
 =?us-ascii?Q?VpIyLVBddUbs1G9wF7pXw3/U9x5GFakYUNcDeX+aBV5zxYSqgCjC4qya4OXR?=
 =?us-ascii?Q?L0+ND/ijhue+ozLShz3HCuKP+StpkQ654w0MW5DCm/385HNIPzNUqixdzbji?=
 =?us-ascii?Q?ZXYfy6nx9o6Blyi1IpQKvsoqfs8P2qYvPoMHhnG71/e/XVWrE+ONTmriAOy1?=
 =?us-ascii?Q?kx51Lc2yB6Rjn4U2YRBsC1lM22KsZlF/jnN8eysp5AKayDyYE8GnvlvRxWD/?=
 =?us-ascii?Q?pEn/FFUkxgtEB/nJOeclP4Zrcx0qYoIDhJdxZp3m1iNBC+vbd7nD7kljp7sx?=
 =?us-ascii?Q?LK2tzGXM6+6vuuim7fxDQ32oX5ReG6ZT9ZtaPsFRrXqBzuBHAEyG0TFh0ZS9?=
 =?us-ascii?Q?IjNs1tPGvtw33+GBRKuxau1zb/Fg5zO1GAKilZzywEGkfrf9xKNk+devj8Xj?=
 =?us-ascii?Q?HKSEPmYrRX0avkMwzadriPpeWh4hOvw52RSOLcGDwvtvY/xsEH8djv2VtYdG?=
 =?us-ascii?Q?nw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF7A0031045.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 93576ef3-4c11-411e-9441-08ddb55fed19
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jun 2025 09:49:36.0317 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: m1oChkau3Or0PtgNJKwJ+A02MSnXpVCMhBmxgrr210casA2AAB+voBXELLr62fGxNEUS6yNTEmDPLZPl1xdZoAlqppgJ2ilLHY0ZSRtadA4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8527
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751017784; x=1782553784;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7ban5ecGcWIClFwbMweqketcWRz0sGhi6z469Au137s=;
 b=B4EqKB11P5yE8NWboZ7BbP2bgfk5ozUaZ0t82qIB158IwA0A16ACmLOg
 d9bUQKoErnXeFyRhzg1F3CmfN5YefADVRmPVQE8SICq9CJMFSZxVlXbej
 o+r4nd3C7W0eJpa147U2566C4u5QBHa5CXp51pgAx0bqD/OdIeX7ReXhx
 oNDWDL90cesHpQbZIcHQEHvHnGS6bqxcMWIMyn1zoi6Ny+GM/3dqC1N73
 Ny9/lTkFgPeD3XCj+LhVe2Wuh9z5aqXhoAPpZ9pUyJenZMU0Qj0l+OhZy
 j0/Y086m3QWdKJPrhMpWsTMU5qFFeelG8yR4wHKfEAGu+YHopoVBN/Tay
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=B4EqKB11
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-next v3 4/4] ixgbe: turn off MDD while
 modifying SRRCTL
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of S=
imon
> Horman
> Sent: Tuesday, February 18, 2025 8:37 PM
> To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org;
> marcin.szycik@linux.intel.com; Jagielski, Jedrzej <jedrzej.jagielski@inte=
l.com>;
> Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Kwapulinski, Piotr
> <piotr.kwapulinski@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Osuchowski, Dawid
> <dawid.osuchowski@intel.com>; pmenzel@molgen.mpg.de
> Subject: Re: [Intel-wired-lan] [iwl-next v3 4/4] ixgbe: turn off MDD whil=
e
> modifying SRRCTL
>=20
> On Mon, Feb 17, 2025 at 10:06:36AM +0100, Michal Swiatkowski wrote:
> > From: Radoslaw Tyl <radoslawx.tyl@intel.com>
> >
> > Modifying SRRCTL register can generate MDD event.
> >
> > Turn MDD off during SRRCTL register write to prevent generating MDD.
> >
> > Fix RCT in ixgbe_set_rx_drop_en().
> >
> > Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> > Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> > Signed-off-by: Radoslaw Tyl <radoslawx.tyl@intel.com>
> > Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>=20
> Reviewed-by: Simon Horman <horms@kernel.org>

Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


