Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wNUnC884pWnt5wUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 02 Mar 2026 08:14:23 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8112C1D3B82
	for <lists+intel-wired-lan@lfdr.de>; Mon, 02 Mar 2026 08:14:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A7CBD41821;
	Mon,  2 Mar 2026 07:14:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IZCK2gtij0Tw; Mon,  2 Mar 2026 07:14:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D625C41817
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772435659;
	bh=TB9F3IlVJFImWjb75tOkTzKyPqjBgUaoSGu3P1bKyM4=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=C+eEUYTIY3EVscxptmgq5ulBdem3XKd+TdvtsEIvu0XrhWQ6BA0KENUKQozTrWRYM
	 AS6a4iDAFiTEdqbiFIUMT1Ycba1pP3PjLyDqmllHPsZGoULNGTaCxyBQ33x3B3PS1F
	 XJX5E9VoWLFT0PJwU53UhIfg8o6LHiu4DzD8lu7h2hcrIqxd80CexKpS2mTyiVp1At
	 IZWm4wecygiycWbTxMkNm3y0fBp/BrkIHQLTKNzhTN6Uv1L3B3c+MgThlLGUdlyaLr
	 WS662wI58lMTECA+JZxbvmR04k6ImxCtYngHHHIaZz495G74pHiUJOXPi6mfSaznGx
	 mYR5zatGbKcmQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D625C41817;
	Mon,  2 Mar 2026 07:14:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id BF578231
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2026 07:14:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A4A8460E5F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2026 07:14:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FBTzq2cNgbAf for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Mar 2026 07:14:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A464F60E1B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A464F60E1B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A464F60E1B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2026 07:14:15 +0000 (UTC)
X-CSE-ConnectionGUID: 5EIdDn67RTaqK1cVVflOpA==
X-CSE-MsgGUID: c4GuDDxdQamF27ZxM8PFlA==
X-IronPort-AV: E=McAfee;i="6800,10657,11716"; a="91011024"
X-IronPort-AV: E=Sophos;i="6.21,319,1763452800"; d="scan'208";a="91011024"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2026 23:14:15 -0800
X-CSE-ConnectionGUID: IR72hEmhSC65h1doGvg9Wg==
X-CSE-MsgGUID: rLS74I52SpOKVri+zhbsZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,319,1763452800"; d="scan'208";a="215583584"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2026 23:14:15 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 1 Mar 2026 23:14:14 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 1 Mar 2026 23:14:14 -0800
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.35) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 1 Mar 2026 23:14:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=L7bslQzajOMo8KSFlnEqytTsL/97wVaNhYdDYLEmSYXTRxs8WliVO5Nmh39s4ZTW+/7J3AXILn/HHaB7Fn4/qJjc35wHIGSJ3uWaL4MSMRPjF9agqxQ8Va/lch2zvvM2JT0xO0mAu1MXCMGxZl9PfPGLQnoJtcasDPHM9xFCK/6kk8r2shMQqhOo/p/sATL/7D6nUcBPWf/Cf6MEGDlEmcwNtDU3KKat8Vgxeezvm5L5tv4b8RyiCojhskss1ZgHdMW3ofBPOwrxO7DTu85TrISYF3sApZ/Y4jv2/Aa2nJwrmEA1UUsdaKfQabP8kYlikgXy8VBMLqVkC2mTXMUAvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TB9F3IlVJFImWjb75tOkTzKyPqjBgUaoSGu3P1bKyM4=;
 b=V4/kwVv9xtGm0k0w/fZQLlQq010d2jCpE9tN4Da7tgDXbaqZ5ZHHWWLy5FnCwSrCzJR2n5sWi+m5Q0aMKQtqHmjKtrXwzbP685+UvUrtLxbuW1Dx+DqkzRCn7X+Dw93wKz6G/SEhCJyHNAtm2/CSJw4SJ8Yt1mGiRVcdycak6O4glPCjA2vcu1sf1NtP6qZM3rDe0haYDSd/oHvJnl4JuEN6TgcZ4V0MY+hUJRGgnt7bAbNSxtc93KtjnKp58N5/20DPzix/eC6zZyKx3EbN1mRVkm/DX8BNNm1JXtlsHQn+UmX9i53DJXmasVVgMmbgT4P4+T2D66PiKIqzDwITFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by LV3PR11MB8532.namprd11.prod.outlook.com (2603:10b6:408:1ae::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.20; Mon, 2 Mar
 2026 07:14:11 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9632.010; Mon, 2 Mar 2026
 07:14:11 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Yury Norov <ynorov@nvidia.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "David S. Miller" <davem@davemloft.net>,
 =?iso-8859-1?Q?Thomas_Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Andrew Morton
 <akpm@linux-foundation.org>, David Airlie <airlied@gmail.com>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, "Brost, Matthew"
 <matthew.brost@intel.com>, Paolo Abeni <pabeni@redhat.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Vivi, Rodrigo"
 <rodrigo.vivi@intel.com>, Simona Vetter <simona@ffwll.ch>, Yury Norov
 <yury.norov@gmail.com>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: Simon Horman <horms@kernel.org>, David Laight
 <david.laight.linux@gmail.com>
Thread-Topic: [Intel-wired-lan] [PATCH v2 3/4] ice: use bitmap_empty() in
 ice_vf_has_no_qs_ena
Thread-Index: AQHcqeGoc0Q9K7IyYk+o568YL22dMLWa1H5w
Date: Mon, 2 Mar 2026 07:14:11 +0000
Message-ID: <IA3PR11MB8986F3692384856A06EACA7DE57EA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260302011159.61778-1-ynorov@nvidia.com>
 <20260302011159.61778-4-ynorov@nvidia.com>
In-Reply-To: <20260302011159.61778-4-ynorov@nvidia.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|LV3PR11MB8532:EE_
x-ms-office365-filtering-correlation-id: c738a8a0-d44d-4e15-c8ec-08de782b4dc8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7416014|38070700021|921020; 
x-microsoft-antispam-message-info: 4yv0Iy2Wi0SowEqQ0/IFJdSCsu+pVfeBFQ6CLn0yEKwNYSkeFu/FgYPF9k9Xx7397toPYuRRsKOJaDV+tYzqJgjKEbMgQavw+IvW6GzTMFuh+09qEPQiB3J5dVJkFk89rnkmwMNSrktQyPGrVUcbEegIBnFeiXqx5dw5ZjASwt2FjkBg9pXWwhHi66sFBYWiBBoqsxzZDmqwhF+LoBw+UoBUyzFzb2U91zvGE1bsdCD8emdu9Pme2Ngr5DcFcvY12eOv/xhHvfoJv6FC2RuCwVlD2JcOwE4MUhWxNpM9HSZPRU1DAQ/t5YvHzaWXcmFd4liTZkq3AMi6kcEMpQq5AhQ9/gpL+ovvpO8UbcwqVWITqVXw9d2EENB3SFyhPu4oq2bsyaLzyr/FmmPiPVAeLMXcy49c8MBH4yYF0RFK7/pjrvoQahInA+1e/rJfSZhgkkIad5VSytzy/ZSa1ABwuiCTSbT6F1d543pdEA/I2H8XCEbsKv3SPiUa8wAG4+PzSARgIUPG7xVyfqJi0v/0CLACQkbAW1vukL2MDeas3MGciUhUWQMveacNN7mULd52zRRiENqq71Q2kqkD1QDpLvZOPU97QQqeXXbQrl/hxb1a85iPQsfTQ4uvwyIEhksRcxuUccBkLAbn85b2brhDjH6afOE0EauW0RPXPoptpNEYSCce5ZYUVqArwTXwwtA06wpR+ZtT6m9SZ9oWjvryRKrPolxQuLWoQO03bRzX19dHw20+Gg9UPW0omFye5avuHm8nH79tJKIk8QkNlnv4dJyvmdcjHdNJu+4zD2oYsbMowis5fEiq3NixJKXulsI/
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7416014)(38070700021)(921020);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?fMvAL6MZDcDJJJppyBbg2lCSvrMbvtXaCSWx3fcAtOW7P86U0f18jNNkxj?=
 =?iso-8859-1?Q?Szze7uByQQa789htd1KHlNIKq4flfH99zT0g1cBeCrQGzlyFpnCmmsv2Zz?=
 =?iso-8859-1?Q?/2Ef80Wl1mw9t8+FGuA6tWVgo0P0Ort3M9afgA2YtwTf/gKgv2wamWl/mH?=
 =?iso-8859-1?Q?Q3JhA1vE+Uy9WCzRFsYEJGNkfNqhiUoSk9S9onHvLelSn4qkJJBob6pnR7?=
 =?iso-8859-1?Q?jZzAbYwv3uQ9jbga5joUOsQtmklcIFrYMkWs/+HdzlvTQYrCdVA42knc9C?=
 =?iso-8859-1?Q?aW8u07iKcPURQKOze5nE+SoQ7HqW+VY9vnf563N2nXOkyYj/5oLAVwn8Hl?=
 =?iso-8859-1?Q?RchATuUEUp6eCvjXkJcex577f3h0YsPsv8FFhBlcaDcIlIxCBWfTOJN+zf?=
 =?iso-8859-1?Q?sxRH5E75+ql3w6VA4SXxLma/e4iW1AIYJkerpkHIGNi3BIiQAaoYhmUBIp?=
 =?iso-8859-1?Q?NTwppEvR+OjUwwNCZl7ZGvLAcNDZT6YepCw44DbwrSy8nDZIgBkgVVyLCQ?=
 =?iso-8859-1?Q?JyejQfNSKTJAsOytp7MxzfTuvhbRBn5hA02qyxz/9E6mjrxZytdzC+56h4?=
 =?iso-8859-1?Q?dq8nLZPeJG6jDYmrTR4PCl0Lch2TqnvH6QMWj9ZCMj0l0X/TUhmYHzYrXe?=
 =?iso-8859-1?Q?e975X+XrEnd9grJ+rm00WzKZmlwUEDZR5j1voGESaAjGNTdgZ8RQnht4L4?=
 =?iso-8859-1?Q?D9ADwXQcrRIU1bRZ4LHecyttzoGVv46IxcxKDg2GapRNSz23J6d8SuCji6?=
 =?iso-8859-1?Q?9b7BuiWzUjHfL7mtNiYREez//7yZW9Gcg56yDz//bPGH5I6tZ/NiKvkSIz?=
 =?iso-8859-1?Q?MAJQ4A1zEHXa+uu1oVam0QPfwHGxHcFJzBNHvbMh3XSW826d+cXPRQ70WS?=
 =?iso-8859-1?Q?Wy3f5hDVQJLpRUauC9wB2MVknR1n4RwfeSdrWvobkQL1v3A9+wGLgizEas?=
 =?iso-8859-1?Q?OyR0YmNiIqUuNvWagsxREbq1YXmsNxF8YDgeHDOxfIitgzOKh7lN2ksmMD?=
 =?iso-8859-1?Q?d1fC0Lrehz+F7vtgO04do2LHnMXzCd2iG56omOAoF4zTGTUdz3xc58vuHO?=
 =?iso-8859-1?Q?vuHenzFUHZ/Yd85chja9n8Oe/jf5fwmNVXGzWMBiyx6oXqOcV8hutnMZqw?=
 =?iso-8859-1?Q?ekIQiu0bmGW8bSK704DFeuT5zsXyZcknieXL6lngKnCIQ61iJEI6ZZvL71?=
 =?iso-8859-1?Q?j8Dx3OguXgCGZ20wFmGbjoeZuPRScW9rG3fvyILA1H+9osyUeYKGIhhtBW?=
 =?iso-8859-1?Q?3HYJ847fIw80yq89IWpFULjsc2v0tt/8a/YKh461p4CJxdKNWRUMiin7Mv?=
 =?iso-8859-1?Q?6yXJQHBOHAdAS1OQr5bBMrp3XFSg1ntXZTSxhJuVDOpPsY2yYNhmNBt/k1?=
 =?iso-8859-1?Q?8ecxds17TcGIaI6b1DYgEJ/uJGo+3sRVEf6RvxelrRP5qI21E+d4q9rOpx?=
 =?iso-8859-1?Q?Y8uAiTWtMhsoUc87YoNEIpDUCDu8mj52UWvQYl0Ik8Htsrb2D8en68IAsT?=
 =?iso-8859-1?Q?0x9Sr0ISF2+i+eE2TvZyBZXt8dRha0B3orDUW7k0PB1+pknGhS7LkqwZcH?=
 =?iso-8859-1?Q?BRTO/kRAeTowZPJl6HAPO7umVOeiPEPmfF7FchMCAhVAXVdOfgHDTVf3Ku?=
 =?iso-8859-1?Q?7r+g0nChPH6xfVyjQ/+zxNNMpUoXsmJGWPHjmT9wSRj3vXju3HTCdRL51q?=
 =?iso-8859-1?Q?qs2mU8mNobyogH3wV1khHRMAWH9sGBnmA9FzhR6pzgvTPctI6nYg0ubmHc?=
 =?iso-8859-1?Q?soEHWm5Zvs8Lx7rQdFz/RWl0CCxFKQeJiTTzWi1wPb6W6/yFv799UY79eS?=
 =?iso-8859-1?Q?+SCWZHiGNNUl5MlHkCFmVRkda2W74oI=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c738a8a0-d44d-4e15-c8ec-08de782b4dc8
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2026 07:14:11.6686 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JGkUtSRsk2jDMlAdg2uTQpEiMuAdokolCOdeuTAQVKumf+ETzFfP0IKxIQUGajY0SG6Tge1E9R4rqR7RrMZ1QQGZpGLphEtJs7tIdW8+cBg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8532
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772435657; x=1803971657;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tzPrmrKKY9NDQ9cBY76psP11lJ2XCNEIE3v5mchLOV4=;
 b=UBd0kbfOy+D+zJVSJCOOnWAJVG4M6EXzFirlSWjQUoVybK8oem1z1di8
 an7Ds8Vob4ASqlBulWHS3Zm9gqJ9KW1Q417p1SJcNUJL+RBSBf9tY1mdA
 v/D1excy5KCcdS3QxODpeQ1zYikQAyK50SBR86C9nYKadwIW+ouz7RVpn
 +ze1IyzdeC2bGXPGC+VIo+ut6qQnkVHHRu18dpX9E2+aP/9RDMh+W47sn
 DgIrVB8nDoYvsCuzVZRBXYFAzufnJ8EH10CHJdfhwyUJwGHBseU9NdpiG
 yKJL9Xq07CfFvH6n/t4bLMZQ5Jcj4MWyOtYFxSjOsqEVTC3Gs6+SRGXMZ
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=UBd0kbfO
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 3/4] ice: use bitmap_empty() in
 ice_vf_has_no_qs_ena
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:ynorov@nvidia.com,m:anthony.l.nguyen@intel.com,m:davem@davemloft.net,m:thomas.hellstrom@linux.intel.com,m:andrew+netdev@lunn.ch,m:akpm@linux-foundation.org,m:airlied@gmail.com,m:edumazet@google.com,m:kuba@kernel.org,m:matthew.brost@intel.com,m:pabeni@redhat.com,m:przemyslaw.kitszel@intel.com,m:rodrigo.vivi@intel.com,m:simona@ffwll.ch,m:yury.norov@gmail.com,m:linux@rasmusvillemoes.dk,m:dri-devel@lists.freedesktop.org,m:intel-xe@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:horms@kernel.org,m:david.laight.linux@gmail.com,m:andrew@lunn.ch,m:yurynorov@gmail.com,m:davidlaightlinux@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_TO(0.00)[nvidia.com,intel.com,davemloft.net,linux.intel.com,lunn.ch,linux-foundation.org,gmail.com,google.com,kernel.org,redhat.com,ffwll.ch,rasmusvillemoes.dk,lists.freedesktop.org,vger.kernel.org,lists.osuosl.org];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com];
	NEURAL_HAM(-0.00)[-0.997];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Queue-Id: 8112C1D3B82
X-Rspamd-Action: no action



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Yury Norov via Intel-wired-lan
> Sent: Monday, March 2, 2026 2:12 AM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; David S. Miller
> <davem@davemloft.net>; Thomas Hellstr=F6m
> <thomas.hellstrom@linux.intel.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>; Andrew Morton <akpm@linux-foundation.org>;
> David Airlie <airlied@gmail.com>; Eric Dumazet <edumazet@google.com>;
> Jakub Kicinski <kuba@kernel.org>; Brost, Matthew
> <matthew.brost@intel.com>; Paolo Abeni <pabeni@redhat.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Vivi, Rodrigo
> <rodrigo.vivi@intel.com>; Simona Vetter <simona@ffwll.ch>; Yury Norov
> <yury.norov@gmail.com>; Rasmus Villemoes <linux@rasmusvillemoes.dk>;
> dri-devel@lists.freedesktop.org; intel-xe@lists.freedesktop.org;
> linux-kernel@vger.kernel.org; netdev@vger.kernel.org; intel-wired-
> lan@lists.osuosl.org
> Cc: Yury Norov <ynorov@nvidia.com>; Simon Horman <horms@kernel.org>;
> David Laight <david.laight.linux@gmail.com>
> Subject: [Intel-wired-lan] [PATCH v2 3/4] ice: use bitmap_empty() in
> ice_vf_has_no_qs_ena
>=20
> bitmap_empty() is more verbose and efficient, as it stops traversing
> {r,t}xq_ena as soon as the 1st set bit found.
>=20
> Signed-off-by: Yury Norov <ynorov@nvidia.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_vf_lib.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> index c8bc952f05cd..772f6b07340d 100644
> --- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> @@ -1210,8 +1210,8 @@ bool ice_is_vf_trusted(struct ice_vf *vf)
>   */
>  bool ice_vf_has_no_qs_ena(struct ice_vf *vf)  {
> -	return (!bitmap_weight(vf->rxq_ena, ICE_MAX_RSS_QS_PER_VF) &&
> -		!bitmap_weight(vf->txq_ena, ICE_MAX_RSS_QS_PER_VF));
> +	return bitmap_empty(vf->rxq_ena, ICE_MAX_RSS_QS_PER_VF) &&
> +		bitmap_empty(vf->txq_ena, ICE_MAX_RSS_QS_PER_VF);
>  }
>=20
>  /**
> --
> 2.43.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
