Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gEU7Ma1072mZBgEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Apr 2026 16:37:33 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2426247481D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Apr 2026 16:37:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 55D4B60BE1;
	Mon, 27 Apr 2026 14:37:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JEm4CPHfr2h9; Mon, 27 Apr 2026 14:37:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9863461B0A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777300650;
	bh=1cL5HijaFl6JKekO4lMslvr1Qv1WyMh0RxgIJzF7jQo=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=F2rCFEI0hjjtHiZV6GERQh0fCRe+zZ72IqZ+m4sr3d4ad8ELtlXEy0sT2LmvjCPli
	 yBaRdvQNe8y0JNSnV9siuTH3hvNxXkpLSmzU0Q42+MqzMmrzVuBcRMW2Xq1renNvW6
	 r1zA43k8mvuPpVYpBFGvxf5YYv/HAD9LAhbyPEc/Yo76k1yndRx54bqlXJ9yCkEQXh
	 XZ03HiMPs7eHng1VmLD9FAN5x9SuAjW0LPyV8DCxKWAlAXyUh+DfSNadORTpdT89ne
	 22VBCqKkbhibuiVmTHF5xDXq51ACqfQ6ZG2R1gYD02nxUTpEeMnIQG+BQPPfuEcv3+
	 2R3Tw0xbt4FMQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9863461B0A;
	Mon, 27 Apr 2026 14:37:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 86B1C1B8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Apr 2026 14:37:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8421A60BE1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Apr 2026 14:37:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bkb5JkRbB_ZP for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Apr 2026 14:37:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org AE33460771
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AE33460771
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AE33460771
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Apr 2026 14:37:27 +0000 (UTC)
X-CSE-ConnectionGUID: /tvZWXRXTvuH5WKHITzHYA==
X-CSE-MsgGUID: d8xS57SwRDuVGDRvlCoNCA==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="88789150"
X-IronPort-AV: E=Sophos;i="6.23,202,1770624000"; d="scan'208";a="88789150"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2026 07:37:27 -0700
X-CSE-ConnectionGUID: SFBMGP/nQPiAuPDHttY2mw==
X-CSE-MsgGUID: Rs1TJXE3RlO4fkHS2/DSHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,202,1770624000"; d="scan'208";a="227137625"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2026 07:37:26 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 27 Apr 2026 07:37:26 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 27 Apr 2026 07:37:26 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.10)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 27 Apr 2026 07:37:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gg7UQ2BC7u8mJL/XZSHw/SVUK1yYyJ6STUhDnQhB0XCpCByswCOxoiUGJ+nEVbmS0/rbE4Q49TLT27ROn9l8FfUseNo5fT5KJS5fC2avz9zDrUw/WA7xG2i+88DFd92Fv/9l7wtXPMwZXoHSXztXBaBQ4r8YgCK5m4ACuZ5MgNBFZhEoQZpGjKbTo8eBql9IFyE3PoCBgHtdYzq7ekII80wYuxasVdUhjoZckwURD2SH8NS8GiZTg5CcVQXmT9XBLXM1legJ2+K+nfCR4HKa5EByIo9Y9RdknI/YMT6H8yqIhEK1gfbAbbEZe5yfpHk/O0EfRe8RK+mmGD9oiDX16Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1cL5HijaFl6JKekO4lMslvr1Qv1WyMh0RxgIJzF7jQo=;
 b=bcQ+QZcR7pYsyJiM81fM4tCNToZeLlotrbNrx58cfXlpegyQ+BH0i2Kkb4ZSj5bdfVara9GODV9moHl1wV2j1p8neS8dovC/yOSZ2EzdnE1g83A8zO0qhPNZfFLo7M7Jg5AGpWel6QL3tiLif0pt9scyYVPkl9Aac9pUZ55H17K1GB4qGdP5GMQMdTl+guIwl9OTuTjbmFAOEjs8uxfY49+fs4fP4uZyUYoMRiAX6zNAKaSymOq9N9u4Q9s45I+9cVl19DfeIjTLo2ucHq07Fwd/L8djOXdsDcg2QH1WneTkkePDt9zn+6NBbFy2gi7DM8VSQjamLX3j2htGEVEBFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7378.namprd11.prod.outlook.com (2603:10b6:208:432::8)
 by DS0PR11MB8205.namprd11.prod.outlook.com (2603:10b6:8:162::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.16; Mon, 27 Apr
 2026 14:37:15 +0000
Received: from IA0PR11MB7378.namprd11.prod.outlook.com
 ([fe80::7b0c:7df:21b8:dbbf]) by IA0PR11MB7378.namprd11.prod.outlook.com
 ([fe80::7b0c:7df:21b8:dbbf%3]) with mapi id 15.20.9870.013; Mon, 27 Apr 2026
 14:37:15 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: "Oros, Petr" <poros@redhat.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [PATCH iwl-net v7 2/3] ice: fix missing dpll notifications for
 SW pins
Thread-Index: AQHcznrWSjx4SmzWAUmBkivVXic5vrXzBXlQ
Date: Mon, 27 Apr 2026 14:37:15 +0000
Message-ID: <IA0PR11MB737871DFB80675BC510EC38C9B362@IA0PR11MB7378.namprd11.prod.outlook.com>
References: <20260417145907.696307-1-poros@redhat.com>
 <20260417145907.696307-3-poros@redhat.com>
In-Reply-To: <20260417145907.696307-3-poros@redhat.com>
Accept-Language: en-US, pl-PL
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7378:EE_|DS0PR11MB8205:EE_
x-ms-office365-filtering-correlation-id: b4028419-f27c-4264-2edc-08dea46a79db
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|7416014|366016|1800799024|56012099003|22082099003|18002099003|38070700021;
x-microsoft-antispam-message-info: DdUro5+SReRzpIy6IxJvIj/B8HEvAf4m5IelmhOwdm4QcxsiqD+NqBrVSkc/lBreB7qQfcu5wTpYXh8RxjLyyp9bXJ0j+aLRTtc5nz/LNLhFklio8UZw4iE4iIrO3qg+CszrD7AjuJBYxmov8ZPCRRZEWXjLI8yOGt8QyuEgWTf2JkKMbiLkCniE6XrcnZhVhPCDgR9PPrEkj9EuMNSxRsRe0M9XhNFRic6+iyi1kmRoFOA4vTWYuwLmruxY49buY7SSmKFdVldHs+yLoLrfvgsLAfwGfTRLLjmiKrGX7o2TxA8PjqRc+MD+diIIcBRm3Wex87FjrHJ5xQFMOvG0abb42E4l4siB+Wzwj0ZqDauQk43H+4G4ZQV/wA+JdbfwlyQVLH9Zmu5TUWXPWRJUnVBtNFPUAOziM7f38ETZEhCcXIl6kwQVXh1BCsXgkzxvLOGSHG/kvKpNj8rSQGF/MaFNaGQK4awt+IaTDEqTNHSLFsivnE/629S0jYEwmEFFpTj03WChnFONagsF9WyVY3l3RzGk2ZKUxk+9JbZ08KdqtG4mRDUrGgFWMEOXQHv3W8CrsyIqyUzdYXUSv7bOeaxtQ+HPCgXdAYg1LBRGInxqUpSiiUoC9WGg74ZCECULgRFjv8/S4KKwCoEOXWNQMqM9bOXwxUsNG0dKFbKBO9GDlarJffqgYRj+Acxur/FJ5PoYi9Pud0D2s2ZDaMB1tGKuIK7lLjcw55kn1pkAHQrO2I4zo5R4jMQCqxWeFVCnwZVAIpkU0iDrWv1ZYnCMyFJvx8J0ZyCKFi16o6Jjs3Y=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7378.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(366016)(1800799024)(56012099003)(22082099003)(18002099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?sl5x/Gw6ZD4gO/29pNIOXE+ynNCTwlhKdcDiSYg71/WOeeW3DKLhcHsYr5qe?=
 =?us-ascii?Q?KXH9n/zAUc9MvHomxC2Kx5fJB9S1Wlh20tnZlzqMHKAQPndvVDCRIPRKFWgr?=
 =?us-ascii?Q?jXX3YKHjbsOL7+3hVYw7wo6FmjyzjEa6xgj98HLPv00PqA6XhTkVbaGaH9Xc?=
 =?us-ascii?Q?P83ZHjbnkCekzl0CB9e3eBf6Tvhi/f1grUitaoNF1QCAFcwUtlXLi5hwrLi1?=
 =?us-ascii?Q?dpjKInzeE8zQN2VCAQesfinK0iGdSdwQ6m52vheo3LNHSonDfbac4bY4Q9Tx?=
 =?us-ascii?Q?Padm8l/htFtONls5Z3p6wLUUIlou7EJz271hYTREUpKkkuajTYE5cc4yoP6G?=
 =?us-ascii?Q?bhPj/Ix/o3eKebt63rLASd5Ju/XIYI/cI6j0arvatWoQlr0/dQaZmh/D3qRp?=
 =?us-ascii?Q?qzs3dd4HYy/dWEogbi2th9Yt1/k/hMXjP4c190r0POn25+mmgPjiXVHi53ti?=
 =?us-ascii?Q?LRK+Cz+d2dKkFQvrShKerqzbSrVCr+3OKy4hpmSQwcrz4aYnbY4nS2HqBjvO?=
 =?us-ascii?Q?p+20H/pRVPcxLDzT8u4/oHtgzJ1qOeKl/scf4cxd6F9mpKW3qB034haYqkD6?=
 =?us-ascii?Q?YR0peBJ7iuIR+rF42eL2XuLa0pgLSstG1yOttarfuGkWsD9rwBCeDdRvutp/?=
 =?us-ascii?Q?tCPM3VJ8TEaltnMqMEkVd7v+9cbjGaj5yh4nD63LdrPrOaBkQtfHN4U60kp9?=
 =?us-ascii?Q?q1TCgWm1UYqMT1wMpm7EhlyAhbOcjgnit6BE7zdlEJJ5MAOIruMNwpgUuvL5?=
 =?us-ascii?Q?Fk6NowcPG97yT5+iUup3CoHBQAs7nMErYQ1P39nWjrMalHtG7j3rz1OMx9zZ?=
 =?us-ascii?Q?BUkDiI0Zm32ZZeI3dLUeTvjUuyJXNPC4EZu9epo8W2+P9uzrGP7+Ed4nVNE3?=
 =?us-ascii?Q?3PHtUCDnvhtsSRjzrXIMU2yV+Yibshg+HPPfW72CUL8YxdXf/XKVIbh+/C52?=
 =?us-ascii?Q?79ywm3R16nwp5IK4ZksoN/ZEefz08BiUXhPHK0qE2379NTFUQ/QTiXpsVqal?=
 =?us-ascii?Q?Y4u/p3zX7xOY2bNnHDvtrYHUjrZmGi5txndIqPyGpHH5xaDZ0GavcaxN2oc3?=
 =?us-ascii?Q?IqoO8NZJ1P5wP29c97i+4wYpJ3W6h75Eyi5d+h76FYAyWJAlWyDBbOLNczI3?=
 =?us-ascii?Q?WtCzixCbKA4e1FJQZuYN7G1RH1p28Lh2NxLseW0vegtnlQWtKcjg/lNz3EKV?=
 =?us-ascii?Q?AS9VWB67IW/a/b1wuHaaMmAtlRjoQ/NBMQL9xhnVBv42NYMf7WuyYDTbLKf6?=
 =?us-ascii?Q?6qNQKeaDcbfg/mebqhtQmfCVadJogYhGuOQO22moAIPlO2q5o3pgIOQSHkBz?=
 =?us-ascii?Q?KWRltfr7mTV3Xzb8fcSRk4bYMVMHSXtORcBvwE0O99RcKQdLwH8yJ31aNmKN?=
 =?us-ascii?Q?OaTtZMG97Uvf42QNpcMOjIQ0dGU90kTgHlPIdHKeicphB9AiOAl8htb88fIB?=
 =?us-ascii?Q?D36iDgwYtFant3bMZNuKnQXwgASkLrRs8g/uhZtxQ5JrXKQWOz+JgS1WzjGD?=
 =?us-ascii?Q?bVmPWaPktz9X0wuiAiUyx0LeHietSY8jE5+2IlLi2+kLp4hVk+ppP+iGMCIB?=
 =?us-ascii?Q?/6Ga72dtXI7t87LVA5ls9zKXKQ4wUIOttMBTy+EWaT8ED2BsA7UImmLaRFyb?=
 =?us-ascii?Q?iPy8Rpm6B6QqLCj8gJFjTCy4n8TX24cXG2QBMVWU+Hzuwh1/aWjmYT3quLt2?=
 =?us-ascii?Q?hDfPQ/Y0rushNmA+y5GKriaFu13TkMUNl71UK2HGMN9W5aUGKAyEe9wCkTGw?=
 =?us-ascii?Q?JZWM1A2YSFMlWqJa1htjWUoz3O2EBdM=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: FSwyZjas4CXlXoRAYr8ReqzFdb+BuQ/y26iK1lA8Lx2K9jNrGV05S+gAf/Rh4MediDd4ocwyZUn/rQ7duO/U235g6EaEss181a0B6kKhaM1uTGBhx6jgL+DD+toKm/D6xsNsmTqX+twOm97YFmJadAgvRN2qb0lQL8sIChaLam1sEoM7H9GawLvSXwQ035mYt6jAjtDnH6L0S0Jn4TA3Hli9DNE5npqPyzyKwX5lzkmEeBqV6sHATWU7CDOZubB1T/G0oC58MUqfL+O1sFdfa8HxGGTJAFpq1Ik+kKXhPF83GhCJrNhB3oV3KCGpMzbueclJylCOKbNHQMt7noJAMw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7378.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b4028419-f27c-4264-2edc-08dea46a79db
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Apr 2026 14:37:15.0833 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WCMkg2TgYaOjFqepnFm26a5fu7Vuyj6uehLhLVgJGZssZo9IB6lor16xdACvcok9R1PVVyqp/lXVYAfvwRSwXnF2p+mdq+0rdB49Thsr+Ng=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8205
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777300648; x=1808836648;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IVOGITvdoyztBqtvAukH++OXedPtU7PXsT5fxmqzy7k=;
 b=bz87cZwgctML7ypvtlYiWM446/3VZBOgiPoMXJP78XFo0uil9NSnYRKL
 614gIST5RG2PmE4A9Q/1vZCSp3dYq5eWAr78PcRTEkbVs7wbRhtiC4kff
 Nx2OrUV+EVNbIF6mrU1qXBb6Ot1yy3m+SpevDhSWfV1WcTpJ/PX5Klski
 l3ufhNnkcQNG27EdJEvwjRZwU21DeCbYZf1trcOmNEKJjnUDYSEHj09qS
 Az9iJTBystLQABABgecyMsc8a4bN9mMH6meaW9H0qcWT7UyisAO2xAVKL
 yKyjvqQxoDJs0IVZjcFjdFnPNCplKAwAy+R/DtM5QIaCx6INWW1+vDn8H
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=bz87cZwg
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v7 2/3] ice: fix missing dpll
 notifications for SW pins
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
Cc: "Vecera, Ivan" <ivecera@redhat.com>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>, Jiri Pirko <jiri@resnulli.us>,
 "Rinitha, SX" <sx.rinitha@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, Eric Dumazet <edumazet@google.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Loktionov,
 Aleksandr" <aleksandr.loktionov@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, Simon Horman <horms@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Keller,
 Jacob E" <jacob.e.keller@intel.com>, Jakub
 Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "David
 S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Queue-Id: 2426247481D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:poros@redhat.com,m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:jiri@resnulli.us,m:sx.rinitha@intel.com,m:przemyslaw.kitszel@intel.com,m:edumazet@google.com,m:linux-kernel@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:horms@kernel.org,m:jacob.e.keller@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[arkadiusz.kubalewski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[arkadiusz.kubalewski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,IA0PR11MB7378.namprd11.prod.outlook.com:mid,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,osuosl.org:dkim]

>From: Petr Oros <poros@redhat.com>
>Sent: Friday, April 17, 2026 4:59 PM
>
>The SMA/U.FL pin redesign (commit 2dd5d03c77e2 ("ice: redesign dpll
>sma/u.fl pins control")) introduced software-controlled pins that wrap
>backing CGU input/output pins, but never updated the notification and
>data paths to propagate pin events to these SW wrappers.
>
>The periodic work sends dpll_pin_change_ntf() only for direct CGU input
>pins.  SW pins that wrap these inputs never receive change or phase
>offset notifications, so userspace consumers such as synce4l monitoring
>SMA pins via dpll netlink never learn about state transitions or phase
>offset updates.  Similarly, ice_dpll_phase_offset_get() reads the SW
>pin's own phase_offset field which is never updated; the PPS monitor
>writes to the backing CGU input's field instead.
>
>Fix by introducing ice_dpll_pin_ntf(), a wrapper around
>dpll_pin_change_ntf() that also notifies any registered SMA/U.FL pin
>whose backing CGU input matches.  Replace all direct
>dpll_pin_change_ntf() calls in the periodic notification paths with
>this wrapper.  Fix ice_dpll_phase_offset_get() to return the backing
>CGU input's phase_offset for input-direction SW pins.
>
>Fixes: 2dd5d03c77e2 ("ice: redesign dpll sma/u.fl pins control")

LGTM,
Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>=20

>Signed-off-by: Petr Oros <poros@redhat.com>
>---
> drivers/net/ethernet/intel/ice/ice_dpll.c | 47 +++++++++++++++++------
> 1 file changed, 36 insertions(+), 11 deletions(-)
>
>diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c
>b/drivers/net/ethernet/intel/ice/ice_dpll.c
>index 3a90a2940fdc6e..11b942b83500fb 100644
>--- a/drivers/net/ethernet/intel/ice/ice_dpll.c
>+++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
>@@ -1963,7 +1963,10 @@ ice_dpll_phase_offset_get(const struct dpll_pin
>*pin, void *pin_priv,
> 				       d->active_input =3D=3D p->input->pin))
> 		*phase_offset =3D d->phase_offset *
>ICE_DPLL_PHASE_OFFSET_FACTOR;
> 	else if (d->phase_offset_monitor_period)
>-		*phase_offset =3D p->phase_offset *
>ICE_DPLL_PHASE_OFFSET_FACTOR;
>+		*phase_offset =3D (p->input &&
>+				 p->direction =3D=3D DPLL_PIN_DIRECTION_INPUT ?
>+				 p->input->phase_offset :
>+				 p->phase_offset) * ICE_DPLL_PHASE_OFFSET_FACTOR;
> 	else
> 		*phase_offset =3D 0;
> 	mutex_unlock(&pf->dplls.lock);
>@@ -2659,6 +2662,27 @@ static u64 ice_generate_clock_id(struct ice_pf *pf)
> 	return pci_get_dsn(pf->pdev);
> }
>
>+/**
>+ * ice_dpll_pin_ntf - notify pin change including any SW pin wrappers
>+ * @dplls: pointer to dplls struct
>+ * @pin: the dpll_pin that changed
>+ *
>+ * Send a change notification for @pin and for any registered SMA/U.FL
>pin
>+ * whose backing CGU input matches @pin.
>+ */
>+static void ice_dpll_pin_ntf(struct ice_dplls *dplls, struct dpll_pin
>*pin)
>+{
>+	dpll_pin_change_ntf(pin);
>+	for (int i =3D 0; i < ICE_DPLL_PIN_SW_NUM; i++) {
>+		if (dplls->sma[i].pin && dplls->sma[i].input &&
>+		    dplls->sma[i].input->pin =3D=3D pin)
>+			dpll_pin_change_ntf(dplls->sma[i].pin);
>+		if (dplls->ufl[i].pin && dplls->ufl[i].input &&
>+		    dplls->ufl[i].input->pin =3D=3D pin)
>+			dpll_pin_change_ntf(dplls->ufl[i].pin);
>+	}
>+}
>+
> /**
>  * ice_dpll_notify_changes - notify dpll subsystem about changes
>  * @d: pointer do dpll
>@@ -2667,6 +2691,7 @@ static u64 ice_generate_clock_id(struct ice_pf *pf)
>  */
> static void ice_dpll_notify_changes(struct ice_dpll *d)
> {
>+	struct ice_dplls *dplls =3D &d->pf->dplls;
> 	bool pin_notified =3D false;
>
> 	if (d->prev_dpll_state !=3D d->dpll_state) {
>@@ -2675,17 +2700,17 @@ static void ice_dpll_notify_changes(struct
>ice_dpll *d)
> 	}
> 	if (d->prev_input !=3D d->active_input) {
> 		if (d->prev_input)
>-			dpll_pin_change_ntf(d->prev_input);
>+			ice_dpll_pin_ntf(dplls, d->prev_input);
> 		d->prev_input =3D d->active_input;
> 		if (d->active_input) {
>-			dpll_pin_change_ntf(d->active_input);
>+			ice_dpll_pin_ntf(dplls, d->active_input);
> 			pin_notified =3D true;
> 		}
> 	}
> 	if (d->prev_phase_offset !=3D d->phase_offset) {
> 		d->prev_phase_offset =3D d->phase_offset;
> 		if (!pin_notified && d->active_input)
>-			dpll_pin_change_ntf(d->active_input);
>+			ice_dpll_pin_ntf(dplls, d->active_input);
> 	}
> }
>
>@@ -2714,6 +2739,7 @@ static bool ice_dpll_is_pps_phase_monitor(struct
>ice_pf *pf)
>
> /**
>  * ice_dpll_pins_notify_mask - notify dpll subsystem about bulk pin
>changes
>+ * @dplls: pointer to dplls struct
>  * @pins: array of ice_dpll_pin pointers registered within dpll subsystem
>  * @pin_num: number of pins
>  * @phase_offset_ntf_mask: bitmask of pin indexes to notify
>@@ -2723,15 +2749,14 @@ static bool ice_dpll_is_pps_phase_monitor(struct
>ice_pf *pf)
>  *
>  * Context: Must be called while pf->dplls.lock is released.
>  */
>-static void ice_dpll_pins_notify_mask(struct ice_dpll_pin *pins,
>+static void ice_dpll_pins_notify_mask(struct ice_dplls *dplls,
>+				      struct ice_dpll_pin *pins,
> 				      u8 pin_num,
> 				      u32 phase_offset_ntf_mask)
> {
>-	int i =3D 0;
>-
>-	for (i =3D 0; i < pin_num; i++)
>-		if (phase_offset_ntf_mask & (1 << i))
>-			dpll_pin_change_ntf(pins[i].pin);
>+	for (int i =3D 0; i < pin_num; i++)
>+		if (phase_offset_ntf_mask & BIT(i))
>+			ice_dpll_pin_ntf(dplls, pins[i].pin);
> }
>
> /**
>@@ -2907,7 +2932,7 @@ static void ice_dpll_periodic_work(struct
>kthread_work *work)
> 	ice_dpll_notify_changes(de);
> 	ice_dpll_notify_changes(dp);
> 	if (phase_offset_ntf)
>-		ice_dpll_pins_notify_mask(d->inputs, d->num_inputs,
>+		ice_dpll_pins_notify_mask(d, d->inputs, d->num_inputs,
> 					  phase_offset_ntf);
>
> resched:
>--
>2.52.0

