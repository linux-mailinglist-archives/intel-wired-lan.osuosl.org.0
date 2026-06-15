Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id WOH+C1HpL2qoIwUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Jun 2026 14:00:17 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 36D50685EB0
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Jun 2026 14:00:16 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=8Yu71nHj;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D7E7460DBB;
	Mon, 15 Jun 2026 12:00:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JQ8pdbCZ48Zc; Mon, 15 Jun 2026 12:00:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 41B6360B5A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781524814;
	bh=4EDj3Tu2oqAAXLo/yx/QcAM0jXGaUaQv6E3bX6RFqCo=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=8Yu71nHjsdXRqaHh2VGARcFgLqtNSkFt4q/aRk7t+/K9iynhD0qfuUE3ObligVasG
	 UNI37MkHx21fIy6b8ZJ8BOspv0oicwPTE0HdlJg6N4gD9TeTnPSikQwJ7MG6bHFPAK
	 yyUY9Icpjh9HRgsa426utyPC2gJjaVBMB/D6MEz2guSIT0ijAmUQ8fMfi4/cijlE7v
	 LJN229sYsHxmdhW9/lQBmO11Ly0zp/SZQH2XonefX9M9f19fJ/gYCCCZ8Vci33Bqi7
	 g9OifER03PpN+iX7r1hB5CG8ehXCJa35c/M36kCwDoDw0+IOvvOwBaBGlfAzQQTTTB
	 XZevE9zglbfRQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 41B6360B5A;
	Mon, 15 Jun 2026 12:00:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 51588DE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jun 2026 12:00:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 196D060C11
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jun 2026 12:00:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hQYqkWHLxxnw for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Jun 2026 12:00:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D7B4160886
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D7B4160886
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D7B4160886
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jun 2026 12:00:09 +0000 (UTC)
X-CSE-ConnectionGUID: PV/Od2FEQ6qfw9F1H/d8Tg==
X-CSE-MsgGUID: pEudP+sHRr+ziB9WFymnoQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11817"; a="82246828"
X-IronPort-AV: E=Sophos;i="6.24,206,1774335600"; d="scan'208";a="82246828"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 05:00:09 -0700
X-CSE-ConnectionGUID: ObGh+DHoSJio4uxPdpA9GQ==
X-CSE-MsgGUID: 8EphysPwQZWnFsqE6rCwsw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,206,1774335600"; d="scan'208";a="243091070"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 05:00:08 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 15 Jun 2026 05:00:08 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 15 Jun 2026 05:00:08 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.46) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 15 Jun 2026 05:00:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=o2A4C4MXnuSAd8Z0M2j3WZlgxLGMQxot4OdHLCxGeK7yvW5MzWZIPr60xf0qC9QSiMImRW58LCulUy2vfTVlXIW+MufWfasq6+TgrJ9BhRWu+92wc7LKd1o2csTNkWSkWA+Ah8ddRWC6lM+XvokiCxF2CSKvj5G2u3b9rSXM1EhZuJM1dhO3QfNJB2CzQXlPHO56LwWUx41iaaBIiEqocidzJYg2N6pcFPu4r3j9kP8IzGE9fisvpdsqvxM/jrVlAE5x8AxmvlWbdT2vF21fwwM9+PXv5GxuKxB5R88Zgh3nFiRDCzp+MoNP30kStDVFIRfLeeyp2gETnBjIodL54Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4EDj3Tu2oqAAXLo/yx/QcAM0jXGaUaQv6E3bX6RFqCo=;
 b=eR14jh5guLaQFNZdCtRxB8Voe6C6so8N+1G1hvZeWfA7lgruXd9Snp/x1jP4E9dz2encUqIV3QrQBeKsaTnIPN6PGe5qTj+3wZ0qOmD09EGpvCUivyqvlbeupnHtNjOuLtsslC/68fvojPdejMPfXsAJxnoqmTyzUFcaICaJdtvcFwZivJ2UlBtJvDZUgTeg4+nwBJFVE64Lw7paoZzTPvgDF3UCrZTGhS0xCVOCFXGSTzqmR7zfpWRdSaI0aRqKkccYpb161IbuwsX+WhYgqL/RPonyWKUSLcZvD3XIiaqL9cewB3QAESwb53X/5hR8NtG3KMqtOUjgJDKj6iQMBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DS7PR11MB7858.namprd11.prod.outlook.com (2603:10b6:8:da::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Mon, 15 Jun
 2026 12:00:00 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%6]) with mapi id 15.21.0113.015; Mon, 15 Jun 2026
 12:00:00 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Dawei Feng <dawei.feng@seu.edu.cn>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
CC: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S . Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, "marcin.szycik@linux.intel.com"
 <marcin.szycik@linux.intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "zilin@seu.edu.cn" <zilin@seu.edu.cn>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] ice: fix memory leak in
 ice_lbtest_prepare_rings()
Thread-Index: AQHc+b3VGSuMNTsboEqIfmSNMe8rubY/iW7w
Date: Mon, 15 Jun 2026 12:00:00 +0000
Message-ID: <IA3PR11MB89861DEDD0C74E75AD9E3579E5E62@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260611161204.605962-1-dawei.feng@seu.edu.cn>
In-Reply-To: <20260611161204.605962-1-dawei.feng@seu.edu.cn>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DS7PR11MB7858:EE_
x-ms-office365-filtering-correlation-id: 60a8601b-4abb-47bb-3d8f-08decad5a06d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|23010399003|7416014|1800799024|6133799003|56012099006|11063799006|38070700021|22082099003|18002099003;
x-microsoft-antispam-message-info: KIFIA/2dimDsQLPvM8p4rhgu+dPhv8IyFI1uZrK50BaCy/bjrveZ3vPHM37lpy1WuATt8q96PcfIxgW6Y73/6DhQmJaVV34Q8Upcu0HUltXdtFXpncGPBT4i33lT3Vp5JWMF9+AXJQkNREi+jvOuooGoEos2bYnx1JjROaYIPygs3hANTqqEpc7n0L5L8XZlmSYSfFsdzSQByTLXIOKFsdvoyAp/Ck1HZ6t2MJV/OrnhJjkO65bk13bGte/9s59YFNgSYurwKBMzuI31sVeLSYi6EuXYCYvLR0WHTqkMeEoG0A7FOXjdiMWF0f1S1tpsUVco+17rjGvoeJhauqGvFfCMjeOFU62LBG9e/qqW6zG/Ux1aWeRAtCM4w5GM/NiRz92FcNQkZWbprnAf9Vz3WVOi6mP5+rFbjsoZFUlm7j6baYW6hsawuPPE0qcIGQbwaZMVI92jyFatb4CXydw326IRYxdfob/SCxeQhhxz+VXdeiJiwtwU/y+rGNvgqpnY4vOcH5H9NjUyjfxU9P+qLrk7qfdCwl4nqIEOLNAZanEljsUcquHKNT8lWO09e2nFJmDmlxDyPixoIvlBlzwtD3YmWqSLlnE7HfC87YsG7peYRylTQ+8kovIfCdHQPvrXTSeBvrOjdbsALrQ5EkKya1sgRnhmesJnIceFdxM8rr5wuX3EO4XyGMNXF6FQ/SKvq5bOsp9mUC9ObHZ7y4zwvK5ePPMzvJOQbr7z6TAAECJW39DX5JhxM/7oP6HC8N0R
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(23010399003)(7416014)(1800799024)(6133799003)(56012099006)(11063799006)(38070700021)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?PDlliZYikd0woxjj92oZRFoghwrXYEdzeegzOg7+3Mt0cdWMPXv9ALIgHOEl?=
 =?us-ascii?Q?MVMCHh6iuDr0Z7gCLaXz6Kx7ihl5VUntGCc9L9UP8aapJmYBxf9UOxON8YWC?=
 =?us-ascii?Q?rxotPMhiOPVcq2vbPXXo5JXMt5I6dYnQQtvCNvv2fOcKv00sHIHnKXMiwNEp?=
 =?us-ascii?Q?Q5ebzuxgk5hfphzbONEBBTEdF21ZTXchLj6890sodIepUZC9iW1M1gfiqAex?=
 =?us-ascii?Q?LqMR87cqaHgFz+W56TBWrosaz9UZtLdG9vKpq2TPI9Xbrg9rCwbYBHMVpOFC?=
 =?us-ascii?Q?HPCSL3nxIOcOPaN7Ol0vsIVoI65ygAYqngT7+mgkf6ChVQkx2I3Fz6iHfDPG?=
 =?us-ascii?Q?P8JiTAy78NG21v4PVlqMdc/WbwwNaQt5Lvo6O4xpEZWoY7wpwZJUdd4C32eu?=
 =?us-ascii?Q?zjYRFMnZ3JP8Qj96dIhPsWStX1kLxplfzXUw6+b4tj7ahdflqNA40IeFecj2?=
 =?us-ascii?Q?ykpUqga3m0mqvvFjVA4MEdxwXgcUYmHNjroQy0wJVz4Xw+ciu0gTSSouuZuG?=
 =?us-ascii?Q?lpcdjXsoSIv1fSS7aF3fieNc+BlehSEQMbeeSmhOJPYj6cryGp+xsuTQOk7f?=
 =?us-ascii?Q?jo088+8rSwt8wRQsL3jT/1iWtfjw41BuPpcFCb+mgwD5QrmE+wT9W6rNMjCh?=
 =?us-ascii?Q?TnyHPXwwIjY5Kw8mhUnbR4A2KvDdywVgqVhAtY3Gv+GmOXUDdr/YMMht+nE0?=
 =?us-ascii?Q?ukov+0q0m+xclsBfXhOxDbb22Jw8yc+/TZyV9+AJt4SjU8E2xXg7MRh60r0x?=
 =?us-ascii?Q?lKEFnfP2E16tYvcI48qdBMCRJrHF+poAVqIxH8yGmJb/GsCIHRK842OnTi0W?=
 =?us-ascii?Q?1Jv14rAzuDjSb/amUBbSYc+h6xF2X/d6T9MZg3v/S8vUnN21HpcD/PvhfyWH?=
 =?us-ascii?Q?jl/CpVxv1qV9e5meVwJrdqoQ4FCrS8fZgZ0LWSCd+MH1OvN0bJCQ/bibIecg?=
 =?us-ascii?Q?CX4/2gH7LxkcerGgAzrPayDtTtZLptCZp4oQL0isdHPyGbFFkJIR6O0gwM2Q?=
 =?us-ascii?Q?2+cQtC1gOaPmExx1QQIXNimnsVsmtu9vDtmCuXzKJ0A53wz093ZA3Yrtf36R?=
 =?us-ascii?Q?9+qm5mSoGrVTGxBL7XY85TMn9B9KDwqzvKJ6Ip07EH73yLEcbiothO83DFOQ?=
 =?us-ascii?Q?wUefT9SSk2OoWMoakSFi0ejz9O8oEysUFwVx88zkAk3vU+JGVuvyx8Ccb7FS?=
 =?us-ascii?Q?97gbTCSKGFHg1uAu5DmgkS7Qz5abQtmgILcUPH2jH7C76M/oODk2KguMVDQ9?=
 =?us-ascii?Q?JQOwtbT5aG0JU6GpHOejeBvUlS9Q8PZij9vFGGhQuaKlIPtzfRBSz57ug4EX?=
 =?us-ascii?Q?iTMDi2m8u8U85Etw7FGbl2tXWvzrwm1/691ApKDenx9dPePFIstJwubqBRf2?=
 =?us-ascii?Q?OUjkVOT1B2avVNDmz5Z11o3e88ranBcI+JIiLQS5vLErVrmsX0fePTGeoEa4?=
 =?us-ascii?Q?CbWt7vyFk1ORPOKI1g8vK4HJ9SvhXpZpxMOI3ngEfQyZ1gnOfUWLb9qoqJ3D?=
 =?us-ascii?Q?5x27wCt7GmfipWmK2KsA45vBbfI0rsiSqktyaSyBmpf9tSQuzjeNh4hqkaUl?=
 =?us-ascii?Q?DzlWxD1vpQGoN19zHY/SBIYMVLROniq4gCn7AeKve9MRZeouY1rAjDCH/0RB?=
 =?us-ascii?Q?rC9DPGHqaqkwrRPraRAd9vmDm3UQjjkojk38MU7HZwxkaN3ZG3DT2dgjjQdp?=
 =?us-ascii?Q?TA34Fm5ehkqcqWqgjEYgUweXB+JB0MCRFhTsHZjwcTqeR47f6l/dB04VAuhU?=
 =?us-ascii?Q?5RiZ5/FLFDcVwodskelfv3EEMtig+0E=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: TrxsxSpo/Qs6hhaH2Jbl+jKOBf9y4KYt3fwubCIa+BU/BkBqLMzU7kO1kFc4WEAoqaadboHkj0FwA8tJSbM2YcFvApofKu64r2NvH25TngA+Wm5a8hqoMr6u6aDIBwn6r1l3y8BQtytfkc9NJsabYnTGt96dO7CrdIHquBobQ3lXsEyOpajKSLvNt7JILdzrm6i3V+etTqlYLp2EpM7NUfB+BMWN8CgMXnEoOvh1Tw2D4mQrBdPswoWrjwl7V9CSfCT0VKUAsOlw1mFEwGPrZoTIiuDJvpfHQTlYAGkWK61kxsX0Af6dgYEiAxb540wu3DSfGY+xLxv2s5hG4gO5OA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 60a8601b-4abb-47bb-3d8f-08decad5a06d
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jun 2026 12:00:00.1036 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CJCDVJi+PldaTmH2lbojJIBoFTZjHSph7WlazOVEqorKZ9Ozgy+xSdHYK4j65UYDhCF1mdwM2PFFYxd/Rcm7B74lZTwLaZOXmsE8mmldWYk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7858
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781524810; x=1813060810;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=X6OEDYa4KInAxRbaA3tIaNUoTPoz3UGaw/WqPY+rwME=;
 b=PIeJ/fTmaLu1kIrElQtqFbLGXNZUcBKVC/5CYLdZQLlR+ekoq7h0m3bh
 R8+PJ8bqHs0BCIq9TmQuJDPr8D9e1llwumFZkgEnPugeaadThw9sbYu5L
 gfbfTW6bY986iApTnxHXF2nj6Pyyue+XbFYdL/3TRdexDIjM+we/N586S
 S/RGL2pmedzHzVXmOq9H9DOZvsttglkjyfAinyiH/4NZ/ppyFlu01Gn07
 pnFxDvjgG62ZRJKAiST6ZqI8XO8X/S1d7+SO3JvKozIk1VjW2yt+WgJA3
 GAJK1NplwNX4FFiUHPk13X61QwQrTtfNkQXI08/qj9CLcF9jq/zxocUEh
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=PIeJ/fTm
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: fix memory leak in
 ice_lbtest_prepare_rings()
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
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:dawei.feng@seu.edu.cn,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:marcin.szycik@linux.intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:zilin@seu.edu.cn,m:stable@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:email,smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo,davemloft.net:email,IA3PR11MB8986.namprd11.prod.outlook.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 36D50685EB0



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Dawei Feng
> Sent: Thursday, June 11, 2026 6:12 PM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Cc: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>; David S . Miller <davem@davemloft.net>; Eric
> Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo
> Abeni <pabeni@redhat.com>; marcin.szycik@linux.intel.com; intel-wired-
> lan@lists.osuosl.org; netdev@vger.kernel.org; linux-
> kernel@vger.kernel.org; zilin@seu.edu.cn; Dawei Feng
> <dawei.feng@seu.edu.cn>; stable@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH net v2] ice: fix memory leak in
> ice_lbtest_prepare_rings()
>=20
> ice_lbtest_prepare_rings() frees Rx rings only when
> ice_vsi_start_all_rx_rings() fails. If ice_vsi_setup_rx_rings() fails
> after allocating some descriptors, or if ice_vsi_cfg_lan() fails after
> the Rx rings were prepared, the function reaches the Tx cleanup path
> without releasing the initialized Rx resources.
>=20
> Fix this by adding separate unwind paths for Rx setup failure and LAN
> configuration failure. The Rx setup failure path releases the
> partially prepared Rx rings before freeing Tx rings, while later
> failures first undo the LAN Tx configuration and then release the Rx
> rings in reverse setup order.
>=20
> The bug was first flagged by an experimental analysis tool we are
> developing for kernel memory-management bugs while analyzing v6.13-
> rc1. The tool is still under development and is not yet publicly
> available. Manual inspection confirms that the bug is still present in
> v7.1-rc5.
>=20
> An x86_64 allyesconfig build showed no new warnings. As we do not have
> an Intel E800 Series adapter available to run the ethtool offline
> loopback selftest, no runtime testing was able to be performed.
>=20
> Fixes: 0e674aeb0b77 ("ice: Add handler for ethtool selftest")
> Cc: stable@vger.kernel.org
> Signed-off-by: Zilin Guan <zilin@seu.edu.cn>
> Signed-off-by: Dawei Feng <dawei.feng@seu.edu.cn>
> ---
> Changes in v2:
> - Fix cleanup order
>=20
>  drivers/net/ethernet/intel/ice/ice_ethtool.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> index f28416a707d7..10a4abc66974 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> @@ -1069,18 +1069,18 @@ static int ice_lbtest_prepare_rings(struct
> ice_vsi *vsi)
>=20
>  	status =3D ice_vsi_cfg_lan(vsi);
>  	if (status)
> -		goto err_setup_rx_ring;
> +		goto err_cfg_lan;
>=20
>  	status =3D ice_vsi_start_all_rx_rings(vsi);
>  	if (status)
> -		goto err_start_rx_ring;
> +		goto err_cfg_lan;
>=20
>  	return 0;
>=20
> -err_start_rx_ring:
> -	ice_vsi_free_rx_rings(vsi);
> -err_setup_rx_ring:
> +err_cfg_lan:
>  	ice_vsi_stop_lan_tx_rings(vsi, ICE_NO_RESET, 0);
> +err_setup_rx_ring:
> +	ice_vsi_free_rx_rings(vsi);
>  err_setup_tx_ring:
>  	ice_vsi_free_tx_rings(vsi);
>=20
> --
> 2.34.1


Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
