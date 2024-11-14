Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1062C9C8C49
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Nov 2024 14:59:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9638D845C6;
	Thu, 14 Nov 2024 13:58:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lLTke6NHM6yD; Thu, 14 Nov 2024 13:58:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6975E84677
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731592718;
	bh=3yEvpp4LqA84i3av4dETcwl8AwjuwuOAy+AByqAsBck=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=wxxesdS4fyO047m6qh6djcAmF3ezH0aTGy2aT6bT3IQDc0tFQQ2KnI2bFD7r4HWbF
	 tCUneOn8mV8CcUKLl5R6iK89XwKA/yJ/giX7laPGO01gwVGxovfu2la7ZccnG8bmoU
	 l/0anI1H3+LW/aJyppg4fP7gOT9lI2kwNqzp2VyyJD4DtMho2y1etD1b72NG0K/y8A
	 vqApJ64LcqvbUw8XNSAvIsth2oiNUWJJJYASjju4uvZbhGpLU+MJFQpOvL9mpj2EFT
	 52TZkMLLQvK3I2ffm0uaIEmYdGaOH2kYFVCSTnYGtjnpskr91gmpsOEhNTkQB4azVG
	 n4Cm12QzrMswA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6975E84677;
	Thu, 14 Nov 2024 13:58:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 7DB776C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 13:58:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4E0BB84600
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 13:58:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YwuVksNIeNab for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Nov 2024 13:58:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org AE70E8460D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AE70E8460D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AE70E8460D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 13:58:23 +0000 (UTC)
X-CSE-ConnectionGUID: uODP8cbqQUe1PH4/GFqtUw==
X-CSE-MsgGUID: k/uM5GffQ3yw4bVLGSh3BA==
X-IronPort-AV: E=McAfee;i="6700,10204,11256"; a="56929294"
X-IronPort-AV: E=Sophos;i="6.12,154,1728975600"; d="scan'208";a="56929294"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2024 05:57:46 -0800
X-CSE-ConnectionGUID: ypiQb1moRiulfv3yNdrv1g==
X-CSE-MsgGUID: nQ9xJAuSR0CpViDEQC6Afg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,154,1728975600"; d="scan'208";a="93161878"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Nov 2024 05:57:46 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 14 Nov 2024 05:57:45 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 14 Nov 2024 05:57:45 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 14 Nov 2024 05:57:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JfQovsNkOXj5YPdJyhbA/+NlD9Nil7Zo5b9Ggxo8V+aJHDWzWK5xjEiNoS1ou7gl0il2Wnq5p7+t5alZWOVy7ek37/TCPqC06rDdrZ67vqVfry/C8wcB/hQsKc0GjKK9qN13j7tJl48czqoVDb70vmTvdLZB7OK+CIHoRmUXwORkWLrIRP1s7GrRabun/HL9JT27zVyphdc+6iaO5enG1+LTd1ZHbXqhAswMUowaCbaxBE7njwjgDyE7zclbyQs0/wrgnbbXzaulfGUB43bFWPgg31LmfLDKu6ipairWSdk2D8ibomlTnYYH+d3y0mHl4uclyz4EgODUDPK99+sYlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3yEvpp4LqA84i3av4dETcwl8AwjuwuOAy+AByqAsBck=;
 b=NjVjEtEA4c+yvjeZM4AtFX7DMnjzG4pojTVsffmWVSCWN8HNuRrsoBCAPB/AkidFoJZPyS9wOQ31vrEDfNufdhIJGt8LGSE1et4rq+ItJM5n8GopCEh+/cH5LoVLnrGe24GlsbwOekneJJul//E4a1AERrVuoOmOmzVVyOHBagwQiZvh1oEyylqU+C4nuncUtXBn7LZybzmV+U5r94liskyMSqfasAO19WcdUXaPsFMfZvn2Qa6X88xiMlBCco3B1oxjsY0Irc9/4eKXL47YscDoPMBM9gQs6ZuZMyMQhq2iRHe+o61j09PhqUQqmMVeIbvHyUb1k+Nv5osYj0a7/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by LV8PR11MB8678.namprd11.prod.outlook.com (2603:10b6:408:20b::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.29; Thu, 14 Nov
 2024 13:57:38 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%6]) with mapi id 15.20.8137.027; Thu, 14 Nov 2024
 13:57:37 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Greenwalt, Paul" <paul.greenwalt@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Greenwalt, Paul" <paul.greenwalt@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH linux-firmware v1 1/3] ice: update ice
 DDP package to ice-1.3.41.0
Thread-Index: AQHbMjBILYtBqejQYUyMMdPt8bnnHrK21X6A
Date: Thu, 14 Nov 2024 13:57:37 +0000
Message-ID: <CYYPR11MB8429786ADA0120BCF3DAD1B5BD5B2@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20241108223643.2614087-1-paul.greenwalt@intel.com>
 <20241108223643.2614087-2-paul.greenwalt@intel.com>
In-Reply-To: <20241108223643.2614087-2-paul.greenwalt@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|LV8PR11MB8678:EE_
x-ms-office365-filtering-correlation-id: 4430a741-04d2-43f7-ce8b-08dd04b44c61
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?mczJSy15qRJIcTsWmBZlnyLkrTmV3bWFbFtDLzyxVj16XYbfN292SSv5R/iT?=
 =?us-ascii?Q?h1z0PH3pp+l7UVGJOuap+EeOcIFdrfqIfDsGF4CQOvrYZQs3herbBqn/d1Zj?=
 =?us-ascii?Q?fT45fuqt9lUsA8MYxm7Z0hSgaIF1BIDCZ5i8iaFrcuq0MUeM1YqSNjClKNt0?=
 =?us-ascii?Q?Ai3dONlMeaawRV1+eO2kS+0sImP8Xu2ryzuzQ2jaoJ1dlzAdVqb5BnF1MEPb?=
 =?us-ascii?Q?QcATESWNEp20w9643uyTwlzzzL/HMYxi0EnyJ85BP9N7UoEzY6qGYXwOZ0b+?=
 =?us-ascii?Q?Fi9yJNCKKoQr/vN4D0tmIqvKjCzBpSDX4ZOqigF+BPyjNf3m9IlzL1kkPkBh?=
 =?us-ascii?Q?YZNo22Mqb0YhNQNRSYjgf3AP6Na0zZ/mewg7Uuczx4KAlh1nsDYxsK4k+027?=
 =?us-ascii?Q?fxLmVubCs+WSIkRussoh8GcHRWiefI1PWmfxyDD0sD6jOix6HmbzPWWjl+Qb?=
 =?us-ascii?Q?8yDzDr9atAfQVCrHZedwf3t1RyUw1XIT6SgVDM99FkTnhJ6VONcFwhXJvRKz?=
 =?us-ascii?Q?YC/H7D3A6zQv7zH63wOePFPijfUXyxHo0DJjQCihCHS3smKBlIoHBgrUlHVm?=
 =?us-ascii?Q?Vdj1P2G2kR/uzh6xOd0dYYcdQCfoJumnaoAJxGw0ku+/GfFvNO+qz+e35Xv8?=
 =?us-ascii?Q?f9viMgVqM1M7H21pj186BlAMLnY4ZxYObeo3sBao8WvvN2ebDfCFWKcqgnlS?=
 =?us-ascii?Q?KGXw5LHqfaHIH65kDRfJgpjMsVTG9V0bTL4y1s6KJPsCObwLssOw6YNzZVTk?=
 =?us-ascii?Q?s+LBc/CsZPkZzl/EvyAcQbe3vqjyr9LQQcKWaRlph6YY2GJXRP8HpdRgJaOE?=
 =?us-ascii?Q?NyEUmcH7Rd0PdshqKNQi0nLgjjoIdKbxNymZhWNzFZq1z0/iRGK6Wbz15oJp?=
 =?us-ascii?Q?wVMWvPAnfa6BysScIJJDVpkJd+IQMghJJ9mxteT4DHBk6F03t+wayQjFwuqW?=
 =?us-ascii?Q?/HMvki0+hnz/pAS1KoPy+HjMzJVPzfxotQz975TfZ/SQCpHr++eN2fZPQCKG?=
 =?us-ascii?Q?wPrV1udnppOlh8wuFtFcYrrR4HTAf7F7X7CtZizW19zzmBHCPlPIMtxx/UBM?=
 =?us-ascii?Q?tpolRvUE3x1XFDzvlntV713llEo6SXiagMrFR8bm32SlLtvQtO2CZ56c62L7?=
 =?us-ascii?Q?TLBvDIBXCReB7LYifqqd586GFQyLnaXBO89I2CYU2vXHdfUKDh8oAr2Ch343?=
 =?us-ascii?Q?YvKZDuzTeEiTcxJId+hImk2Jsaes/rdOkVq11jRv+efm8x8OnnB3WsasHsI5?=
 =?us-ascii?Q?2KIWuxZuLAkPxJ2+6GqjS8J1llGePog8Vq5R1ru93ffQvyA3ga6Jr5jmsWo2?=
 =?us-ascii?Q?rco6zDPg0vT5Sbg/9OlUREGGDQc0Elo2WqV5nj4sRRPfd0j/I4lI1lNa4R3p?=
 =?us-ascii?Q?gKvCKOA=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ZBRcdRLbQHEf7fp4Mf6ZTi2mS0K6INOxs2Ltkv48+EgN3tVJuug52ZrVj1tl?=
 =?us-ascii?Q?DoG04PIGBmfH/sR4hWBwj+ydN+cdPV4XcJNAwNoRwVqpANgXSj7hkMGG81TI?=
 =?us-ascii?Q?MfyJeHf5L8XLuJdhDF+kkFicTSSpmvI+RTF0dfAFc2R+p0GQJE1QrTKJl3IV?=
 =?us-ascii?Q?L3KC+GfzkJNxawgcyqEUrgoANc6QCPRDg4rit6N0AclXyeiKwzumCu9BCQoG?=
 =?us-ascii?Q?mE84haZzK9djHarhFyYZWmZ/k2pxbRs3xcIx6vT6czs/qwQiBIwgmPf+sh3M?=
 =?us-ascii?Q?LBezPYbQhUMPdhWdgxLOHs66ciIoXIMFJ1VLHfvblmSzJTbvRNlk7cQJDzqQ?=
 =?us-ascii?Q?sVfKna97n3T3bSbIu1mx+f1K6Nzub3NjhvH8TLQCYepPpMOgM8mXlcbF4IzX?=
 =?us-ascii?Q?t1F/EioIaXJNDfBMbc06R5UqQ2QUFLCA/osHHAsXmipWYSlpBXGdMoCYFr5Y?=
 =?us-ascii?Q?mj3zSAIFLu9uQcR7BeDoHnbAh9oVqoHIMCxKjfc7FaS2hJQ+rPcK+uNlmkxb?=
 =?us-ascii?Q?8bOVMbk5kUfFerGgny12T17oATOHoQxTTTB5KDBk3ZkZYFbd5rMDH9zVMzJC?=
 =?us-ascii?Q?cXHuIMPIufddLaWAuj0Y+csL/2HMAdsECux04qDMDM3DLTino6txSjOYuG4i?=
 =?us-ascii?Q?WpOC5a5Qg3oJMQ8tzbzanl3MWG2N6IlU1279lbIWZwFCkmBuzI4wfcr3FR/V?=
 =?us-ascii?Q?bNRB+otmdFgH6kEtAwiiG4BErPCppLsriuSS2NgPw/3aunEeOLBq5XZuIJOq?=
 =?us-ascii?Q?rF4RKByVvZaJIS03WN9RF4eLDu7ouAqBOVixgvzb8qcHPTFoioUd4UUq6H9t?=
 =?us-ascii?Q?djSMUNuLkK38rb+Rn2bniNGCOmuNd0vSSCrzoyA1HcSJH4uknidkCCytsVQh?=
 =?us-ascii?Q?bZXJEcU4Q3bbrcy5GPb8iW3NIRrRVegiAZzo2syjDVQ+UPbeSqvSm/ANQB3n?=
 =?us-ascii?Q?FGp+YX9uflcTHwZN/9qzbxryDXqjbl2dgniu8EqSzn6gyrXaNeCrdn/ZWxZa?=
 =?us-ascii?Q?BIDWciaG+Meh0CX0UyJDtC3iyLhzV0nAuVhpe1kZ+4n/gB/PdGKfZE1d8IJi?=
 =?us-ascii?Q?7V0MFyIIwFiY074crs4aAP/NsJyXZIj03JZlNaE6h9BHpeB4Rhoq9EpIMUOD?=
 =?us-ascii?Q?ZijRYFkD3xYAk1D12VKbEnEQdmQ9UtRBSEXoiCJdnMB26ZvBxQnM81aSf5Wo?=
 =?us-ascii?Q?wTE0I4OhGPUwBNcS1uQRepTut+4Ku4OuiNhi67fPb4oHhL6Tqc09W3FrDlKd?=
 =?us-ascii?Q?HXAQNfbYR/9xjMpOZ6RqeAg3PST/zlKI270EAVo0TPwbf6TycL3mJrXNTpSh?=
 =?us-ascii?Q?NWIYK6WCKwRooyWQmd+oslNVxL6Z2S/vKpAUbcWOV4RKgqnKYNiyzJdo5Ujx?=
 =?us-ascii?Q?ftLDPeaEw2+qOiVqOCdYVsbceVyQqKujg/zDhlxYybmMcEsJRj1MuS/RZN6k?=
 =?us-ascii?Q?owKirsWtEc3jUJf+rjdiNGqk54Zyq2VnZzRqjlLp4NzW839OVWBS4KFn+fbd?=
 =?us-ascii?Q?kZCp8Lzbbo2qCkZpKBg8TwI3t8IqtH5WI3yf0ieZATitipcQ0txLE4ioFzsM?=
 =?us-ascii?Q?A69iirMgkXl2nB8dbVNVgkW9zn7zPDRaB0/am8YaOvbfdfnzpZaiSHFxbNeL?=
 =?us-ascii?Q?eA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4430a741-04d2-43f7-ce8b-08dd04b44c61
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Nov 2024 13:57:37.8420 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bnzkUMrAIyroWUvSsssMyQZDAjnlCxJt9MXjhQ4it0RgsAGOiyqvpwq7mL9FLjPazr8X3FkxbWH2fSvCUJp6WwlkVAnZ0IPmfL41Fc1oDJzjXDqVBfg5gfEZsHfQ9Wmm
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8678
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731592704; x=1763128704;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=iEoJgYIAgJzoDoirUDI4M/FvEJDDNbJ8tJOwxLAAS8U=;
 b=AMzKjS6prH8uYM0zs/OM/48YjoPZePAhKHrOcXHiwbcfAZPIZrC6Schj
 Aj1/nQxqarw5yg8U7jqpubeLeJzcfxfhWsGQ1Fyx/O/wsQl5uZcrQtiYY
 J6mJTm0tmfwQp5CetMc1HxN2Blbx1ItFbz1sqlkaC3aIK0xRIPgf4QnVY
 h0hiOfnVwaFnjtgrKvcfSmMgb2eQqaTHUOtZI9vGrYC5s3Piw1A2ZMJ+V
 e4hhmJgzCwx5BHpp3FDMzbUW6rk5l0vv37Qe5MIPsqI8NidXg7MscIfV6
 oY71T/w5AZ3sLle5t4zRkO7B0yvIQWB48igXxrMev482c00JDXZ1c+hXo
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=AMzKjS6p
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH linux-firmware v1 1/3] ice: update ice
 DDP package to ice-1.3.41.0
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of P=
aul Greenwalt
> Sent: 09 November 2024 04:07
> To: intel-wired-lan@lists.osuosl.org
> Cc: Greenwalt, Paul <paul.greenwalt@intel.com>
> Subject: [Intel-wired-lan] [PATCH linux-firmware v1 1/3] ice: update ice =
DDP package to ice-1.3.41.0
>
> Update ice DDP package file to the latest version: ice-1.3.41.0
>
> Highlight of changes since ice-1.3.36.0:
>
> - Add support for Intel E830 series driver using a dual segment package
>   with one sgement for E810 and one for E830, which increases the package
>   size.
> - Add support for 192B max header length.
>
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> ---
>  WHENCE                                        |   4 ++--
>  .../{ice-1.3.36.0.pkg =3D> ice-1.3.41.0.pkg}    | Bin 692776 -> 1352580 =
bytes
>  2 files changed, 2 insertions(+), 2 deletions(-)  rename intel/ice/ddp/{=
ice-1.3.36.0.pkg =3D> ice-1.3.41.0.pkg} (50%)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

