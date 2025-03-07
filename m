Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C00CFA56A33
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Mar 2025 15:21:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9CDEB844DD;
	Fri,  7 Mar 2025 14:21:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bj0akozI2x1S; Fri,  7 Mar 2025 14:21:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C2ED8846AA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741357272;
	bh=Q4+3Q5FZE2eH6tqLcrpYIBHRVeM8J0uO6XdUI/WEkW0=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Qs36MEk8A2x1r+tS78QJNFmqEL4xWpz0rKiTUDNHOOvmW+y6OyqtaVpCaFb9CsjoM
	 o0WxjqAkOHZYtwJhp+t4wi52fAwyeHtXhHUi2GNvOm+zK3Mv8ZztS/0TyH2+WQFomt
	 hPlT8zhVWZs9Yvg5c9vhPXzFz89esOpI5L/6dMO7dqCb3oX3CuZZMY3+VNiRgBP/MN
	 u/FZez3e8HDnwCIoxUwScLRcVZXeovMTDhvumkRyR60dAau06ukiZwQFcjJQzgNfj4
	 qFJp+WmRK7dN89/3j3XxYeSjSIhpX/G1nWBH90doxy3SeyCe79kKPzdfl4Vc1eOb/C
	 E9KsAqkHhXHzw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C2ED8846AA;
	Fri,  7 Mar 2025 14:21:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 5193C1C9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 14:21:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 38AA4413A7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 14:21:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UPBHv3MVG84A for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Mar 2025 14:21:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=yoong.siang.song@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 26FF64060D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 26FF64060D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 26FF64060D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 14:21:09 +0000 (UTC)
X-CSE-ConnectionGUID: zvQtvWZrTqms5K/ep1ka4w==
X-CSE-MsgGUID: EVgT2uwqSVe1e6NOSmGdfQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="53045944"
X-IronPort-AV: E=Sophos;i="6.14,229,1736841600"; d="scan'208";a="53045944"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 06:21:08 -0800
X-CSE-ConnectionGUID: BxX4uothQxyYoPnd+Rs6fA==
X-CSE-MsgGUID: tFExabKKTbiIcBy5+FeVpQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="119260937"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 06:21:08 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 7 Mar 2025 06:21:07 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 7 Mar 2025 06:21:07 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 7 Mar 2025 06:21:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Pyrq6JUlVNlHoZlTMXujN/iO9SjWvLxUuy2H4gTGx6ky758npudWzv6cKu7BB06mqKqBwaNiMWsbwsuad0jys4xjRipIfzjy7PjzzE8wpf9T5TgqTFQqksivvU/YMDkYGCl1L8OaARkaOx1+aUBaf6H9cgo6iJsQYuXXAY9+jpOFH5fPSWaMliOrlxpf3a/1/Zg2qs8j5D+Dczgeicn7dLfiLYwKmChPQl3aF8uPqoGV6t1u+3VbUNqccYfi5ARb9blsUGDb4AeXQD2pHmmao2NUj3ZQC6OSZ5IvSXUShboerxHlRlWxqj58w1J8kqooawkYHz2p1hiclaxbnQfv8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q4+3Q5FZE2eH6tqLcrpYIBHRVeM8J0uO6XdUI/WEkW0=;
 b=W0/HqwJKiK7A7Q1qhLh8CW7LddZfu75YOTbl0AdAmzRz0cEPvSobaB91DTShTceU86SflhdkyMbi6a4Wz1OEXOZCCHxWf9F6WzYrm/uthVDW8HJlFbHpTvYS+bAw5TmcpVdAWGI74rn4auOHedS7nETWNGvU2Th6mhHDy6DJc+RAOxuyOXy1QzAzZp0ExPpAwx6pBZAPLIMsV9FxXumgQK4gol1wx6tVM2WwbhOQxfPVIZc3WrLd1LBdIn89gXzalfNYOqo2liZ8Y4BkGnOX0BVQm8lY79B5GL8iPddAy9XCN+8x28RVwyYXR2EUvKtczfwNZ28+hLPM46cRRYCB+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5830.namprd11.prod.outlook.com (2603:10b6:510:129::20)
 by BY1PR11MB8080.namprd11.prod.outlook.com (2603:10b6:a03:528::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.22; Fri, 7 Mar
 2025 14:20:49 +0000
Received: from PH0PR11MB5830.namprd11.prod.outlook.com
 ([fe80::c80d:3b17:3f40:10d6]) by PH0PR11MB5830.namprd11.prod.outlook.com
 ([fe80::c80d:3b17:3f40:10d6%4]) with mapi id 15.20.8511.017; Fri, 7 Mar 2025
 14:20:49 +0000
From: "Song, Yoong Siang" <yoong.siang.song@intel.com>
To: "Bouska, Zdenek" <zdenek.bouska@siemens.com>, "David S . Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Simon Horman
 <horms@kernel.org>, Willem de Bruijn <willemb@google.com>, "Bezdeka, Florian"
 <florian.bezdeka@siemens.com>, Donald Hunter <donald.hunter@gmail.com>,
 Jonathan Corbet <corbet@lwn.net>, Bjorn Topel <bjorn@kernel.org>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, Jonathan Lemon <jonathan.lemon@gmail.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Jesper Dangaard Brouer
 <hawk@kernel.org>, John Fastabend <john.fastabend@gmail.com>, "Damato, Joe"
 <jdamato@fastly.com>, Stanislav Fomichev <sdf@fomichev.me>, Xuan Zhuo
 <xuanzhuo@linux.alibaba.com>, Mina Almasry <almasrymina@google.com>, "Daniel
 Jurgens" <danielj@nvidia.com>, Andrii Nakryiko <andrii@kernel.org>, "Eduard
 Zingerman" <eddyz87@gmail.com>, Mykola Lysenko <mykolal@fb.com>, "Martin
 KaFai Lau" <martin.lau@linux.dev>, Song Liu <song@kernel.org>, Yonghong Song
 <yonghong.song@linux.dev>, KP Singh <kpsingh@kernel.org>, Hao Luo
 <haoluo@google.com>, Jiri Olsa <jolsa@kernel.org>, Shuah Khan
 <shuah@kernel.org>, Alexandre Torgue <alexandre.torgue@foss.st.com>, "Jose
 Abreu" <joabreu@synopsys.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Faizal Rahim
 <faizal.abdul.rahim@linux.intel.com>, Choong Yong Liang
 <yong.liang.choong@linux.intel.com>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "xdp-hints@xdp-project.net"
 <xdp-hints@xdp-project.net>
Thread-Topic: [PATCH bpf-next v12 5/5] igc: Add launch time support to XDP ZC
Thread-Index: AQHbgFYqWswECC+nwUG+ZJIc0oRjPrNnyA+AgAALhdA=
Date: Fri, 7 Mar 2025 14:20:49 +0000
Message-ID: <PH0PR11MB58302B9F3C23B4BBEB7BAACCD8D52@PH0PR11MB5830.namprd11.prod.outlook.com>
References: <20250216093430.957880-1-yoong.siang.song@intel.com>
 <20250216093430.957880-6-yoong.siang.song@intel.com>
 <AS1PR10MB5675D13A436CB20FFE5E1082EBD52@AS1PR10MB5675.EURPRD10.PROD.OUTLOOK.COM>
In-Reply-To: <AS1PR10MB5675D13A436CB20FFE5E1082EBD52@AS1PR10MB5675.EURPRD10.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ActionId=32c776a1-e37e-408e-8746-b3b86ed4e75a;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ContentBits=0;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Enabled=true;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Method=Standard;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Name=restricted;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SetDate=2025-03-07T13:03:43Z;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SiteId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Tag=10, 3, 0, 1;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5830:EE_|BY1PR11MB8080:EE_
x-ms-office365-filtering-correlation-id: f38fcd35-3bf4-4f67-a356-08dd5d83425d
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7416014|38070700018|921020; 
x-microsoft-antispam-message-info: =?us-ascii?Q?OSRvj1DGMMfqRqjvRTtsF9e4rzCvxZnb1CwyASuMx3B7GOFtu9wiOPPDPXcN?=
 =?us-ascii?Q?kufYwyMVQ1cbsQ7eB4O1gFH5AKFgEiGL9HIQ3IFgO9/37tXlX945RP0Tiy7a?=
 =?us-ascii?Q?ykD/EUW/R1rcbN30RaTygVbF4DkoqYrFtcupnzZFY6+WYdzAfyzCVurGJ8dX?=
 =?us-ascii?Q?C8I2waEosxZiAyVQ21hGNI2jIHCoupc5MFQGa2FDNHVW3TFoij2hymfepVRv?=
 =?us-ascii?Q?HFAdl6q7u/ghnZ2KFrVMaE/rbEW8IrPcUFHgZFXXQMXgYZ27YDEXy32LKozI?=
 =?us-ascii?Q?ryNjdfr9iz07gE42xf8JK5c9P7lbvief9JYmNCIRqMCzKQp8ggjp4eTgCaA+?=
 =?us-ascii?Q?G3HdMO8yRDaYR6jHiJ7ZdHTv0JEHP3jViPlMhBc5KEC2F5LVSbOHxm+jce8P?=
 =?us-ascii?Q?A2RiWcSlQn1FzbVFvdBpmi0UfS7OD+/e6Jsex9gzTscWwxDRiwA4YfsbqoYu?=
 =?us-ascii?Q?+E031rtLuyYh055k6pVjcM8nWzUHr0t0yjXjF5Wt9v1P8Fo1tY1xOI2ase7V?=
 =?us-ascii?Q?FkwWv8yIy4R/MSrAJqAZmhpSsSUVReHprXYl/418wstyqBQq2h5gHIqKdKFU?=
 =?us-ascii?Q?5b+u26gu4ruqB1bkpj5FJmyPpX5jEs2A5r/RMczl6m/JGpx3kZM7iOEYUMvA?=
 =?us-ascii?Q?vwD0wsZAayyJ+vM7HJ6znoaC3R5BDvaH02W2rgV2TvDq0g/alCZy8kZO463D?=
 =?us-ascii?Q?aYDqgNDBL88o4YAiy5SK8XnJaP4qnSptbPiBkfiYyVmXqDt7CVkScdaWiUsW?=
 =?us-ascii?Q?5uZgvZU0wpD59t55N3JmT6wKyPlZMJpwwcnKOdPH6OiPsU/sr+cxvXLOjCh2?=
 =?us-ascii?Q?MxWHCA/E7zdVApiYZuKUAQpOVXUAa+M0S1XaCxQo0zdVlWDDKGNYINUdR2rO?=
 =?us-ascii?Q?5q9qiLMvsKyD3/mLAFvSVP0/f6U8Wl9WKTK7d8AzpVY/5NfSsjprLm2x2lvB?=
 =?us-ascii?Q?yHqKwaTLUd/PrlfJ/eQvOmxGSa3vepBIkd7R+MpuqM+TFFKIhZ3dtfyelmoZ?=
 =?us-ascii?Q?6zqxNoINX+0gfn6vEZrpg0s78R5h3Drg0SjWFlqBOz0d07jnqK+ogbwK7WjI?=
 =?us-ascii?Q?86z5N/xId1vArINXGNZMgn307iUcKaB6RfQWxD6mdzV6VrMRDGRftTXDvrpX?=
 =?us-ascii?Q?AWo9zP9Pqc7tv2tyBNuCAf7Uerpqa+Lh3+0bEYrE8T0ImSIWAOhi6YyKokvA?=
 =?us-ascii?Q?m6+Rv+kfIS112bwUnLBGJSbty5DYj8DFMKPth4to5KPWCy5JpXScEPyw+xEW?=
 =?us-ascii?Q?sUsCcDw0Q3JZIXdwAi/semzUb6flDP5AnEwXxw1e1jpMd8xj49bwfWi3xMP2?=
 =?us-ascii?Q?Tsy2Bg0NoAEt5lS0RuwdxjaN6Yl/kYm0M6SGW4aX7dNPZoBRa8cSEmthEFMA?=
 =?us-ascii?Q?R8rEQ8hoggGdie2urZwSpmXihn0tgk8kD4uqDHdzaVJS9LHCwC2L6uNTBoVA?=
 =?us-ascii?Q?RDPcv/0u7DNyjoA7sfBHOhT2RLw/ITib/UR2Zm7G6mwVGkKwz9xpxw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5830.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7416014)(38070700018)(921020);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?n2i8ubMDHCmvfm513zjQdrH19i8pMbkFOVrGoAUuU7UsCRgsboy0CsSR5i8G?=
 =?us-ascii?Q?SY235asVcL6vInveZ7FzSlqsC31ieDlf0gAx8+RZpr4ehkiLpV6R5H4FEIbQ?=
 =?us-ascii?Q?bcFx8JhFk5ZVGn3TvgD2TKsx7R2KcHGyqrfVcZu3Hw3vOltcKAXA9OaswVtE?=
 =?us-ascii?Q?Smk6plRnE2w6Ci2pCj6D0wpZpENiLph94lQjrhAhHB43StAp0zfv3LZ8Bcrc?=
 =?us-ascii?Q?cHILjrzBd37yQlV7qPURrE2FM4F7bMIwaPmLj2qk04yr0+rGqDG3t8vc2jLO?=
 =?us-ascii?Q?adpjzYTMkeOoVYMJvfzVaDVYvY++4KrRZCGS3Ps4t7QeOQZcKg4GSP7YYYCT?=
 =?us-ascii?Q?0FTST4Uf9OvkDLBGQYFdC10ZVvdRcleJPcWVLlLs4eTugfh6Vky8eAhgvwYF?=
 =?us-ascii?Q?2IfJiDs43uJ06EAv1IjQYc9p44cgzwzUZqfHk6ZMqQU0U8NaH0O1d+KudWOl?=
 =?us-ascii?Q?5Z+X544wkzphMWgJLBL+xvHprKNLKrGY0yow2ZTf8+wuKzHKsKiW3eqvwf6J?=
 =?us-ascii?Q?D5BZRogtzTvUiikZm4ghzrqdiDQHdWcD8PW40C1UH2YC2lI0GvM8nNUqcgO0?=
 =?us-ascii?Q?OsnH4t+paup252Z9kuPBrt/sxvEA2EH4+zREOADRJfWgrYme9Gdw0XFkBUxW?=
 =?us-ascii?Q?436Yi+uxpRShOS8sshjrIk5eW+qa9CEgB1kgWxx94OjaGlVTZwA8YUBx471B?=
 =?us-ascii?Q?rMTVmXjWvwPucC6utLAz0JVoYEcGrFRbeWnYh8Tv6ENF4wWmn5sauqbFeCs1?=
 =?us-ascii?Q?iPxgHIfefi3V+UjfUJtZwpXQve+XHaWOTiH91t5zJL/Qt0dLB15llsKJlkXO?=
 =?us-ascii?Q?g2CAg/xEMOabL6cgGTF1h6J8/wyRlaWTqJqIpystUGS7BvS0qfxVi7i2oHCa?=
 =?us-ascii?Q?vBxEKvubZmCAgpZUZ+Lye/y81RC68Z6lSJcCMsS6D2UQveXsCAE4Uuxf5X91?=
 =?us-ascii?Q?5QkhXw7w2ThDqgnUOoELJBYARyVKVQU1qWbZ0/4XMp+Ua2QgQ51DFnKaro49?=
 =?us-ascii?Q?VaH+2pq+KITERh1829YsTHeo38F3HD3cBzB9tWcSXN1wMWqshNphjKTkmiWL?=
 =?us-ascii?Q?mou22ymHI+lTnasi39CpIgVNKt3ANVRJdArAA7XZSLAT8AH9kjidhop6aQVx?=
 =?us-ascii?Q?VzAVLLPpUgrO3LaJnYhMo0pZNuhmeFGyjfyhmEa7WQwCXWYuslEWSFZ87708?=
 =?us-ascii?Q?PDASUUVujxB8kmG2J8Og2ZB6+Z/evgzhSTLgocYw4VD8faz6yMAMRs8f+FKq?=
 =?us-ascii?Q?fpAovrNhf88VMeIns3zgHxGf3TqCCChoIqtiyZQPrAXDU9zDJ1QPVTSa/f0+?=
 =?us-ascii?Q?nCVlhEvQOKiNA240LLcTjtSF7wOKcwy4RMMVM+cJIycgtvXJGMnxJpvvpCbT?=
 =?us-ascii?Q?DqsIiAouPc4wJqaqSZdqpOzr45nzP7JSnfdTJp0HxAxhiHkKJJ7cykpVNRn1?=
 =?us-ascii?Q?WKkPu9BUm0QQXNUfTQ663lj52ZJm4GghkeZ0KptEXSdtdMDnEM/UZw1b/bzr?=
 =?us-ascii?Q?r1xu7W7SkY4dfl5jIrJL7Y+hoOQKfmHcyeLJsor1svnWeDfJXxwh54h0wRMA?=
 =?us-ascii?Q?c7BEfmceCnuJwyJPCWktJmsHDWr+Pmk1XPVHSXLgAUrHctf8T8nPObP/OdYf?=
 =?us-ascii?Q?WA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5830.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f38fcd35-3bf4-4f67-a356-08dd5d83425d
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Mar 2025 14:20:49.1811 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UJCKjqCSnS0WNX2ESmnDH+rfoOg7hQBh7Tui+/Lw+seodO+YlTX6Culw+llvi1xuua6XTN8RxLYMlXt9b0cxI5Y1kRN+hzqxWChpBT768QY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8080
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741357269; x=1772893269;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CfjpXFiY3a8da/2BcfuGk5JY8Eo78pqmBMBly+Kejbs=;
 b=MkZRsd4L4L5h3hXt1jh4i6KqrZHeupedfxqct4TleU6P7nX+tz4HRzB6
 p9T87cmuFvXmK63e3+yeez7fYzTv3FhMSqc7Vqb+OnB5DPxzrUznXRDgb
 I0MyEKvLuMxgFuAneIyjGWC4tGclt+rDT6EOxDk1jHJbqeVr/ztMhYZll
 +PLJmDsItXL2Qu5g7rGoUjDaNg/D9V3zuJo2CeS4ZwbkDetS92oMb2chh
 ZvH04ji4kXIhg9x+eGao5Y+2JnxTW9R2fV1+BXhqvLMDTAHE3M4/KYh1j
 Ip76xZh+0vk+oRvEpyTD/qgRo6s6Q5FiyfBYn3lcWgfb8kzdOMKMklJwe
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=MkZRsd4L
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v12 5/5] igc: Add launch time
 support to XDP ZC
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

On Friday, March 7, 2025 9:25 PM, Bouska, Zdenek <zdenek.bouska@siemens.com=
> wrote:

[...]

>> @@ -2996,7 +3035,13 @@ static void igc_xdp_xmit_zc(struct igc_ring *ring=
)
>>  	ntu =3D ring->next_to_use;
>>  	budget =3D igc_desc_unused(ring);
>>
>> -	while (xsk_tx_peek_desc(pool, &xdp_desc) && budget--) {
>> +	/* Packets with launch time require one data descriptor and one contex=
t
>> +	 * descriptor. When the launch time falls into the next Qbv cycle, we
>> +	 * may need to insert an empty packet, which requires two more
>> +	 * descriptors. Therefore, to be safe, we always ensure we have at lea=
st
>> +	 * 4 descriptors available.
>> +	 */
>> +	while (xsk_tx_peek_desc(pool, &xdp_desc) && budget >=3D 4) {
>
>I think that here is a bug: some frames could be missed if budget < 4.
>I was able to reproduce it by sending 100000x 60 B frames with minimal IPG
>(672 ns between starts of frames) on 1Gbit/s. Always 1026 frames were not =
sent
>and were missing a AF_XDP competition. Interesting was that then even when=
 I
>sent more
>frames for hours it still was 1026 frames not sent and missing competition=
.
>
>Bug seems to be fixed when I change this line to:
>
>	while (budget >=3D 4 && xsk_tx_peek_desc(pool, &xdp_desc)) {
>
>Do you think this is a good fix?
>
>I think this bug is also in original code base, but I was only able to rep=
roduce
>it with launch time.
>

Thank you for pointing out this issue and for providing a detailed
explanation of your findings. I personally agree with your proposed fix
that make sure there is enough budget in the driver, before go peek the xsk
descriptor. Do you plan to submit bug fix patch to iwl-net?

Best regards,
Siang
