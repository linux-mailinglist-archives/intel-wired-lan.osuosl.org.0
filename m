Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D842B59202
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Sep 2025 11:22:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E28FB608D8;
	Tue, 16 Sep 2025 09:22:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KtLUtqf-2KOq; Tue, 16 Sep 2025 09:22:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2ED59608F5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758014535;
	bh=aeXB01s4Gl+69HMIj6JOGNwm5akXsmDY1VL5xMR56Ec=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=VSKU0N1Pjguw6GkxeA1cafOTEv9pLzDW16pEdA4qmSZ5ShlEPwKjEFYL4Bhtonlin
	 0Z6SFe0akgbvecqC0ymg82Io8PZgvYwuue4dzmA0aYj7FrZzyE3K8iXa5rV2YciirR
	 I15yPPmlMNjLFdSZs+YNOwgpBkDe73HRR3FxIp08RErwot/dpDqSN/uCJy65zfUcQO
	 u89Ie/8OMWbELb6cp0EgrbYg2OGGGUJ6v0H1V8eO2YwZA67j6M1U/+xuVMAaMu7HWl
	 wqIt1RstmQTrB3GkYJWHkVWHB25oSS+jkRgVtc0bGxowQAj53zuX9smCVGx5yeEr7z
	 A8FR+MwU31Ajg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2ED59608F5;
	Tue, 16 Sep 2025 09:22:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id CE3E712D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Sep 2025 09:22:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B494140C2C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Sep 2025 09:22:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ti5_oP3UrBao for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Sep 2025 09:22:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B64CC40C24
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B64CC40C24
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B64CC40C24
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Sep 2025 09:22:12 +0000 (UTC)
X-CSE-ConnectionGUID: nrgJR6P+QpildCPSQmdmCw==
X-CSE-MsgGUID: V7bR2UvvRQOGK0V87c4DKA==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="60345978"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="60345978"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2025 02:22:12 -0700
X-CSE-ConnectionGUID: UVyKrW+ARS+4d0vkDRn+yQ==
X-CSE-MsgGUID: a7yLXSRYSHydpAheHMamWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,268,1751266800"; d="scan'208";a="174697735"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2025 02:22:12 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 16 Sep 2025 02:22:11 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 16 Sep 2025 02:22:11 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.15) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 16 Sep 2025 02:22:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QFLnmsn/MzKEW60YaxZTxoKLYgihl2STiZ0Gip2RuqbWIwAAmazQ4G8N/vAsz4S6gKYwLdtuR93r1tRCSP12LLPiSz54MH1lxkuf9mbnqu5Ky3DZhU0pMMDh7tvHishtiUrRWT9SD0IxQNyhhmTMy3BhiB81MdSDPwV5IyNewI347UjkgFQ7w6YnGFcJsK7JMyBew8dZFj2ijoGtkjuAnIC9d4i+E0CGRRWgSHRSGPrDqEG1di1ZDJkyAxnqUzNo6mQv6rqi3KUdrsajiUKposX9oueriCiIRUt5E4DM3pXC48BuFaqiaTl+9x9wadZ0ZTC6wz6/r7XVe7pIJzWDxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aeXB01s4Gl+69HMIj6JOGNwm5akXsmDY1VL5xMR56Ec=;
 b=i8BiNqcgmKR5nxp+nzBrJpgjBGYA/3s55jNgqULviu3vPBGlcQIWxjqgwOtlHhc0h/iK98vUxZDpqsQrRZ1uOsE1+QkEqsAKXPJzcagKe8El5sD5RxfN4SQBLfrisxncwYtWnNYIxXxK/91RTSf7qpEqrULFeUQLKrG493JaiFYWLgtlWGf6Sq7eGPrpOHUqWMg48VYoHr9P6iv5R+xKsoBmXMWpvGaI0GAlHRyDQr6jZLURaQBcjDfXp5XidVTNP9EqKzT9PCHErZ4mFDvqUcPI2pZzdQJP07K/WtBcIzw4WlJhqlCgHO8VC/83pDoN5kcNA2Gx/ZlOeFHlv7Tw7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8985.namprd11.prod.outlook.com (2603:10b6:208:575::17)
 by SA2PR11MB4988.namprd11.prod.outlook.com (2603:10b6:806:f8::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9115.23; Tue, 16 Sep
 2025 09:22:08 +0000
Received: from IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::4955:174:d3ce:10e6]) by IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::4955:174:d3ce:10e6%3]) with mapi id 15.20.9115.022; Tue, 16 Sep 2025
 09:22:06 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: Kohei Enju <enjuk@amazon.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "kohei.enju@gmail.com" <kohei.enju@gmail.com>
Thread-Topic: [Intel-wired-lan] [PATCH v2 iwl-next 0/2] igbvf: ethtool
 statistics improvements
Thread-Index: AQHcEFODjB1DLNQjBkufD0OInWPy3bSVtgiQ
Date: Tue, 16 Sep 2025 09:22:06 +0000
Message-ID: <IA3PR11MB8985A06BE35592EFD8526B6F8F14A@IA3PR11MB8985.namprd11.prod.outlook.com>
References: <20250818151902.64979-4-enjuk@amazon.com>
In-Reply-To: <20250818151902.64979-4-enjuk@amazon.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8985:EE_|SA2PR11MB4988:EE_
x-ms-office365-filtering-correlation-id: 405c0cb0-1cfc-47f4-e177-08ddf502818a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|376014|1800799024|366016|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?LxCe9jriVoYwXdqccgCp4Dncs3o6WIc5vY2h8H44LB6LkQglOQNRHS9LuWrV?=
 =?us-ascii?Q?tPuT2sSY3Yxq6Ke59OGNYDVl2FOdG3dqo+opfdZElTqKFa7nOKz1jF73UOMz?=
 =?us-ascii?Q?je0YxNH/0LspX8c+HBw/1pjbLzcTwnC7u3G6LFKpCyTdaUCwjzm3FsIWb0Gq?=
 =?us-ascii?Q?yeQ4UaZ/TYgXZO1tOdIisJKlP+DvIL9wxGvAqtIHXPdP3Rf+pXbrxod/R2Ym?=
 =?us-ascii?Q?90l52SBmy5+QMOBkoXFfUuwlDNK4Aj2arUWhjOC8u+NNeQe8jlBdEFPmMV8B?=
 =?us-ascii?Q?EQn0dSOepA1hXRphz1qkWAsww5ihVJHfsgIoOTVwvPAUrlUt+bUCtEsS3KO/?=
 =?us-ascii?Q?0M3t+I7Y8sy2ENiJ3OeYyTBCkIV9MDEkdxeGlB/e59IZdQGtYDFYLkcTE9wP?=
 =?us-ascii?Q?DMF4UNXBHuKPCtX+iVEliWwJm0ttPYe7ezJreg8/jKm81c/e+mhqYDfDwE/w?=
 =?us-ascii?Q?37uq4uYxj5mgRHeKoPCz741+VzKmqhq4kA4b8nDPS65m1YH6XS+1KNa1TIEX?=
 =?us-ascii?Q?CROQHpvzV4fAtHfRTI7y+OBb0dgbnjGgDIG2ccAv/OUIfnczJdb94KVn0o2V?=
 =?us-ascii?Q?9iGE9agNC9izUtsKOg1ZEstg1oTVyD3qxsjU5fMVG+YdYX7cie1bUl+HTd4u?=
 =?us-ascii?Q?1m5BsP9KqyGPViqoXKk6o41PEanlZbgYXifsoqDhJ0bfo4xBFLmxwcao+Z/8?=
 =?us-ascii?Q?C27vhGeyXiBgA4Em3QJ/NXzuhBJteahc9bmPHt7Eu/WRIzWnEb+HCh8xDe3O?=
 =?us-ascii?Q?j/hSWKKeYcdJwJJg9IvhA2vos+f+TOrJih4VPZ4roxwZZec/405SIkczBzkB?=
 =?us-ascii?Q?+/+MWv+D9CmcFtVDnYjS2bkFiprKx2SQiz0lLpIQ1ik3dK6L+4HZsoZ9DtpV?=
 =?us-ascii?Q?ebPe/CoAEipjx9kwPCf0ScQGH5ypCk0GrTOnoTqXM0WQfBvpdE6Vbuy5yITt?=
 =?us-ascii?Q?rd7eWfGEEZ8AnBaHqt2/tS1V3mS6YthukhIpE4SOeKUBW2D2KaDFN1FgsU8X?=
 =?us-ascii?Q?37GPwP80pyE0Cvhwth9XaNPie2HtkmqQ9uCLYD4/GzydZKjPp6Zi0X4NED7p?=
 =?us-ascii?Q?M8IyuFW3vMsfUj7viUU56lj3RZRD6vwAx89l68Jsyvn0FaZeuNiCY8yVUOHP?=
 =?us-ascii?Q?bl5HTjW8dW/OSwqq8hPgi7X9pLwJ7vMdSa4l9ebilc+GFNs9FipIs/fgoTVe?=
 =?us-ascii?Q?dGthe40E6EsaP7HUt1ORU1FiZQ4oWy5GrQjHfMUGb8rTc1lqRdk87suUo+cw?=
 =?us-ascii?Q?j3fUGNO99AeAdcm06A7REY6RVGd34mb6pbR1eSRFrF0ou2+ketfet0PKoz3o?=
 =?us-ascii?Q?soZyDuHum5Wm8ZlYHhderaruBoZTQ5QsIcKRIO3VOScJiLGHuYkrMTZdnBic?=
 =?us-ascii?Q?giZpS41a+YFeUjhC1Oq6HHp+CVAP5T+Beqv9tNfuMIYPj6mKBf1+cz+ABbhE?=
 =?us-ascii?Q?uSumiaV3gBfdgHMbuJe4GxWSCRcmRAGndyt/aHBTQcg+hkUQAgLFKC1uXUY4?=
 =?us-ascii?Q?7vUt6lvbJNnXQyM=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8985.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(1800799024)(366016)(7053199007)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?lQ6QPJLpfDNIF70t/frUZCIMYFJo0xYU/lViVYUI7/hjD9kCFN/iR7h/8FSY?=
 =?us-ascii?Q?cay89FJvnEc0788JPZjBFYQSR5fib9Gumujh8dhtL2fB96h+Nc/HNUL9hS3y?=
 =?us-ascii?Q?9aZgl5mRoSGd9ZkxewPgWsytoQpln10I92hTMWqHZkp0YajEYdYPWRPTUQPx?=
 =?us-ascii?Q?RrD8A0Iqg/wqblgsyL//dEI1BV4Q+H61Mgmws47MOAyZuCZXN+uHT6u3MMFK?=
 =?us-ascii?Q?VsPhEUEFstTA6Lku0tDkGua94xwWCOHBtDEkzvjgcTJTscaYUC1ozUHRP6MK?=
 =?us-ascii?Q?zAefJWkEfR94DGxcwaihhtJL3n1ew2RL6FORz/PE0jDNPB8vhGpq6Njw+N78?=
 =?us-ascii?Q?1xkL7WlSAJFsT2Y/jHdgXqpfu1WWHgOVXayZlCII+frHsDa22Y6i+8wiWQE3?=
 =?us-ascii?Q?bMbe+Ndjw1zlJi07UmbCbe8aykVMsiA12lHredOt3ZZVsvdxZOcURo8sEW3r?=
 =?us-ascii?Q?PWMIL6Q9xf5c/Asrsqv1Tqo+KwbbhKy9OvIhaiFr5tkdEUOJS1DaNResmmou?=
 =?us-ascii?Q?ByFmlTB6/4YH2ljtTS+FOxiHIo9EH9d/kxS7vfqe5zX+RWj5N3pRJAOaAMWD?=
 =?us-ascii?Q?77EtE2kBTttdAQ82LbS5Y0P4aPmalUjdUht/OhbiTZ3QKXs6D3y3uUKHryG2?=
 =?us-ascii?Q?FnIb2LjXmwsEQpGzJTxHoVtx5hSfI1skyJR0cJxXDA+Ut+j5R05xAKUR8vGx?=
 =?us-ascii?Q?J/F9ZX76qwP3j8heyMFyIkiSMqZhmNloLjqsnajm9Xh6eQ9lEBuFDAt53vOP?=
 =?us-ascii?Q?mgZoZEYoT6vRW8lrkiha+OL+hYduLl4NTX3FIWC3weYXWwWCKcoBN1wRIGGH?=
 =?us-ascii?Q?ElW6rvz3woDM4D/bWFW94QQ76IybPF7fmpp0Exn2OENH+GYeQjrTLo1qbIvm?=
 =?us-ascii?Q?Q6ojTMIjkOiNmoBaL9hiLPxz0KXzJ6vNnMj4dy6a6W3WxbDAvbr2utAOlFyf?=
 =?us-ascii?Q?gRq+oMi34wBThTeW5Ul9s0CF+Gegdl5nRberePtubpbQSBZO1DmaAAQQTh6q?=
 =?us-ascii?Q?WlIDDqUfLknCYhY+p0QyawI6gdSIyHOZXsiMyIsBAN9MGCoGuqfbFnnHMaWt?=
 =?us-ascii?Q?4BN9J2I4O+iEaGA+8cGvF3OEf9mOMsEG7QWkfHygGjOd1oqjwUZPKvdqseA8?=
 =?us-ascii?Q?PGsYZWVM7I14fOeYdDx9+xI4r41oXIfl+pLcQg4i/PpJXoZHar0RHMtny92Q?=
 =?us-ascii?Q?e2xCDwBiG4x1Dcm36k48V9No2mAd4FNphdxx/kbSfBeF/zbhR/RmsxADwEHl?=
 =?us-ascii?Q?1okKlndiPCIWJhbnzf5h9Pv0em62INNL5t4sC8330nSW+1Qwz5qfNSAKAL2U?=
 =?us-ascii?Q?1VjOa/yNwo4OSguNvX9soiQ2slPfvrIk1NbgRC5wNkbgXRs+SLRMYNtBzjyg?=
 =?us-ascii?Q?j7Ale3iEEl2WMNMs9RUjZF6mE77JVJl0ep7TrEvCY3RY8Xd0KxdOUPhTbCFR?=
 =?us-ascii?Q?YFoYHqSD/d+qd3g2nqEEgykeZresHpL67xHCowJNZMAoWaee6yxSfeHwvNB8?=
 =?us-ascii?Q?XQLEKbt5f1C1wuQScaocihxHQ5REsNc7ZWG5acblDVZ8oJ4GlFmCBVUL1TRt?=
 =?us-ascii?Q?SugCPKv4VSVwe4EV4Te/gX02Ff+XPe3EsKQpLcnFQM1JlZwAEGM7gIRdS30B?=
 =?us-ascii?Q?ww=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8985.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 405c0cb0-1cfc-47f4-e177-08ddf502818a
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Sep 2025 09:22:06.8266 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1GVtou8pjUtyZXIbx5PfeCaRjwGySE8fOmIkHg8Rd+uOLEhewtXrcs2HkRzwYMWVLy7NvD1VLI8OmuXUc+zwX3Bpu8l1v0JH+MzU4p72vCY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4988
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758014533; x=1789550533;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6J95IRgYJuyA/BRqfO8Ou6VzgxL1Ef+HshjDZGObgig=;
 b=LGfknX3A2TVowMz1Jzt5I75MaHxsr8jkQHkC1z5qF7mvl65cFb+NiozR
 Qh1mXRp5CLpv5+UPWzqQ8zQzK6Rx71kvIFsZMHRffhtBaF1U+5/ulGAF8
 6UZu13XoK/SQ6eyRY1EZOxp80sooM3NdPwS2vLp0lSgM9TgFTcXvUVdOv
 0eI8sxrJ5+4m2Gs/x3/AVvyELrsUjewN+S7KYcFDvRnWNehR1CZ2f5qOm
 YNnD3RelAQ1AZMOxSfO9AzFSbbywC+ggYRjs1JJizUsiKZNLIjSUfGLZM
 80yniOo4tvfHAV0TymzNq1w6Ve9DKSC4nEKE/mxE5y6I7/H+oev5K3xqN
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=LGfknX3A
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-next 0/2] igbvf: ethtool
 statistics improvements
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Kohei Enju
> Sent: Monday, August 18, 2025 5:18 PM
> To: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; linux-
> kernel@vger.kernel.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>;
> David S. Miller <davem@davemloft.net>; Eric Dumazet
> <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> <pabeni@redhat.com>; kohei.enju@gmail.com; Kohei Enju
> <enjuk@amazon.com>
> Subject: [Intel-wired-lan] [PATCH v2 iwl-next 0/2] igbvf: ethtool statist=
ics
> improvements
>=20
> This series contains:
> 1. Add missing lbtx_packets and lbtx_bytes counters that are available in
> hardware but not exposed via ethtool 2. Remove rx_long_byte_count counter
> that shows the same value as rx_bytes
>=20
> Tested on Intel Corporation I350 Gigabit Network Connection.
>=20
> Changes:
>   v1: https://lore.kernel.org/intel-wired-lan/20250813075206.70114-1-
> enjuk@amazon.com/
>   v2:
>     - Remove Tested-by: tag
>     - Add Reviewed-by: tag
>     - s/duplicated/redundant/ in commit message of the 2/2 patch
>=20
> Kohei Enju (2):
>   igbvf: add lbtx_packets and lbtx_bytes to ethtool statistics
>   igbvf: remove redundant counter rx_long_byte_count from ethtool
>     statistics
>=20
>  drivers/net/ethernet/intel/igbvf/ethtool.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>=20
> --
> 2.48.1


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


