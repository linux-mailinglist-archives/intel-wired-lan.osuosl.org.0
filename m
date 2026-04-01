Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ILjUNK+izGluUwYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 01 Apr 2026 06:44:31 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B255B374B43
	for <lists+intel-wired-lan@lfdr.de>; Wed, 01 Apr 2026 06:44:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DD39A40F2A;
	Wed,  1 Apr 2026 04:44:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3D4sJpvvd7ri; Wed,  1 Apr 2026 04:44:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E058C40F2C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775018666;
	bh=ZQvJWmwXK2JYhZYF9S/1ynbzrjOhUD/HKoKP1hsNNw4=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=x94SWD5ZY+46AhuBvyOcyT1PuiqmjWCfUtaVCrrfz7YUGonwY+A+3B0gHvfS7YU7J
	 RswZ7NOhDTaDUJzSG/WM+WVjUW2rQSqz+BRLfJhKheyVaOcC321L9WknSH+K1iV/Uh
	 sNjgyrnUFJKFc1cmqvMOA2Kvy03kMA6siNkgeFxsOa/mNfUtkqv2U8RHgIPJWfqb4z
	 Kvgj6OdT30GZdEZbj7vVRhyDmS5V3tUoWicdeApL407lTj0tcI4cs1YeKcAmHCpHxK
	 t3uVe43/veqjSQ6F2w2ZfePUbd2ppU6B4SWTChYbWTF/zrDFAWL2J4U+1wwvA/HeZY
	 1uyjYPcMx9F6Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E058C40F2C;
	Wed,  1 Apr 2026 04:44:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 530A0E4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Apr 2026 04:44:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3864F81A24
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Apr 2026 04:44:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vnklwhpDOIQ4 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Apr 2026 04:44:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 74AE681A16
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 74AE681A16
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 74AE681A16
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Apr 2026 04:44:23 +0000 (UTC)
X-CSE-ConnectionGUID: vdcgGFvkQSSz+ig28ONO4Q==
X-CSE-MsgGUID: aeWRbVwRQ4iuEzyEqnPLiQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11745"; a="87123207"
X-IronPort-AV: E=Sophos;i="6.23,153,1770624000"; d="scan'208";a="87123207"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 21:44:23 -0700
X-CSE-ConnectionGUID: nIv8ggKWQ+m9R4jyP6BqcA==
X-CSE-MsgGUID: gONm1g0DT4SPftm5GfuIqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,153,1770624000"; d="scan'208";a="223261208"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 21:44:22 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 21:44:21 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 31 Mar 2026 21:44:21 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.10) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 21:44:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oA73uLRZMjcB+boNAPLKjef1yy8fLOb+2kPeRKcAVb68xdUtVVi7Oc/5d+ClBvP0spspw83wmS9z+q7bWFMiRGONPEHuLWBQozQHXe1H42nplcaIeGxvjuF3MF8EwvDTnMcx5OVU7Vyj80hJYizourV7vuKxYLc2txlZnQRMaao93J/3Vb2TjbDJqhGK2TVKNih/vK1wVXkDyzJP85zSJFl52eHz4vKYH/5W6bqwr6NAhg3NMRxSdAm8cGVUa3bw5pFCBvTPPEUcsV1klW5z4Yjww97WinNr/EylIeSy290LQmAJpDT+o45hPwBijXqu11svrzCANIbZMWtCWUkpig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZQvJWmwXK2JYhZYF9S/1ynbzrjOhUD/HKoKP1hsNNw4=;
 b=fU/B5r+c93RLQsUUj/xy4HXqsYWB7bUUn6UuvC/VipG68x0uV2/r4+cjiIvwiUqHrfJxBzhuFwXcoOsqgGwRus7TV6r50A1gEq4UIlUuzRutg4+wb41MDGOVVTUghREnJ4qlm/3cp5Alwf3vNHSfYQXuPPtl5d2EFlvFgJ5BFxNkur1U29lmD4KXS7QTD7TfQdkPV1w8AXgExJ5EGOwQ/XwG2bbHcXxOp3N2+3cJQ+6QOI2HAEzqeW9L3FfPdnnwePfQ0SWqEsM3+qpRW4NCYOdA2QBJcD8tEN318TZ//sF6wuFeqSiudud57DLG6QjNIiFGaKI4Ad7MN8vZURKSkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by SN7PR11MB6656.namprd11.prod.outlook.com (2603:10b6:806:26e::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.15; Wed, 1 Apr
 2026 04:44:15 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9769.014; Wed, 1 Apr 2026
 04:44:15 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: Byungchul Park <byungchul@sk.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "kuba@kernel.org" <kuba@kernel.org>
CC: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "kernel_team@skhynix.com" <kernel_team@skhynix.com>, "harry.yoo@oracle.com"
 <harry.yoo@oracle.com>, "david@redhat.com" <david@redhat.com>,
 "willy@infradead.org" <willy@infradead.org>, "toke@redhat.com"
 <toke@redhat.com>, "asml.silence@gmail.com" <asml.silence@gmail.com>,
 "almasrymina@google.com" <almasrymina@google.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "pabeni@redhat.com"
 <pabeni@redhat.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [RESEND PATCH] ice: access @pp through
 netmem_desc instead of page
Thread-Index: AQHcpVGfjTc3p2xHFU+C1gel+Wqq1LXJ2VuQ
Date: Wed, 1 Apr 2026 04:44:15 +0000
Message-ID: <IA1PR11MB6241186B685C824372611ED08B50A@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20260224053546.62757-1-byungchul@sk.com>
In-Reply-To: <20260224053546.62757-1-byungchul@sk.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|SN7PR11MB6656:EE_
x-ms-office365-filtering-correlation-id: e50f8604-8097-4662-91c2-08de8fa953cf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|7416014|366016|1800799024|38070700021|22082099003|56012099003|18002099003;
x-microsoft-antispam-message-info: zBB0ZLOLDlBI9OZ7Rf8m2JdGgC03oyhcA4FMPtRCmjr4RfzaGQhd4fx37szZY0BtrCdVWvTMQ7YHcOgTy400hO9/F8hqijw7DVCz8iZGFy8/kfemxxaLUf4mQLNyKm8ye2L4ELpwo1VQw4VuTiv/WPpXHTOf9PmGdsAf4+Ci4zU2xSmCMc0qXEIPD9tOOrjo5OIJ9spd83REV1EM/ADm7dTqdupDi1155wTD/yfWTpnPy/L0/4sWKEdfC26bP/NsTYEaz8m88N4RD6OWIPFLaRoCoHvnkeWgl7gIyrpDkgzgfnVjGtdY007RG47ecOa74cVc7rbuY0oO1kAeXlFN19nTUJoxHJXqCK5VyaMjYA9vHMf5NOWvrnFE9BWQM9Oq7mAJ+zDBrcDry8D0Lwtqzdd06VYG9U4UDNXUVRbtfpAuca7aLG2fJdoA0jWYXPqI0Tho8z3MkFF2d8kkx0PMD4SLA2VXmn5+scxHR08O2T6thTv4JSoNGYgvNLu3T4O17lSRPAmbHGUKvDH9d0h/puM1azVn41/ZjBxLiUb7264xmrqasbiE3SFdQES91CNbh7yu+Q9C5c+KTvvUDnzpsXRMgJQnNoS9YVRFomYSwb8XIcNGbEv3tjsD62AAGzn26U4UroQSTW8e9Qcn5OEyDlH3BM8C6ZMMiqRdNk5ddVPRVQE9c16hvtQXhhqvGvZ++l6+9Kcvn1rLFiRiXS+7TPgUjuvULLv9Ivt1xFaAOlGg8nWA+OwcXaVh4gd5DD7lJN5lDDJiOaLP5YyEwZiXBoQBkmDz9H/j8yn3P7HM0W8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(366016)(1800799024)(38070700021)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?MJZRAM9HNJI+XQsHZGPLbRK+XAByfXCoGgomiioNeQgNdWLUXjuqpHGmPAB9?=
 =?us-ascii?Q?5NrlWNL1eAE3As74iUvbAVeI+d5Fza5s7r82UQi0tOlBN9KGGE6D3rwgv1M6?=
 =?us-ascii?Q?KETGIeQL/LqdUDoTFkYZWiMRVcSZzNnzOlFrI39vadiVgVvT9S/GQPjlkhls?=
 =?us-ascii?Q?+Y8/wN1pH+nzMtS6XOvFGn8BNlXSlcq0Azs39VimWOM73H+mTv+uTISFU4+7?=
 =?us-ascii?Q?LQgrSM2iZW4CbE/s9imUK8kV/zTF/gXIKlkChzjlb8ZwJqzSlNE4geX3IZf5?=
 =?us-ascii?Q?o8p9G8o1xM6opYIMqNXAnNvuZl6oNmEI6JBgS7HNq6bCkl8FGNOPTriVklHE?=
 =?us-ascii?Q?hR5NFtFBQ6cvS6sNwISdWbF4UHYtDDOzNxdeCn0RnwVp79xgB471aolzkEmo?=
 =?us-ascii?Q?HPZpL05rW8nlaiLIBRKzppoNwj08cy53Jol4u/2OPT1Z9zXFlWh+sjyu6R2l?=
 =?us-ascii?Q?ur1l7tJkMZ8lJXO+TzKBPrvEaw3tlvcLWx20VoaT/7cWrFPmEuKH3K9+VBxx?=
 =?us-ascii?Q?a1iBnggDCm8eZFZd/Y3rkuVsS76LUm7SJU99a18lif+eF3e5MbFwBqRQxT2N?=
 =?us-ascii?Q?rIq5ldE/TjoKU5DOvLa6vhEgeg8dSNJ9g8czH/kT22wU9xlGgvlIjhdcqWdr?=
 =?us-ascii?Q?PtGE+Rm3YGpMQGum4F1JcpjGCgeLLyCGqpZv92EEMNONi7hnHqBkbY4HGyBF?=
 =?us-ascii?Q?D/WrwmlUqxOiaFGC3m3ZanqdAMaVktr0/nK/ipHdvzZMNeNH6xZJqTZqT2lD?=
 =?us-ascii?Q?VC55TbwURrV5V8e8WOHKV4KGPkdUxQSUHhkXMHsWZstzzlYc4q8MOdAkByop?=
 =?us-ascii?Q?sc1Gc8/Dr3FyUjvJqtcGoTaUEkbYfrUEC8mdcFf2+M1Yz+B4GTmxnFNc0r7z?=
 =?us-ascii?Q?w515wrC94MSBFVuYx9lCaiiCPqMhuKhp7PCZpRJw5iM/l+3dltkhsuSC4d2C?=
 =?us-ascii?Q?kWRWF63C08L0fBcdNlNzijMaZjj99YojQybgbxo1zogiswR0snQXwC1sK5AX?=
 =?us-ascii?Q?cY+ELBhdtvyhc/kNwtdqA7B3zOCDX0gA9ITV/DM8ga1MDr4yI5qC8+4K2uhP?=
 =?us-ascii?Q?sFDS5LgmQRMIDbAyfZmkrHgE+sSnDZp6QZ5AP7386DakqWjRYONhRYkIZub+?=
 =?us-ascii?Q?xGklv/Yx4ZH8tgxK12xawvXoKr9SoxU+RJUss2MVZwx1Kng9QjM0NjB0vOgK?=
 =?us-ascii?Q?igu4KERK0GmU3tP3RJ0Kl71fsWcyJBlUe/g3VxrQ/fvmI52gYW8BHUmiY3sh?=
 =?us-ascii?Q?vmsuavcIos+YIWzGY0fdFTMRmomNcUWcBOfa/nHqBa0rhXy5rjZtXtNAzqMa?=
 =?us-ascii?Q?E5rupmN9B+rEttTXhXdG5PIgIgHTIITCJYA7GYUmsHpVggkJOammHAb0bUDQ?=
 =?us-ascii?Q?YjYgGlbjPeYMsjJLccoau9l309YeGw6PvXAkDhnuzG++WVaWAbLIYsb5hbWa?=
 =?us-ascii?Q?1i9QJ6zj1OJHe2gmm8tJpTb2NzwljWslnbRJ+PzI0lIpEiAVKWqDPHMvwS2G?=
 =?us-ascii?Q?ApQM0mfZQWMrzg+vQPpAmCuw8m5Yre2wyocY5QjJTF5jFVxZ/rxkOJtORRjZ?=
 =?us-ascii?Q?RS+1EtDzL5e7Ff76PV2rDxiXcxgPH66kpPYcnBh+x4PoHmb8la0/WPr8xwfs?=
 =?us-ascii?Q?ENpS0E/68B6B5EyGXRRsMKMbBE0e3GKY6+etLwwVTod/1kGdRBuLyEEg/+2j?=
 =?us-ascii?Q?2SQU7XayDY/9hRrPzIunntTOFkVhNAG2C/6wEkW57Odt17po?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: XKX5ZpZaJbx87Y2Zv90bmx7lb+lMZV7Fi8SM64Ptx+7zVcZeC44zga6aqC0/shXQNA4M+JG7We++ABYCG8EajhNFc5Fun6xL61avJWpprKIS3xl0bun/GwWlTEJmgX5i+VMP+JwvKt6Lglegvs5u8/DrIaqT/IPhvICIf0Cg1mboAQv5sWwpen7lhS9GNZzQdB8ARADZ4BkqsZV9dSqHwL9oHUJ6p03ugTgcyKR0C3TvMWVDQPh/ycQCIsrDlwZQE9t/DE7fBz5/LSKnfLBnrMV9t2zuNCTGfZuLWLUNS/eKKExpY1bD1gPjudoGa3Sa8oUwK9Zjv/SO5ep+XSjbmg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e50f8604-8097-4662-91c2-08de8fa953cf
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Apr 2026 04:44:15.1268 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: u0cS2uWTW5lUP0/CIIX/Dqw7yu8VlbOaYwEpmGdCydbsbzF7eBTIGbNGJ/9egWD1R3MD6h5xX4kZo/4+yiwhiA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6656
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775018665; x=1806554665;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZQvJWmwXK2JYhZYF9S/1ynbzrjOhUD/HKoKP1hsNNw4=;
 b=Bm5+iV75FZ1/HGxfWM65s4PquVXeAxpk1aEayJSZJ/TeuUFzH5Uc8udl
 2lUtvHOU+uzbLpSdeCKux74fDePyJJ9H8CD+LTzfZJTemZhNvCJN0bbA7
 rZBOIiDivzVDD9hCdpkBfJ6vdduxDwUMUqfWU4HbHdegwnBl/uLQBwBlI
 ScT5a8ERBgADxspCT4PljgIpI4mvZnqrzH/3Q2EjF42vqPdYZzUMUUKUX
 +anz0oNsMNtDAQDo0tba/oW89tfjrySeY267q3XKqR0zPEMhKh5syDA1o
 s5L/rhg5DKqLljv51+Rbzml+PC3bRg+/RRub1NemA0VOHTAXxCFNcEnf7
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Bm5+iV75
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RESEND PATCH] ice: access @pp through
 netmem_desc instead of page
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
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:byungchul@sk.com,m:netdev@vger.kernel.org,m:kuba@kernel.org,m:linux-kernel@vger.kernel.org,m:kernel_team@skhynix.com,m:harry.yoo@oracle.com,m:david@redhat.com,m:willy@infradead.org,m:toke@redhat.com,m:asml.silence@gmail.com,m:almasrymina@google.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:asmlsilence@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,skhynix.com,oracle.com,redhat.com,infradead.org,gmail.com,google.com,intel.com,lunn.ch,davemloft.net,lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: B255B374B43
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of B=
yungchul Park
> Sent: 24 February 2026 11:06
> To: netdev@vger.kernel.org; kuba@kernel.org
> Cc: linux-kernel@vger.kernel.org; kernel_team@skhynix.com; harry.yoo@orac=
le.com; david@redhat.com; willy@infradead.org; toke@redhat.com; asml.silenc=
e@gmail.com; almasrymina@google.com; Nguyen, Anthony L <anthony.l.nguyen@in=
tel.com>; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; andrew+netdev=
@lunn.ch; davem@davemloft.net; edumazet@google.com; pabeni@redhat.com; inte=
l-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [RESEND PATCH] ice: access @pp through netmem_=
desc instead of page
>
> To eliminate the use of struct page in page pool, the page pool users sho=
uld use netmem descriptor and APIs instead.
>
> Make ice driver access @pp through netmem_desc instead of page.
>
> Signed-off-by: Byungchul Park <byungchul@sk.com>
> ---
> drivers/net/ethernet/intel/ice/ice_ethtool.c | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
