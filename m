Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id MGb4MCqUQ2p4cgoAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Jun 2026 12:02:18 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A60E6E292F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Jun 2026 12:02:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=p9XBbY1r;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3080F60F38;
	Tue, 30 Jun 2026 10:02:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UCAgGDOGrCoL; Tue, 30 Jun 2026 10:02:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 90DA760F7A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782813734;
	bh=pAZAgg/tig0b00XegCLwDqtnNNeGA/XoYn54TiOVJZI=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=p9XBbY1rFf7fwsk9yTMlbZZBVdzAFQ20U5vI+5TVEz2NoXAJ1lypdBrYrPPoEXTfW
	 /u4/XRt3AzL4t4NFzjTFH7vTqRNeXDgUdv7DNmx1slf+6o9K3QYxFLb3WKHIoB2Rvn
	 TsLOqgNadvxyelEaTPUj5pbjp7pnlIuYFGC83zxSYq3m81MZawjbr0Ar+pkEhJmRGK
	 AySgLt/9TnYnD14PXf40jfOlY0J1JoQHDIGohTgkG5M0AhdjPjciIOeMzUnWNB6i49
	 vZVpusc26wqB6LwN53xUOzbWE4HuYdj3nM8lHN6YC0cvY95NLyIEYEK1sURwBsxD4k
	 C60ucf0/ummMA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 90DA760F7A;
	Tue, 30 Jun 2026 10:02:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 650541338
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jun 2026 10:02:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 620204117A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jun 2026 10:02:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MEUh2ERNznft for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Jun 2026 10:02:11 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=jakub.andrysiak@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B466B40648
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B466B40648
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B466B40648
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jun 2026 10:02:10 +0000 (UTC)
X-CSE-ConnectionGUID: ldKjKR+7Tja2KIp/f7KDCQ==
X-CSE-MsgGUID: JPbCxmYZTbqmqoQW/hmYgQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11832"; a="83719999"
X-IronPort-AV: E=Sophos;i="6.24,233,1774335600"; d="scan'208";a="83719999"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2026 03:02:10 -0700
X-CSE-ConnectionGUID: jBaEgPwkSkC5IkY8brRYwQ==
X-CSE-MsgGUID: TBo7UgXYRZCVcUCzuAZKnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,233,1774335600"; d="scan'208";a="256613603"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2026 03:02:10 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 30 Jun 2026 03:02:09 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Tue, 30 Jun 2026 03:02:09 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.54) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 30 Jun 2026 03:02:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=byKHbWk7Bvc/32nKbk/on6cNh9QosEJJsEoZj8RkZzbfqt9quHKCEiSNGzcbHCCqc9LOP9E8LdRZL9f90wGTlkpdMttWVHd/lOovhinBlnOp5gWV23DS9di/Wz7Fp7/TVgk7RjTOeYU7v1OqQDa/rNnsNvORHNhSREuU+Q+zoAHRJAYoSPywzDE/FZ8t8A3FrAjyJTuAj0RS8wKRwuRYrKym4VMaaClJMv3v2oz/J1kP1sHwVwodWj6Q0wxwjM+4DCPeM0Rgx2fjN7+7cZgoBmStUtwH1iEodZZ2L+p1uGE3WR86q6rSMQXcfWP/DydqiWKZ1dZAjfQgOnxTSQ81Hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pAZAgg/tig0b00XegCLwDqtnNNeGA/XoYn54TiOVJZI=;
 b=BypoF4u6LtcJQ172KlZ+v/X+DrS5VoSoqwSJbX5VQKiH3Scv1JDCVwDliliJxjDJ5Dpn60zpo1c3w79kqJbq/ewfqVESmik8PH69HFmh/4CK2wy5EDcqnjR/mY+dOGDbSktPfApJMQb8CiDxgDkBS+e273wrIMhPbjwuj+6C9eRxc4ODspf3H7RLxwCQwpwIGyDw11fhy9emyAS1Jmf7ytuNFXUBo257C1pC+77mJqrOcGwh0MTQHR7Pmv3bWY6yF5ihL919K2WpfhYuUMTfFQldqi2r13FtouZixLp+XKjKYPF2Ji+kIaSGIV4T+0zAPRYq3y5pqq3ZS9QXrNO6Ew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH3PR11MB8562.namprd11.prod.outlook.com (2603:10b6:610:1b8::13)
 by SA1PR11MB6824.namprd11.prod.outlook.com (2603:10b6:806:29e::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.19; Tue, 30 Jun
 2026 10:02:06 +0000
Received: from CH3PR11MB8562.namprd11.prod.outlook.com
 ([fe80::ea76:e083:b8bf:7484]) by CH3PR11MB8562.namprd11.prod.outlook.com
 ([fe80::ea76:e083:b8bf:7484%5]) with mapi id 15.21.0159.018; Tue, 30 Jun 2026
 10:02:05 +0000
From: "Andrysiak, Jakub" <jakub.andrysiak@intel.com>
To: David Carlier <devnexen@gmail.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
CC: "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>, "davem@davemloft.net"
 <davem@davemloft.net>, "edumazet@google.com" <edumazet@google.com>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>, 
 "horms@kernel.org" <horms@kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "stable@vger.kernel.org"
 <stable@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] idpf: handle NULL adev in
 idpf_idc_vdev_mtu_event
Thread-Index: AQHc48/ZSGDpviE1x0KjcDa8q74ZLLZXJzjg
Date: Tue, 30 Jun 2026 10:02:05 +0000
Message-ID: <CH3PR11MB856221E7E8A0F6EFE5BBBBA6E6F72@CH3PR11MB8562.namprd11.prod.outlook.com>
References: <20260514183019.49527-1-devnexen@gmail.com>
In-Reply-To: <20260514183019.49527-1-devnexen@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH3PR11MB8562:EE_|SA1PR11MB6824:EE_
x-ms-office365-filtering-correlation-id: ef3c6864-a140-430e-4b61-08ded68ea3d4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|23010399003|1800799024|366016|7416014|376014|18002099003|38070700021|22082099003|11063799006|56012099006;
x-microsoft-antispam-message-info: BiBzTwT4548IHlwPBKZHZosAMAmmFrAHs7yEi/zkC4gc+dmkehygMA5vxupKc1Sn1BRhvwz9Zywc1K3U3PxZb/VtOPFsNLyVpRuE9tU2EMKqS4HdefaHJvp8O3uwLJa5RHm+JDx3rOGgF/PKUpkJ2e/QorhAeeyBRgmc8R2gqJu9cMRSUQV0TL6Ra+06TjVhgzdnHF+whbCs9yYGneFL9Z8W4l93jOvzv2/P8Pf8UP97O+hrnWbzPEUZ7vlt9eumqG6GUgPfa1CPDQ9I4ad4gEhKquEM8YnqAACUgBifxVKmapBM7sJeV0lGhOM8ckuM+jdKdu5A38LNeBgv650mxLxwCdh7y9OGkMWmEvIONlXP3sxsuSDRbOuTumFN4+c9QbAGUTXRpX3+pv5Kq4uWEe8yMJIA8m9ohsUQ3H/6WKHuMIABKyYHlOibsaUyHBS+rqe1S76P0devfotwslvnfpnRlz1Gu02k9q9ZO1P8DMBLa1JhaHF5lgpvLzAIYTqqH2T/j9p0zqLGreaGz3ODqBGhR/VWnENWaiv1Tf831hghR3tHZZKxUsc/It/YUld4GCpxuFBPnRnkw4X6/tmph/Y4t1ofT6iGcIaF2KcAx7nEgXomvw5tsQGeT3DrJtYHtUlv+eD1jXZtE188nSkCywSKrCyTRgVhsHiNAsxTaEdS6cv3Xk8poC72KIfYvDODTJOG8sWSDsN/zpTmUpF6rpxjJ9ZWJeplFSG/gqYWWGc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB8562.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(1800799024)(366016)(7416014)(376014)(18002099003)(38070700021)(22082099003)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?tiXiHGpTc8XIgCmxCRaMDdjaZbB86Zucw+Yr+/rlR+0AUDmtC3/FTAOjuFH3?=
 =?us-ascii?Q?Z+PWUPudBjC4h9HxHDVSNjg7IjxifzX/43sI8pYuIFW6vTHX8udvAt2NG/pg?=
 =?us-ascii?Q?PKEclN9sMQr9Y+8QA823Tf/540QB2/aqwOF2IqPdUSwJjuIOtbGM53CLClKg?=
 =?us-ascii?Q?AkmME9dq93jKZdZHSkV1fojD49OpQV35OGlnaPtUz2ufpWCChVWiUdYMk6En?=
 =?us-ascii?Q?csHi+7NsvUmnapwvRXVExlS9x/R+e3k2CmeSJ63nRKKFA1cKMCtKDZLtd84k?=
 =?us-ascii?Q?9RYeeEWZVpw/QFSG4jLqGYsOeIduEniYdDOJprBM3/67o6GV1cosgb5Sst97?=
 =?us-ascii?Q?K5IOICU/xZcdWWpslA59DF0hqmJeOUFmXuYifIolZVQhltdmGBHS+i+qfXLC?=
 =?us-ascii?Q?0F/QQKZIDf7cTwHr/LD2D6YANfFZd7/ZYsm/9dJg4mmitKflIYrRygMUwbx/?=
 =?us-ascii?Q?WFoLCauz1gZUzVjRv0kohfkgnlP+Oq0qk75KrKX/vc0qhP2zyIJJKNVVxabl?=
 =?us-ascii?Q?T2NqeWPlPSHjJOixSKx4e9V90G/1A3uGNI9za+v2Jx0ok4lTkU5g3nThfvJ6?=
 =?us-ascii?Q?xSciwcdEELaNV0HUSgVG1h59DPsMsMmO+YKYuZeBf1fCx25duwtFWRTM+kDh?=
 =?us-ascii?Q?iomCwHmdbfdH0tkeumW+dVpNvKFbJaJeVBinhv17gsiSuhoFC0hG3gw1tL1L?=
 =?us-ascii?Q?UBNpcXOnCh4F4B4vcTjbnDBD2z3KPBDc2zpAzbCWEzzWFlN1AmgwWmDMwG4U?=
 =?us-ascii?Q?ZeVCKu/RYONtmxEEC+FhKZW/B4++cD7P5k4WaAiK5wZNYOeyZJJuX0LHJpyW?=
 =?us-ascii?Q?9lPQaa/hdehl3C1qsahOWNOSjpkU2bexHXENnysehjLbr8yacU+71D8+B9sz?=
 =?us-ascii?Q?6QKnmHNczVDoMQz2RUAtZtCcj1BWjWPc3UZkNUhtQOJEMzhvQWpKfxLWJbRO?=
 =?us-ascii?Q?/p+Vp3VQ2pNcW6pPGl3EtRGZlvR6kNZV+feaWxkbya2rHhQUTYPFunRCQt/T?=
 =?us-ascii?Q?YTYzNyHSUMmVUB91N8zAs+xXryFQo/BZMysOENWn19OW14/rpVup+/EHhliZ?=
 =?us-ascii?Q?FOQtDoDXvit63q40w5J5GKg0cmqepWRz1nZn5vqlbYNlh72E6Zz9Xr7Im3FJ?=
 =?us-ascii?Q?BM91nChRkUzJl4sWi1ZJmzU2skrIdj4EGml0gjLEqkX6TPdy9jYPGA7fnQr1?=
 =?us-ascii?Q?Qvsmj5MiviKwR35r9XyRlpXNx5hKBHnh7lt8+R9nW9Ph0jYTbXgs3LJKwipx?=
 =?us-ascii?Q?yyPea+uReapHRSN2PH+EQMiA0CJsMSewsLXsLDGUVu23ub7olem71/lqYGtq?=
 =?us-ascii?Q?X4m7HQHJZq+aN7tItg0hN5zjcZGfY1AKSxdyQQU78qV0IoCuCz3K+4gzJKLX?=
 =?us-ascii?Q?NMgvnqu6AW3ZlyebPeJlIqkv3hO8vi9nLOS5CKG38riPNeh/DmcTOm5Sed72?=
 =?us-ascii?Q?UsH557mbqjeUUHGkgd/DU7pBArk3owZMCQPy8m1ciU2YUz1IwdMLevdnUZjp?=
 =?us-ascii?Q?OghXD1uzsPpDW5lpB/ea+9LW/FxCpwAVFsSxn/BWcH1j3Dy4doGnzIUQBTxw?=
 =?us-ascii?Q?y6LCrXdwxLlEBA55XOZ5E7Y559nz46l1SISfK2S6vXXuAjCUJXEWfMMD30xp?=
 =?us-ascii?Q?Xw1xArsojwOqwue9oIgAphdFfeU+cVHxY1lq9WTONaSc8tRbgdd3hUBkmWKH?=
 =?us-ascii?Q?cGFCmt5/LG/kR3ZbJwGVyLpK4YjQsNcKC/aAOcteLZSKKb5p0Do+Pb+kEphl?=
 =?us-ascii?Q?VmCLMVtuTg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: GUsIHvb41C3LnlGFkLgysZqHqimYpBd7QQMfPvUTIBXjZJ5Px9W1mnESGdrjoWnLZsL4wN40j/VWBx2+F6+PP6AEIZfJmQDLhTW7tpRhlmYMvLIlUh+Ok4sw/wog4hQ3tqH7mXmfYe5ErQQxpV6KYU39XEqXXmMireADmPl0HbH5guWDIfsRLRN0kP1nnCBZaYAFxuzy1O+9uYieSGMb/bPSIbcdQdIqsYRvbB45ygRs2WXikO2fe64Vf4CdOzCOKJ0xqGFhPOO0jUdvXxoHeneNid0rZRNiwTO3p/HTCS/6PJ8ojGPUjaosOXIRZHpF1R8UdTN49nIV0HiABn9GJw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8562.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ef3c6864-a140-430e-4b61-08ded68ea3d4
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jun 2026 10:02:05.5191 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TSTBJvpD9BTcVRV2F7sBQApzyPDZRGgVefItxbXD9Aompkqzw/TwuyHroCPxFXI4IpGEZLDnrQ15Vf4ypu7gM8+vFioMJJqSc2JrWFd0FGI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6824
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782813731; x=1814349731;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Ff9so0lxApF2DLc06fDueuGnJWMt+H59zF0R/Y8etro=;
 b=FCQU8ZyhOj8J+rAPSse+I16A06aAfdQoszjQvJ7nLVqFCm04TQFjxZlc
 Io8foG3o/ON7hsGOlY0LYGVS0+jZqzrQHAuZggSWd1c6XOmp3XLOu6M0C
 hZ/sktdepm0dLNgRnRZB2mZ3II8TrBOYDCknNapJBuyQHOszBaGepr0FR
 +tSBIk/GztM3QWoSfG8WLVSFC08VNxDnNnjdp4yYeHgwfRSfkvJ52yv0g
 5U4oASjqAjWtBNGqysX+MIHO1bOoks7BjIP0xmm8KA8ll3YYjKYF+fOwZ
 QeMWLNZxmgG67SutkpeODuXOWoe8k9IEzqfnZO229rF9Ck+cec644hfiI
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=FCQU8Zyh
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] idpf: handle NULL adev in
 idpf_idc_vdev_mtu_event
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
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[jakub.andrysiak@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:devnexen@gmail.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:stable@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,intel.com];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[jakub.andrysiak@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5A60E6E292F

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> David Carlier
> Sent: Thursday, May 14, 2026 8:30 PM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>
> Cc: andrew+netdev@lunn.ch; davem@davemloft.net;
> edumazet@google.com; kuba@kernel.org; pabeni@redhat.com;
> horms@kernel.org; intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.or=
g;
> linux-kernel@vger.kernel.org; stable@vger.kernel.org; David Carlier
> <devnexen@gmail.com>
> Subject: [Intel-wired-lan] [PATCH net v2] idpf: handle NULL adev in
> idpf_idc_vdev_mtu_event
>=20
> idpf_idc_vport_dev_ctrl(adapter, false) clears vport->vdev_info->adev to =
NULL
> but keeps vport->vdev_info itself. An MTU change after that calls
> idpf_idc_vdev_mtu_event(), which dereferences vdev_info->adev for
> device_lock() before reaching the (!adev || ...) check.
>=20
> Cache vdev_info->adev once with READ_ONCE() and bail out if NULL before
> locking. Use the cached pointer on both the lock and unlock paths so the
> unlock matches the device actually acquired and cannot re-fetch a NULL sl=
ot.
>=20
> Fixes: ed6e1c8796a4 ("idpf: implement IDC vport aux driver MTU change
> handler")
> Cc: stable@vger.kernel.org
> Signed-off-by: David Carlier <devnexen@gmail.com>
> ---
> v2: cache vdev_info->adev with READ_ONCE() to avoid double-fetch and
>     use the cached pointer on the unlock path (Alok Tiwari)
> ---
>  drivers/net/ethernet/intel/idpf/idpf_idc.c | 11 +++++++----
>  1 file changed, 7 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_idc.c
> b/drivers/net/ethernet/intel/idpf/idpf_idc.c
> index b7d6b08fc89e..9f764135507c 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_idc.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_idc.c
> @@ -162,9 +162,12 @@ void idpf_idc_vdev_mtu_event(struct
> iidc_rdma_vport_dev_info *vdev_info,
>=20
>  	set_bit(event_type, event.type);
>=20
> -	device_lock(&vdev_info->adev->dev);
> -	adev =3D vdev_info->adev;
> -	if (!adev || !adev->dev.driver)
> +	adev =3D READ_ONCE(vdev_info->adev);
> +	if (!adev)
> +		return;
> +
> +	device_lock(&adev->dev);
> +	if (!adev->dev.driver)
>  		goto unlock;
>  	iadrv =3D container_of(adev->dev.driver,
>  			     struct iidc_rdma_vport_auxiliary_drv, @@ -172,7
> +175,7 @@ void idpf_idc_vdev_mtu_event(struct iidc_rdma_vport_dev_info
> *vdev_info,
>  	if (iadrv->event_handler)
>  		iadrv->event_handler(vdev_info, &event);
>  unlock:
> -	device_unlock(&vdev_info->adev->dev);
> +	device_unlock(&adev->dev);
>  }
>=20
>  /**
> --
> 2.53.0

Tested-by: Jakub Andrysiak <jakub.andrysiak@intel.com>

